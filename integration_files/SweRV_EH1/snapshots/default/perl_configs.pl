#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by haroonshafique on Fri Sep 25 11:31:01 PKT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'max_mmode_perf_event' => '50',
            'bus' => {
                       'dma_bus_tag' => '1',
                       'ifu_bus_tag' => '3',
                       'lsu_bus_tag' => 4,
                       'sb_bus_tag' => '1'
                     },
            'harts' => 1,
            'iccm' => {
                        'iccm_offset' => '0xe000000',
                        'iccm_rows' => '16384',
                        'iccm_size_512' => '',
                        'iccm_index_bits' => 14,
                        'iccm_bits' => 19,
                        'iccm_size' => 512,
                        'iccm_num_banks' => '8',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_reserved' => '0x1000',
                        'iccm_region' => '0xe',
                        'iccm_sadr' => '0xee000000',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_num_banks_8' => '',
                        'iccm_bank_bits' => 3
                      },
            'bht' => {
                       'bht_addr_lo' => '4',
                       'bht_ghr_range' => '4:0',
                       'bht_size' => 128,
                       'bht_addr_hi' => 7,
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_array_depth' => 16,
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_ghr_size' => 5,
                       'bht_ghr_pad' => 'fghr[4],3\'b0'
                     },
            'memmap' => {
                          'unused_region7' => '0x70000000',
                          'serialio' => '0xd0580000',
                          'unused_region5' => '0x50000000',
                          'consoleio' => '0xd0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region0' => '0x00000000',
                          'unused_region6' => '0x60000000',
                          'unused_region1' => '0x10000000',
                          'external_data' => '0xc0580000',
                          'unused_region2' => '0x20000000',
                          'unused_region4' => '0x40000000',
                          'external_prog' => '0xb0000000',
                          'unused_region3' => '0x30000000',
                          'unused_region9' => '0x90000000',
                          'external_data_1' => '0x00000000'
                        },
            'xlen' => 32,
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'verilator' => '',
            'num_mmode_perf_regs' => '4',
            'physical' => '1',
            'tec_rv_icg' => 'clockhdr',
            'btb' => {
                       'btb_addr_lo' => '4',
                       'btb_index1_lo' => '4',
                       'btb_index3_hi' => 9,
                       'btb_size' => 32,
                       'btb_btag_fold' => 1,
                       'btb_index2_lo' => 6,
                       'btb_array_depth' => 4,
                       'btb_index2_hi' => 7,
                       'btb_addr_hi' => 5,
                       'btb_btag_size' => 9,
                       'btb_index1_hi' => 5,
                       'btb_index3_lo' => 8
                     },
            'numiregs' => '32',
            'icache' => {
                          'icache_tag_depth' => 64,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_ic_depth' => 8,
                          'icache_data_cell' => 'ram_256x34',
                          'icache_size' => 16,
                          'icache_tag_high' => 12,
                          'icache_ic_index' => 8,
                          'icache_tag_low' => '6',
                          'icache_enable' => '1',
                          'icache_taddr_high' => 5,
                          'icache_ic_rows' => '256'
                        },
            'testbench' => {
                             'build_axi4' => '1',
                             'TOP' => 'tb_top',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'datawidth' => '64',
                             'assert_on' => '',
                             'ext_addrwidth' => '32',
                             'clock_period' => '100',
                             'RV_TOP' => '`TOP.rvtop',
                             'SDVT_AHB' => '1',
                             'ext_datawidth' => '64',
                             'lderr_rollback' => '1',
                             'sterr_rollback' => '0'
                           },
            'target' => 'default',
            'nmi_vec' => '0x11110000',
            'regwidth' => '32',
            'reset_vec' => '0x80000000',
            'even_odd_trigger_chains' => 'true',
            'core' => {
                        'dma_buf_depth' => '4',
                        'fpga_optimize' => 1,
                        'lsu_num_nbload' => '8',
                        'lsu_num_nbload_width' => '3',
                        'lsu_stbuf_depth' => '8',
                        'dec_instbuf_depth' => '4'
                      },
            'csr' => {
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'mcounteren' => {
                                         'exists' => 'false'
                                       },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true',
                                       'number' => '0xbcb',
                                       'reset' => '0x0',
                                       'mask' => '0xf'
                                     },
                       'mcountinhibit' => {
                                            'exists' => 'false'
                                          },
                       'mgpmc' => {
                                    'exists' => 'true',
                                    'number' => '0x7d0',
                                    'reset' => '0x1',
                                    'mask' => '0x1'
                                  },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mfdc' => {
                                   'mask' => '0x000707ff',
                                   'exists' => 'true',
                                   'reset' => '0x00070040',
                                   'number' => '0x7f9'
                                 },
                       'mitctl1' => {
                                      'exists' => 'true',
                                      'reset' => '0x1',
                                      'number' => '0x7d7',
                                      'mask' => '0x00000007'
                                    },
                       'meicurpl' => {
                                       'reset' => '0x0',
                                       'number' => '0xbcc',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt current priority level.',
                                       'mask' => '0xf'
                                     },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'micect' => {
                                     'mask' => '0xffffffff',
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7f0'
                                   },
                       'mitcnt1' => {
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'number' => '0x7d5',
                                      'mask' => '0xffffffff'
                                    },
                       'marchid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0'
                                    },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'exists' => 'true',
                                      'reset' => '0x1800'
                                    },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mitcnt0' => {
                                      'reset' => '0x0',
                                      'number' => '0x7d2',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff'
                                    },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mie' => {
                                  'mask' => '0x70000888',
                                  'reset' => '0x0',
                                  'exists' => 'true'
                                },
                       'mhpmevent4' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'dcsr' => {
                                   'mask' => '0x00008c04',
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003',
                                   'exists' => 'true'
                                 },
                       'mvendorid' => {
                                        'mask' => '0x0',
                                        'exists' => 'true',
                                        'reset' => '0x45'
                                      },
                       'mhpmcounter5h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'dicad0' => {
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'number' => '0x7c9',
                                     'mask' => '0xffffffff'
                                   },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd0' => {
                                      'reset' => '0xffffffff',
                                      'number' => '0x7d3',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mdccmect' => {
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0',
                                       'number' => '0x7f2',
                                       'exists' => 'true'
                                     },
                       'mcgc' => {
                                   'mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'exists' => 'true'
                                 },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mcpc' => {
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'reset' => '0x0',
                                   'exists' => 'true'
                                 },
                       'dicad1' => {
                                     'reset' => '0x0',
                                     'number' => '0x7ca',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x3'
                                   },
                       'mip' => {
                                  'poke_mask' => '0x70000888',
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x0'
                                },
                       'meicpct' => {
                                      'exists' => 'true',
                                      'comment' => 'External claim id/priority capture.',
                                      'number' => '0xbca',
                                      'reset' => '0x0',
                                      'mask' => '0x0'
                                    },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'dicago' => {
                                     'reset' => '0x0',
                                     'number' => '0x7cb',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x0'
                                   },
                       'miccmect' => {
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0',
                                       'number' => '0x7f1',
                                       'exists' => 'true'
                                     },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'number' => '0x7c4',
                                   'reset' => '0x0'
                                 },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'meipt' => {
                                    'mask' => '0xf',
                                    'comment' => 'External interrupt priority threshold.',
                                    'exists' => 'true',
                                    'number' => '0xbc9',
                                    'reset' => '0x0'
                                  },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mpmc' => {
                                   'comment' => 'FWHALT',
                                   'exists' => 'true',
                                   'poke_mask' => '0x2',
                                   'number' => '0x7c6',
                                   'reset' => '0x2',
                                   'mask' => '0x2'
                                 },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'exists' => 'true',
                                      'reset' => '0x0'
                                    },
                       'dicawics' => {
                                       'mask' => '0x0130fffc',
                                       'number' => '0x7c8',
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.',
                                       'debug' => 'true',
                                       'exists' => 'true'
                                     },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'reset' => '0x5',
                                     'mask' => '0x0'
                                   },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mitctl0' => {
                                      'mask' => '0x00000007',
                                      'exists' => 'true',
                                      'number' => '0x7d4',
                                      'reset' => '0x1'
                                    },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'misa' => {
                                   'mask' => '0x0',
                                   'reset' => '0x40001104',
                                   'exists' => 'true'
                                 },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'number' => '0x7d6',
                                      'reset' => '0xffffffff',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff'
                                    }
                     },
            'pic' => {
                       'pic_meipt_count' => 8,
                       'pic_int_words' => 1,
                       'pic_meipl_count' => 8,
                       'pic_meie_mask' => '0x1',
                       'pic_total_int_plus1' => 9,
                       'pic_size' => 32,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meipl_mask' => '0xf',
                       'pic_offset' => '0xc0000',
                       'pic_meip_mask' => '0x0',
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meie_offset' => '0x2000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_bits' => 15,
                       'pic_meip_offset' => '0x1000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meipt_mask' => '0x0',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_total_int' => 8,
                       'pic_meie_count' => 8,
                       'pic_region' => '0xf',
                       'pic_meigwctrl_count' => 8,
                       'pic_meigwclr_count' => 8,
                       'pic_meip_count' => 4,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_mpiccfg_count' => 1
                     },
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
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ]
                            }
                          ],
            'dccm' => {
                        'dccm_enable' => '1',
                        'dccm_bank_bits' => 3,
                        'dccm_byte_width' => '4',
                        'dccm_size_64' => '',
                        'dccm_reserved' => '0x1000',
                        'dccm_data_width' => 32,
                        'dccm_bits' => 16,
                        'dccm_rows' => '2048',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_ecc_width' => 7,
                        'dccm_sadr' => '0xf0040000',
                        'lsu_sb_bits' => 16,
                        'dccm_num_banks' => '8',
                        'dccm_offset' => '0x40000',
                        'dccm_fdata_width' => 39,
                        'dccm_width_bits' => 2,
                        'dccm_region' => '0xf',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_num_banks_8' => '',
                        'dccm_index_bits' => 11,
                        'dccm_size' => 64
                      },
            'protection' => {
                              'inst_access_addr4' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_enable7' => '0x0',
                              'inst_access_enable4' => '0x0',
                              'data_access_enable5' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_addr0' => '0x00000000',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'inst_access_enable5' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_enable4' => '0x0',
                              'data_access_enable0' => '0x0',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_enable3' => '0x0',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'data_access_enable6' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable1' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_enable0' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_addr3' => '0x00000000',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_enable3' => '0x0'
                            }
          );
1;
