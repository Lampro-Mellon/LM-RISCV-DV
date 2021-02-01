#include "verilated.h"
#include <iostream>
#include "VIbtida_top_dffram_cv.h"
#include <fstream>
#include <algorithm>
#include <verilated_vcd_c.h>
#include <math.h>

#define NUM_CYCLES ((vluint64_t)10000000)

using namespace std;

VIbtida_top_dffram_cv *top;

int main(int argc, char **argv, char **env)
{
    top = new VIbtida_top_dffram_cv();
    Verilated::commandArgs(argc, argv);

    // Tracing
    Verilated::traceEverOn(true);
    VerilatedVcdC *tfp = new VerilatedVcdC;
    top->trace(tfp, 99); // Trace 99 levels of hierarchy
    //tfp->spTrace()->set_time_resolution("1 ps");
    tfp->open("obj_dir/sim.vcd");

    top->reset = 1;
    top->io_gpio_i = 0;

    cout << "Starting simulation" << endl;

    // Reading file and counting number of lines
    ifstream file;
    string ins;
    file.open("/home/usman/Documents/instructions.txt");
    int totalLines = count(istreambuf_iterator<char>(file), istreambuf_iterator<char>(), '\n');
    file.clear();
    file.seekg(0, file.beg);
    if (!file)
        cerr << "Unable to open file";

    // initializng some variables
    int byte[4 * totalLines];
    int n = 0;
    int counter = 0;
    int bit = 0;
    vluint64_t hcycle;

    // Set frequency and baudrate
    long int frequency = 10000000;
    long int baudrate = 9600;

    int clk_bit = (frequency / baudrate);

    //Pass clk_bit to top module
    top->io_CLK_PER_BIT = ceil(clk_bit);

    // converting instructions to byte
    while (getline(file, ins))
    {
        int inst = (int)strtol(ins.c_str(), NULL, 0);

        int half_byte1 = inst & 0x0f;               // 3
        int half_byte2 = (inst & 0xf0) >> 4;        // 1
        int byte1 = (half_byte2 << 4) | half_byte1; // 0x13
        int half_byte3 = (inst & 0xf00) >> 8;       // 1
        int half_byte4 = (inst & 0xf000) >> 12;     // 0
        int byte2 = (half_byte4 << 4) | half_byte3; // 0x01
        int half_byte5 = (inst & 0xf0000) >> 16;    // 0
        int half_byte6 = (inst & 0xf00000) >> 20;   // 2
        int byte3 = (half_byte6 << 4) | half_byte5; // 0x20
        int half_byte7 = (inst & 0xf000000) >> 24;  // 0
        int half_byte8 = (inst & 0xf0000000) >> 28; // 0
        int byte4 = (half_byte8 << 4) | half_byte7; // 0x00
        byte[n] = byte1;
        byte[n + 1] = byte2;
        byte[n + 2] = byte3;
        byte[n + 3] = byte4;
        n += 4;
    }

    // simulation loop
    for (hcycle = 0; hcycle < (NUM_CYCLES * 2);)
    {
        // toggle clock
        top->clock = top->clock ? 0 : 1;

        if (hcycle == 50)
        {
            top->reset = 0;
            top->io_rx_i = 1;
        }
        // multiplying by 2 because verilator increments half cycle per loop
        else if (hcycle >= clk_bit * 2) && hcycle % clk_bit * 2) == 0)
        {
            if (bit == 0)
            {
                top->io_rx_i = 0; //start bit
                bit += 1;
            }
            else if (bit <= 8)
            {
                top->io_rx_i = (byte[counter] >> bit - 1) & 0x01;
                bit += 1;
            }
            else if (bit > 8)
            {
                top->io_rx_i = 1; //stop bit
                bit = 0;
                counter += 1;
            }
        }
        top->eval();
        // Next half cycle
        hcycle++;

        if (Verilated::gotFinish())
            exit(0);

        if (tfp)
            tfp->dump(hcycle);
    }
    top->final();
    tfp->close();

    delete top;
    exit(0);
    return 0;
}
