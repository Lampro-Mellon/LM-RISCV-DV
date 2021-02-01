int main() {
    __asm__ ("csrrci x2, 0x300, 15");
    return 0;
}
