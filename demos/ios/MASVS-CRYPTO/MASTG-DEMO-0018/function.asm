            ;-- section.0.__TEXT.__text:
            ; XREFS: 0x1000000d0  STRN 0x100004040  STRN 0x100004168  CALL 0x100004774  CALL 0x1000047d8  CALL 0x100005330  
┌ 276: sym.func.100004000 (int64_t arg1, int64_t arg2, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg_80h);
│           0x100004000      sub sp, sp, 0x80                          ; [00] -r-x section size 13240 named 0.__TEXT.__text
│           0x100004004      str x28, [var_20h]
│           ; CODE XREF from str.0123456789abcdef01234567 @ +0x14(x)
│           0x100004008      stp x27, x26, [var_30h]
│           0x10000400c      stp x25, x24, [var_40h]
│           0x100004010      stp x23, x22, [var_50h]
│           0x100004014      stp x20, x19, [var_60h]
│           0x100004018      stp x29, x30, [var_70h]
│           0x10000401c      add x29, sp, 0x70
│           0x100004020      mov x20, x8
│           0x100004024      lsr x8, x4, 0x3e                          ; arg5
│           0x100004028      mov x19, x21
│           0x10000402c      mov x24, x6                               ; arg7
│           0x100004030      mov x26, x5                               ; arg6
│           0x100004034      mov x22, x1                               ; arg2
│           0x100004038      mov x23, x0                               ; arg1
│           0x10000403c      mov x25, 0
│           0x100004040      adrp x9, sym.func.100004000               ; 0x100004000
│           0x100004044      add x9, x9, 0x114                         ; 0x100004114
│                                                                      ; sym.func.100004114
│           ;-- switch:
│           0x100004048      adr x10, switch.0x100004048               ; switch table (4 cases) at 0x100004114
│           0x10000404c      ldrsw x11, [x9, x8, lsl 2]                ; 0x100004114
│                                                                      ; sym.func.100004114
│           0x100004050      add x10, x10, x11                         ; 0x100004058
│                                                                      ; case.0x100004048.0
│           0x100004054      br x10
│           ;-- case 0:                                                ; from 0x100004048
│           ; DATA XREFS from sym.func.100004000 @ 0x100004048(x), 0x100004050(w)
│           0x100004058      ubfx x25, x4, 0x30, 8                     ; arg5
│       ┌─< 0x10000405c      b case.0x100004048.3
│       │   ;-- case 1:                                                ; from 0x100004048
│       │   ; CODE XREF from sym.func.100004000 @ 0x100004048(x)
│       │   0x100004060      lsr x8, x3, 0x20                          ; arg4
│       │   0x100004064      subs w8, w8, w3
│      ┌──< 0x100004068      b.vs 0x10000410c
│      ││   0x10000406c      sxtw x25, w8
│     ┌───< 0x100004070      b case.0x100004048.3
│     │││   ;-- case 2:                                                ; from 0x100004048
│     │││   ; CODE XREF from sym.func.100004000 @ 0x100004048(x)
│     │││   0x100004074      ldp x9, x8, [x3, 0x10]                    ; arg4
│     │││   0x100004078      subs x25, x8, x9
│    ┌────< 0x10000407c      b.vs 0x100004110
│    ││││   ;-- case 3:                                                ; from 0x100004048
│    ││││   ; CODE XREFS from sym.func.100004000 @ 0x100004048(x), 0x10000405c(x), 0x100004070(x)
│    │└─└─> 0x100004080      ldr x28, [x26]
│    │ │    0x100004084      ldr x27, [x28, 0x10]
│    │ │    0x100004088      mov x0, x28
│    │ │    0x10000408c      bl sym.imp.swift_isUniquelyReferenced_nonNull_native
│    │ │    0x100004090      str x28, [x26]
│    │ │┌─< 0x100004094      tbnz w0, 0, 0x1000040b0
│    │ ││   0x100004098      mov w0, 0
│    │ ││   0x10000409c      mov x1, x27                               ; signed int64_t arg2
│    │ ││   0x1000040a0      mov w2, 0
│    │ ││   0x1000040a4      mov x3, x28                               ; int64_t arg_10h
│    │ ││   0x1000040a8      bl sym.func.1000045dc
│    │ ││   0x1000040ac      mov x28, x0
│    │ ││   ; CODE XREF from sym.func.100004000 @ 0x100004094(x)
│    │ │└─> 0x1000040b0      str x28, [x26]
│    │ │    0x1000040b4      add x8, x28, 0x20
│    │ │    0x1000040b8      stp x27, x24, [var_8h]
│    │ │    0x1000040bc      str x8, [sp]
│    │ │    0x1000040c0      mov w0, 0
│    │ │    0x1000040c4      mov w1, 2
│    │ │    0x1000040c8      mov w2, 1
│    │ │    0x1000040cc      mov x3, x23
│    │ │    0x1000040d0      mov w4, 0x18
│    │ │    0x1000040d4      mov x5, 0
│    │ │    0x1000040d8      mov x6, x22
│    │ │    0x1000040dc      mov x7, x25
│    │ │    0x1000040e0      bl sym.imp.CCCrypt                        ; CCCryptorStatus CCCrypt(CCOperation op, CCAlgorithm alg, int32_t options, const void *key, uint32_t keyLength, const void *iv, const void *dataIn, uint32_t dataInLength, void *dataOut, uint32_t dataOutAvailable, uint32_t *dataOutMoved)
│    │ │    0x1000040e4      str w0, [x20]
│    │ │    0x1000040e8      mov x21, x19
│    │ │    0x1000040ec      ldp x29, x30, [var_70h]
│    │ │    0x1000040f0      ldp x20, x19, [var_60h]
│    │ │    0x1000040f4      ldp x23, x22, [var_50h]
│    │ │    0x1000040f8      ldp x25, x24, [var_40h]
│    │ │    0x1000040fc      ldp x27, x26, [var_30h]
│    │ │    0x100004100      ldr x28, [var_20h]
│    │ │    0x100004104      add sp, sp, 0x80
│    │ │    0x100004108      ret
│    │ │    ; CODE XREF from sym.func.100004000 @ 0x100004068(x)
│    │ └──> 0x10000410c      brk 1
│    │      ; CODE XREF from sym.func.100004000 @ 0x10000407c(x)
└    └────> 0x100004110      brk 1
