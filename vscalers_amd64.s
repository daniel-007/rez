// Copyright 2014 Benoît Amiaux. All rights reserved.
// Use of this source code is governed by a MIT-style
// license that can be found in the LICENSE file.

// This file is auto-generated - do not modify

DATA	zero_0<>+0x00(SB)/8, $0x0000000000000000
DATA	zero_0<>+0x08(SB)/8, $0x0000000000000000
GLOBL	zero_0<>(SB), $16
DATA	hbits_1<>+0x00(SB)/8, $0x0000200000002000
DATA	hbits_1<>+0x08(SB)/8, $0x0000200000002000
GLOBL	hbits_1<>(SB), $16

TEXT ·v8scale2Amd64(SB),4,$0-136
		MOVQ	dp+120(FP), BX
		MOVQ	width+104(FP), CX
		MOVQ	CX, DX
		SUBQ	CX, BX
		ANDQ	$15, DX
		SHRQ	$4, CX
		MOVQ	BX, R11
		MOVQ	CX, R12
		MOVQ	DX, AX
		ORQ	AX, AX
		JE	norollback_0
		SUBQ	$16, DX
		NEGQ	DX
norollback_0:
		MOVQ	DX, R13
		MOVQ	off+72(FP), CX
		MOVQ	CX, R10
		MOVO	zero_0<>(SB), X14
		MOVO	hbits_1<>(SB), X13
		MOVQ	src+24(FP), SI
		MOVQ	SI, R9
		MOVQ	dst+0(FP), DI
		MOVQ	cof+48(FP), BP
		MOVQ	sp+128(FP), BX
yloop_1:
		MOVQ	R9, SI
		MOVQ	R10, DX
		MOVWQSX	(DX), AX
		MULQ	BX
		ADDQ	AX, SI
		MOVQ	SI, R9
		MOVQ	R12, CX
		ORQ	CX, CX
		JE	nomaxloop_2
maxloop_3:
		MOVOU	(BP), X12
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVO	X0, X2
		PUNPCKLBW	X3, X0
		PUNPCKHBW	X3, X2
		MOVO	X0, X1
		MOVO	X2, X3
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PMADDWL	X12, X0
		PMADDWL	X12, X1
		PMADDWL	X12, X2
		PMADDWL	X12, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
		SUBQ	$1, CX
		JNE	maxloop_3
nomaxloop_2:
		MOVQ	R13, CX
		SUBQ	R13, SI
		SUBQ	R13, DI
		ORQ	CX, CX
		JE	nobackroll_4
		MOVOU	(BP), X12
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVO	X0, X2
		PUNPCKLBW	X3, X0
		PUNPCKHBW	X3, X2
		MOVO	X0, X1
		MOVO	X2, X3
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PMADDWL	X12, X0
		PMADDWL	X12, X1
		PMADDWL	X12, X2
		PMADDWL	X12, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
nobackroll_4:
		ADDQ	R11, DI
		ADDQ	$32, BP
		ADDQ	$2, R10
		SUBQ	$1, height+112(FP)
		JNE	yloop_1
		RET

TEXT ·v8scale4Amd64(SB),4,$0-136
		MOVQ	dp+120(FP), BX
		MOVQ	width+104(FP), CX
		MOVQ	CX, DX
		SUBQ	CX, BX
		ANDQ	$15, DX
		SHRQ	$4, CX
		MOVQ	BX, R11
		MOVQ	CX, R12
		MOVQ	DX, AX
		ORQ	AX, AX
		JE	norollback_5
		SUBQ	$16, DX
		NEGQ	DX
norollback_5:
		MOVQ	DX, R13
		MOVQ	off+72(FP), CX
		MOVQ	CX, R10
		MOVO	zero_0<>(SB), X14
		MOVO	hbits_1<>(SB), X13
		MOVQ	src+24(FP), SI
		MOVQ	SI, R9
		MOVQ	dst+0(FP), DI
		MOVQ	cof+48(FP), BP
		MOVQ	sp+128(FP), BX
yloop_6:
		MOVQ	R9, SI
		MOVQ	R10, DX
		MOVWQSX	(DX), AX
		MULQ	BX
		ADDQ	AX, SI
		MOVQ	SI, R9
		MOVQ	R12, CX
		ORQ	CX, CX
		JE	nomaxloop_7
maxloop_8:
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
		SUBQ	$1, CX
		JNE	maxloop_8
