#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by haroonshafique on Mon Aug  3 11:11:35 PKT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'verilator' => '',
            'triggers' => [
                            {
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            }
                          ],
            'xlen' => 32,
            'memmap' => {
                          'serialio' => '0xd0580000',
                          'external_prog' => '0xb0000000',
                          'unused_region5' => '0x50000000',
                          'external_data' => '0xc0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region3' => '0x30000000',
                          'unused_region0' => '0x00000000',
                          'unused_region4' => '0x40000000',
                          'unused_region7' => '0x70000000',
                          'unused_region1' => '0x10000000',
                          'unused_region6' => '0x60000000',
                          'unused_region2' => '0x20000000',
                          'unused_region9' => '0x90000000',
                          'external_data_1' => '0x00000000'
                        },
            'icache' => {
                          'icache_ic_depth' => 8,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_tag_high' => 12,
                          'icache_tag_depth' => 64,
                          'icache_ic_rows' => '256',
                          'icache_size' => 16,
                          'icache_taddr_high' => 5,
                          'icache_enable' => '1',
                          'icache_ic_index' => 8,
                          'icache_tag_low' => '6'
                        },
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'lsu_bus_tag' => 4,
                       'dma_bus_tag' => '1',
                       'sb_bus_tag' => '1'
                     },
            'nmi_vec' => '0x11110000',
            'max_mmode_perf_event' => '50',
            'csr' => {
                       'dicago' => {
                                     'reset' => '0x0',
                                     'number' => '0x7cb',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'mask' => '0x0'
                                   },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'misa' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x40001104'
                                 },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'dicad0' => {
                                     'number' => '0x7c9',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'mask' => '0xffffffff'
                                   },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mitcnt0' => {
                                      'reset' => '0x0',
                                      'number' => '0x7d2',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'mimpid' => {
                                     'reset' => '0x4',
                                     'mask' => '0x0',
                                     'exists' => 'true'
                                   },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'miccmect' => {
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'number' => '0x7f1'
                                     },
                       'mitctl1' => {
                                      'reset' => '0x1',
                                      'number' => '0x7d7',
                                      'exists' => 'true',
                                      'mask' => '0x00000007'
                                    },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mitcnt1' => {
                                      'reset' => '0x0',
                                      'number' => '0x7d5',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter5h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'mfdc' => {
                                   'exists' => 'true',
                                   'mask' => '0x000707ff',
                                   'reset' => '0x00070000',
                                   'number' => '0x7f9'
                                 },
                       'mhpmevent4' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mcgc' => {
                                   'number' => '0x7f8',
                                   'poke_mask' => '0x000001ff',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x000001ff'
                                 },
                       'mip' => {
                                  'reset' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true',
                                  'mask' => '0x0'
                                },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'tselect' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x3'
                                    },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'dcsr' => {
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003',
                                   'exists' => 'true',
                                   'mask' => '0x00008c04'
                                 },
                       'mitbnd1' => {
                                      'reset' => '0xffffffff',
                                      'number' => '0x7d6',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff'
                                    },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7ca',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'mask' => '0x3',
                                     'exists' => 'true'
                                   },
                       'mpmc' => {
                                   'reset' => '0x0',
                                   'number' => '0x7c6',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'meicurpl' => {
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'comment' => 'External interrupt current priority level.',
                                       'number' => '0xbcc',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter4' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'meicidpl' => {
                                       'mask' => '0xf',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'number' => '0xbcb',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mitctl0' => {
                                      'number' => '0x7d4',
                                      'reset' => '0x1',
                                      'mask' => '0x00000007',
                                      'exists' => 'true'
                                    },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'number' => '0x7c2',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'meipt' => {
                                    'number' => '0xbc9',
                                    'comment' => 'External interrupt priority threshold.',
                                    'reset' => '0x0',
                                    'mask' => '0xf',
                                    'exists' => 'true'
                                  },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'dmst' => {
                                   'reset' => '0x0',
                                   'number' => '0x7c4',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'debug' => 'true',
                                   'mask' => '0x0',
                                   'exists' => 'true'
                                 },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff'
                                     },
                       'marchid' => {
                                      'reset' => '0x0000000b',
                                      'exists' => 'true',
                                      'mask' => '0x0'
                                    },
                       'dicawics' => {
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.',
                                       'number' => '0x7c8',
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc',
                                       'exists' => 'true'
                                     },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'meicpct' => {
                                      'exists' => 'true',
                                      'mask' => '0x0',
                                      'reset' => '0x0',
                                      'comment' => 'External claim id/priority capture.',
                                      'number' => '0xbca'
                                    },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mitbnd0' => {
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'reset' => '0xffffffff',
                                      'number' => '0x7d3'
                                    },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mstatus' => {
                                      'exists' => 'true',
                                      'mask' => '0x88',
                                      'reset' => '0x1800'
                                    },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mie' => {
                                  'reset' => '0x0',
                                  'mask' => '0x70000888',
                                  'exists' => 'true'
                                },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'micect' => {
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true'
                                   }
                     },
            'iccm' => {
                        'iccm_reserved' => '0x1000',
                        'iccm_rows' => '16384',
                        'iccm_offset' => '0xe000000',
                        'iccm_size_512' => '',
                        'iccm_sadr' => '0xee000000',
                        'iccm_bank_bits' => 3,
                        'iccm_num_banks_8' => '',
                        'iccm_size' => 512,
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_index_bits' => 14,
                        'iccm_region' => '0xe',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_bits' => 19,
                        'iccm_num_banks' => '8'
                      },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'pic' => {
                       'pic_size' => 32,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meie_offset' => '0x2000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_total_int' => 8,
                       'pic_region' => '0xf',
                       'pic_meip_offset' => '0x1000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_total_int_plus1' => 9,
                       'pic_bits' => 15,
                       'pic_int_words' => 1,
                       'pic_offset' => '0xc0000'
                     },
            'physical' => '1',
            'target' => 'default',
            'numiregs' => '32',
            'harts' => 1,
            'bht' => {
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_array_depth' => 16,
                       'bht_size' => 128,
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_ghr_range' => '4:0',
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_addr_lo' => '4',
                       'bht_addr_hi' => 7,
                       'bht_ghr_size' => 5
                     },
            'even_odd_trigger_chains' => 'true',
            'regwidth' => '32',
            'num_mmode_perf_regs' => '4',
            'protection' => {
                              'inst_access_enable6' => '0x0',
                              'inst_access_enable3' => '0x0',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_enable1' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_enable3' => '0x0',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable1' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable5' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'inst_access_addr2' => '0x00000000',
                              'inst_access_addr0' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_addr0' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_enable2' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_enable0' => '0x0',
                              'data_access_mask2' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'inst_access_mask0' => '0xffffffff'
                            },
            'core' => {
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload' => '8',
                        'fpga_optimize' => '1',
                        'dec_instbuf_depth' => '4',
                        'dma_buf_depth' => '4',
                        'lsu_num_nbload_width' => '3'
                      },
            'btb' => {
                       'btb_addr_hi' => 5,
                       'btb_btag_size' => 9,
                       'btb_index3_lo' => 8,
                       'btb_index2_lo' => 6,
                       'btb_index1_lo' => '4',
                       'btb_index3_hi' => 9,
                       'btb_index2_hi' => 7,
                       'btb_addr_lo' => '4',
                       'btb_index1_hi' => 5,
                       'btb_size' => 32,
                       'btb_btag_fold' => 1,
                       'btb_array_depth' => 4
                     },
            'dccm' => {
                        'dccm_reserved' => '0x1000',
                        'dccm_index_bits' => 11,
                        'dccm_rows' => '2048',
                        'dccm_enable' => '1',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_byte_width' => '4',
                        'dccm_width_bits' => 2,
                        'dccm_ecc_width' => 7,
                        'dccm_region' => '0xf',
                        'dccm_size_64' => '',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_offset' => '0x40000',
                        'lsu_sb_bits' => 16,
                        'dccm_data_width' => 32,
                        'dccm_bits' => 16,
                        'dccm_fdata_width' => 39,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_bank_bits' => 3,
                        'dccm_size' => 64,
                        'dccm_num_banks' => '8',
                        'dccm_num_banks_8' => ''
                      },
            'tec_rv_icg' => 'clockhdr',
            'reset_vec' => '0x80000000',
            'testbench' => {
                             'RV_TOP' => '`TOP.rvtop',
                             'assert_on' => '',
                             'sterr_rollback' => '0',
                             'lderr_rollback' => '1',
                             'ext_addrwidth' => '32',
                             'SDVT_AHB' => '1',
                             'datawidth' => '64',
                             'TOP' => 'tb_top',
                             'build_axi4' => '1',
                             'clock_period' => '100',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'ext_datawidth' => '64'
                           }
          );
1;
