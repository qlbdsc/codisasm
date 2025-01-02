0x10010DC: 55                                              push ebp
0x10010DD: 8B EC                                           mov ebp, esp
0x10010DF: 81 EC 00 04 00 00                               sub esp, 0x400
0x10010E5: 53                                              push ebx
0x10010E6: 56                                              push esi
0x10010E7: 57                                              push edi
0x10010E8: 68 40 20 00 01                                  push 0x1002040
0x10010ED: 68 01 01 00 00                                  push 0x101
0x10010F2: FF 15 28 10 00 01                               call dword ptr [0x1001028]
0x10010F8: 83 F8 FF                                        cmp eax, 0xffffffff
0x10010FB: 75 11                                           jnz 0x13
0x10010FD: FF 15 0C 10 00 01                               call dword ptr [0x100100c]
0x1001103: 50                                              push eax
0x1001104: 68 13 27 00 00                                  push 0x2713
0x1001109: E8 2B 03 00 00                                  call 0x330
0x100110E: 8B 7D 0C                                        mov edi, dword ptr [ebp+0xc]
0x1001111: 33 DB                                           xor ebx, ebx
0x1001113: BE AC 10 00 01                                  mov esi, 0x10010ac
0x1001118: EB 07                                           jmp 0x9
0x100111A: 3C 73                                           cmp al, 0x73
0x100111C: 75 24                                           jnz 0x26
0x100111E: 33 DB                                           xor ebx, ebx
0x1001120: 43                                              inc ebx
0x1001121: 56                                              push esi
0x1001122: 57                                              push edi
0x1001123: FF 75 08                                        push dword ptr [ebp+0x8]
0x1001126: E8 4A 03 00 00                                  call 0x34f
0x100112B: 83 F8 FF                                        cmp eax, 0xffffffff
0x100112E: 75 EA                                           jnz 0xffffffec
0x1001130: A1 04 20 00 01                                  mov eax, dword ptr [0x1002004]
0x1001135: 83 3C 87 00                                     cmp dword ptr [edi+eax*4], 0x0
0x1001139: 74 19                                           jz 0x1b
0x100113B: 68 14 27 00 00                                  push 0x2714
0x1001140: EB 05                                           jmp 0x7
0x1001142: 68 10 27 00 00                                  push 0x2710
0x1001147: 6A 02                                           push 0x2
0x1001149: E8 7C 02 00 00                                  call 0x281
0x100114E: 59                                              pop ecx
0x100114F: 59                                              pop ecx
0x1001150: 6A 01                                           push 0x1
0x1001152: EB 7C                                           jmp 0x7e
0x1001154: 68 00 04 00 00                                  push 0x400
0x1001159: 8D 85 00 FC FF FF                               lea eax, ptr [ebp-0x400]
0x100115F: 50                                              push eax
0x1001160: FF 15 24 10 00 01                               call dword ptr [0x1001024]
0x1001166: 85 C0                                           test eax, eax
0x1001168: 7D 13                                           jnl 0x15
0x100116A: FF 15 0C 10 00 01                               call dword ptr [0x100100c]
0x1001170: 50                                              push eax
0x1001171: 68 12 27 00 00                                  push 0x2712
0x1001176: E8 BE 02 00 00                                  call 0x2c3
0x100117B: EB D3                                           jmp 0xffffffd5
0x100117D: 85 DB                                           test ebx, ebx
0x100117F: 74 18                                           jz 0x1a
0x1001181: 8D 85 00 FC FF FF                               lea eax, ptr [ebp-0x400]
0x1001187: 6A 2E                                           push 0x2e
0x1001189: 50                                              push eax
0x100118A: FF 15 6C 10 00 01                               call dword ptr [0x100106c]
0x1001190: 85 C0                                           test eax, eax
0x1001192: 59                                              pop ecx
0x1001193: 59                                              pop ecx
0x1001194: 74 03                                           jz 0x5
0x1001196: 80 20 00                                        and byte ptr [eax], 0x0
0x1001199: 8D 85 00 FC FF FF                               lea eax, ptr [ebp-0x400]
0x100119F: 8D 50 01                                        lea edx, ptr [eax+0x1]
0x10011A2: 8A 08                                           mov cl, byte ptr [eax]
0x10011A4: 40                                              inc eax
0x10011A5: 84 C9                                           test cl, cl
0x10011A7: 75 F9                                           jnz 0xfffffffb
0x10011A9: 2B C2                                           sub eax, edx
0x10011AB: 50                                              push eax
0x10011AC: 8D 85 00 FC FF FF                               lea eax, ptr [ebp-0x400]
0x10011B2: 50                                              push eax
0x10011B3: 8D 85 00 FC FF FF                               lea eax, ptr [ebp-0x400]
0x10011B9: 50                                              push eax
0x10011BA: FF 15 1C 10 00 01                               call dword ptr [0x100101c]
0x10011C0: 8D 85 00 FC FF FF                               lea eax, ptr [ebp-0x400]
0x10011C6: 50                                              push eax
0x10011C7: FF 15 70 10 00 01                               call dword ptr [0x1001070]
0x10011CD: 59                                              pop ecx
0x10011CE: 6A 00                                           push 0x0
0x10011D0: FF 15 74 10 00 01                               call dword ptr [0x1001074]
0x10011D6: CC                                              int3 
0x10011D7: 6A 28                                           push 0x28
0x10011D9: 68 B0 10 00 01                                  push 0x10010b0
0x10011DE: E8 91 01 00 00                                  call 0x196
0x10011E3: 33 FF                                           xor edi, edi
0x10011E5: 57                                              push edi
0x10011E6: FF 15 08 10 00 01                               call dword ptr [0x1001008]
0x10011EC: 66 81 38 4D 5A                                  cmp word ptr [eax], 0x5a4d
0x10011F1: 75 1F                                           jnz 0x21
0x10011F3: 8B 48 3C                                        mov ecx, dword ptr [eax+0x3c]
0x10011F6: 03 C8                                           add ecx, eax
0x10011F8: 81 39 50 45 00 00                               cmp dword ptr [ecx], 0x4550
0x10011FE: 75 12                                           jnz 0x14
0x1001200: 0F B7 41 18                                     movzx eax, word ptr [ecx+0x18]
0x1001204: 3D 0B 01 00 00                                  cmp eax, 0x10b
0x1001209: 74 1F                                           jz 0x21
0x100120B: 3D 0B 02 00 00                                  cmp eax, 0x20b
0x1001210: 74 05                                           jz 0x7
0x1001212: 89 7D E4                                        mov dword ptr [ebp-0x1c], edi
0x1001215: EB 27                                           jmp 0x29
0x1001217: 83 B9 84 00 00 00 0E                            cmp dword ptr [ecx+0x84], 0xe
0x100121E: 76 F2                                           jbe 0xfffffff4
0x1001220: 33 C0                                           xor eax, eax
0x1001222: 39 B9 F8 00 00 00                               cmp dword ptr [ecx+0xf8], edi
0x1001228: EB 0E                                           jmp 0x10
0x100122A: 83 79 74 0E                                     cmp dword ptr [ecx+0x74], 0xe
0x100122E: 76 E2                                           jbe 0xffffffe4
0x1001230: 33 C0                                           xor eax, eax
0x1001232: 39 B9 E8 00 00 00                               cmp dword ptr [ecx+0xe8], edi
0x1001238: 0F 95 C0                                        setnz al
0x100123B: 89 45 E4                                        mov dword ptr [ebp-0x1c], eax
0x100123E: 89 7D FC                                        mov dword ptr [ebp-0x4], edi
0x1001241: 6A 01                                           push 0x1
0x1001243: FF 15 38 10 00 01                               call dword ptr [0x1001038]
0x1001249: 59                                              pop ecx
0x100124A: 83 0D D0 21 00 01 FF                            or dword ptr [0x10021d0], 0xffffffff
0x1001251: 83 0D D4 21 00 01 FF                            or dword ptr [0x10021d4], 0xffffffff
0x1001258: FF 15 34 10 00 01                               call dword ptr [0x1001034]
0x100125E: 8B 0D 2C 20 00 01                               mov ecx, dword ptr [0x100202c]
0x1001264: 89 08                                           mov dword ptr [eax], ecx
0x1001266: FF 15 30 10 00 01                               call dword ptr [0x1001030]
0x100126C: 8B 0D 28 20 00 01                               mov ecx, dword ptr [0x1002028]
0x1001272: 89 08                                           mov dword ptr [eax], ecx
0x1001274: A1 44 10 00 01                                  mov eax, dword ptr [0x1001044]
0x1001279: 8B 00                                           mov eax, dword ptr [eax]
0x100127B: A3 D8 21 00 01                                  mov dword ptr [0x10021d8], eax
0x1001280: E8 EB 00 00 00                                  call 0xf0
0x1001285: 39 3D 00 20 00 01                               cmp dword ptr [0x1002000], edi
0x100128B: 75 0C                                           jnz 0xe
0x100128D: 68 70 13 00 01                                  push 0x1001370
0x1001292: FF 15 58 10 00 01                               call dword ptr [0x1001058]
0x1001298: 59                                              pop ecx
0x1001299: E8 C0 00 00 00                                  call 0xc5
0x100129E: 68 88 10 00 01                                  push 0x1001088
0x10012A3: 68 84 10 00 01                                  push 0x1001084
0x10012A8: E8 AB 00 00 00                                  call 0xb0
0x10012AD: A1 24 20 00 01                                  mov eax, dword ptr [0x1002024]
0x10012B2: 89 45 E0                                        mov dword ptr [ebp-0x20], eax
0x10012B5: 8D 45 E0                                        lea eax, ptr [ebp-0x20]
0x10012B8: 50                                              push eax
0x10012B9: FF 35 20 20 00 01                               push dword ptr [0x1002020]
0x10012BF: 8D 45 DC                                        lea eax, ptr [ebp-0x24]
0x10012C2: 50                                              push eax
0x10012C3: 8D 45 D8                                        lea eax, ptr [ebp-0x28]
0x10012C6: 50                                              push eax
0x10012C7: 8D 45 D4                                        lea eax, ptr [ebp-0x2c]
0x10012CA: 50                                              push eax
0x10012CB: FF 15 60 10 00 01                               call dword ptr [0x1001060]
0x10012D1: 89 45 D0                                        mov dword ptr [ebp-0x30], eax
0x10012D4: 68 80 10 00 01                                  push 0x1001080
0x10012D9: 68 7C 10 00 01                                  push 0x100107c
0x10012DE: E8 75 00 00 00                                  call 0x7a
0x10012E3: 8B 45 DC                                        mov eax, dword ptr [ebp-0x24]
0x10012E6: 8B 0D 64 10 00 01                               mov ecx, dword ptr [0x1001064]
0x10012EC: 89 01                                           mov dword ptr [ecx], eax
0x10012EE: FF 75 DC                                        push dword ptr [ebp-0x24]
0x10012F1: FF 75 D8                                        push dword ptr [ebp-0x28]
0x10012F4: FF 75 D4                                        push dword ptr [ebp-0x2c]
0x10012F7: E8 E0 FD FF FF                                  call 0xfffffde5
0x10012FC: 83 C4 30                                        add esp, 0x30
0x10012FF: 8B F0                                           mov esi, eax
0x1001301: 89 75 CC                                        mov dword ptr [ebp-0x34], esi
0x1001304: 39 7D E4                                        cmp dword ptr [ebp-0x1c], edi
0x1001307: 75 07                                           jnz 0x9
0x1001309: 56                                              push esi
0x100130A: FF 15 74 10 00 01                               call dword ptr [0x1001074]
0x1001310: FF 15 40 10 00 01                               call dword ptr [0x1001040]
0x1001316: EB 2D                                           jmp 0x2f
0x1001345: 83 4D FC FF                                     or dword ptr [ebp-0x4], 0xffffffff
0x1001349: 8B C6                                           mov eax, esi
0x100134B: E8 5D 00 00 00                                  call 0x62
0x1001350: C3                                              ret 
0x1001358: FF 25 5C 10 00 01                               jmp dword ptr [0x100105c]
0x100135E: 68 00 00 03 00                                  push 0x30000
0x1001363: 68 00 00 01 00                                  push 0x10000
0x1001368: E8 51 00 00 00                                  call 0x56
0x100136D: 59                                              pop ecx
0x100136E: 59                                              pop ecx
0x100136F: C3                                              ret 
0x1001370: 33 C0                                           xor eax, eax
0x1001372: C3                                              ret 
0x1001374: 68 C4 13 00 01                                  push 0x10013c4
0x1001379: 64 A1 00 00 00 00                               mov eax, dword ptr fs:[0x0]
0x100137F: 50                                              push eax
0x1001380: 64 89 25 00 00 00 00                            mov dword ptr fs:[0x0], esp
0x1001387: 8B 44 24 10                                     mov eax, dword ptr [esp+0x10]
0x100138B: 89 6C 24 10                                     mov dword ptr [esp+0x10], ebp
0x100138F: 8D 6C 24 10                                     lea ebp, ptr [esp+0x10]
0x1001393: 2B E0                                           sub esp, eax
0x1001395: 53                                              push ebx
0x1001396: 56                                              push esi
0x1001397: 57                                              push edi
0x1001398: 8B 45 F8                                        mov eax, dword ptr [ebp-0x8]
0x100139B: 89 65 E8                                        mov dword ptr [ebp-0x18], esp
0x100139E: 50                                              push eax
0x100139F: 8B 45 FC                                        mov eax, dword ptr [ebp-0x4]
0x10013A2: C7 45 FC FF FF FF FF                            mov dword ptr [ebp-0x4], 0xffffffff
0x10013A9: 89 45 F8                                        mov dword ptr [ebp-0x8], eax
0x10013AC: C3                                              ret 
0x10013AD: 8B 4D F0                                        mov ecx, dword ptr [ebp-0x10]
0x10013B0: 64 89 0D 00 00 00 00                            mov dword ptr fs:[0x0], ecx
0x10013B7: 59                                              pop ecx
0x10013B8: 5F                                              pop edi
0x10013B9: 5E                                              pop esi
0x10013BA: 5B                                              pop ebx
0x10013BB: C9                                              leave 
0x10013BC: 51                                              push ecx
0x10013BD: C3                                              ret 
0x10013BE: FF 25 3C 10 00 01                               jmp dword ptr [0x100103c]
0x10013CA: 55                                              push ebp
0x10013CB: 8B EC                                           mov ebp, esp
0x10013CD: 51                                              push ecx
0x10013CE: 51                                              push ecx
0x10013CF: 8D 45 10                                        lea eax, ptr [ebp+0x10]
0x10013D2: 89 45 F8                                        mov dword ptr [ebp-0x8], eax
0x10013D5: 8D 45 F8                                        lea eax, ptr [ebp-0x8]
0x10013D8: 50                                              push eax
0x10013D9: 6A 00                                           push 0x0
0x10013DB: 8D 45 FC                                        lea eax, ptr [ebp-0x4]
0x10013DE: 50                                              push eax
0x10013DF: 6A 00                                           push 0x0
0x10013E1: FF 75 0C                                        push dword ptr [ebp+0xc]
0x10013E4: FF 35 30 20 00 01                               push dword ptr [0x1002030]
0x10013EA: 68 00 09 00 00                                  push 0x900
0x10013EF: FF 15 00 10 00 01                               call dword ptr [0x1001000]
0x10013F5: 85 C0                                           test eax, eax
0x10013F7: 75 02                                           jnz 0x4
0x10013F9: C9                                              leave 
0x10013FA: C3                                              ret 
0x10013FB: 8B 45 FC                                        mov eax, dword ptr [ebp-0x4]
0x10013FE: 8D 50 01                                        lea edx, ptr [eax+0x1]
0x1001401: 8A 08                                           mov cl, byte ptr [eax]
0x1001403: 40                                              inc eax
0x1001404: 84 C9                                           test cl, cl
0x1001406: 75 F9                                           jnz 0xfffffffb
0x1001408: 56                                              push esi
0x1001409: 2B C2                                           sub eax, edx
0x100140B: 8B F0                                           mov esi, eax
0x100140D: 56                                              push esi
0x100140E: FF 75 FC                                        push dword ptr [ebp-0x4]
0x1001411: FF 75 FC                                        push dword ptr [ebp-0x4]
0x1001414: FF 15 1C 10 00 01                               call dword ptr [0x100101c]
0x100141A: 56                                              push esi
0x100141B: FF 75 FC                                        push dword ptr [ebp-0x4]
0x100141E: FF 75 08                                        push dword ptr [ebp+0x8]
0x1001421: E8 3A 01 00 00                                  call 0x13f
0x1001426: 83 C4 0C                                        add esp, 0xc
0x1001429: FF 75 FC                                        push dword ptr [ebp-0x4]
0x100142C: 8B F0                                           mov esi, eax
0x100142E: FF 15 04 10 00 01                               call dword ptr [0x1001004]
0x1001434: 8B C6                                           mov eax, esi
0x1001436: 5E                                              pop esi
0x1001437: C9                                              leave 
0x1001438: C3                                              ret 
0x1001439: 55                                              push ebp
0x100143A: 8B EC                                           mov ebp, esp
0x100143C: 33 C0                                           xor eax, eax
0x100143E: 50                                              push eax
0x100143F: 50                                              push eax
0x1001440: 8D 4D 08                                        lea ecx, ptr [ebp+0x8]
0x1001443: 51                                              push ecx
0x1001444: 50                                              push eax
0x1001445: FF 75 08                                        push dword ptr [ebp+0x8]
0x1001448: FF 35 30 20 00 01                               push dword ptr [0x1002030]
0x100144E: 68 00 09 00 00                                  push 0x900
0x1001453: FF 15 00 10 00 01                               call dword ptr [0x1001000]
0x1001459: 85 C0                                           test eax, eax
0x100145B: 74 14                                           jz 0x16
0x100145D: FF 75 0C                                        push dword ptr [ebp+0xc]
0x1001460: FF 75 08                                        push dword ptr [ebp+0x8]
0x1001463: E8 FE 00 00 00                                  call 0x103
0x1001468: FF 75 08                                        push dword ptr [ebp+0x8]
0x100146B: FF 15 04 10 00 01                               call dword ptr [0x1001004]
0x1001471: 5D                                              pop ebp
0x1001472: C2 08 00                                        ret 0x8
0x1001475: 56                                              push esi
0x1001476: 8B 35 04 20 00 01                               mov esi, dword ptr [0x1002004]
0x100147C: 3B 74 24 08                                     cmp esi, dword ptr [esp+0x8]
0x1001480: C7 05 DC 21 00 01 34 20 00 01                   mov dword ptr [0x10021dc], 0x1002034
0x100148A: 7C 08                                           jl 0xa
0x100148C: 83 C8 FF                                        or eax, 0xffffffff
0x100148F: E9 C8 00 00 00                                  jmp 0xcd
0x1001494: 53                                              push ebx
0x1001495: 8B 5C 24 10                                     mov ebx, dword ptr [esp+0x10]
0x1001499: 8B 04 B3                                        mov eax, dword ptr [ebx+esi*4]
0x100149C: 80 38 2D                                        cmp byte ptr [eax], 0x2d
0x100149F: 57                                              push edi
0x10014A0: 74 08                                           jz 0xa
0x10014A2: 83 C8 FF                                        or eax, 0xffffffff
0x10014A5: E9 B0 00 00 00                                  jmp 0xb5
0x10014AA: 8B 0D 08 20 00 01                               mov ecx, dword ptr [0x1002008]
0x10014B0: 8B 7C 24 18                                     mov edi, dword ptr [esp+0x18]
0x10014B4: 03 C1                                           add eax, ecx
0x10014B6: 8A 0F                                           mov cl, byte ptr [edi]
0x10014B8: 84 C9                                           test cl, cl
0x10014BA: 8A 10                                           mov dl, byte ptr [eax]
0x10014BC: 74 10                                           jz 0x12
0x10014BE: 3A CA                                           cmp cl, dl
0x10014C0: 74 07                                           jz 0x9
0x10014C2: 47                                              inc edi
0x10014C3: 8A 0F                                           mov cl, byte ptr [edi]
0x10014C5: 84 C9                                           test cl, cl
0x10014C7: 75 F5                                           jnz 0xfffffff7
0x10014C9: 80 3F 00                                        cmp byte ptr [edi], 0x0
0x10014CC: 75 18                                           jnz 0x1a
0x10014CE: 0F BE C2                                        movsx eax, dl
0x10014D1: 50                                              push eax
0x10014D2: 68 D0 07 00 00                                  push 0x7d0
0x10014D7: 6A 01                                           push 0x1
0x10014D9: E8 EC FE FF FF                                  call 0xfffffef1
0x10014DE: 83 C4 0C                                        add esp, 0xc
0x10014E1: 6A 3F                                           push 0x3f
0x10014E3: 58                                              pop eax
0x10014E4: EB 74                                           jmp 0x76
0x10014E6: 80 7F 01 3A                                     cmp byte ptr [edi+0x1], 0x3a
0x10014EA: 75 4C                                           jnz 0x4e
0x10014EC: 33 C9                                           xor ecx, ecx
0x10014EE: 40                                              inc eax
0x10014EF: 41                                              inc ecx
0x10014F0: 80 38 00                                        cmp byte ptr [eax], 0x0
0x10014F3: 75 10                                           jnz 0x12
0x10014F5: 46                                              inc esi
0x10014F6: 89 35 04 20 00 01                               mov dword ptr [0x1002004], esi
0x10014FC: 89 0D 08 20 00 01                               mov dword ptr [0x1002008], ecx
0x1001502: 8B 04 B3                                        mov eax, dword ptr [ebx+esi*4]
0x1001505: 85 C0                                           test eax, eax
0x1001507: A3 DC 21 00 01                                  mov dword ptr [0x10021dc], eax
0x100150C: 75 1B                                           jnz 0x1d
0x100150E: 0F BE C2                                        movsx eax, dl
0x1001511: 50                                              push eax
0x1001512: 68 D1 07 00 00                                  push 0x7d1
0x1001517: 51                                              push ecx
0x1001518: E8 AD FE FF FF                                  call 0xfffffeb2
0x100151D: C7 05 DC 21 00 01 34 20 00 01                   mov dword ptr [0x10021dc], 0x1002034
0x1001527: EB B5                                           jmp 0xffffffb7
0x1001529: 46                                              inc esi
0x100152A: 89 35 04 20 00 01                               mov dword ptr [0x1002004], esi
0x1001530: 89 0D 08 20 00 01                               mov dword ptr [0x1002008], ecx
0x1001536: EB 1F                                           jmp 0x21
0x1001538: 80 78 01 00                                     cmp byte ptr [eax+0x1], 0x0
0x100153C: 75 13                                           jnz 0x15
0x100153E: 46                                              inc esi
0x100153F: 89 35 04 20 00 01                               mov dword ptr [0x1002004], esi
0x1001545: C7 05 08 20 00 01 01 00 00 00                   mov dword ptr [0x1002008], 0x1
0x100154F: EB 06                                           jmp 0x8
0x1001551: FF 05 08 20 00 01                               inc dword ptr [0x1002008]
0x1001557: 0F BE C2                                        movsx eax, dl
0x100155A: 5F                                              pop edi
0x100155B: 5B                                              pop ebx
0x100155C: 5E                                              pop esi
0x100155D: C2 0C 00                                        ret 0xc
0x1001560: FF 25 68 10 00 01                               jmp dword ptr [0x1001068]
0x1001566: FF 25 14 10 00 01                               jmp dword ptr [0x1001014]
0x10043BA: 68 D7 11 00 01                                  push 0x10011d7
0x10043BF: C3                                              ret 
