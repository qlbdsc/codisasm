0x140B0: F3 0F 1E FA                                     nop edx, edi
0x140B4: 31 ED                                           xor ebp, ebp
0x140B6: 49 89 D1                                        mov r9, rdx
0x140B9: 5E                                              pop rsi
0x140BA: 48 89 E2                                        mov rdx, rsp
0x140BD: 48 83 E4 F0                                     and rsp, 0xfffffffffffffff0
0x140C1: 50                                              push rax
0x140C2: 54                                              push rsp
0x140C3: 45 31 C0                                        xor r8d, r8d
0x140C6: 31 C9                                           xor ecx, ecx
0x140C8: 48 8D 3D 11 73 00 00                            lea rdi, ptr [rip+0x7311]
0x140CF: FF 15 03 9B 03 00                               call qword ptr [rip+0x39b03]
0x140D5: F4                                              hlt 
