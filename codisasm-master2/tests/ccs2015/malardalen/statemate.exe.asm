0x401000: 55                                              push rbp
0x401001: 89 E5                                           mov ebp, esp
0x401003: 83 EC 08                                        sub esp, 0x8
0x401006: E8 07 19 00 00                                  call 0x190c
0x40100B: C9                                              leave 
0x40100C: C3                                              ret 
0x40100D: 55                                              push rbp
0x40100E: 89 E5                                           mov ebp, esp
0x401010: 83 EC 10                                        sub esp, 0x10
0x401013: 0F B6 05 04 60 40 00                            movzx eax, byte ptr [rip+0x406004]
0x40101A: 84 C0                                           test al, al
0x40101C: 74 0A                                           jz 0xc
0x40101E: A1 C0 60 40 00 A3 70 60 40                      mov eax, dword ptr [0x406070a3004060c0]
0x401027: 00 0F                                           add byte ptr [rdi], cl
0x401028: 0F B6 05 04 60 40 00                            movzx eax, byte ptr [rip+0x406004]
0x401029: B6 05                                           mov dh, 0x5
0x40102B: 04 60                                           add al, 0x60
0x40102D: 40 00 84 C0 75 0B 0F B6                         add byte ptr [rax+rax*8-0x49f0f48b], al
0x40102F: 84 C0                                           test al, al
0x401031: 75 0B                                           jnz 0xd
0x401033: 0F B6 05 06 60 40 00                            movzx eax, byte ptr [rip+0x406006]
0x401035: 05 06 60 40 00                                  add eax, 0x406006
0x40103A: 84 C0                                           test al, al
0x40103C: 74 0A                                           jz 0xc
0x40103E: A1 C0 60 40 00 A3 FC 60 40                      mov eax, dword ptr [0x4060fca3004060c0]
0x401047: 00 A1 B8 60 40 00                               add byte ptr [rcx+0x4060b8], ah
0x401048: A1 B8 60 40 00 85 C0 74 41                      mov eax, dword ptr [0x4174c085004060b8]
0x40104D: 85 C0                                           test eax, eax
0x40104F: 74 41                                           jz 0x43
0x401051: 8B 15 C0 60 40 00                               mov edx, dword ptr [rip+0x4060c0]
0x401057: A1 B8 60 40 00 29 C2 89 D0                      mov eax, dword ptr [0xd089c229004060b8]
0x401060: 89 45 F0                                        mov dword ptr [rbp-0x10], eax
0x401063: C7 45 F4 00 00 00 00                            mov dword ptr [rbp-0xc], 0x0
0x40106A: DF 6D F0                                        fild st0, qword ptr [rbp-0x10]
0x40106D: DD 5D F8                                        fstp qword ptr [rbp-0x8], st0
0x401070: DD 45 F8                                        fld st0, qword ptr [rbp-0x8]
0x401073: DD 05 00 30 40 00                               fld st0, qword ptr [rip+0x403000]
0x401079: D9 C9                                           fxch st0, st1
0x40107B: DF E9                                           fucomip st0, st1
0x40107D: DD D8                                           fstp st0, st0
0x40107F: 72 11                                           jb 0x13
0x401081: C6 05 16 61 40 00 00                            mov byte ptr [rip+0x406116], 0x0
0x401088: C7 05 B8 60 40 00 00 00 00 00                   mov dword ptr [rip+0x4060b8], 0x0
0x401092: A1 60 60 40 00 85 C0 74 41                      mov eax, dword ptr [0x4174c08500406060]
0x40109B: 8B 15 C0 60 40 00                               mov edx, dword ptr [rip+0x4060c0]
0x4010A1: A1 60 60 40 00 29 C2 89 D0                      mov eax, dword ptr [0xd089c22900406060]
0x4010AA: 89 45 F0                                        mov dword ptr [rbp-0x10], eax
0x4010AD: C7 45 F4 00 00 00 00                            mov dword ptr [rbp-0xc], 0x0
0x4010B4: DF 6D F0                                        fild st0, qword ptr [rbp-0x10]
0x4010B7: DD 5D F8                                        fstp qword ptr [rbp-0x8], st0
0x4010BA: DD 45 F8                                        fld st0, qword ptr [rbp-0x8]
0x4010BD: DD 05 00 30 40 00                               fld st0, qword ptr [rip+0x403000]
0x4010C3: D9 C9                                           fxch st0, st1
0x4010C5: DF E9                                           fucomip st0, st1
0x4010C7: DD D8                                           fstp st0, st0
0x4010C9: 72 11                                           jb 0x13
0x4010CB: C6 05 ED 60 40 00 00                            mov byte ptr [rip+0x4060ed], 0x0
0x4010D2: C7 05 60 60 40 00 00 00 00 00                   mov dword ptr [rip+0x406060], 0x0
0x4010DC: A1 B0 60 40 00 85 C0 74 41                      mov eax, dword ptr [0x4174c085004060b0]
0x4010E5: 8B 15 C0 60 40 00                               mov edx, dword ptr [rip+0x4060c0]
0x4010EB: A1 B0 60 40 00 29 C2 89 D0                      mov eax, dword ptr [0xd089c229004060b0]
0x4010F4: 89 45 F0                                        mov dword ptr [rbp-0x10], eax
0x4010F7: C7 45 F4 00 00 00 00                            mov dword ptr [rbp-0xc], 0x0
0x4010FE: DF 6D F0                                        fild st0, qword ptr [rbp-0x10]
0x401101: DD 5D F8                                        fstp qword ptr [rbp-0x8], st0
0x401104: DD 45 F8                                        fld st0, qword ptr [rbp-0x8]
0x401107: DD 05 00 30 40 00                               fld st0, qword ptr [rip+0x403000]
0x40110D: D9 C9                                           fxch st0, st1
0x40110F: DF E9                                           fucomip st0, st1
0x401111: DD D8                                           fstp st0, st0
0x401113: 72 11                                           jb 0x13
0x401115: C6 05 ED 60 40 00 00                            mov byte ptr [rip+0x4060ed], 0x0
0x40111C: C7 05 B0 60 40 00 00 00 00 00                   mov dword ptr [rip+0x4060b0], 0x0
0x401126: A1 40 60 40 00 85 C0 74 3A                      mov eax, dword ptr [0x3a74c08500406040]
0x40112F: 8B 15 C0 60 40 00                               mov edx, dword ptr [rip+0x4060c0]
0x401135: A1 40 60 40 00 29 C2 89 D0                      mov eax, dword ptr [0xd089c22900406040]
0x40113E: 89 45 F0                                        mov dword ptr [rbp-0x10], eax
0x401141: C7 45 F4 00 00 00 00                            mov dword ptr [rbp-0xc], 0x0
0x401148: DF 6D F0                                        fild st0, qword ptr [rbp-0x10]
0x40114B: DD 5D F8                                        fstp qword ptr [rbp-0x8], st0
0x40114E: DD 45 F8                                        fld st0, qword ptr [rbp-0x8]
0x401151: DD 05 00 30 40 00                               fld st0, qword ptr [rip+0x403000]
0x401157: D9 C9                                           fxch st0, st1
0x401159: DF E9                                           fucomip st0, st1
0x40115B: DD D8                                           fstp st0, st0
0x40115D: 72 0A                                           jb 0xc
0x40115F: C7 05 40 60 40 00 00 00 00 00                   mov dword ptr [rip+0x406040], 0x0
0x401169: A1 A0 60 40 00 85 C0 74 3A                      mov eax, dword ptr [0x3a74c085004060a0]
0x401172: 8B 15 C0 60 40 00                               mov edx, dword ptr [rip+0x4060c0]
0x401178: A1 A0 60 40 00 29 C2 89 D0                      mov eax, dword ptr [0xd089c229004060a0]
0x401181: 89 45 F0                                        mov dword ptr [rbp-0x10], eax
0x401184: C7 45 F4 00 00 00 00                            mov dword ptr [rbp-0xc], 0x0
0x40118B: DF 6D F0                                        fild st0, qword ptr [rbp-0x10]
0x40118E: DD 5D F8                                        fstp qword ptr [rbp-0x8], st0
0x401191: DD 45 F8                                        fld st0, qword ptr [rbp-0x8]
0x401194: DD 05 00 30 40 00                               fld st0, qword ptr [rip+0x403000]
0x40119A: D9 C9                                           fxch st0, st1
0x40119C: DF E9                                           fucomip st0, st1
0x40119E: DD D8                                           fstp st0, st0
0x4011A0: 72 0A                                           jb 0xc
0x4011A2: C7 05 A0 60 40 00 00 00 00 00                   mov dword ptr [rip+0x4060a0], 0x0
0x4011AC: 0F B6 05 00 60 40 00                            movzx eax, byte ptr [rip+0x406000]
0x4011B3: 84 C0                                           test al, al
0x4011B5: 75 0F                                           jnz 0x11
0x4011B7: 8B 15 4C 60 40 00                               mov edx, dword ptr [rip+0x40604c]
0x4011BD: A1 9C 60 40 00 39 C2 74 0A                      mov eax, dword ptr [0xa74c2390040609c]
0x4011C6: A1 C0 60 40 00 A3 0C 61 40                      mov eax, dword ptr [0x40610ca3004060c0]
0x4011CF: 00 C9                                           add cl, cl
0x4011D1: C3                                              ret 
0x4011D2: 55                                              push rbp
0x4011D3: 89 E5                                           mov ebp, esp
0x4011D5: C7 05 0C 61 40 00 00 00 00 00                   mov dword ptr [rip+0x40610c], 0x0
0x4011DF: C7 05 FC 60 40 00 00 00 00 00                   mov dword ptr [rip+0x4060fc], 0x0
0x4011E9: C7 05 70 60 40 00 00 00 00 00                   mov dword ptr [rip+0x406070], 0x0
0x4011F3: C6 05 F8 60 40 00 00                            mov byte ptr [rip+0x4060f8], 0x0
0x4011FA: C6 05 E9 60 40 00 00                            mov byte ptr [rip+0x4060e9], 0x0
0x401201: C6 05 96 60 40 00 00                            mov byte ptr [rip+0x406096], 0x0
0x401208: C6 05 F6 60 40 00 00                            mov byte ptr [rip+0x4060f6], 0x0
0x40120F: C6 05 D8 60 40 00 00                            mov byte ptr [rip+0x4060d8], 0x0
0x401216: C6 05 EA 60 40 00 00                            mov byte ptr [rip+0x4060ea], 0x0
0x40121D: C6 05 78 60 40 00 00                            mov byte ptr [rip+0x406078], 0x0
0x401224: C6 05 45 60 40 00 00                            mov byte ptr [rip+0x406045], 0x0
0x40122B: C6 05 44 60 40 00 00                            mov byte ptr [rip+0x406044], 0x0
0x401232: C6 05 C7 60 40 00 00                            mov byte ptr [rip+0x4060c7], 0x0
0x401239: C6 05 81 60 40 00 00                            mov byte ptr [rip+0x406081], 0x0
0x401240: C6 05 11 61 40 00 00                            mov byte ptr [rip+0x406111], 0x0
0x401247: C6 05 FA 60 40 00 00                            mov byte ptr [rip+0x4060fa], 0x0
0x40124E: C6 05 14 61 40 00 00                            mov byte ptr [rip+0x406114], 0x0
0x401255: C6 05 02 61 40 00 00                            mov byte ptr [rip+0x406102], 0x0
0x40125C: C6 05 A9 60 40 00 00                            mov byte ptr [rip+0x4060a9], 0x0
0x401263: 5D                                              pop rbp
0x401264: C3                                              ret 
0x40219F: 55                                              push rbp
0x4021A0: 89 E5                                           mov ebp, esp
0x4021A2: C7 05 C0 60 40 00 01 00 00 00                   mov dword ptr [rip+0x4060c0], 0x1
0x4021AC: C6 05 A4 60 40 00 00                            mov byte ptr [rip+0x4060a4], 0x0
0x4021B3: C6 05 AE 60 40 00 00                            mov byte ptr [rip+0x4060ae], 0x0
0x4021BA: E9 42 07 00 00                                  jmp 0x747
0x4021BF: C6 05 A4 60 40 00 01                            mov byte ptr [rip+0x4060a4], 0x1
0x4021C6: 0F B6 05 AE 60 40 00                            movzx eax, byte ptr [rip+0x4060ae]
0x4021CD: 83 C0 01                                        add eax, 0x1
0x4021D0: A2 AE 60 40 00 0F B6 05 FA                      mov byte ptr [0xfa05b60f004060ae], al
0x402901: 0F B6 05 A4 60 40 00                            movzx eax, byte ptr [rip+0x4060a4]
0x402908: 84 C0                                           test al, al
0x40290A: 0F 84 AF F8 FF FF                               jz 0xfffffffffffff8b5
0x402910: 5D                                              pop rbp
0x402911: C3                                              ret 
0x402912: 55                                              push rbp
0x402913: 89 E5                                           mov ebp, esp
0x402915: E8 B8 E8 FF FF                                  call 0xffffffffffffe8bd
0x40291A: E8 EE E6 FF FF                                  call 0xffffffffffffe6f3
0x40291F: E8 7B F8 FF FF                                  call 0xfffffffffffff880
0x402924: B8 00 00 00 00                                  mov eax, 0x0
0x402929: 5D                                              pop rbp
0x40292A: C3                                              ret 