nomaxloop_7:
		MOVQ	R13, CX
		SUBQ	R13, SI
		SUBQ	R13, DI
		ORQ	CX, CX
		JE	nobackroll_9
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
nobackroll_9:
		ADDQ	R11, DI
		ADDQ	$64, BP
		ADDQ	$2, R10
		SUBQ	$1, height+112(FP)
		JNE	yloop_6
		RET

TEXT ·v8scale6Amd64(SB),4,$0-136
		MOVQ	dp+120(FP), BX
		MOVQ	width+104(FP), CX
		MOVQ	CX, DX
		SUBQ	CX, BX
		ANDQ	$15, DX
		SHRQ	$4, CX
		MOVQ	BX, R11
		MOVQ	CX, R12
		MOVQ	DX, AX
		ORQ	AX, AX
		JE	norollback_10
		SUBQ	$16, DX
		NEGQ	DX
norollback_10:
		MOVQ	DX, R13
		MOVQ	off+72(FP), CX
		MOVQ	CX, R10
		MOVO	zero_0<>(SB), X14
		MOVO	hbits_1<>(SB), X13
		MOVQ	src+24(FP), SI
		MOVQ	SI, R9
		MOVQ	dst+0(FP), DI
		MOVQ	cof+48(FP), BP
		MOVQ	sp+128(FP), BX
yloop_11:
		MOVQ	R9, SI
		MOVQ	R10, DX
		MOVWQSX	(DX), AX
		MULQ	BX
		ADDQ	AX, SI
		MOVQ	SI, R9
		MOVQ	R12, CX
		ORQ	CX, CX
		JE	nomaxloop_12
maxloop_13:
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
		SUBQ	$1, CX
		JNE	maxloop_13
nomaxloop_12:
		MOVQ	R13, CX
		SUBQ	R13, SI
		SUBQ	R13, DI
		ORQ	CX, CX
		JE	nobackroll_14
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
nobackroll_14:
		ADDQ	R11, DI
		ADDQ	$96, BP
		ADDQ	$2, R10
		SUBQ	$1, height+112(FP)
		JNE	yloop_11
		RET

TEXT ·v8scale8Amd64(SB),4,$0-136
		MOVQ	dp+120(FP), BX
		MOVQ	width+104(FP), CX
		MOVQ	CX, DX
		SUBQ	CX, BX
		ANDQ	$15, DX
		SHRQ	$4, CX
		MOVQ	BX, R11
		MOVQ	CX, R12
		MOVQ	DX, AX
		ORQ	AX, AX
		JE	norollback_15
		SUBQ	$16, DX
		NEGQ	DX
norollback_15:
		MOVQ	DX, R13
		MOVQ	off+72(FP), CX
		MOVQ	CX, R10
		MOVO	zero_0<>(SB), X14
		MOVO	hbits_1<>(SB), X13
		MOVQ	src+24(FP), SI
		MOVQ	SI, R9
		MOVQ	dst+0(FP), DI
		MOVQ	cof+48(FP), BP
		MOVQ	sp+128(FP), BX
yloop_16:
		MOVQ	R9, SI
		MOVQ	R10, DX
		MOVWQSX	(DX), AX
		MULQ	BX
		ADDQ	AX, SI
		MOVQ	SI, R9
		MOVQ	R12, CX
		ORQ	CX, CX
		JE	nomaxloop_17
maxloop_18:
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	96(BP), X4
		PMADDWL	96(BP), X5
		PMADDWL	96(BP), X6
		PMADDWL	96(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
		SUBQ	$1, CX
		JNE	maxloop_18
nomaxloop_17:
		MOVQ	R13, CX
		SUBQ	R13, SI
		SUBQ	R13, DI
		ORQ	CX, CX
		JE	nobackroll_19
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	96(BP), X4
		PMADDWL	96(BP), X5
		PMADDWL	96(BP), X6
		PMADDWL	96(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
nobackroll_19:
		ADDQ	R11, DI
		ADDQ	$128, BP
		ADDQ	$2, R10
		SUBQ	$1, height+112(FP)
		JNE	yloop_16
		RET

TEXT ·v8scale10Amd64(SB),4,$0-136
		MOVQ	dp+120(FP), BX
		MOVQ	width+104(FP), CX
		MOVQ	CX, DX
		SUBQ	CX, BX
		ANDQ	$15, DX
		SHRQ	$4, CX
		MOVQ	BX, R11
		MOVQ	CX, R12
		MOVQ	DX, AX
		ORQ	AX, AX
		JE	norollback_20
		SUBQ	$16, DX
		NEGQ	DX
norollback_20:
		MOVQ	DX, R13
		MOVQ	off+72(FP), CX
		MOVQ	CX, R10
		MOVO	zero_0<>(SB), X14
		MOVO	hbits_1<>(SB), X13
		MOVQ	src+24(FP), SI
		MOVQ	SI, R9
		MOVQ	dst+0(FP), DI
		MOVQ	cof+48(FP), BP
		MOVQ	sp+128(FP), BX
yloop_21:
		MOVQ	R9, SI
		MOVQ	R10, DX
		MOVWQSX	(DX), AX
		MULQ	BX
		ADDQ	AX, SI
		MOVQ	SI, R9
		MOVQ	R12, CX
		ORQ	CX, CX
		JE	nomaxloop_22
maxloop_23:
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	96(BP), X4
		PMADDWL	96(BP), X5
		PMADDWL	96(BP), X6
		PMADDWL	96(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	128(BP), X4
		PMADDWL	128(BP), X5
		PMADDWL	128(BP), X6
		PMADDWL	128(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
		SUBQ	$1, CX
		JNE	maxloop_23
nomaxloop_22:
		MOVQ	R13, CX
		SUBQ	R13, SI
		SUBQ	R13, DI
		ORQ	CX, CX
		JE	nobackroll_24
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	96(BP), X4
		PMADDWL	96(BP), X5
		PMADDWL	96(BP), X6
		PMADDWL	96(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	128(BP), X4
		PMADDWL	128(BP), X5
		PMADDWL	128(BP), X6
		PMADDWL	128(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
nobackroll_24:
		ADDQ	R11, DI
		ADDQ	$160, BP
		ADDQ	$2, R10
		SUBQ	$1, height+112(FP)
		JNE	yloop_21
		RET

TEXT ·v8scale12Amd64(SB),4,$0-136
		MOVQ	dp+120(FP), BX
		MOVQ	width+104(FP), CX
		MOVQ	CX, DX
		SUBQ	CX, BX
		ANDQ	$15, DX
		SHRQ	$4, CX
		MOVQ	BX, R11
		MOVQ	CX, R12
		MOVQ	DX, AX
		ORQ	AX, AX
		JE	norollback_25
		SUBQ	$16, DX
		NEGQ	DX
norollback_25:
		MOVQ	DX, R13
		MOVQ	off+72(FP), CX
		MOVQ	CX, R10
		MOVO	zero_0<>(SB), X14
		MOVO	hbits_1<>(SB), X13
		MOVQ	src+24(FP), SI
		MOVQ	SI, R9
		MOVQ	dst+0(FP), DI
		MOVQ	cof+48(FP), BP
		MOVQ	sp+128(FP), BX
yloop_26:
		MOVQ	R9, SI
		MOVQ	R10, DX
		MOVWQSX	(DX), AX
		MULQ	BX
		ADDQ	AX, SI
		MOVQ	SI, R9
		MOVQ	R12, CX
		ORQ	CX, CX
		JE	nomaxloop_27
maxloop_28:
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	96(BP), X4
		PMADDWL	96(BP), X5
		PMADDWL	96(BP), X6
		PMADDWL	96(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	128(BP), X4
		PMADDWL	128(BP), X5
		PMADDWL	128(BP), X6
		PMADDWL	128(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	160(BP), X4
		PMADDWL	160(BP), X5
		PMADDWL	160(BP), X6
		PMADDWL	160(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
		SUBQ	$1, CX
		JNE	maxloop_28
nomaxloop_27:
		MOVQ	R13, CX
		SUBQ	R13, SI
		SUBQ	R13, DI
		ORQ	CX, CX
		JE	nobackroll_29
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	64(BP), X4
		PMADDWL	64(BP), X5
		PMADDWL	64(BP), X6
		PMADDWL	64(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	96(BP), X4
		PMADDWL	96(BP), X5
		PMADDWL	96(BP), X6
		PMADDWL	96(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	128(BP), X4
		PMADDWL	128(BP), X5
		PMADDWL	128(BP), X6
		PMADDWL	128(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	160(BP), X4
		PMADDWL	160(BP), X5
		PMADDWL	160(BP), X6
		PMADDWL	160(BP), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
nobackroll_29:
		ADDQ	R11, DI
		ADDQ	$192, BP
		ADDQ	$2, R10
		SUBQ	$1, height+112(FP)
		JNE	yloop_26
		RET

TEXT ·v8scaleNAmd64(SB),4,$0-136
		MOVQ	dp+120(FP), BX
		MOVQ	width+104(FP), CX
		MOVQ	CX, DX
		SUBQ	CX, BX
		ANDQ	$15, DX
		SHRQ	$4, CX
		MOVQ	BX, R11
		MOVQ	CX, R12
		MOVQ	DX, AX
		ORQ	AX, AX
		JE	norollback_30
		SUBQ	$16, DX
		NEGQ	DX
norollback_30:
		MOVQ	DX, R13
		MOVQ	off+72(FP), CX
		MOVQ	CX, R10
		MOVO	zero_0<>(SB), X14
		MOVO	hbits_1<>(SB), X13
		MOVQ	taps+96(FP), DX
		SUBQ	$4, DX
		SHRQ	$1, DX
		MOVQ	DX, R14
		MOVQ	src+24(FP), SI
		MOVQ	SI, R9
		MOVQ	dst+0(FP), DI
		MOVQ	cof+48(FP), BP
		MOVQ	sp+128(FP), BX
yloop_31:
		MOVQ	R9, SI
		MOVQ	R10, DX
		MOVWQSX	(DX), AX
		MULQ	BX
		ADDQ	AX, SI
		MOVQ	SI, R9
		MOVQ	R12, CX
		ORQ	CX, CX
		JE	nomaxloop_32
maxloop_33:
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVQ	R14, R15
		MOVQ	BP, DX
		ADDQ	$32, DX
innerloop_34:
		ADDQ	$32, DX
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	(DX), X4
		PMADDWL	(DX), X5
		PMADDWL	(DX), X6
		PMADDWL	(DX), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		SUBQ	$1, R15
		JNE	innerloop_34
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
		SUBQ	$1, CX
		JNE	maxloop_33
nomaxloop_32:
		MOVQ	R13, CX
		SUBQ	R13, SI
		SUBQ	R13, DI
		ORQ	CX, CX
		JE	nobackroll_35
		LEAQ	(SI)(BX*4), AX
		MOVOU	(SI), X0
		MOVOU	(SI)(BX*1), X3
		MOVOU	(SI)(BX*2), X4
		MOVOU	(BP), X10
		MOVOU	32(BP), X11
		ADDQ	BX, SI
		MOVOU	(SI)(BX*2), X7
		MOVO	X0, X2
		MOVO	X4, X6
		PUNPCKLBW	X3, X0
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X3, X2
		PUNPCKHBW	X7, X6
		MOVO	X0, X1
		MOVO	X4, X5
		MOVO	X2, X3
		MOVO	X6, X7
		SUBQ	BX, SI
		PUNPCKLBW	X14, X0
		PUNPCKHBW	X14, X1
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X2
		PUNPCKHBW	X14, X3
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	X10, X0
		PMADDWL	X10, X1
		PMADDWL	X11, X4
		PMADDWL	X11, X5
		PMADDWL	X10, X2
		PMADDWL	X10, X3
		PMADDWL	X11, X6
		PMADDWL	X11, X7
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		MOVQ	R14, R15
		MOVQ	BP, DX
		ADDQ	$32, DX
innerloop_36:
		ADDQ	$32, DX
		MOVOU	(AX), X4
		MOVOU	(AX)(BX*1), X7
		MOVO	X4, X6
		PUNPCKLBW	X7, X4
		PUNPCKHBW	X7, X6
		MOVO	X4, X5
		MOVO	X6, X7
		PUNPCKLBW	X14, X4
		PUNPCKHBW	X14, X5
		PUNPCKLBW	X14, X6
		PUNPCKHBW	X14, X7
		PMADDWL	(DX), X4
		PMADDWL	(DX), X5
		PMADDWL	(DX), X6
		PMADDWL	(DX), X7
		LEAQ	(AX)(BX*2), AX
		PADDL	X4, X0
		PADDL	X5, X1
		PADDL	X6, X2
		PADDL	X7, X3
		SUBQ	$1, R15
		JNE	innerloop_36
		PADDL	X13, X0
		PADDL	X13, X1
		PADDL	X13, X2
		PADDL	X13, X3
		PSRAL	$14, X0
		PSRAL	$14, X1
		PSRAL	$14, X2
		PSRAL	$14, X3
		PACKSSLW	X1, X0
		PACKSSLW	X3, X2
		PACKUSWB	X2, X0
		MOVOU	X0, (DI)
		ADDQ	$16, SI
		ADDQ	$16, DI
nobackroll_35:
		ADDQ	R11, DI
		MOVQ	taps+96(FP), DX
		SHLQ	$4, DX
		ADDQ	DX, BP
		ADDQ	$2, R10
		SUBQ	$1, height+112(FP)
		JNE	yloop_31
		RET
