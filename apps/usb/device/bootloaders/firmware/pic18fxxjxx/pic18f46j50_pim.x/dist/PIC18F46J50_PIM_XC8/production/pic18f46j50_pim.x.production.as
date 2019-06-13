opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	18F46J50
opt include "C:\Program Files (x86)\Microchip\xc8\v1.45\include\18f46j50.cgen.inc"
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR0 equ 0EC6h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR1 equ 0EC7h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR2 equ 0EC8h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR3 equ 0EC9h ;# 
# 80 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR4 equ 0ECAh ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR5 equ 0ECBh ;# 
# 94 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR6 equ 0ECCh ;# 
# 101 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR7 equ 0ECDh ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR8 equ 0ECEh ;# 
# 115 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR9 equ 0ECFh ;# 
# 122 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR10 equ 0ED0h ;# 
# 129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR11 equ 0ED1h ;# 
# 136 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR12 equ 0ED2h ;# 
# 143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR13 equ 0ED3h ;# 
# 150 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR17 equ 0ED7h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR18 equ 0ED8h ;# 
# 164 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR19 equ 0ED9h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR20 equ 0EDAh ;# 
# 178 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR21 equ 0EDBh ;# 
# 185 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR22 equ 0EDCh ;# 
# 192 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR23 equ 0EDDh ;# 
# 199 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR24 equ 0EDEh ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR1 equ 0EE7h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR2 equ 0EE8h ;# 
# 220 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR3 equ 0EE9h ;# 
# 227 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR4 equ 0EEAh ;# 
# 234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR6 equ 0EECh ;# 
# 241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR7 equ 0EEDh ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR8 equ 0EEEh ;# 
# 255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR12 equ 0EF2h ;# 
# 262 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR13 equ 0EF3h ;# 
# 269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR16 equ 0EF6h ;# 
# 276 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR17 equ 0EF7h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR21 equ 0EFBh ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR22 equ 0EFCh ;# 
# 297 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR23 equ 0EFDh ;# 
# 304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR24 equ 0EFEh ;# 
# 311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PPSCON equ 0EFFh ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP0 equ 0F26h ;# 
# 439 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP1 equ 0F27h ;# 
# 547 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP2 equ 0F28h ;# 
# 655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP3 equ 0F29h ;# 
# 763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP4 equ 0F2Ah ;# 
# 871 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP5 equ 0F2Bh ;# 
# 979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP6 equ 0F2Ch ;# 
# 1087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP7 equ 0F2Dh ;# 
# 1195 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP8 equ 0F2Eh ;# 
# 1271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP9 equ 0F2Fh ;# 
# 1347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP10 equ 0F30h ;# 
# 1423 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP11 equ 0F31h ;# 
# 1499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP12 equ 0F32h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP13 equ 0F33h ;# 
# 1651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP14 equ 0F34h ;# 
# 1727 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP15 equ 0F35h ;# 
# 1803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIE equ 0F36h ;# 
# 1859 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIE equ 0F37h ;# 
# 1910 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UADDR equ 0F38h ;# 
# 1974 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCFG equ 0F39h ;# 
# 2045 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PADCFG1 equ 0F3Ch ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
REFOCON equ 0F3Dh ;# 
# 2142 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCAL equ 0F3Eh ;# 
# 2212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCFG equ 0F3Fh ;# 
# 2269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON3 equ 0F40h ;# 
# 2295 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON2 equ 0F41h ;# 
# 2321 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON1 equ 0F42h ;# 
# 2347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON0 equ 0F48h ;# 
# 2409 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON1 equ 0F49h ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEL equ 0F4Ah ;# 
# 2533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEH equ 0F4Bh ;# 
# 2553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONL equ 0F4Ch ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONH equ 0F4Dh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR0 equ 0F4Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR1 equ 0F4Fh ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TCLKCON equ 0F52h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CVRCON equ 0F53h ;# 
# 2770 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATL equ 0F54h ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATH equ 0F55h ;# 
# 2872 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEL equ 0F56h ;# 
# 2942 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEH equ 0F57h ;# 
# 3012 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2L equ 0F58h ;# 
# 3032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2H equ 0F59h ;# 
# 3052 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2L equ 0F5Ah ;# 
# 3072 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2H equ 0F5Bh ;# 
# 3092 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEL equ 0F5Ch ;# 
# 3174 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEH equ 0F5Dh ;# 
# 3236 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONL equ 0F5Eh ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONH equ 0F5Fh ;# 
# 3355 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRM equ 0F60h ;# 
# 3362 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRML equ 0F60h ;# 
# 3440 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRMH equ 0F61h ;# 
# 3480 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIR equ 0F62h ;# 
# 3536 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIR equ 0F63h ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
USTAT equ 0F64h ;# 
# 3647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCON equ 0F65h ;# 
# 3698 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCH equ 0F66h ;# 
# 3718 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCL equ 0F67h ;# 
# 3738 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRH equ 0F68h ;# 
# 3758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRL equ 0F69h ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRH equ 0F6Ah ;# 
# 3798 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRL equ 0F6Bh ;# 
# 3818 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1L equ 0F6Ch ;# 
# 3838 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1H equ 0F6Dh ;# 
# 3858 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRL equ 0F6Eh ;# 
# 3878 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1L equ 0F6Eh ;# 
# 3898 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRH equ 0F6Fh ;# 
# 3919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1H equ 0F6Fh ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTAT equ 0F70h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTATUS equ 0F70h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON2 equ 0F71h ;# 
# 4167 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON1 equ 0F72h ;# 
# 4287 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2STAT equ 0F73h ;# 
# 4589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2ADD equ 0F74h ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2MSK equ 0F74h ;# 
# 4827 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2BUF equ 0F75h ;# 
# 4847 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T4CON equ 0F76h ;# 
# 4918 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR4 equ 0F77h ;# 
# 4938 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR4 equ 0F78h ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3CON equ 0F79h ;# 
# 5060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3 equ 0F7Ah ;# 
# 5067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3L equ 0F7Ah ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3H equ 0F7Bh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON2 equ 0F7Ch ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH2 equ 0F7Dh ;# 
# 5250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON1 equ 0F7Eh ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON equ 0F7Eh ;# 
# 5259 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCTL equ 0F7Eh ;# 
# 5757 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH1 equ 0F7Fh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH equ 0F7Fh ;# 
# 5795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTA equ 0F80h ;# 
# 6048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTB equ 0F81h ;# 
# 6338 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTC equ 0F82h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTD equ 0F83h ;# 
# 6746 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTE equ 0F84h ;# 
# 6919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
HLVDCON equ 0F85h ;# 
# 6989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON2 equ 0F86h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON1 equ 0F88h ;# 
# 7127 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATA equ 0F89h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATB equ 0F8Ah ;# 
# 7341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATC equ 0F8Bh ;# 
# 7443 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATD equ 0F8Ch ;# 
# 7555 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATE equ 0F8Dh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALL equ 0F8Eh ;# 
# 7627 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALH equ 0F8Fh ;# 
# 7647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMRPT equ 0F90h ;# 
# 7717 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMCFG equ 0F91h ;# 
# 7793 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISA equ 0F92h ;# 
# 7850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISB equ 0F93h ;# 
# 7912 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISC equ 0F94h ;# 
# 7969 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISD equ 0F95h ;# 
# 8031 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISE equ 0F96h ;# 
# 8063 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3GCON equ 0F97h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALL equ 0F98h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALH equ 0F99h ;# 
# 8233 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1GCON equ 0F9Ah ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCTUNE equ 0F9Bh ;# 
# 8383 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA2 equ 0F9Ch ;# 
# 8519 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE1 equ 0F9Dh ;# 
# 8611 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR1 equ 0F9Eh ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR1 equ 0F9Fh ;# 
# 8795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE2 equ 0FA0h ;# 
# 8875 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR2 equ 0FA1h ;# 
# 8955 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR2 equ 0FA2h ;# 
# 9035 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE3 equ 0FA3h ;# 
# 9145 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR3 equ 0FA4h ;# 
# 9223 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR3 equ 0FA5h ;# 
# 9301 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON1 equ 0FA6h ;# 
# 9346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON2 equ 0FA7h ;# 
# 9366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA2 equ 0FA8h ;# 
# 9493 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG2 equ 0FA9h ;# 
# 9513 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG2 equ 0FAAh ;# 
# 9533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG2 equ 0FABh ;# 
# 9553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA1 equ 0FACh ;# 
# 9558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA equ 0FACh ;# 
# 9891 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA1 equ 0FADh ;# 
# 9896 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA equ 0FADh ;# 
# 10179 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG1 equ 0FAEh ;# 
# 10184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG equ 0FAEh ;# 
# 10217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG1 equ 0FAFh ;# 
# 10222 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG equ 0FAFh ;# 
# 10255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG1 equ 0FB0h ;# 
# 10260 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG equ 0FB0h ;# 
# 10293 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUICON equ 0FB1h ;# 
# 10369 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONL equ 0FB2h ;# 
# 10447 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONH equ 0FB3h ;# 
# 10504 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP2CON equ 0FB4h ;# 
# 10509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2CON equ 0FB4h ;# 
# 10696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2 equ 0FB5h ;# 
# 10703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2L equ 0FB5h ;# 
# 10723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2H equ 0FB6h ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2DEL equ 0FB7h ;# 
# 10748 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM2CON equ 0FB7h ;# 
# 10881 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2AS equ 0FB8h ;# 
# 10963 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR2CON equ 0FB9h ;# 
# 11205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP1CON equ 0FBAh ;# 
# 11210 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1CON equ 0FBAh ;# 
# 11397 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1 equ 0FBBh ;# 
# 11404 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1L equ 0FBBh ;# 
# 11424 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1H equ 0FBCh ;# 
# 11444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1DEL equ 0FBDh ;# 
# 11449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM1CON equ 0FBDh ;# 
# 11582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1AS equ 0FBEh ;# 
# 11664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR1CON equ 0FBFh ;# 
# 11721 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WDTCON equ 0FC0h ;# 
# 11786 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON1 equ 0FC1h ;# 
# 11883 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON0 equ 0FC2h ;# 
# 12027 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRES equ 0FC3h ;# 
# 12034 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESL equ 0FC3h ;# 
# 12054 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESH equ 0FC4h ;# 
# 12074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON2 equ 0FC5h ;# 
# 12079 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON2 equ 0FC5h ;# 
# 12428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON1 equ 0FC6h ;# 
# 12433 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON1 equ 0FC6h ;# 
# 12666 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1STAT equ 0FC7h ;# 
# 12671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPSTAT equ 0FC7h ;# 
# 13640 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1ADD equ 0FC8h ;# 
# 13645 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPADD equ 0FC8h ;# 
# 13649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1MSK equ 0FC8h ;# 
# 13994 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1BUF equ 0FC9h ;# 
# 13999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPBUF equ 0FC9h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T2CON equ 0FCAh ;# 
# 14103 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR2 equ 0FCBh ;# 
# 14108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
MEMCON equ 0FCBh ;# 
# 14229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR2 equ 0FCCh ;# 
# 14249 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1CON equ 0FCDh ;# 
# 14387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1 equ 0FCEh ;# 
# 14394 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1L equ 0FCEh ;# 
# 14414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1H equ 0FCFh ;# 
# 14434 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCON equ 0FD0h ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON equ 0FD1h ;# 
# 14587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON1 equ 0FD1h ;# 
# 14834 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON equ 0FD2h ;# 
# 14839 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON1 equ 0FD2h ;# 
# 15114 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCCON equ 0FD3h ;# 
# 15186 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T0CON equ 0FD5h ;# 
# 15256 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0 equ 0FD6h ;# 
# 15263 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0L equ 0FD6h ;# 
# 15283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0H equ 0FD7h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STATUS equ 0FD8h ;# 
# 15374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2 equ 0FD9h ;# 
# 15381 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2L equ 0FD9h ;# 
# 15401 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2H equ 0FDAh ;# 
# 15408 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW2 equ 0FDBh ;# 
# 15428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC2 equ 0FDCh ;# 
# 15448 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC2 equ 0FDDh ;# 
# 15468 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC2 equ 0FDEh ;# 
# 15488 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF2 equ 0FDFh ;# 
# 15508 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BSR equ 0FE0h ;# 
# 15515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1 equ 0FE1h ;# 
# 15522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1L equ 0FE1h ;# 
# 15542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1H equ 0FE2h ;# 
# 15549 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW1 equ 0FE3h ;# 
# 15569 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC1 equ 0FE4h ;# 
# 15589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC1 equ 0FE5h ;# 
# 15609 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC1 equ 0FE6h ;# 
# 15629 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF1 equ 0FE7h ;# 
# 15649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WREG equ 0FE8h ;# 
# 15669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0 equ 0FE9h ;# 
# 15676 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0L equ 0FE9h ;# 
# 15696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0H equ 0FEAh ;# 
# 15703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW0 equ 0FEBh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC0 equ 0FECh ;# 
# 15743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC0 equ 0FEDh ;# 
# 15763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC0 equ 0FEEh ;# 
# 15783 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF0 equ 0FEFh ;# 
# 15803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON3 equ 0FF0h ;# 
# 15915 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON2 equ 0FF1h ;# 
# 16008 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON equ 0FF2h ;# 
# 16125 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PROD equ 0FF3h ;# 
# 16132 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODL equ 0FF3h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODH equ 0FF4h ;# 
# 16172 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TABLAT equ 0FF5h ;# 
# 16194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTR equ 0FF6h ;# 
# 16201 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRL equ 0FF6h ;# 
# 16221 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRH equ 0FF7h ;# 
# 16241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRU equ 0FF8h ;# 
# 16250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLAT equ 0FF9h ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PC equ 0FF9h ;# 
# 16264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCL equ 0FF9h ;# 
# 16284 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATH equ 0FFAh ;# 
# 16304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATU equ 0FFBh ;# 
# 16311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STKPTR equ 0FFCh ;# 
# 16385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOS equ 0FFDh ;# 
# 16392 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSL equ 0FFDh ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSH equ 0FFEh ;# 
# 16432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR0 equ 0EC6h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR1 equ 0EC7h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR2 equ 0EC8h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR3 equ 0EC9h ;# 
# 80 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR4 equ 0ECAh ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR5 equ 0ECBh ;# 
# 94 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR6 equ 0ECCh ;# 
# 101 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR7 equ 0ECDh ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR8 equ 0ECEh ;# 
# 115 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR9 equ 0ECFh ;# 
# 122 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR10 equ 0ED0h ;# 
# 129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR11 equ 0ED1h ;# 
# 136 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR12 equ 0ED2h ;# 
# 143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR13 equ 0ED3h ;# 
# 150 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR17 equ 0ED7h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR18 equ 0ED8h ;# 
# 164 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR19 equ 0ED9h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR20 equ 0EDAh ;# 
# 178 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR21 equ 0EDBh ;# 
# 185 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR22 equ 0EDCh ;# 
# 192 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR23 equ 0EDDh ;# 
# 199 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR24 equ 0EDEh ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR1 equ 0EE7h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR2 equ 0EE8h ;# 
# 220 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR3 equ 0EE9h ;# 
# 227 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR4 equ 0EEAh ;# 
# 234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR6 equ 0EECh ;# 
# 241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR7 equ 0EEDh ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR8 equ 0EEEh ;# 
# 255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR12 equ 0EF2h ;# 
# 262 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR13 equ 0EF3h ;# 
# 269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR16 equ 0EF6h ;# 
# 276 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR17 equ 0EF7h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR21 equ 0EFBh ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR22 equ 0EFCh ;# 
# 297 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR23 equ 0EFDh ;# 
# 304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR24 equ 0EFEh ;# 
# 311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PPSCON equ 0EFFh ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP0 equ 0F26h ;# 
# 439 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP1 equ 0F27h ;# 
# 547 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP2 equ 0F28h ;# 
# 655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP3 equ 0F29h ;# 
# 763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP4 equ 0F2Ah ;# 
# 871 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP5 equ 0F2Bh ;# 
# 979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP6 equ 0F2Ch ;# 
# 1087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP7 equ 0F2Dh ;# 
# 1195 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP8 equ 0F2Eh ;# 
# 1271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP9 equ 0F2Fh ;# 
# 1347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP10 equ 0F30h ;# 
# 1423 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP11 equ 0F31h ;# 
# 1499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP12 equ 0F32h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP13 equ 0F33h ;# 
# 1651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP14 equ 0F34h ;# 
# 1727 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP15 equ 0F35h ;# 
# 1803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIE equ 0F36h ;# 
# 1859 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIE equ 0F37h ;# 
# 1910 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UADDR equ 0F38h ;# 
# 1974 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCFG equ 0F39h ;# 
# 2045 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PADCFG1 equ 0F3Ch ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
REFOCON equ 0F3Dh ;# 
# 2142 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCAL equ 0F3Eh ;# 
# 2212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCFG equ 0F3Fh ;# 
# 2269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON3 equ 0F40h ;# 
# 2295 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON2 equ 0F41h ;# 
# 2321 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON1 equ 0F42h ;# 
# 2347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON0 equ 0F48h ;# 
# 2409 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON1 equ 0F49h ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEL equ 0F4Ah ;# 
# 2533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEH equ 0F4Bh ;# 
# 2553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONL equ 0F4Ch ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONH equ 0F4Dh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR0 equ 0F4Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR1 equ 0F4Fh ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TCLKCON equ 0F52h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CVRCON equ 0F53h ;# 
# 2770 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATL equ 0F54h ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATH equ 0F55h ;# 
# 2872 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEL equ 0F56h ;# 
# 2942 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEH equ 0F57h ;# 
# 3012 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2L equ 0F58h ;# 
# 3032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2H equ 0F59h ;# 
# 3052 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2L equ 0F5Ah ;# 
# 3072 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2H equ 0F5Bh ;# 
# 3092 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEL equ 0F5Ch ;# 
# 3174 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEH equ 0F5Dh ;# 
# 3236 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONL equ 0F5Eh ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONH equ 0F5Fh ;# 
# 3355 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRM equ 0F60h ;# 
# 3362 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRML equ 0F60h ;# 
# 3440 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRMH equ 0F61h ;# 
# 3480 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIR equ 0F62h ;# 
# 3536 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIR equ 0F63h ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
USTAT equ 0F64h ;# 
# 3647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCON equ 0F65h ;# 
# 3698 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCH equ 0F66h ;# 
# 3718 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCL equ 0F67h ;# 
# 3738 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRH equ 0F68h ;# 
# 3758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRL equ 0F69h ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRH equ 0F6Ah ;# 
# 3798 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRL equ 0F6Bh ;# 
# 3818 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1L equ 0F6Ch ;# 
# 3838 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1H equ 0F6Dh ;# 
# 3858 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRL equ 0F6Eh ;# 
# 3878 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1L equ 0F6Eh ;# 
# 3898 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRH equ 0F6Fh ;# 
# 3919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1H equ 0F6Fh ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTAT equ 0F70h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTATUS equ 0F70h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON2 equ 0F71h ;# 
# 4167 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON1 equ 0F72h ;# 
# 4287 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2STAT equ 0F73h ;# 
# 4589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2ADD equ 0F74h ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2MSK equ 0F74h ;# 
# 4827 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2BUF equ 0F75h ;# 
# 4847 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T4CON equ 0F76h ;# 
# 4918 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR4 equ 0F77h ;# 
# 4938 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR4 equ 0F78h ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3CON equ 0F79h ;# 
# 5060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3 equ 0F7Ah ;# 
# 5067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3L equ 0F7Ah ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3H equ 0F7Bh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON2 equ 0F7Ch ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH2 equ 0F7Dh ;# 
# 5250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON1 equ 0F7Eh ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON equ 0F7Eh ;# 
# 5259 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCTL equ 0F7Eh ;# 
# 5757 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH1 equ 0F7Fh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH equ 0F7Fh ;# 
# 5795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTA equ 0F80h ;# 
# 6048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTB equ 0F81h ;# 
# 6338 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTC equ 0F82h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTD equ 0F83h ;# 
# 6746 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTE equ 0F84h ;# 
# 6919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
HLVDCON equ 0F85h ;# 
# 6989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON2 equ 0F86h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON1 equ 0F88h ;# 
# 7127 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATA equ 0F89h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATB equ 0F8Ah ;# 
# 7341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATC equ 0F8Bh ;# 
# 7443 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATD equ 0F8Ch ;# 
# 7555 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATE equ 0F8Dh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALL equ 0F8Eh ;# 
# 7627 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALH equ 0F8Fh ;# 
# 7647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMRPT equ 0F90h ;# 
# 7717 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMCFG equ 0F91h ;# 
# 7793 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISA equ 0F92h ;# 
# 7850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISB equ 0F93h ;# 
# 7912 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISC equ 0F94h ;# 
# 7969 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISD equ 0F95h ;# 
# 8031 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISE equ 0F96h ;# 
# 8063 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3GCON equ 0F97h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALL equ 0F98h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALH equ 0F99h ;# 
# 8233 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1GCON equ 0F9Ah ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCTUNE equ 0F9Bh ;# 
# 8383 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA2 equ 0F9Ch ;# 
# 8519 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE1 equ 0F9Dh ;# 
# 8611 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR1 equ 0F9Eh ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR1 equ 0F9Fh ;# 
# 8795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE2 equ 0FA0h ;# 
# 8875 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR2 equ 0FA1h ;# 
# 8955 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR2 equ 0FA2h ;# 
# 9035 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE3 equ 0FA3h ;# 
# 9145 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR3 equ 0FA4h ;# 
# 9223 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR3 equ 0FA5h ;# 
# 9301 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON1 equ 0FA6h ;# 
# 9346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON2 equ 0FA7h ;# 
# 9366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA2 equ 0FA8h ;# 
# 9493 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG2 equ 0FA9h ;# 
# 9513 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG2 equ 0FAAh ;# 
# 9533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG2 equ 0FABh ;# 
# 9553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA1 equ 0FACh ;# 
# 9558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA equ 0FACh ;# 
# 9891 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA1 equ 0FADh ;# 
# 9896 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA equ 0FADh ;# 
# 10179 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG1 equ 0FAEh ;# 
# 10184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG equ 0FAEh ;# 
# 10217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG1 equ 0FAFh ;# 
# 10222 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG equ 0FAFh ;# 
# 10255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG1 equ 0FB0h ;# 
# 10260 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG equ 0FB0h ;# 
# 10293 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUICON equ 0FB1h ;# 
# 10369 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONL equ 0FB2h ;# 
# 10447 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONH equ 0FB3h ;# 
# 10504 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP2CON equ 0FB4h ;# 
# 10509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2CON equ 0FB4h ;# 
# 10696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2 equ 0FB5h ;# 
# 10703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2L equ 0FB5h ;# 
# 10723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2H equ 0FB6h ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2DEL equ 0FB7h ;# 
# 10748 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM2CON equ 0FB7h ;# 
# 10881 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2AS equ 0FB8h ;# 
# 10963 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR2CON equ 0FB9h ;# 
# 11205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP1CON equ 0FBAh ;# 
# 11210 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1CON equ 0FBAh ;# 
# 11397 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1 equ 0FBBh ;# 
# 11404 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1L equ 0FBBh ;# 
# 11424 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1H equ 0FBCh ;# 
# 11444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1DEL equ 0FBDh ;# 
# 11449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM1CON equ 0FBDh ;# 
# 11582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1AS equ 0FBEh ;# 
# 11664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR1CON equ 0FBFh ;# 
# 11721 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WDTCON equ 0FC0h ;# 
# 11786 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON1 equ 0FC1h ;# 
# 11883 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON0 equ 0FC2h ;# 
# 12027 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRES equ 0FC3h ;# 
# 12034 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESL equ 0FC3h ;# 
# 12054 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESH equ 0FC4h ;# 
# 12074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON2 equ 0FC5h ;# 
# 12079 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON2 equ 0FC5h ;# 
# 12428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON1 equ 0FC6h ;# 
# 12433 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON1 equ 0FC6h ;# 
# 12666 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1STAT equ 0FC7h ;# 
# 12671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPSTAT equ 0FC7h ;# 
# 13640 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1ADD equ 0FC8h ;# 
# 13645 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPADD equ 0FC8h ;# 
# 13649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1MSK equ 0FC8h ;# 
# 13994 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1BUF equ 0FC9h ;# 
# 13999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPBUF equ 0FC9h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T2CON equ 0FCAh ;# 
# 14103 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR2 equ 0FCBh ;# 
# 14108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
MEMCON equ 0FCBh ;# 
# 14229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR2 equ 0FCCh ;# 
# 14249 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1CON equ 0FCDh ;# 
# 14387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1 equ 0FCEh ;# 
# 14394 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1L equ 0FCEh ;# 
# 14414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1H equ 0FCFh ;# 
# 14434 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCON equ 0FD0h ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON equ 0FD1h ;# 
# 14587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON1 equ 0FD1h ;# 
# 14834 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON equ 0FD2h ;# 
# 14839 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON1 equ 0FD2h ;# 
# 15114 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCCON equ 0FD3h ;# 
# 15186 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T0CON equ 0FD5h ;# 
# 15256 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0 equ 0FD6h ;# 
# 15263 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0L equ 0FD6h ;# 
# 15283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0H equ 0FD7h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STATUS equ 0FD8h ;# 
# 15374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2 equ 0FD9h ;# 
# 15381 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2L equ 0FD9h ;# 
# 15401 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2H equ 0FDAh ;# 
# 15408 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW2 equ 0FDBh ;# 
# 15428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC2 equ 0FDCh ;# 
# 15448 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC2 equ 0FDDh ;# 
# 15468 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC2 equ 0FDEh ;# 
# 15488 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF2 equ 0FDFh ;# 
# 15508 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BSR equ 0FE0h ;# 
# 15515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1 equ 0FE1h ;# 
# 15522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1L equ 0FE1h ;# 
# 15542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1H equ 0FE2h ;# 
# 15549 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW1 equ 0FE3h ;# 
# 15569 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC1 equ 0FE4h ;# 
# 15589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC1 equ 0FE5h ;# 
# 15609 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC1 equ 0FE6h ;# 
# 15629 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF1 equ 0FE7h ;# 
# 15649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WREG equ 0FE8h ;# 
# 15669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0 equ 0FE9h ;# 
# 15676 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0L equ 0FE9h ;# 
# 15696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0H equ 0FEAh ;# 
# 15703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW0 equ 0FEBh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC0 equ 0FECh ;# 
# 15743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC0 equ 0FEDh ;# 
# 15763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC0 equ 0FEEh ;# 
# 15783 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF0 equ 0FEFh ;# 
# 15803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON3 equ 0FF0h ;# 
# 15915 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON2 equ 0FF1h ;# 
# 16008 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON equ 0FF2h ;# 
# 16125 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PROD equ 0FF3h ;# 
# 16132 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODL equ 0FF3h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODH equ 0FF4h ;# 
# 16172 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TABLAT equ 0FF5h ;# 
# 16194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTR equ 0FF6h ;# 
# 16201 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRL equ 0FF6h ;# 
# 16221 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRH equ 0FF7h ;# 
# 16241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRU equ 0FF8h ;# 
# 16250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLAT equ 0FF9h ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PC equ 0FF9h ;# 
# 16264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCL equ 0FF9h ;# 
# 16284 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATH equ 0FFAh ;# 
# 16304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATU equ 0FFBh ;# 
# 16311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STKPTR equ 0FFCh ;# 
# 16385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOS equ 0FFDh ;# 
# 16392 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSL equ 0FFDh ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSH equ 0FFEh ;# 
# 16432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR0 equ 0EC6h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR1 equ 0EC7h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR2 equ 0EC8h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR3 equ 0EC9h ;# 
# 80 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR4 equ 0ECAh ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR5 equ 0ECBh ;# 
# 94 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR6 equ 0ECCh ;# 
# 101 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR7 equ 0ECDh ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR8 equ 0ECEh ;# 
# 115 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR9 equ 0ECFh ;# 
# 122 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR10 equ 0ED0h ;# 
# 129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR11 equ 0ED1h ;# 
# 136 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR12 equ 0ED2h ;# 
# 143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR13 equ 0ED3h ;# 
# 150 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR17 equ 0ED7h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR18 equ 0ED8h ;# 
# 164 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR19 equ 0ED9h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR20 equ 0EDAh ;# 
# 178 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR21 equ 0EDBh ;# 
# 185 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR22 equ 0EDCh ;# 
# 192 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR23 equ 0EDDh ;# 
# 199 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR24 equ 0EDEh ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR1 equ 0EE7h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR2 equ 0EE8h ;# 
# 220 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR3 equ 0EE9h ;# 
# 227 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR4 equ 0EEAh ;# 
# 234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR6 equ 0EECh ;# 
# 241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR7 equ 0EEDh ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR8 equ 0EEEh ;# 
# 255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR12 equ 0EF2h ;# 
# 262 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR13 equ 0EF3h ;# 
# 269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR16 equ 0EF6h ;# 
# 276 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR17 equ 0EF7h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR21 equ 0EFBh ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR22 equ 0EFCh ;# 
# 297 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR23 equ 0EFDh ;# 
# 304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR24 equ 0EFEh ;# 
# 311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PPSCON equ 0EFFh ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP0 equ 0F26h ;# 
# 439 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP1 equ 0F27h ;# 
# 547 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP2 equ 0F28h ;# 
# 655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP3 equ 0F29h ;# 
# 763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP4 equ 0F2Ah ;# 
# 871 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP5 equ 0F2Bh ;# 
# 979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP6 equ 0F2Ch ;# 
# 1087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP7 equ 0F2Dh ;# 
# 1195 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP8 equ 0F2Eh ;# 
# 1271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP9 equ 0F2Fh ;# 
# 1347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP10 equ 0F30h ;# 
# 1423 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP11 equ 0F31h ;# 
# 1499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP12 equ 0F32h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP13 equ 0F33h ;# 
# 1651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP14 equ 0F34h ;# 
# 1727 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP15 equ 0F35h ;# 
# 1803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIE equ 0F36h ;# 
# 1859 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIE equ 0F37h ;# 
# 1910 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UADDR equ 0F38h ;# 
# 1974 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCFG equ 0F39h ;# 
# 2045 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PADCFG1 equ 0F3Ch ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
REFOCON equ 0F3Dh ;# 
# 2142 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCAL equ 0F3Eh ;# 
# 2212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCFG equ 0F3Fh ;# 
# 2269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON3 equ 0F40h ;# 
# 2295 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON2 equ 0F41h ;# 
# 2321 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON1 equ 0F42h ;# 
# 2347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON0 equ 0F48h ;# 
# 2409 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON1 equ 0F49h ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEL equ 0F4Ah ;# 
# 2533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEH equ 0F4Bh ;# 
# 2553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONL equ 0F4Ch ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONH equ 0F4Dh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR0 equ 0F4Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR1 equ 0F4Fh ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TCLKCON equ 0F52h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CVRCON equ 0F53h ;# 
# 2770 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATL equ 0F54h ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATH equ 0F55h ;# 
# 2872 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEL equ 0F56h ;# 
# 2942 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEH equ 0F57h ;# 
# 3012 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2L equ 0F58h ;# 
# 3032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2H equ 0F59h ;# 
# 3052 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2L equ 0F5Ah ;# 
# 3072 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2H equ 0F5Bh ;# 
# 3092 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEL equ 0F5Ch ;# 
# 3174 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEH equ 0F5Dh ;# 
# 3236 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONL equ 0F5Eh ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONH equ 0F5Fh ;# 
# 3355 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRM equ 0F60h ;# 
# 3362 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRML equ 0F60h ;# 
# 3440 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRMH equ 0F61h ;# 
# 3480 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIR equ 0F62h ;# 
# 3536 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIR equ 0F63h ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
USTAT equ 0F64h ;# 
# 3647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCON equ 0F65h ;# 
# 3698 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCH equ 0F66h ;# 
# 3718 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCL equ 0F67h ;# 
# 3738 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRH equ 0F68h ;# 
# 3758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRL equ 0F69h ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRH equ 0F6Ah ;# 
# 3798 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRL equ 0F6Bh ;# 
# 3818 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1L equ 0F6Ch ;# 
# 3838 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1H equ 0F6Dh ;# 
# 3858 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRL equ 0F6Eh ;# 
# 3878 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1L equ 0F6Eh ;# 
# 3898 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRH equ 0F6Fh ;# 
# 3919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1H equ 0F6Fh ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTAT equ 0F70h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTATUS equ 0F70h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON2 equ 0F71h ;# 
# 4167 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON1 equ 0F72h ;# 
# 4287 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2STAT equ 0F73h ;# 
# 4589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2ADD equ 0F74h ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2MSK equ 0F74h ;# 
# 4827 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2BUF equ 0F75h ;# 
# 4847 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T4CON equ 0F76h ;# 
# 4918 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR4 equ 0F77h ;# 
# 4938 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR4 equ 0F78h ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3CON equ 0F79h ;# 
# 5060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3 equ 0F7Ah ;# 
# 5067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3L equ 0F7Ah ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3H equ 0F7Bh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON2 equ 0F7Ch ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH2 equ 0F7Dh ;# 
# 5250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON1 equ 0F7Eh ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON equ 0F7Eh ;# 
# 5259 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCTL equ 0F7Eh ;# 
# 5757 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH1 equ 0F7Fh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH equ 0F7Fh ;# 
# 5795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTA equ 0F80h ;# 
# 6048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTB equ 0F81h ;# 
# 6338 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTC equ 0F82h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTD equ 0F83h ;# 
# 6746 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTE equ 0F84h ;# 
# 6919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
HLVDCON equ 0F85h ;# 
# 6989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON2 equ 0F86h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON1 equ 0F88h ;# 
# 7127 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATA equ 0F89h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATB equ 0F8Ah ;# 
# 7341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATC equ 0F8Bh ;# 
# 7443 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATD equ 0F8Ch ;# 
# 7555 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATE equ 0F8Dh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALL equ 0F8Eh ;# 
# 7627 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALH equ 0F8Fh ;# 
# 7647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMRPT equ 0F90h ;# 
# 7717 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMCFG equ 0F91h ;# 
# 7793 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISA equ 0F92h ;# 
# 7850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISB equ 0F93h ;# 
# 7912 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISC equ 0F94h ;# 
# 7969 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISD equ 0F95h ;# 
# 8031 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISE equ 0F96h ;# 
# 8063 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3GCON equ 0F97h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALL equ 0F98h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALH equ 0F99h ;# 
# 8233 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1GCON equ 0F9Ah ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCTUNE equ 0F9Bh ;# 
# 8383 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA2 equ 0F9Ch ;# 
# 8519 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE1 equ 0F9Dh ;# 
# 8611 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR1 equ 0F9Eh ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR1 equ 0F9Fh ;# 
# 8795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE2 equ 0FA0h ;# 
# 8875 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR2 equ 0FA1h ;# 
# 8955 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR2 equ 0FA2h ;# 
# 9035 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE3 equ 0FA3h ;# 
# 9145 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR3 equ 0FA4h ;# 
# 9223 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR3 equ 0FA5h ;# 
# 9301 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON1 equ 0FA6h ;# 
# 9346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON2 equ 0FA7h ;# 
# 9366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA2 equ 0FA8h ;# 
# 9493 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG2 equ 0FA9h ;# 
# 9513 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG2 equ 0FAAh ;# 
# 9533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG2 equ 0FABh ;# 
# 9553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA1 equ 0FACh ;# 
# 9558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA equ 0FACh ;# 
# 9891 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA1 equ 0FADh ;# 
# 9896 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA equ 0FADh ;# 
# 10179 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG1 equ 0FAEh ;# 
# 10184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG equ 0FAEh ;# 
# 10217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG1 equ 0FAFh ;# 
# 10222 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG equ 0FAFh ;# 
# 10255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG1 equ 0FB0h ;# 
# 10260 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG equ 0FB0h ;# 
# 10293 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUICON equ 0FB1h ;# 
# 10369 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONL equ 0FB2h ;# 
# 10447 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONH equ 0FB3h ;# 
# 10504 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP2CON equ 0FB4h ;# 
# 10509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2CON equ 0FB4h ;# 
# 10696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2 equ 0FB5h ;# 
# 10703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2L equ 0FB5h ;# 
# 10723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2H equ 0FB6h ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2DEL equ 0FB7h ;# 
# 10748 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM2CON equ 0FB7h ;# 
# 10881 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2AS equ 0FB8h ;# 
# 10963 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR2CON equ 0FB9h ;# 
# 11205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP1CON equ 0FBAh ;# 
# 11210 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1CON equ 0FBAh ;# 
# 11397 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1 equ 0FBBh ;# 
# 11404 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1L equ 0FBBh ;# 
# 11424 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1H equ 0FBCh ;# 
# 11444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1DEL equ 0FBDh ;# 
# 11449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM1CON equ 0FBDh ;# 
# 11582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1AS equ 0FBEh ;# 
# 11664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR1CON equ 0FBFh ;# 
# 11721 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WDTCON equ 0FC0h ;# 
# 11786 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON1 equ 0FC1h ;# 
# 11883 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON0 equ 0FC2h ;# 
# 12027 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRES equ 0FC3h ;# 
# 12034 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESL equ 0FC3h ;# 
# 12054 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESH equ 0FC4h ;# 
# 12074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON2 equ 0FC5h ;# 
# 12079 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON2 equ 0FC5h ;# 
# 12428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON1 equ 0FC6h ;# 
# 12433 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON1 equ 0FC6h ;# 
# 12666 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1STAT equ 0FC7h ;# 
# 12671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPSTAT equ 0FC7h ;# 
# 13640 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1ADD equ 0FC8h ;# 
# 13645 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPADD equ 0FC8h ;# 
# 13649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1MSK equ 0FC8h ;# 
# 13994 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1BUF equ 0FC9h ;# 
# 13999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPBUF equ 0FC9h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T2CON equ 0FCAh ;# 
# 14103 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR2 equ 0FCBh ;# 
# 14108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
MEMCON equ 0FCBh ;# 
# 14229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR2 equ 0FCCh ;# 
# 14249 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1CON equ 0FCDh ;# 
# 14387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1 equ 0FCEh ;# 
# 14394 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1L equ 0FCEh ;# 
# 14414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1H equ 0FCFh ;# 
# 14434 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCON equ 0FD0h ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON equ 0FD1h ;# 
# 14587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON1 equ 0FD1h ;# 
# 14834 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON equ 0FD2h ;# 
# 14839 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON1 equ 0FD2h ;# 
# 15114 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCCON equ 0FD3h ;# 
# 15186 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T0CON equ 0FD5h ;# 
# 15256 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0 equ 0FD6h ;# 
# 15263 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0L equ 0FD6h ;# 
# 15283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0H equ 0FD7h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STATUS equ 0FD8h ;# 
# 15374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2 equ 0FD9h ;# 
# 15381 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2L equ 0FD9h ;# 
# 15401 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2H equ 0FDAh ;# 
# 15408 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW2 equ 0FDBh ;# 
# 15428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC2 equ 0FDCh ;# 
# 15448 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC2 equ 0FDDh ;# 
# 15468 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC2 equ 0FDEh ;# 
# 15488 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF2 equ 0FDFh ;# 
# 15508 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BSR equ 0FE0h ;# 
# 15515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1 equ 0FE1h ;# 
# 15522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1L equ 0FE1h ;# 
# 15542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1H equ 0FE2h ;# 
# 15549 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW1 equ 0FE3h ;# 
# 15569 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC1 equ 0FE4h ;# 
# 15589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC1 equ 0FE5h ;# 
# 15609 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC1 equ 0FE6h ;# 
# 15629 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF1 equ 0FE7h ;# 
# 15649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WREG equ 0FE8h ;# 
# 15669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0 equ 0FE9h ;# 
# 15676 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0L equ 0FE9h ;# 
# 15696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0H equ 0FEAh ;# 
# 15703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW0 equ 0FEBh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC0 equ 0FECh ;# 
# 15743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC0 equ 0FEDh ;# 
# 15763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC0 equ 0FEEh ;# 
# 15783 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF0 equ 0FEFh ;# 
# 15803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON3 equ 0FF0h ;# 
# 15915 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON2 equ 0FF1h ;# 
# 16008 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON equ 0FF2h ;# 
# 16125 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PROD equ 0FF3h ;# 
# 16132 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODL equ 0FF3h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODH equ 0FF4h ;# 
# 16172 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TABLAT equ 0FF5h ;# 
# 16194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTR equ 0FF6h ;# 
# 16201 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRL equ 0FF6h ;# 
# 16221 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRH equ 0FF7h ;# 
# 16241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRU equ 0FF8h ;# 
# 16250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLAT equ 0FF9h ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PC equ 0FF9h ;# 
# 16264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCL equ 0FF9h ;# 
# 16284 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATH equ 0FFAh ;# 
# 16304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATU equ 0FFBh ;# 
# 16311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STKPTR equ 0FFCh ;# 
# 16385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOS equ 0FFDh ;# 
# 16392 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSL equ 0FFDh ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSH equ 0FFEh ;# 
# 16432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR0 equ 0EC6h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR1 equ 0EC7h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR2 equ 0EC8h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR3 equ 0EC9h ;# 
# 80 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR4 equ 0ECAh ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR5 equ 0ECBh ;# 
# 94 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR6 equ 0ECCh ;# 
# 101 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR7 equ 0ECDh ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR8 equ 0ECEh ;# 
# 115 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR9 equ 0ECFh ;# 
# 122 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR10 equ 0ED0h ;# 
# 129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR11 equ 0ED1h ;# 
# 136 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR12 equ 0ED2h ;# 
# 143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR13 equ 0ED3h ;# 
# 150 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR17 equ 0ED7h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR18 equ 0ED8h ;# 
# 164 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR19 equ 0ED9h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR20 equ 0EDAh ;# 
# 178 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR21 equ 0EDBh ;# 
# 185 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR22 equ 0EDCh ;# 
# 192 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR23 equ 0EDDh ;# 
# 199 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR24 equ 0EDEh ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR1 equ 0EE7h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR2 equ 0EE8h ;# 
# 220 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR3 equ 0EE9h ;# 
# 227 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR4 equ 0EEAh ;# 
# 234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR6 equ 0EECh ;# 
# 241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR7 equ 0EEDh ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR8 equ 0EEEh ;# 
# 255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR12 equ 0EF2h ;# 
# 262 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR13 equ 0EF3h ;# 
# 269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR16 equ 0EF6h ;# 
# 276 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR17 equ 0EF7h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR21 equ 0EFBh ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR22 equ 0EFCh ;# 
# 297 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR23 equ 0EFDh ;# 
# 304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR24 equ 0EFEh ;# 
# 311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PPSCON equ 0EFFh ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP0 equ 0F26h ;# 
# 439 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP1 equ 0F27h ;# 
# 547 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP2 equ 0F28h ;# 
# 655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP3 equ 0F29h ;# 
# 763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP4 equ 0F2Ah ;# 
# 871 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP5 equ 0F2Bh ;# 
# 979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP6 equ 0F2Ch ;# 
# 1087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP7 equ 0F2Dh ;# 
# 1195 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP8 equ 0F2Eh ;# 
# 1271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP9 equ 0F2Fh ;# 
# 1347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP10 equ 0F30h ;# 
# 1423 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP11 equ 0F31h ;# 
# 1499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP12 equ 0F32h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP13 equ 0F33h ;# 
# 1651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP14 equ 0F34h ;# 
# 1727 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP15 equ 0F35h ;# 
# 1803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIE equ 0F36h ;# 
# 1859 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIE equ 0F37h ;# 
# 1910 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UADDR equ 0F38h ;# 
# 1974 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCFG equ 0F39h ;# 
# 2045 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PADCFG1 equ 0F3Ch ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
REFOCON equ 0F3Dh ;# 
# 2142 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCAL equ 0F3Eh ;# 
# 2212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCFG equ 0F3Fh ;# 
# 2269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON3 equ 0F40h ;# 
# 2295 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON2 equ 0F41h ;# 
# 2321 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON1 equ 0F42h ;# 
# 2347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON0 equ 0F48h ;# 
# 2409 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON1 equ 0F49h ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEL equ 0F4Ah ;# 
# 2533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEH equ 0F4Bh ;# 
# 2553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONL equ 0F4Ch ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONH equ 0F4Dh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR0 equ 0F4Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR1 equ 0F4Fh ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TCLKCON equ 0F52h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CVRCON equ 0F53h ;# 
# 2770 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATL equ 0F54h ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATH equ 0F55h ;# 
# 2872 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEL equ 0F56h ;# 
# 2942 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEH equ 0F57h ;# 
# 3012 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2L equ 0F58h ;# 
# 3032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2H equ 0F59h ;# 
# 3052 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2L equ 0F5Ah ;# 
# 3072 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2H equ 0F5Bh ;# 
# 3092 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEL equ 0F5Ch ;# 
# 3174 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEH equ 0F5Dh ;# 
# 3236 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONL equ 0F5Eh ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONH equ 0F5Fh ;# 
# 3355 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRM equ 0F60h ;# 
# 3362 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRML equ 0F60h ;# 
# 3440 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRMH equ 0F61h ;# 
# 3480 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIR equ 0F62h ;# 
# 3536 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIR equ 0F63h ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
USTAT equ 0F64h ;# 
# 3647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCON equ 0F65h ;# 
# 3698 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCH equ 0F66h ;# 
# 3718 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCL equ 0F67h ;# 
# 3738 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRH equ 0F68h ;# 
# 3758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRL equ 0F69h ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRH equ 0F6Ah ;# 
# 3798 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRL equ 0F6Bh ;# 
# 3818 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1L equ 0F6Ch ;# 
# 3838 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1H equ 0F6Dh ;# 
# 3858 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRL equ 0F6Eh ;# 
# 3878 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1L equ 0F6Eh ;# 
# 3898 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRH equ 0F6Fh ;# 
# 3919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1H equ 0F6Fh ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTAT equ 0F70h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTATUS equ 0F70h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON2 equ 0F71h ;# 
# 4167 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON1 equ 0F72h ;# 
# 4287 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2STAT equ 0F73h ;# 
# 4589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2ADD equ 0F74h ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2MSK equ 0F74h ;# 
# 4827 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2BUF equ 0F75h ;# 
# 4847 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T4CON equ 0F76h ;# 
# 4918 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR4 equ 0F77h ;# 
# 4938 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR4 equ 0F78h ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3CON equ 0F79h ;# 
# 5060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3 equ 0F7Ah ;# 
# 5067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3L equ 0F7Ah ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3H equ 0F7Bh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON2 equ 0F7Ch ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH2 equ 0F7Dh ;# 
# 5250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON1 equ 0F7Eh ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON equ 0F7Eh ;# 
# 5259 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCTL equ 0F7Eh ;# 
# 5757 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH1 equ 0F7Fh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH equ 0F7Fh ;# 
# 5795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTA equ 0F80h ;# 
# 6048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTB equ 0F81h ;# 
# 6338 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTC equ 0F82h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTD equ 0F83h ;# 
# 6746 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTE equ 0F84h ;# 
# 6919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
HLVDCON equ 0F85h ;# 
# 6989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON2 equ 0F86h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON1 equ 0F88h ;# 
# 7127 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATA equ 0F89h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATB equ 0F8Ah ;# 
# 7341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATC equ 0F8Bh ;# 
# 7443 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATD equ 0F8Ch ;# 
# 7555 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATE equ 0F8Dh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALL equ 0F8Eh ;# 
# 7627 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALH equ 0F8Fh ;# 
# 7647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMRPT equ 0F90h ;# 
# 7717 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMCFG equ 0F91h ;# 
# 7793 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISA equ 0F92h ;# 
# 7850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISB equ 0F93h ;# 
# 7912 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISC equ 0F94h ;# 
# 7969 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISD equ 0F95h ;# 
# 8031 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISE equ 0F96h ;# 
# 8063 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3GCON equ 0F97h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALL equ 0F98h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALH equ 0F99h ;# 
# 8233 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1GCON equ 0F9Ah ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCTUNE equ 0F9Bh ;# 
# 8383 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA2 equ 0F9Ch ;# 
# 8519 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE1 equ 0F9Dh ;# 
# 8611 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR1 equ 0F9Eh ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR1 equ 0F9Fh ;# 
# 8795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE2 equ 0FA0h ;# 
# 8875 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR2 equ 0FA1h ;# 
# 8955 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR2 equ 0FA2h ;# 
# 9035 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE3 equ 0FA3h ;# 
# 9145 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR3 equ 0FA4h ;# 
# 9223 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR3 equ 0FA5h ;# 
# 9301 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON1 equ 0FA6h ;# 
# 9346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON2 equ 0FA7h ;# 
# 9366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA2 equ 0FA8h ;# 
# 9493 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG2 equ 0FA9h ;# 
# 9513 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG2 equ 0FAAh ;# 
# 9533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG2 equ 0FABh ;# 
# 9553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA1 equ 0FACh ;# 
# 9558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA equ 0FACh ;# 
# 9891 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA1 equ 0FADh ;# 
# 9896 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA equ 0FADh ;# 
# 10179 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG1 equ 0FAEh ;# 
# 10184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG equ 0FAEh ;# 
# 10217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG1 equ 0FAFh ;# 
# 10222 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG equ 0FAFh ;# 
# 10255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG1 equ 0FB0h ;# 
# 10260 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG equ 0FB0h ;# 
# 10293 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUICON equ 0FB1h ;# 
# 10369 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONL equ 0FB2h ;# 
# 10447 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONH equ 0FB3h ;# 
# 10504 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP2CON equ 0FB4h ;# 
# 10509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2CON equ 0FB4h ;# 
# 10696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2 equ 0FB5h ;# 
# 10703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2L equ 0FB5h ;# 
# 10723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2H equ 0FB6h ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2DEL equ 0FB7h ;# 
# 10748 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM2CON equ 0FB7h ;# 
# 10881 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2AS equ 0FB8h ;# 
# 10963 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR2CON equ 0FB9h ;# 
# 11205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP1CON equ 0FBAh ;# 
# 11210 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1CON equ 0FBAh ;# 
# 11397 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1 equ 0FBBh ;# 
# 11404 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1L equ 0FBBh ;# 
# 11424 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1H equ 0FBCh ;# 
# 11444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1DEL equ 0FBDh ;# 
# 11449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM1CON equ 0FBDh ;# 
# 11582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1AS equ 0FBEh ;# 
# 11664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR1CON equ 0FBFh ;# 
# 11721 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WDTCON equ 0FC0h ;# 
# 11786 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON1 equ 0FC1h ;# 
# 11883 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON0 equ 0FC2h ;# 
# 12027 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRES equ 0FC3h ;# 
# 12034 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESL equ 0FC3h ;# 
# 12054 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESH equ 0FC4h ;# 
# 12074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON2 equ 0FC5h ;# 
# 12079 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON2 equ 0FC5h ;# 
# 12428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON1 equ 0FC6h ;# 
# 12433 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON1 equ 0FC6h ;# 
# 12666 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1STAT equ 0FC7h ;# 
# 12671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPSTAT equ 0FC7h ;# 
# 13640 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1ADD equ 0FC8h ;# 
# 13645 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPADD equ 0FC8h ;# 
# 13649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1MSK equ 0FC8h ;# 
# 13994 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1BUF equ 0FC9h ;# 
# 13999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPBUF equ 0FC9h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T2CON equ 0FCAh ;# 
# 14103 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR2 equ 0FCBh ;# 
# 14108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
MEMCON equ 0FCBh ;# 
# 14229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR2 equ 0FCCh ;# 
# 14249 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1CON equ 0FCDh ;# 
# 14387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1 equ 0FCEh ;# 
# 14394 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1L equ 0FCEh ;# 
# 14414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1H equ 0FCFh ;# 
# 14434 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCON equ 0FD0h ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON equ 0FD1h ;# 
# 14587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON1 equ 0FD1h ;# 
# 14834 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON equ 0FD2h ;# 
# 14839 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON1 equ 0FD2h ;# 
# 15114 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCCON equ 0FD3h ;# 
# 15186 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T0CON equ 0FD5h ;# 
# 15256 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0 equ 0FD6h ;# 
# 15263 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0L equ 0FD6h ;# 
# 15283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0H equ 0FD7h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STATUS equ 0FD8h ;# 
# 15374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2 equ 0FD9h ;# 
# 15381 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2L equ 0FD9h ;# 
# 15401 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2H equ 0FDAh ;# 
# 15408 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW2 equ 0FDBh ;# 
# 15428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC2 equ 0FDCh ;# 
# 15448 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC2 equ 0FDDh ;# 
# 15468 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC2 equ 0FDEh ;# 
# 15488 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF2 equ 0FDFh ;# 
# 15508 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BSR equ 0FE0h ;# 
# 15515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1 equ 0FE1h ;# 
# 15522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1L equ 0FE1h ;# 
# 15542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1H equ 0FE2h ;# 
# 15549 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW1 equ 0FE3h ;# 
# 15569 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC1 equ 0FE4h ;# 
# 15589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC1 equ 0FE5h ;# 
# 15609 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC1 equ 0FE6h ;# 
# 15629 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF1 equ 0FE7h ;# 
# 15649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WREG equ 0FE8h ;# 
# 15669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0 equ 0FE9h ;# 
# 15676 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0L equ 0FE9h ;# 
# 15696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0H equ 0FEAh ;# 
# 15703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW0 equ 0FEBh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC0 equ 0FECh ;# 
# 15743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC0 equ 0FEDh ;# 
# 15763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC0 equ 0FEEh ;# 
# 15783 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF0 equ 0FEFh ;# 
# 15803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON3 equ 0FF0h ;# 
# 15915 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON2 equ 0FF1h ;# 
# 16008 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON equ 0FF2h ;# 
# 16125 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PROD equ 0FF3h ;# 
# 16132 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODL equ 0FF3h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODH equ 0FF4h ;# 
# 16172 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TABLAT equ 0FF5h ;# 
# 16194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTR equ 0FF6h ;# 
# 16201 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRL equ 0FF6h ;# 
# 16221 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRH equ 0FF7h ;# 
# 16241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRU equ 0FF8h ;# 
# 16250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLAT equ 0FF9h ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PC equ 0FF9h ;# 
# 16264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCL equ 0FF9h ;# 
# 16284 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATH equ 0FFAh ;# 
# 16304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATU equ 0FFBh ;# 
# 16311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STKPTR equ 0FFCh ;# 
# 16385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOS equ 0FFDh ;# 
# 16392 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSL equ 0FFDh ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSH equ 0FFEh ;# 
# 16432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR0 equ 0EC6h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR1 equ 0EC7h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR2 equ 0EC8h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR3 equ 0EC9h ;# 
# 80 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR4 equ 0ECAh ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR5 equ 0ECBh ;# 
# 94 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR6 equ 0ECCh ;# 
# 101 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR7 equ 0ECDh ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR8 equ 0ECEh ;# 
# 115 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR9 equ 0ECFh ;# 
# 122 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR10 equ 0ED0h ;# 
# 129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR11 equ 0ED1h ;# 
# 136 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR12 equ 0ED2h ;# 
# 143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR13 equ 0ED3h ;# 
# 150 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR17 equ 0ED7h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR18 equ 0ED8h ;# 
# 164 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR19 equ 0ED9h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR20 equ 0EDAh ;# 
# 178 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR21 equ 0EDBh ;# 
# 185 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR22 equ 0EDCh ;# 
# 192 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR23 equ 0EDDh ;# 
# 199 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPOR24 equ 0EDEh ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR1 equ 0EE7h ;# 
# 213 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR2 equ 0EE8h ;# 
# 220 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR3 equ 0EE9h ;# 
# 227 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR4 equ 0EEAh ;# 
# 234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR6 equ 0EECh ;# 
# 241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR7 equ 0EEDh ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR8 equ 0EEEh ;# 
# 255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR12 equ 0EF2h ;# 
# 262 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR13 equ 0EF3h ;# 
# 269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR16 equ 0EF6h ;# 
# 276 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR17 equ 0EF7h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR21 equ 0EFBh ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR22 equ 0EFCh ;# 
# 297 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR23 equ 0EFDh ;# 
# 304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RPINR24 equ 0EFEh ;# 
# 311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PPSCON equ 0EFFh ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP0 equ 0F26h ;# 
# 439 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP1 equ 0F27h ;# 
# 547 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP2 equ 0F28h ;# 
# 655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP3 equ 0F29h ;# 
# 763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP4 equ 0F2Ah ;# 
# 871 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP5 equ 0F2Bh ;# 
# 979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP6 equ 0F2Ch ;# 
# 1087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP7 equ 0F2Dh ;# 
# 1195 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP8 equ 0F2Eh ;# 
# 1271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP9 equ 0F2Fh ;# 
# 1347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP10 equ 0F30h ;# 
# 1423 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP11 equ 0F31h ;# 
# 1499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP12 equ 0F32h ;# 
# 1575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP13 equ 0F33h ;# 
# 1651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP14 equ 0F34h ;# 
# 1727 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEP15 equ 0F35h ;# 
# 1803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIE equ 0F36h ;# 
# 1859 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIE equ 0F37h ;# 
# 1910 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UADDR equ 0F38h ;# 
# 1974 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCFG equ 0F39h ;# 
# 2045 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PADCFG1 equ 0F3Ch ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
REFOCON equ 0F3Dh ;# 
# 2142 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCAL equ 0F3Eh ;# 
# 2212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCCFG equ 0F3Fh ;# 
# 2269 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON3 equ 0F40h ;# 
# 2295 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON2 equ 0F41h ;# 
# 2321 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ODCON1 equ 0F42h ;# 
# 2347 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON0 equ 0F48h ;# 
# 2409 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ANCON1 equ 0F49h ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEL equ 0F4Ah ;# 
# 2533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSWAKEH equ 0F4Bh ;# 
# 2553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONL equ 0F4Ch ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSCONH equ 0F4Dh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR0 equ 0F4Eh ;# 
# 2638 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DSGPR1 equ 0F4Fh ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TCLKCON equ 0F52h ;# 
# 2691 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CVRCON equ 0F53h ;# 
# 2770 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATL equ 0F54h ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMSTATH equ 0F55h ;# 
# 2872 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEL equ 0F56h ;# 
# 2942 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMEH equ 0F57h ;# 
# 3012 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2L equ 0F58h ;# 
# 3032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN2H equ 0F59h ;# 
# 3052 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2L equ 0F5Ah ;# 
# 3072 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT2H equ 0F5Bh ;# 
# 3092 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEL equ 0F5Ch ;# 
# 3174 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMMODEH equ 0F5Dh ;# 
# 3236 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONL equ 0F5Eh ;# 
# 3298 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMCONH equ 0F5Fh ;# 
# 3355 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRM equ 0F60h ;# 
# 3362 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRML equ 0F60h ;# 
# 3440 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UFRMH equ 0F61h ;# 
# 3480 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UIR equ 0F62h ;# 
# 3536 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UEIR equ 0F63h ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
USTAT equ 0F64h ;# 
# 3647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
UCON equ 0F65h ;# 
# 3698 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCH equ 0F66h ;# 
# 3718 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMABCL equ 0F67h ;# 
# 3738 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRH equ 0F68h ;# 
# 3758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RXADDRL equ 0F69h ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRH equ 0F6Ah ;# 
# 3798 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXADDRL equ 0F6Bh ;# 
# 3818 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1L equ 0F6Ch ;# 
# 3838 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDIN1H equ 0F6Dh ;# 
# 3858 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRL equ 0F6Eh ;# 
# 3878 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1L equ 0F6Eh ;# 
# 3898 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMADDRH equ 0F6Fh ;# 
# 3919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PMDOUT1H equ 0F6Fh ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTAT equ 0F70h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CMSTATUS equ 0F70h ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON2 equ 0F71h ;# 
# 4167 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2CON1 equ 0F72h ;# 
# 4287 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2STAT equ 0F73h ;# 
# 4589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2ADD equ 0F74h ;# 
# 4594 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2MSK equ 0F74h ;# 
# 4827 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP2BUF equ 0F75h ;# 
# 4847 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T4CON equ 0F76h ;# 
# 4918 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR4 equ 0F77h ;# 
# 4938 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR4 equ 0F78h ;# 
# 4958 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3CON equ 0F79h ;# 
# 5060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3 equ 0F7Ah ;# 
# 5067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3L equ 0F7Ah ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR3H equ 0F7Bh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON2 equ 0F7Ch ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH2 equ 0F7Dh ;# 
# 5250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON1 equ 0F7Eh ;# 
# 5255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCON equ 0F7Eh ;# 
# 5259 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BAUDCTL equ 0F7Eh ;# 
# 5757 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH1 equ 0F7Fh ;# 
# 5762 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRGH equ 0F7Fh ;# 
# 5795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTA equ 0F80h ;# 
# 6048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTB equ 0F81h ;# 
# 6338 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTC equ 0F82h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTD equ 0F83h ;# 
# 6746 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PORTE equ 0F84h ;# 
# 6919 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
HLVDCON equ 0F85h ;# 
# 6989 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON2 equ 0F86h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
DMACON1 equ 0F88h ;# 
# 7127 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATA equ 0F89h ;# 
# 7229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATB equ 0F8Ah ;# 
# 7341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATC equ 0F8Bh ;# 
# 7443 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATD equ 0F8Ch ;# 
# 7555 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
LATE equ 0F8Dh ;# 
# 7607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALL equ 0F8Eh ;# 
# 7627 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMVALH equ 0F8Fh ;# 
# 7647 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMRPT equ 0F90h ;# 
# 7717 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ALRMCFG equ 0F91h ;# 
# 7793 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISA equ 0F92h ;# 
# 7850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISB equ 0F93h ;# 
# 7912 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISC equ 0F94h ;# 
# 7969 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISD equ 0F95h ;# 
# 8031 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TRISE equ 0F96h ;# 
# 8063 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T3GCON equ 0F97h ;# 
# 8143 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALL equ 0F98h ;# 
# 8163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RTCVALH equ 0F99h ;# 
# 8233 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1GCON equ 0F9Ah ;# 
# 8313 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCTUNE equ 0F9Bh ;# 
# 8383 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA2 equ 0F9Ch ;# 
# 8519 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE1 equ 0F9Dh ;# 
# 8611 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR1 equ 0F9Eh ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR1 equ 0F9Fh ;# 
# 8795 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE2 equ 0FA0h ;# 
# 8875 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR2 equ 0FA1h ;# 
# 8955 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR2 equ 0FA2h ;# 
# 9035 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIE3 equ 0FA3h ;# 
# 9145 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PIR3 equ 0FA4h ;# 
# 9223 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
IPR3 equ 0FA5h ;# 
# 9301 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON1 equ 0FA6h ;# 
# 9346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
EECON2 equ 0FA7h ;# 
# 9366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA2 equ 0FA8h ;# 
# 9493 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG2 equ 0FA9h ;# 
# 9513 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG2 equ 0FAAh ;# 
# 9533 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG2 equ 0FABh ;# 
# 9553 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA1 equ 0FACh ;# 
# 9558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCSTA equ 0FACh ;# 
# 9891 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA1 equ 0FADh ;# 
# 9896 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXSTA equ 0FADh ;# 
# 10179 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG1 equ 0FAEh ;# 
# 10184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TXREG equ 0FAEh ;# 
# 10217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG1 equ 0FAFh ;# 
# 10222 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCREG equ 0FAFh ;# 
# 10255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG1 equ 0FB0h ;# 
# 10260 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SPBRG equ 0FB0h ;# 
# 10293 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUICON equ 0FB1h ;# 
# 10369 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONL equ 0FB2h ;# 
# 10447 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CTMUCONH equ 0FB3h ;# 
# 10504 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP2CON equ 0FB4h ;# 
# 10509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2CON equ 0FB4h ;# 
# 10696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2 equ 0FB5h ;# 
# 10703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2L equ 0FB5h ;# 
# 10723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR2H equ 0FB6h ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2DEL equ 0FB7h ;# 
# 10748 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM2CON equ 0FB7h ;# 
# 10881 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP2AS equ 0FB8h ;# 
# 10963 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR2CON equ 0FB9h ;# 
# 11205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCP1CON equ 0FBAh ;# 
# 11210 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1CON equ 0FBAh ;# 
# 11397 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1 equ 0FBBh ;# 
# 11404 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1L equ 0FBBh ;# 
# 11424 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CCPR1H equ 0FBCh ;# 
# 11444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1DEL equ 0FBDh ;# 
# 11449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PWM1CON equ 0FBDh ;# 
# 11582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ECCP1AS equ 0FBEh ;# 
# 11664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PSTR1CON equ 0FBFh ;# 
# 11721 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WDTCON equ 0FC0h ;# 
# 11786 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON1 equ 0FC1h ;# 
# 11883 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADCON0 equ 0FC2h ;# 
# 12027 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRES equ 0FC3h ;# 
# 12034 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESL equ 0FC3h ;# 
# 12054 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
ADRESH equ 0FC4h ;# 
# 12074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON2 equ 0FC5h ;# 
# 12079 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON2 equ 0FC5h ;# 
# 12428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1CON1 equ 0FC6h ;# 
# 12433 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPCON1 equ 0FC6h ;# 
# 12666 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1STAT equ 0FC7h ;# 
# 12671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPSTAT equ 0FC7h ;# 
# 13640 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1ADD equ 0FC8h ;# 
# 13645 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPADD equ 0FC8h ;# 
# 13649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1MSK equ 0FC8h ;# 
# 13994 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSP1BUF equ 0FC9h ;# 
# 13999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
SSPBUF equ 0FC9h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T2CON equ 0FCAh ;# 
# 14103 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PR2 equ 0FCBh ;# 
# 14108 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
MEMCON equ 0FCBh ;# 
# 14229 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR2 equ 0FCCh ;# 
# 14249 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T1CON equ 0FCDh ;# 
# 14387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1 equ 0FCEh ;# 
# 14394 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1L equ 0FCEh ;# 
# 14414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR1H equ 0FCFh ;# 
# 14434 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
RCON equ 0FD0h ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON equ 0FD1h ;# 
# 14587 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM2CON1 equ 0FD1h ;# 
# 14834 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON equ 0FD2h ;# 
# 14839 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
CM1CON1 equ 0FD2h ;# 
# 15114 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
OSCCON equ 0FD3h ;# 
# 15186 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
T0CON equ 0FD5h ;# 
# 15256 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0 equ 0FD6h ;# 
# 15263 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0L equ 0FD6h ;# 
# 15283 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TMR0H equ 0FD7h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STATUS equ 0FD8h ;# 
# 15374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2 equ 0FD9h ;# 
# 15381 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2L equ 0FD9h ;# 
# 15401 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR2H equ 0FDAh ;# 
# 15408 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW2 equ 0FDBh ;# 
# 15428 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC2 equ 0FDCh ;# 
# 15448 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC2 equ 0FDDh ;# 
# 15468 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC2 equ 0FDEh ;# 
# 15488 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF2 equ 0FDFh ;# 
# 15508 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
BSR equ 0FE0h ;# 
# 15515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1 equ 0FE1h ;# 
# 15522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1L equ 0FE1h ;# 
# 15542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR1H equ 0FE2h ;# 
# 15549 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW1 equ 0FE3h ;# 
# 15569 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC1 equ 0FE4h ;# 
# 15589 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC1 equ 0FE5h ;# 
# 15609 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC1 equ 0FE6h ;# 
# 15629 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF1 equ 0FE7h ;# 
# 15649 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
WREG equ 0FE8h ;# 
# 15669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0 equ 0FE9h ;# 
# 15676 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0L equ 0FE9h ;# 
# 15696 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
FSR0H equ 0FEAh ;# 
# 15703 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PLUSW0 equ 0FEBh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PREINC0 equ 0FECh ;# 
# 15743 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTDEC0 equ 0FEDh ;# 
# 15763 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
POSTINC0 equ 0FEEh ;# 
# 15783 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INDF0 equ 0FEFh ;# 
# 15803 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON3 equ 0FF0h ;# 
# 15915 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON2 equ 0FF1h ;# 
# 16008 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
INTCON equ 0FF2h ;# 
# 16125 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PROD equ 0FF3h ;# 
# 16132 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODL equ 0FF3h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PRODH equ 0FF4h ;# 
# 16172 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TABLAT equ 0FF5h ;# 
# 16194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTR equ 0FF6h ;# 
# 16201 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRL equ 0FF6h ;# 
# 16221 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRH equ 0FF7h ;# 
# 16241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TBLPTRU equ 0FF8h ;# 
# 16250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLAT equ 0FF9h ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PC equ 0FF9h ;# 
# 16264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCL equ 0FF9h ;# 
# 16284 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATH equ 0FFAh ;# 
# 16304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
PCLATU equ 0FFBh ;# 
# 16311 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
STKPTR equ 0FFCh ;# 
# 16385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOS equ 0FFDh ;# 
# 16392 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSL equ 0FFDh ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSH equ 0FFEh ;# 
# 16432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f46j50.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_BootMain
	FNCALL	_BootMain,_BlinkUSBStatus
	FNCALL	_BootMain,_InitializeSystem
	FNCALL	_BootMain,_LowVoltageCheck
	FNCALL	_BootMain,_ProcessIO
	FNCALL	_BootMain,_USBDeviceTasks
	FNCALL	_ProcessIO,_ClearWatchdog
	FNCALL	_ProcessIO,_EraseFlashPage
	FNCALL	_ProcessIO,_HIDRxReport
	FNCALL	_ProcessIO,_HIDTxReport
	FNCALL	_ProcessIO,_ResetDeviceCleanly
	FNCALL	_ProcessIO,_SignFlash
	FNCALL	_ProcessIO,_USBDeviceTasks
	FNCALL	_ProcessIO,_WriteFlashSubBlock
	FNCALL	_WriteFlashSubBlock,_UnlockAndActivate
	FNCALL	_USBDeviceTasks,_USBCheckBusStatus
	FNCALL	_USBDeviceTasks,_USBCtrlTrfInHandler
	FNCALL	_USBDeviceTasks,_USBCtrlTrfSetupHandler
	FNCALL	_USBDeviceTasks,_USBProtocolResetHandler
	FNCALL	_USBDeviceTasks,_USBSuspend
	FNCALL	_USBDeviceTasks,_USBWakeFromSuspend
	FNCALL	_USBWakeFromSuspend,_USBCBWakeFromSuspend
	FNCALL	_USBCBWakeFromSuspend,_DelayRoutine
	FNCALL	_USBSuspend,_USBCBSuspend
	FNCALL	_USBCtrlTrfSetupHandler,_USBCBCheckOtherReq
	FNCALL	_USBCtrlTrfSetupHandler,_USBCheckStdRequest
	FNCALL	_USBCtrlTrfSetupHandler,_USBCtrlEPServiceComplete
	FNCALL	_USBCtrlEPServiceComplete,_LoadBDTandSetUOWN
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlTrfTxService
	FNCALL	_USBCheckStdRequest,_USBStdFeatureReqHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetDscHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetStatusHandler
	FNCALL	_USBCheckStdRequest,_USBStdSetCfgHandler
	FNCALL	_USBStdSetCfgHandler,_USBCBInitEP
	FNCALL	_USBCBCheckOtherReq,_USBCheckHIDRequest
	FNCALL	_USBCheckHIDRequest,_HIDGetReportHandler
	FNCALL	_USBCheckHIDRequest,_HIDSetReportHandler
	FNCALL	_USBCtrlTrfInHandler,_USBCtrlTrfTxService
	FNCALL	_SignFlash,_ClearWatchdog
	FNCALL	_SignFlash,_EraseFlashPage
	FNCALL	_SignFlash,_UnlockAndActivate
	FNCALL	_EraseFlashPage,_UnlockAndActivate
	FNCALL	_UnlockAndActivate,_LowVoltageCheck
	FNCALL	_ResetDeviceCleanly,_USBDisableWithLongDelay
	FNCALL	_InitializeSystem,_DelayRoutine
	FNCALL	_InitializeSystem,_USBDeviceInit
	FNCALL	_InitializeSystem,_UserInit
	FNCALL	_USBDeviceInit,_USBCheckBusStatus
	FNCALL	_USBDeviceInit,_USBDisableWithLongDelay
	FNCALL	_USBCheckBusStatus,_USBSoftAttach
	FNCALL	_USBSoftAttach,_USBDisableWithLongDelay
	FNCALL	_USBSoftAttach,_USBProtocolResetHandler
	FNCALL	_USBProtocolResetHandler,_ClearWatchdog
	FNCALL	_USBProtocolResetHandler,_LoadBDTandSetUOWN
	FNCALL	_USBProtocolResetHandler,_USBCBInitEP
	FNCALL	_USBCBInitEP,_HIDInitEP
	FNCALL	_USBCBInitEP,_UserInit
	FNCALL	_USBDisableWithLongDelay,_DelayRoutine
	FNCALL	_DelayRoutine,_ClearWatchdog
	FNROOT	_main
	global	_USB_SD_Ptr
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"../demo_src/usb_descriptors.c"
	line	270
_USB_SD_Ptr:
		db	low(_sd000)

		db	low(_sd001)

		db	low(_sd002)

	global __end_of_USB_SD_Ptr
__end_of_USB_SD_Ptr:
	global	_FlashSignatureWord
	global	_FlashSignatureWord_absconstaddr
_FlashSignatureWord_absconstaddr	set	0x1006
	global	_sd001
psect	smallconst
	file	"../demo_src/usb_descriptors.c"
	line	237
_sd001:
	db	low(034h)
	db	low(03h)
	dw	(04Dh)&0ffffh
	dw	(069h)&0ffffh
	dw	(063h)&0ffffh
	dw	(072h)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(069h)&0ffffh
	dw	(070h)&0ffffh
	dw	(020h)&0ffffh
	dw	(054h)&0ffffh
	dw	(065h)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(067h)&0ffffh
	dw	(079h)&0ffffh
	dw	(020h)&0ffffh
	dw	(049h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(063h)&0ffffh
	dw	(02Eh)&0ffffh
	global __end_of_sd001
__end_of_sd001:
	global	_CFG01
psect	smallconst
	file	"../demo_src/usb_descriptors.c"
	line	181
_CFG01:
	db	low(09h)
	db	low(02h)
	db	low(029h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(080h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(02h)
	db	low(03h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(09h)
	db	low(021h)
	db	low(011h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(022h)
	db	low(01Dh)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(01h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	global __end_of_CFG01
__end_of_CFG01:
	global	_sd002
psect	smallconst
	file	"../demo_src/usb_descriptors.c"
	line	242
_sd002:
	db	low(026h)
	db	low(03h)
	dw	(048h)&0ffffh
	dw	(049h)&0ffffh
	dw	(044h)&0ffffh
	dw	(020h)&0ffffh
	dw	(055h)&0ffffh
	dw	(053h)&0ffffh
	dw	(042h)&0ffffh
	dw	(020h)&0ffffh
	dw	(042h)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(074h)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(061h)&0ffffh
	dw	(064h)&0ffffh
	dw	(065h)&0ffffh
	dw	(072h)&0ffffh
	global __end_of_sd002
__end_of_sd002:
	global	_hid_rpt01
psect	smallconst
	file	"../demo_src/usb_descriptors.c"
	line	247
_hid_rpt01:
	db	low(06h)
	db	low(0)
	db	low(0FFh)
	db	low(09h)
	db	low(01h)
	db	low(0A1h)
	db	low(01h)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(015h)
	db	low(0)
	db	low(026h)
	db	low(0FFh)
	db	low(0)
	db	low(075h)
	db	low(08h)
	db	low(095h)
	db	low(040h)
	db	low(081h)
	db	low(0)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(091h)
	db	low(0)
	db	low(0C0h)
	global __end_of_hid_rpt01
__end_of_hid_rpt01:
	global	_device_dsc
psect	smallconst
	file	"../demo_src/usb_descriptors.c"
	line	162
_device_dsc:
	db	low(012h)
	db	low(01h)
	dw	(0200h)&0ffffh
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(08h)
	dw	(04D8h)&0ffffh
	dw	(03Ch)&0ffffh
	dw	(0101h)&0ffffh
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_device_dsc
__end_of_device_dsc:
	global	_sd000
psect	smallconst
	file	"../demo_src/usb_descriptors.c"
	line	234
_sd000:
	db	low(04h)
	db	low(03h)
	dw	(0409h)&0ffffh
	global __end_of_sd000
__end_of_sd000:
	global	_USB_SD_Ptr
	global	_FlashSignatureWord
	global	_FlashSignatureWord_absconstaddr
_FlashSignatureWord_absconstaddr	set	0x1006
psect	_FlashSignatureWord_const,class=CODE,space=0,ovrld,reloc=2,noexec
global __p_FlashSignatureWord_const
__p_FlashSignatureWord_const:
	global	_FlashSignatureWord
_FlashSignatureWord:
	dw	(0600Dh)&0ffffh
	global __end_of_FlashSignatureWord
__end_of_FlashSignatureWord:
	global	_sd001
	global	_CFG01
	global	_sd002
	global	_hid_rpt01
	global	_device_dsc
	global	_sd000
	global	_SetupPkt
	global	EraseFlashPage@TablePointerValue
	global	WriteFlashSubBlock@Address
	global	_ProgrammedPointer
	global	_ProgramMemStopAddress
	global	_TempBDT
	global	_pDst
	global	_pSrc
	global	SignFlash@i
	global	ProcessIO@i
	global	LoadBDTandSetUOWN@pBDTEntry
	global	USBDeviceTasks@pBDTEntry
	global	_wCount
	global	BlinkUSBStatus@led_count
	global	_uint_delay_counter
	global	WriteFlashSubBlock@i
	global	_BufferedDataIndex
	global	_BootState
	global	_MaxPageToErase
	global	_hid_rpt_rx_len
	global	USBStdSetCfgHandler@i
	global	USBCtrlTrfTxService@bytes_to_send
	global	USBSuspend@UIESave
	global	USBDeviceTasks@i
	global	_DeviceIsSoftDetached
	global	_usb_stat
	global	_EP0OutOddNeedsArmingNext
	global	_short_pkt_status
	global	_ctrl_trf_session_owner
	global	_ctrl_trf_state
	global	_bTRNIFCount
	global	USBCBSuspend@OSCCONSave
	global	_usb_device_state
	global	_active_protocol
	global	_idle_rate
	global	_usb_alt_intf
	global	_usb_active_cfg
	global	_PacketToPC
	global	_PacketFromPC
	global	_ProgrammingBuffer
	global	_ep1Bi

	DABS	1,1040,4,_ep1Bi
	global	_ep1Bo

	DABS	1,1036,4,_ep1Bo
	global	_ep0Bi

	DABS	1,1032,4,_ep0Bi
	global	_EP0OutEvenBuf

	DABS	1,1044,8,_EP0OutEvenBuf
	global	_ep0BoOdd

	DABS	1,1028,4,_ep0BoOdd
	global	_ep0BoEven

	DABS	1,1024,4,_ep0BoEven
	global	_UEP0
_UEP0	set	0xF26
	global	_UEP7
_UEP7	set	0xF2D
	global	_UEP6
_UEP6	set	0xF2C
	global	_UEP5
_UEP5	set	0xF2B
	global	_UEP4
_UEP4	set	0xF2A
	global	_UEP3
_UEP3	set	0xF29
	global	_UEP2
_UEP2	set	0xF28
	global	_UEP1
_UEP1	set	0xF27
	global	_UADDR
_UADDR	set	0xF38
	global	_UEIE
_UEIE	set	0xF37
	global	_UIEbits
_UIEbits	set	0xF36
	global	_UIE
_UIE	set	0xF36
	global	_UCFG
_UCFG	set	0xF39
	global	_ANCON1
_ANCON1	set	0xF49
	global	_ANCON0
_ANCON0	set	0xF48
	global	_ANCON1bits
_ANCON1bits	set	0xF49
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_EECON1
_EECON1	set	0xFA6
	global	_TABLAT
_TABLAT	set	0xFF5
	global	_TBLPTRL
_TBLPTRL	set	0xFF6
	global	_TBLPTRH
_TBLPTRH	set	0xFF7
	global	_TBLPTRU
_TBLPTRU	set	0xFF8
	global	_UIR
_UIR	set	0xF62
	global	_PIE2bits
_PIE2bits	set	0xFA0
	global	_USTATbits
_USTATbits	set	0xF64
	global	_USTAT
_USTAT	set	0xF64
	global	_UIRbits
_UIRbits	set	0xF62
	global	_UCON
_UCON	set	0xF65
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_UCONbits
_UCONbits	set	0xF65
	global	_WDTCONbits
_WDTCONbits	set	0xFC0
	global	_TRISEbits
_TRISEbits	set	0xF96
	global	_LATEbits
_LATEbits	set	0xF8D
	global	_OSCTUNEbits
_OSCTUNEbits	set	0xF9B
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_STKPTR
_STKPTR	set	0xFFC
	global	_INTCON
_INTCON	set	0xFF2
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_hid_report_in

	DABS	1,1132,64,_hid_report_in
	global	_hid_report_out

	DABS	1,1068,64,_hid_report_out
	global	_CtrlTrfData

	DABS	1,1060,8,_CtrlTrfData
	global	_EP0OutOddBuf

	DABS	1,1052,8,_EP0OutOddBuf
; #config settings
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_PLLDIV$3
__CFG_PLLDIV$3 equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CPUDIV$OSC1
__CFG_CPUDIV$OSC1 equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_OSC$HSPLL
__CFG_OSC$HSPLL equ 0x0
global __CFG_T1DIG$OFF
__CFG_T1DIG$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_DSWDTOSC$INTOSCREF
__CFG_DSWDTOSC$INTOSCREF equ 0x0
global __CFG_RTCOSC$T1OSCREF
__CFG_RTCOSC$T1OSCREF equ 0x0
global __CFG_DSBOREN$OFF
__CFG_DSBOREN$OFF equ 0x0
global __CFG_DSWDTEN$OFF
__CFG_DSWDTEN$OFF equ 0x0
global __CFG_DSWDTPS$8192
__CFG_DSWDTPS$8192 equ 0x0
global __CFG_IOL1WAY$OFF
__CFG_IOL1WAY$OFF equ 0x0
global __CFG_MSSP7B_EN$MSK7
__CFG_MSSP7B_EN$MSK7 equ 0x0
global __CFG_WPFP$PAGE_1
__CFG_WPFP$PAGE_1 equ 0x0
global __CFG_WPEND$PAGE_0
__CFG_WPEND$PAGE_0 equ 0x0
global __CFG_WPCFG$OFF
__CFG_WPCFG$OFF equ 0x0
global __CFG_WPDIS$OFF
__CFG_WPDIS$OFF equ 0x0
	file	"dist/PIC18F46J50_PIM_XC8/production\pic18f46j50_pim.x.production.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_SetupPkt
_SetupPkt:
       ds      8
EraseFlashPage@TablePointerValue:
       ds      4
WriteFlashSubBlock@Address:
       ds      4
	global	_ProgrammedPointer
_ProgrammedPointer:
       ds      4
	global	_ProgramMemStopAddress
_ProgramMemStopAddress:
       ds      4
	global	_TempBDT
_TempBDT:
       ds      4
	global	_pDst
_pDst:
       ds      3
	global	_pSrc
_pSrc:
       ds      3
SignFlash@i:
       ds      2
ProcessIO@i:
       ds      2
LoadBDTandSetUOWN@pBDTEntry:
       ds      2
USBDeviceTasks@pBDTEntry:
       ds      2
	global	_wCount
_wCount:
       ds      2
BlinkUSBStatus@led_count:
       ds      2
	global	_uint_delay_counter
_uint_delay_counter:
       ds      2
WriteFlashSubBlock@i:
       ds      1
	global	_BufferedDataIndex
_BufferedDataIndex:
       ds      1
	global	_BootState
_BootState:
       ds      1
	global	_MaxPageToErase
_MaxPageToErase:
       ds      1
	global	_hid_rpt_rx_len
_hid_rpt_rx_len:
       ds      1
USBStdSetCfgHandler@i:
       ds      1
USBCtrlTrfTxService@bytes_to_send:
       ds      1
USBSuspend@UIESave:
       ds      1
USBDeviceTasks@i:
       ds      1
	global	_DeviceIsSoftDetached
_DeviceIsSoftDetached:
       ds      1
	global	_usb_stat
_usb_stat:
       ds      1
	global	_EP0OutOddNeedsArmingNext
_EP0OutOddNeedsArmingNext:
       ds      1
	global	_short_pkt_status
_short_pkt_status:
       ds      1
	global	_ctrl_trf_session_owner
_ctrl_trf_session_owner:
       ds      1
	global	_ctrl_trf_state
_ctrl_trf_state:
       ds      1
	global	_bTRNIFCount
_bTRNIFCount:
       ds      1
USBCBSuspend@OSCCONSave:
       ds      1
	global	_usb_device_state
_usb_device_state:
       ds      1
	global	_active_protocol
_active_protocol:
       ds      1
	global	_idle_rate
_idle_rate:
       ds      1
	global	_usb_alt_intf
_usb_alt_intf:
       ds      1
	global	_usb_active_cfg
_usb_active_cfg:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_PacketToPC
_PacketToPC:
       ds      65
	global	_PacketFromPC
_PacketFromPC:
       ds      65
psect	bssBIGRAMh,class=BIGRAM,space=1,noexec,lowdata
global __pbssBIGRAMh
__pbssBIGRAMh:
	global	_ProgrammingBuffer
_ProgrammingBuffer:
       ds      1024
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_BootMain:	; 1 bytes @ 0x0
?_InitializeSystem:	; 1 bytes @ 0x0
?_USBDeviceTasks:	; 1 bytes @ 0x0
?_BlinkUSBStatus:	; 1 bytes @ 0x0
??_BlinkUSBStatus:	; 1 bytes @ 0x0
?_LowVoltageCheck:	; 1 bytes @ 0x0
??_LowVoltageCheck:	; 1 bytes @ 0x0
?_ProcessIO:	; 1 bytes @ 0x0
?_DelayRoutine:	; 1 bytes @ 0x0
?_UserInit:	; 1 bytes @ 0x0
??_UserInit:	; 1 bytes @ 0x0
?_USBDeviceInit:	; 1 bytes @ 0x0
?_HIDInitEP:	; 1 bytes @ 0x0
??_HIDInitEP:	; 1 bytes @ 0x0
?_USBCheckHIDRequest:	; 1 bytes @ 0x0
??_USBCheckHIDRequest:	; 1 bytes @ 0x0
?_USBDisableWithLongDelay:	; 1 bytes @ 0x0
?_USBCheckBusStatus:	; 1 bytes @ 0x0
?_USBProtocolResetHandler:	; 1 bytes @ 0x0
?_USBWakeFromSuspend:	; 1 bytes @ 0x0
?_USBSuspend:	; 1 bytes @ 0x0
??_USBSuspend:	; 1 bytes @ 0x0
?_USBCtrlTrfSetupHandler:	; 1 bytes @ 0x0
?_USBCtrlTrfInHandler:	; 1 bytes @ 0x0
??_USBCtrlTrfInHandler:	; 1 bytes @ 0x0
?_ClearWatchdog:	; 1 bytes @ 0x0
??_ClearWatchdog:	; 1 bytes @ 0x0
?_LoadBDTandSetUOWN:	; 1 bytes @ 0x0
??_LoadBDTandSetUOWN:	; 1 bytes @ 0x0
?_USBCheckStdRequest:	; 1 bytes @ 0x0
?_USBCtrlEPServiceComplete:	; 1 bytes @ 0x0
?_USBCtrlTrfTxService:	; 1 bytes @ 0x0
??_USBCtrlTrfTxService:	; 1 bytes @ 0x0
?_USBStdGetDscHandler:	; 1 bytes @ 0x0
??_USBStdGetDscHandler:	; 1 bytes @ 0x0
?_USBStdSetCfgHandler:	; 1 bytes @ 0x0
?_USBStdGetStatusHandler:	; 1 bytes @ 0x0
??_USBStdGetStatusHandler:	; 1 bytes @ 0x0
?_USBStdFeatureReqHandler:	; 1 bytes @ 0x0
??_USBStdFeatureReqHandler:	; 1 bytes @ 0x0
?_HIDGetReportHandler:	; 1 bytes @ 0x0
??_HIDGetReportHandler:	; 1 bytes @ 0x0
?_HIDSetReportHandler:	; 1 bytes @ 0x0
??_HIDSetReportHandler:	; 1 bytes @ 0x0
?_WriteFlashSubBlock:	; 1 bytes @ 0x0
?_SignFlash:	; 1 bytes @ 0x0
?_ResetDeviceCleanly:	; 1 bytes @ 0x0
?_UnlockAndActivate:	; 1 bytes @ 0x0
??_UnlockAndActivate:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_USBCBWakeFromSuspend:	; 1 bytes @ 0x0
?_USBCBSuspend:	; 1 bytes @ 0x0
??_USBCBSuspend:	; 1 bytes @ 0x0
?_USBCBInitEP:	; 1 bytes @ 0x0
??_USBCBInitEP:	; 1 bytes @ 0x0
?_USBCBCheckOtherReq:	; 1 bytes @ 0x0
??_USBCBCheckOtherReq:	; 1 bytes @ 0x0
?_USBSoftAttach:	; 1 bytes @ 0x0
?_HIDTxReport:	; 1 bytes @ 0x0
?_HIDRxReport:	; 1 bytes @ 0x0
	global	USBCBInitEP@ConfigurationIndex
USBCBInitEP@ConfigurationIndex:	; 1 bytes @ 0x0
	global	LoadBDTandSetUOWN@BDTIndexToLoad
LoadBDTandSetUOWN@BDTIndexToLoad:	; 1 bytes @ 0x0
	global	HIDTxReport@buffer
HIDTxReport@buffer:	; 1 bytes @ 0x0
	global	HIDRxReport@buffer
HIDRxReport@buffer:	; 1 bytes @ 0x0
	global	UnlockAndActivate@UnlockKey
UnlockAndActivate@UnlockKey:	; 1 bytes @ 0x0
	global	DelayRoutine@DelayAmount
DelayRoutine@DelayAmount:	; 2 bytes @ 0x0
	ds   1
??_USBProtocolResetHandler:	; 1 bytes @ 0x1
??_USBCtrlEPServiceComplete:	; 1 bytes @ 0x1
??_USBStdSetCfgHandler:	; 1 bytes @ 0x1
?_EraseFlashPage:	; 1 bytes @ 0x1
??_WriteFlashSubBlock:	; 1 bytes @ 0x1
	global	HIDTxReport@len
HIDTxReport@len:	; 1 bytes @ 0x1
	global	HIDRxReport@len
HIDRxReport@len:	; 1 bytes @ 0x1
	global	EraseFlashPage@PageNumToErase
EraseFlashPage@PageNumToErase:	; 2 bytes @ 0x1
	ds   1
??_InitializeSystem:	; 1 bytes @ 0x2
??_DelayRoutine:	; 1 bytes @ 0x2
??_USBDeviceInit:	; 1 bytes @ 0x2
??_USBDisableWithLongDelay:	; 1 bytes @ 0x2
??_USBCheckBusStatus:	; 1 bytes @ 0x2
??_USBWakeFromSuspend:	; 1 bytes @ 0x2
??_USBCheckStdRequest:	; 1 bytes @ 0x2
??_ResetDeviceCleanly:	; 1 bytes @ 0x2
??_USBCBWakeFromSuspend:	; 1 bytes @ 0x2
??_USBSoftAttach:	; 1 bytes @ 0x2
??_HIDTxReport:	; 1 bytes @ 0x2
??_HIDRxReport:	; 1 bytes @ 0x2
	ds   1
??_USBDeviceTasks:	; 1 bytes @ 0x3
??_USBCtrlTrfSetupHandler:	; 1 bytes @ 0x3
??_EraseFlashPage:	; 1 bytes @ 0x3
	global	HIDTxReport@i
HIDTxReport@i:	; 1 bytes @ 0x3
	ds   4
??_SignFlash:	; 1 bytes @ 0x7
	ds   1
	global	SignFlash@pROM
SignFlash@pROM:	; 3 bytes @ 0x8
	ds   3
??_ProcessIO:	; 1 bytes @ 0xB
	ds   2
??_BootMain:	; 1 bytes @ 0xD
??_main:	; 1 bytes @ 0xD
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    185
;!    Data        0
;!    BSS         1224
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     13      83
;!    BANK0           160      0     130
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4            84      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          192      0       0

;!
;!Pointer List with Targets:
;!
;!    ep0BoEven.ADR	PTR unsigned char  size(2) Largest target is 0
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    ep0BoOdd.ADR	PTR unsigned char  size(2) Largest target is 0
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    SignFlash@pROM	PTR  unsigned char  size(3) Largest target is 65527
;!		 -> ROM(CODE[65527]), 
;!
;!    HIDRxReport@buffer	PTR unsigned char  size(1) Largest target is 65
;!		 -> PacketFromPC(BANK0[65]), 
;!
;!    HIDTxReport@buffer	PTR unsigned char  size(1) Largest target is 65
;!		 -> PacketToPC(BANK0[65]), 
;!
;!    ep1Bi.ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    ep1Bo.ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    LoadBDTandSetUOWN@pBDTEntry.ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    LoadBDTandSetUOWN@pBDTEntry	PTR volatile struct _BDT size(2) Largest target is 3775
;!		 -> NULL(NULL[0]), RAM(DATA[3775]), 
;!
;!    TempBDT.ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    pDst.ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    ep0Bi.ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    USBDeviceTasks@pBDTEntry.ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    USBDeviceTasks@pBDTEntry	PTR volatile struct _BDT size(2) Largest target is 5
;!		 -> NULL(NULL[0]), ep0BoOdd(ABS[4]), ep0BoEven(BIGRAMl[4]), 
;!
;!    ep1Bi...ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    ep1Bo...ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    ep0Bi...ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    ep0BoOdd...ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    ep0BoEven...ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    S761$ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    TempBDT...ADR	PTR unsigned char  size(2) Largest target is 64
;!		 -> hid_report_in(BIGRAMh[64]), hid_report_out(BIGRAMh[64]), EP0OutEvenBuf(ABS[8]), EP0OutOddBuf(BIGRAMh[8]), 
;!		 -> CtrlTrfData(BIGRAMh[8]), 
;!
;!    pDst.wRom	PTR const unsigned short  size(2) Largest target is 0
;!
;!    pDst.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    pDst.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    pDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S608_POINTER$wRom	PTR const unsigned short  size(2) Largest target is 0
;!
;!    pSrc.wRom	PTR const unsigned short  size(2) Largest target is 0
;!
;!    S608_POINTER$bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    pSrc.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S608_POINTER$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    pSrc.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S608_POINTER$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    pSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    USB_SD_Ptr	const PTR const unsigned char [3] size(1) Largest target is 52
;!		 -> sd002(CODE[38]), sd001(CODE[52]), sd000(CODE[4]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _BootMain->_ProcessIO
;!    _ProcessIO->_SignFlash
;!    _WriteFlashSubBlock->_UnlockAndActivate
;!    _USBCBWakeFromSuspend->_DelayRoutine
;!    _USBCtrlTrfSetupHandler->_USBCheckStdRequest
;!    _USBCtrlEPServiceComplete->_LoadBDTandSetUOWN
;!    _USBCheckStdRequest->_USBStdFeatureReqHandler
;!    _USBCheckStdRequest->_USBStdGetStatusHandler
;!    _USBStdSetCfgHandler->_USBCBInitEP
;!    _SignFlash->_EraseFlashPage
;!    _EraseFlashPage->_UnlockAndActivate
;!    _InitializeSystem->_DelayRoutine
;!    _USBProtocolResetHandler->_LoadBDTandSetUOWN
;!    _USBProtocolResetHandler->_USBCBInitEP
;!    _USBDisableWithLongDelay->_DelayRoutine
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    4192
;!                           _BootMain
;! ---------------------------------------------------------------------------------
;! (1) _BootMain                                             0     0      0    4192
;!                     _BlinkUSBStatus
;!                   _InitializeSystem
;!                    _LowVoltageCheck
;!                          _ProcessIO
;!                     _USBDeviceTasks
;! ---------------------------------------------------------------------------------
;! (2) _ProcessIO                                            2     2      0    2566
;!                                             11 COMRAM     2     2      0
;!                      _ClearWatchdog
;!                     _EraseFlashPage
;!                        _HIDRxReport
;!                        _HIDTxReport
;!                 _ResetDeviceCleanly
;!                          _SignFlash
;!                     _USBDeviceTasks
;!                 _WriteFlashSubBlock
;! ---------------------------------------------------------------------------------
;! (3) _WriteFlashSubBlock                                   6     6      0      22
;!                                              1 COMRAM     4     4      0
;!                  _UnlockAndActivate
;! ---------------------------------------------------------------------------------
;! (2) _USBDeviceTasks                                       2     2      0     712
;!                                              3 COMRAM     2     2      0
;!                  _USBCheckBusStatus
;!                _USBCtrlTrfInHandler
;!             _USBCtrlTrfSetupHandler
;!            _USBProtocolResetHandler
;!                         _USBSuspend
;!                 _USBWakeFromSuspend
;! ---------------------------------------------------------------------------------
;! (3) _USBWakeFromSuspend                                   0     0      0     290
;!               _USBCBWakeFromSuspend
;! ---------------------------------------------------------------------------------
;! (4) _USBCBWakeFromSuspend                                 0     0      0     290
;!                       _DelayRoutine
;! ---------------------------------------------------------------------------------
;! (3) _USBSuspend                                           0     0      0       0
;!                       _USBCBSuspend
;! ---------------------------------------------------------------------------------
;! (4) _USBCBSuspend                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _USBCtrlTrfSetupHandler                               0     0      0      44
;!                 _USBCBCheckOtherReq
;!                 _USBCheckStdRequest
;!           _USBCtrlEPServiceComplete
;! ---------------------------------------------------------------------------------
;! (4) _USBCtrlEPServiceComplete                             0     0      0      22
;!                  _LoadBDTandSetUOWN
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (4) _USBCheckStdRequest                                   1     1      0      22
;!                                              2 COMRAM     1     1      0
;!            _USBStdFeatureReqHandler
;!                _USBStdGetDscHandler
;!             _USBStdGetStatusHandler
;!                _USBStdSetCfgHandler
;! ---------------------------------------------------------------------------------
;! (5) _USBStdSetCfgHandler                                  0     0      0      22
;!                        _USBCBInitEP
;! ---------------------------------------------------------------------------------
;! (5) _USBStdGetStatusHandler                               2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _USBStdGetDscHandler                                  1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _USBStdFeatureReqHandler                              2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _USBCBCheckOtherReq                                   0     0      0       0
;!                 _USBCheckHIDRequest
;! ---------------------------------------------------------------------------------
;! (5) _USBCheckHIDRequest                                   0     0      0       0
;!                _HIDGetReportHandler
;!                _HIDSetReportHandler
;! ---------------------------------------------------------------------------------
;! (6) _HIDSetReportHandler                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _HIDGetReportHandler                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _USBCtrlTrfInHandler                                  0     0      0       0
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (5) _USBCtrlTrfTxService                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _SignFlash                                            4     4      0     361
;!                                              7 COMRAM     4     4      0
;!                      _ClearWatchdog
;!                     _EraseFlashPage
;!                  _UnlockAndActivate
;! ---------------------------------------------------------------------------------
;! (4) _EraseFlashPage                                       6     4      2     245
;!                                              1 COMRAM     6     4      2
;!                  _UnlockAndActivate
;! ---------------------------------------------------------------------------------
;! (4) _UnlockAndActivate                                    1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                    _LowVoltageCheck
;! ---------------------------------------------------------------------------------
;! (5) _LowVoltageCheck                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _ResetDeviceCleanly                                   0     0      0     290
;!            _USBDisableWithLongDelay
;! ---------------------------------------------------------------------------------
;! (3) _HIDTxReport                                          4     2      2     691
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _HIDRxReport                                          3     1      2     245
;!                                              0 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (2) _InitializeSystem                                     0     0      0     914
;!                       _DelayRoutine
;!                      _USBDeviceInit
;!                           _UserInit
;! ---------------------------------------------------------------------------------
;! (3) _USBDeviceInit                                        0     0      0     624
;!                  _USBCheckBusStatus
;!            _USBDisableWithLongDelay
;! ---------------------------------------------------------------------------------
;! (3) _USBCheckBusStatus                                    0     0      0     334
;!                      _USBSoftAttach
;! ---------------------------------------------------------------------------------
;! (4) _USBSoftAttach                                        0     0      0     334
;!            _USBDisableWithLongDelay
;!            _USBProtocolResetHandler
;! ---------------------------------------------------------------------------------
;! (3) _USBProtocolResetHandler                              0     0      0      44
;!                      _ClearWatchdog
;!                  _LoadBDTandSetUOWN
;!                        _USBCBInitEP
;! ---------------------------------------------------------------------------------
;! (4) _USBCBInitEP                                          1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                          _HIDInitEP
;!                           _UserInit
;! ---------------------------------------------------------------------------------
;! (5) _UserInit                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _HIDInitEP                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _LoadBDTandSetUOWN                                    1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _USBDisableWithLongDelay                              0     0      0     290
;!                       _DelayRoutine
;! ---------------------------------------------------------------------------------
;! (5) _DelayRoutine                                         2     0      2     290
;!                                              0 COMRAM     2     0      2
;!                      _ClearWatchdog
;! ---------------------------------------------------------------------------------
;! (6) _ClearWatchdog                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _BlinkUSBStatus                                       1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _BootMain
;!     _BlinkUSBStatus
;!     _InitializeSystem
;!       _DelayRoutine
;!         _ClearWatchdog
;!       _USBDeviceInit
;!         _USBCheckBusStatus
;!           _USBSoftAttach
;!             _USBDisableWithLongDelay
;!               _DelayRoutine
;!                 _ClearWatchdog
;!             _USBProtocolResetHandler
;!               _ClearWatchdog
;!               _LoadBDTandSetUOWN
;!               _USBCBInitEP
;!                 _HIDInitEP
;!                 _UserInit
;!         _USBDisableWithLongDelay
;!           _DelayRoutine
;!             _ClearWatchdog
;!       _UserInit
;!     _LowVoltageCheck
;!     _ProcessIO
;!       _ClearWatchdog
;!       _EraseFlashPage
;!         _UnlockAndActivate
;!           _LowVoltageCheck
;!       _HIDRxReport
;!       _HIDTxReport
;!       _ResetDeviceCleanly
;!         _USBDisableWithLongDelay
;!           _DelayRoutine
;!             _ClearWatchdog
;!       _SignFlash
;!         _ClearWatchdog
;!         _EraseFlashPage
;!           _UnlockAndActivate
;!             _LowVoltageCheck
;!         _UnlockAndActivate
;!           _LowVoltageCheck
;!       _USBDeviceTasks
;!         _USBCheckBusStatus
;!           _USBSoftAttach
;!             _USBDisableWithLongDelay
;!               _DelayRoutine
;!                 _ClearWatchdog
;!             _USBProtocolResetHandler
;!               _ClearWatchdog
;!               _LoadBDTandSetUOWN
;!               _USBCBInitEP
;!                 _HIDInitEP
;!                 _UserInit
;!         _USBCtrlTrfInHandler
;!           _USBCtrlTrfTxService
;!         _USBCtrlTrfSetupHandler
;!           _USBCBCheckOtherReq
;!             _USBCheckHIDRequest
;!               _HIDGetReportHandler
;!               _HIDSetReportHandler
;!           _USBCheckStdRequest
;!             _USBStdFeatureReqHandler
;!             _USBStdGetDscHandler
;!             _USBStdGetStatusHandler
;!             _USBStdSetCfgHandler
;!               _USBCBInitEP
;!                 _HIDInitEP
;!                 _UserInit
;!           _USBCtrlEPServiceComplete
;!             _LoadBDTandSetUOWN
;!             _USBCtrlTrfTxService
;!         _USBProtocolResetHandler
;!           _ClearWatchdog
;!           _LoadBDTandSetUOWN
;!           _USBCBInitEP
;!             _HIDInitEP
;!             _UserInit
;!         _USBSuspend
;!           _USBCBSuspend
;!         _USBWakeFromSuspend
;!           _USBCBWakeFromSuspend
;!             _DelayRoutine
;!               _ClearWatchdog
;!       _WriteFlashSubBlock
;!         _UnlockAndActivate
;!           _LowVoltageCheck
;!     _USBDeviceTasks
;!       _USBCheckBusStatus
;!         _USBSoftAttach
;!           _USBDisableWithLongDelay
;!             _DelayRoutine
;!               _ClearWatchdog
;!           _USBProtocolResetHandler
;!             _ClearWatchdog
;!             _LoadBDTandSetUOWN
;!             _USBCBInitEP
;!               _HIDInitEP
;!               _UserInit
;!       _USBCtrlTrfInHandler
;!         _USBCtrlTrfTxService
;!       _USBCtrlTrfSetupHandler
;!         _USBCBCheckOtherReq
;!           _USBCheckHIDRequest
;!             _HIDGetReportHandler
;!             _HIDSetReportHandler
;!         _USBCheckStdRequest
;!           _USBStdFeatureReqHandler
;!           _USBStdGetDscHandler
;!           _USBStdGetStatusHandler
;!           _USBStdSetCfgHandler
;!             _USBCBInitEP
;!               _HIDInitEP
;!               _UserInit
;!         _USBCtrlEPServiceComplete
;!           _LoadBDTandSetUOWN
;!           _USBCtrlTrfTxService
;!       _USBProtocolResetHandler
;!         _ClearWatchdog
;!         _LoadBDTandSetUOWN
;!         _USBCBInitEP
;!           _HIDInitEP
;!           _UserInit
;!       _USBSuspend
;!         _USBCBSuspend
;!       _USBWakeFromSuspend
;!         _USBCBWakeFromSuspend
;!           _DelayRoutine
;!             _ClearWatchdog
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      D      53       1       87.4%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0     4D5       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      82       5       81.3%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!ABS                  0      0      D5       8        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK4            54      0       0      13        0.0%
;!BANK4               54      0       0      14        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK14           C0      0       0      33        0.0%
;!BANK14              C0      0       0      34        0.0%
;!BIGRAMh            A14      0     400      35       39.7%
;!BIGRAMl            3FF      0       0      36        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 411 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_BootMain
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	411
global __ptext0
__ptext0:
psect	text0
	file	"../demo_src/main.c"
	line	411
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	line	419
	
l3309:
;main.c: 419: {ANCON1bits.PCFG8 = 1;};
	movlb	15	; () banked
	bsf	((3913))&0ffh,0	;volatile
	line	423
;main.c: 423: if(PORTBbits.RB2 == 1)
	btfss	((c:3969)),c,2	;volatile
	goto	u2241
	goto	u2240
u2241:
	goto	l3315
u2240:
	line	428
	
l3311:; BSR set to: 15

;main.c: 424: {
;main.c: 428: {ANCON1bits.PCFG8 = 0;};
	bcf	((3913))&0ffh,0	;volatile
	line	432
;main.c: 432: goto DoFlashSignatureCheck;
	goto	l3317
	line	437
	
l3315:; BSR set to: 15

;main.c: 434: else
;main.c: 435: {
;main.c: 437: BootMain();
	call	_BootMain	;wreg free
	line	443
	
l3317:
;main.c: 443: if(*(const unsigned int*)0x1006 == 0x600D)
	movlw	low((4102))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((4102))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((4102))
	movwf	tblptru
	endif
	tblrd	*+
	movlw	13
	xorwf	tablat,w
	bnz	u2251
tblrd	*+
	movlw	96
	xorwf	tablat,w
	btfss	status,2
	goto	u2251
	goto	u2250

u2251:
	goto	l3323
u2250:
	line	450
	
l3319:
;main.c: 444: {
;main.c: 450: if(*(const unsigned int*)0x1000 != 0xFFFF)
	movlw	low((4096))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((4096))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((4096))
	movwf	tblptru
	endif
	tblrd	*+
	incf	tablat,w
	bnz	u2260
tblrd	*+
	incf	tablat,w
	btfsc	status,2
	goto	u2261
	goto	u2260

u2261:
	goto	l3323
u2260:
	line	455
	
l3321:
# 455 "../demo_src/main.c"
goto 0x1000 ;# 
psect	text0
	line	467
	
l3323:
;main.c: 460: }
;main.c: 461: }
;main.c: 467: BootMain();
	call	_BootMain	;wreg free
	line	469
	
l66:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_BootMain

;; *************** function _BootMain *****************
;; Defined at:
;;		line 496 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_BlinkUSBStatus
;;		_InitializeSystem
;;		_LowVoltageCheck
;;		_ProcessIO
;;		_USBDeviceTasks
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	_BootMain_text,class=CODE,space=0,ovrld,reloc=2,group=0
	line	496
global __p_BootMain_text
__p_BootMain_text:
psect	_BootMain_text
	file	"../demo_src/main.c"
	line	496
	global	__size_of_BootMain
	__size_of_BootMain	equ	__end_of_BootMain-_BootMain
	
_BootMain:
;incstack = 0
	opt	stack 23
	global _BootMain_absaddr
	_BootMain_absaddr equ 0x30
	line	513
	
l3297:
;main.c: 513: INTCON = 0x00;
	clrf	((c:4082)),c	;volatile
	line	527
;main.c: 527: STKPTR = 0x00;
	clrf	((c:4092)),c	;volatile
	line	536
	
l3299:
;main.c: 536: InitializeSystem();
	call	_InitializeSystem	;wreg free
	line	539
;main.c: 539: while(1)
	
l69:
	line	541
# 541 "../demo_src/main.c"
clrwdt ;# 
psect	_BootMain_text
	line	546
	
l3301:
;main.c: 546: USBDeviceTasks();
	call	_USBDeviceTasks	;wreg free
	line	548
	
l3303:
;main.c: 548: BlinkUSBStatus();
	call	_BlinkUSBStatus	;wreg free
	line	550
	
l3305:
;main.c: 550: LowVoltageCheck();
	call	_LowVoltageCheck	;wreg free
	line	554
	
l3307:
;main.c: 554: ProcessIO();
	call	_ProcessIO	;wreg free
	goto	l69
	return	;funcret
	opt stack 0
	line	557
GLOBAL	__end_of_BootMain
	__end_of_BootMain:
	signat	_BootMain,89
	global	_ProcessIO

;; *************** function _ProcessIO *****************
;; Defined at:
;;		line 276 in file "../demo_src/boot_18fxxjxx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ClearWatchdog
;;		_EraseFlashPage
;;		_HIDRxReport
;;		_HIDTxReport
;;		_ResetDeviceCleanly
;;		_SignFlash
;;		_USBDeviceTasks
;;		_WriteFlashSubBlock
;; This function is called by:
;;		_BootMain
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/boot_18fxxjxx.c"
	line	276
global __ptext2
__ptext2:
psect	text2
	file	"../demo_src/boot_18fxxjxx.c"
	line	276
	global	__size_of_ProcessIO
	__size_of_ProcessIO	equ	__end_of_ProcessIO-_ProcessIO
	
_ProcessIO:
;incstack = 0
	opt	stack 23
	line	286
	
l3123:
;boot_18fxxjxx.c: 278: static unsigned int i;
;boot_18fxxjxx.c: 286: if((usb_device_state != 6) || (UCONbits.SUSPND == 1))
		movlw	6
	xorwf	((c:_usb_device_state)),c,w
	btfss	status,2
	goto	u2091
	goto	u2090

u2091:
	goto	l616
u2090:
	
l3125:
	btfss	((c:3941)),c,1	;volatile
	goto	u2101
	goto	u2100
u2101:
	goto	l3127
u2100:
	goto	l616
	line	296
	
l3127:
;boot_18fxxjxx.c: 291: }
;boot_18fxxjxx.c: 296: if(BootState == 0x00)
	movf	((c:_BootState)),c,w
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l3295
u2110:
	line	300
	
l3129:
;boot_18fxxjxx.c: 297: {
;boot_18fxxjxx.c: 300: if(!ep1Bo.Stat.UOWN)
	movlb	4	; () banked
	btfsc	((1036))&0ffh,7	;volatile
	goto	u2121
	goto	u2120
u2121:
	goto	l616
u2120:
	line	304
	
l3131:; BSR set to: 4

;boot_18fxxjxx.c: 301: {
;boot_18fxxjxx.c: 304: HIDRxReport((char *)&PacketFromPC, 0x40);
		movlw	low(_PacketFromPC)
	movwf	((c:HIDRxReport@buffer)),c

	movlw	low(040h)
	movwf	((c:HIDRxReport@len)),c
	call	_HIDRxReport	;wreg free
	line	305
	
l3133:; BSR set to: 4

;boot_18fxxjxx.c: 305: BootState = 0x01;
	movlw	low(01h)
	movwf	((c:_BootState)),c
	line	308
	
l3135:; BSR set to: 4

;boot_18fxxjxx.c: 308: for(i = 0; i < 0x40; i++)
	clrf	((c:ProcessIO@i)),c
	clrf	((c:ProcessIO@i+1)),c
	line	309
	
l3141:
;boot_18fxxjxx.c: 309: PacketToPC.Contents[i] = 0;
	movf	((c:ProcessIO@i)),c,w
	addlw	low(_PacketToPC)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	308
	
l3143:
	infsnz	((c:ProcessIO@i)),c
	incf	((c:ProcessIO@i+1)),c
	
l3145:
		movf	((c:ProcessIO@i+1)),c,w
	bnz	u2130
	movlw	64
	subwf	 ((c:ProcessIO@i)),c,w
	btfss	status,0
	goto	u2131
	goto	u2130

u2131:
	goto	l3141
u2130:
	goto	l616
	line	320
	
l3147:; BSR set to: 0

;boot_18fxxjxx.c: 320: PacketToPC.Command = 0x02;
	movlw	low(02h)
	movwf	((_PacketToPC))&0ffh
	line	321
;boot_18fxxjxx.c: 321: PacketToPC.PacketDataFieldSize = 0x3A;
	movlw	low(03Ah)
	movwf	(0+(_PacketToPC+01h))&0ffh
	line	322
;boot_18fxxjxx.c: 322: PacketToPC.BytesPerAddress = 0x01;
	movlw	low(01h)
	movwf	(0+(_PacketToPC+02h))&0ffh
	line	323
;boot_18fxxjxx.c: 323: PacketToPC.Type1 = 0x01;
	movlw	low(01h)
	movwf	(0+(_PacketToPC+03h))&0ffh
	line	324
;boot_18fxxjxx.c: 324: PacketToPC.Address1 = (unsigned long)(uint32_t)0x1000;
	movlw	low(01000h)
	movwf	(0+(_PacketToPC+04h))&0ffh
	movlw	high(01000h)
	movwf	(1+(_PacketToPC+04h))&0ffh
	movlw	low highword(01000h)
	movwf	(2+(_PacketToPC+04h))&0ffh
	movlw	high highword(01000h)
	movwf	(3+(_PacketToPC+04h))&0ffh
	line	325
	
l3149:; BSR set to: 0

;boot_18fxxjxx.c: 325: PacketToPC.Length1 = (unsigned long)(ProgramMemStopAddress - (uint32_t)0x1000);
	movlw	0
	addwf	((c:_ProgramMemStopAddress)),c,w
	movwf	(0+(_PacketToPC+08h))&0ffh
	movlw	0F0h
	addwfc	((c:_ProgramMemStopAddress+1)),c,w
	movwf	1+(0+(_PacketToPC+08h))&0ffh
	
	movlw	0FFh
	addwfc	((c:_ProgramMemStopAddress+2)),c,w
	movwf	2+(0+(_PacketToPC+08h))&0ffh
	
	movlw	0FFh
	addwfc	((c:_ProgramMemStopAddress+3)),c,w
	movwf	3+(0+(_PacketToPC+08h))&0ffh
	line	326
	
l3151:; BSR set to: 0

;boot_18fxxjxx.c: 326: PacketToPC.Type2 = 0x03;
	movlw	low(03h)
	movwf	(0+(_PacketToPC+0Ch))&0ffh
	line	327
	
l3153:; BSR set to: 0

;boot_18fxxjxx.c: 327: PacketToPC.Address2 = (unsigned long)(uint32_t)0x00FFF8;
	movlw	low(0FFF8h)
	movwf	(0+(_PacketToPC+0Dh))&0ffh
	movlw	high(0FFF8h)
	movwf	(1+(_PacketToPC+0Dh))&0ffh
	movlw	low highword(0FFF8h)
	movwf	(2+(_PacketToPC+0Dh))&0ffh
	movlw	high highword(0FFF8h)
	movwf	(3+(_PacketToPC+0Dh))&0ffh
	line	328
	
l3155:; BSR set to: 0

;boot_18fxxjxx.c: 328: PacketToPC.Length2 = (unsigned long)8;
	movlw	low(08h)
	movwf	(0+(_PacketToPC+011h))&0ffh
	movlw	high(08h)
	movwf	(1+(_PacketToPC+011h))&0ffh
	movlw	low highword(08h)
	movwf	(2+(_PacketToPC+011h))&0ffh
	movlw	high highword(08h)
	movwf	(3+(_PacketToPC+011h))&0ffh
	line	329
	
l3157:; BSR set to: 0

;boot_18fxxjxx.c: 329: PacketToPC.Type3 = 0xFF;
	setf	(0+(_PacketToPC+015h))&0ffh
	line	330
	
l3159:; BSR set to: 0

;boot_18fxxjxx.c: 330: PacketToPC.VersionFlag = 0xA5;
	movlw	low(0A5h)
	movwf	(0+(_PacketToPC+039h))&0ffh
	line	334
	
l3161:; BSR set to: 0

;boot_18fxxjxx.c: 334: if(!ep1Bi.Stat.UOWN)
	movlb	4	; () banked
	btfsc	((1040))&0ffh,7	;volatile
	goto	u2141
	goto	u2140
u2141:
	goto	l616
u2140:
	line	336
	
l3163:; BSR set to: 4

;boot_18fxxjxx.c: 335: {
;boot_18fxxjxx.c: 336: HIDTxReport((char *)&PacketToPC, 0x40);
		movlw	low(_PacketToPC)
	movwf	((c:HIDTxReport@buffer)),c

	movlw	low(040h)
	movwf	((c:HIDTxReport@len)),c
	call	_HIDTxReport	;wreg free
	line	337
	
l3165:
;boot_18fxxjxx.c: 337: BootState = 0x00;
	clrf	((c:_BootState)),c
	goto	l616
	line	341
	
l3167:; BSR set to: 0

;boot_18fxxjxx.c: 341: if(PacketFromPC.LockValue == 0x00)
	movf	(0+(_PacketFromPC+01h))&0ffh,w
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3171
u2150:
	line	343
	
l3169:; BSR set to: 0

;boot_18fxxjxx.c: 342: {
;boot_18fxxjxx.c: 343: MaxPageToErase = (((uint32_t)0x00FFF8)/1024);
	movlw	low(03Fh)
	movwf	((c:_MaxPageToErase)),c
	line	344
;boot_18fxxjxx.c: 344: ProgramMemStopAddress = ((uint32_t)0x00FFF8);
	movlw	low(0FFF8h)
	movwf	((c:_ProgramMemStopAddress)),c
	movlw	high(0FFF8h)
	movwf	((c:_ProgramMemStopAddress+1)),c
	movlw	low highword(0FFF8h)
	movwf	((c:_ProgramMemStopAddress+2)),c
	movlw	high highword(0FFF8h)
	movwf	((c:_ProgramMemStopAddress+3)),c
	line	345
;boot_18fxxjxx.c: 345: }
	goto	l3165
	line	348
	
l3171:; BSR set to: 0

;boot_18fxxjxx.c: 346: else
;boot_18fxxjxx.c: 347: {
;boot_18fxxjxx.c: 348: MaxPageToErase = ((((uint32_t)0x00FFF8)/1024) - 1);
	movlw	low(03Eh)
	movwf	((c:_MaxPageToErase)),c
	line	349
;boot_18fxxjxx.c: 349: ProgramMemStopAddress = ((((((uint32_t)0x00FFF8)/1024) - 1) + 1) * 1024);
	movlw	low(0FC00h)
	movwf	((c:_ProgramMemStopAddress)),c
	movlw	high(0FC00h)
	movwf	((c:_ProgramMemStopAddress+1)),c
	movlw	low highword(0FC00h)
	movwf	((c:_ProgramMemStopAddress+2)),c
	movlw	high highword(0FC00h)
	movwf	((c:_ProgramMemStopAddress+3)),c
	goto	l3165
	line	358
	
l3175:; BSR set to: 0

;boot_18fxxjxx.c: 358: for(i = ((uint32_t)0x1000/1024); i < (MaxPageToErase + 1); i++)
	movlw	high(04h)
	movwf	((c:ProcessIO@i+1)),c
	movlw	low(04h)
	movwf	((c:ProcessIO@i)),c
	goto	l3185
	line	360
	
l3177:
;boot_18fxxjxx.c: 359: {
;boot_18fxxjxx.c: 360: ClearWatchdog();
	call	_ClearWatchdog	;wreg free
	line	361
	
l3179:
;boot_18fxxjxx.c: 361: EraseFlashPage(i);
	movff	(c:ProcessIO@i),(c:EraseFlashPage@PageNumToErase)
	movff	(c:ProcessIO@i+1),(c:EraseFlashPage@PageNumToErase+1)
	call	_EraseFlashPage	;wreg free
	line	362
	
l3181:
;boot_18fxxjxx.c: 362: USBDeviceTasks();
	call	_USBDeviceTasks	;wreg free
	line	358
	
l3183:
	infsnz	((c:ProcessIO@i)),c
	incf	((c:ProcessIO@i+1)),c
	
l3185:
	movf	((c:_MaxPageToErase)),c,w
	movwf	(??_ProcessIO+0+0)&0ffh,c
	clrf	(??_ProcessIO+0+0+1)&0ffh,c

	movlw	01h
	addwf	(??_ProcessIO+0+0),c
	movlw	0
	addwfc	(??_ProcessIO+0+1),c
		movf	(??_ProcessIO+0+0),c,w
	subwf	((c:ProcessIO@i)),c,w
	movf	(??_ProcessIO+0+1),c,w
	subwfb	((c:ProcessIO@i+1)),c,w
	btfss	status,0
	goto	u2161
	goto	u2160

u2161:
	goto	l3177
u2160:
	goto	l3165
	line	367
	
l3187:; BSR set to: 0

;boot_18fxxjxx.c: 367: if(ProgrammedPointer == (uint32_t)0xFFFFFFFF)
		incf	((c:_ProgrammedPointer)),c,w
	bnz	u2171
	incf	((c:_ProgrammedPointer+1)),c,w
	bnz	u2171
	incf	((c:_ProgrammedPointer+2)),c,w
	bnz	u2171
	incf	((c:_ProgrammedPointer+3)),c,w
	btfss	status,2
	goto	u2171
	goto	u2170

u2171:
	goto	l3191
u2170:
	line	368
	
l3189:; BSR set to: 0

;boot_18fxxjxx.c: 368: ProgrammedPointer = PacketFromPC.Address;
	movff	0+(_PacketFromPC+01h),(c:_ProgrammedPointer)
	movff	1+(_PacketFromPC+01h),(c:_ProgrammedPointer+1)
	movff	2+(_PacketFromPC+01h),(c:_ProgrammedPointer+2)
	movff	3+(_PacketFromPC+01h),(c:_ProgrammedPointer+3)
	line	370
	
l3191:; BSR set to: 0

;boot_18fxxjxx.c: 370: if(ProgrammedPointer == (uint32_t)PacketFromPC.Address)
	movf	((c:_ProgrammedPointer)),c,w
xorwf	(0+(_PacketFromPC+01h))&0ffh,w
	bnz	u2181
movf	((c:_ProgrammedPointer+1)),c,w
xorwf	(1+(_PacketFromPC+01h))&0ffh,w
	bnz	u2181
movf	((c:_ProgrammedPointer+2)),c,w
xorwf	(2+(_PacketFromPC+01h))&0ffh,w
	bnz	u2181
movf	((c:_ProgrammedPointer+3)),c,w
xorwf	(3+(_PacketFromPC+01h))&0ffh,w
	btfss	status,2
	goto	u2181
	goto	u2180

u2181:
	goto	l3165
u2180:
	line	372
	
l3193:; BSR set to: 0

;boot_18fxxjxx.c: 371: {
;boot_18fxxjxx.c: 372: for(i = 0; i < PacketFromPC.Size; i++)
	clrf	((c:ProcessIO@i)),c
	clrf	((c:ProcessIO@i+1)),c
	goto	l3207
	line	374
	
l3195:; BSR set to: 0

;boot_18fxxjxx.c: 373: {
;boot_18fxxjxx.c: 374: ProgrammingBuffer[BufferedDataIndex] = PacketFromPC.Data[i+(0x3A-PacketFromPC.Size)];
	movf	(0+(_PacketFromPC+05h))&0ffh,w
	sublw	low(_PacketFromPC+040h)
	addwf	((c:ProcessIO@i)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(_ProgrammingBuffer)
	addwf	((c:_BufferedDataIndex)),c,w
	movwf	c:fsr1l
	clrf	1+c:fsr1l
	movlw	high(_ProgrammingBuffer)
	addwfc	1+c:fsr1l
	movff	indf2,indf1
	line	375
	
l3197:; BSR set to: 0

;boot_18fxxjxx.c: 375: BufferedDataIndex++;
	incf	((c:_BufferedDataIndex)),c
	line	376
	
l3199:; BSR set to: 0

;boot_18fxxjxx.c: 376: ProgrammedPointer++;
	movlw	low(01h)
	addwf	((c:_ProgrammedPointer)),c
	movlw	0
	addwfc	((c:_ProgrammedPointer+1)),c
	addwfc	((c:_ProgrammedPointer+2)),c
	addwfc	((c:_ProgrammedPointer+3)),c
	line	377
	
l3201:; BSR set to: 0

;boot_18fxxjxx.c: 377: if(BufferedDataIndex == 0x3A)
		movlw	58
	xorwf	((c:_BufferedDataIndex)),c,w
	btfss	status,2
	goto	u2191
	goto	u2190

u2191:
	goto	l3205
u2190:
	line	379
	
l3203:; BSR set to: 0

;boot_18fxxjxx.c: 378: {
;boot_18fxxjxx.c: 379: WriteFlashSubBlock();
	call	_WriteFlashSubBlock	;wreg free
	line	372
	
l3205:
	infsnz	((c:ProcessIO@i)),c
	incf	((c:ProcessIO@i+1)),c
	
l3207:
	movlb	0	; () banked
	movf	(0+(_PacketFromPC+05h))&0ffh,w
	movwf	(??_ProcessIO+0+0)&0ffh,c
	clrf	(??_ProcessIO+0+0+1)&0ffh,c

		movf	(??_ProcessIO+0+0),c,w
	subwf	((c:ProcessIO@i)),c,w
	movf	(??_ProcessIO+0+1),c,w
	subwfb	((c:ProcessIO@i+1)),c,w
	btfss	status,0
	goto	u2201
	goto	u2200

u2201:
	goto	l3195
u2200:
	goto	l3165
	line	389
	
l3209:; BSR set to: 0

;boot_18fxxjxx.c: 389: WriteFlashSubBlock();
	call	_WriteFlashSubBlock	;wreg free
	line	390
	
l3211:
;boot_18fxxjxx.c: 390: ProgrammedPointer = 0xFFFFFFFF;
	setf	((c:_ProgrammedPointer)),c
	setf	((c:_ProgrammedPointer+1)),c
	setf	((c:_ProgrammedPointer+2)),c
	setf	((c:_ProgrammedPointer+3)),c
	goto	l3165
	line	395
	
l3215:; BSR set to: 0

;boot_18fxxjxx.c: 395: PacketToPC.Command = 0x07;
	movlw	low(07h)
	movwf	((_PacketToPC))&0ffh
	line	396
	
l3217:; BSR set to: 0

;boot_18fxxjxx.c: 396: PacketToPC.Address = PacketFromPC.Address;
	movff	0+(_PacketFromPC+01h),0+(_PacketToPC+01h)
	movff	1+(_PacketFromPC+01h),1+(_PacketToPC+01h)
	movff	2+(_PacketFromPC+01h),2+(_PacketToPC+01h)
	movff	3+(_PacketFromPC+01h),3+(_PacketToPC+01h)
	line	397
	
l3219:; BSR set to: 0

;boot_18fxxjxx.c: 397: PacketToPC.Size = PacketFromPC.Size;
	movff	0+(_PacketFromPC+05h),0+(_PacketToPC+05h)
	line	400
	
l3221:; BSR set to: 0

;boot_18fxxjxx.c: 400: TBLPTRU = PacketFromPC.Address >> 16;
	movff	0+2+0+(_PacketFromPC+01h),(c:4088)	;volatile
	line	401
	
l3223:; BSR set to: 0

;boot_18fxxjxx.c: 401: TBLPTRH = PacketFromPC.Address >> 8;
	movff	0+1+0+(_PacketFromPC+01h),(c:4087)	;volatile
	line	402
	
l3225:; BSR set to: 0

;boot_18fxxjxx.c: 402: TBLPTRL = PacketFromPC.Address;
	movff	0+(_PacketFromPC+01h),(c:4086)	;volatile
	line	403
	
l3227:; BSR set to: 0

;boot_18fxxjxx.c: 403: for(i = 0; i < PacketFromPC.Size; i++)
	clrf	((c:ProcessIO@i)),c
	clrf	((c:ProcessIO@i+1)),c
	goto	l3233
	line	404
	
l643:; BSR set to: 0

	line	406
# 406 "../demo_src/boot_18fxxjxx.c"
tblrdpostinc ;# 
psect	text2
	line	408
	
l3229:
;boot_18fxxjxx.c: 408: PacketToPC.Data[i+((0x40 - 6) - PacketFromPC.Size)] = TABLAT;
	movlb	0	; () banked
	movf	(0+(_PacketFromPC+05h))&0ffh,w
	sublw	low(_PacketToPC+040h)
	addwf	((c:ProcessIO@i)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:4085),indf2	;volatile

	line	403
	
l3231:; BSR set to: 0

	infsnz	((c:ProcessIO@i)),c
	incf	((c:ProcessIO@i+1)),c
	
l3233:; BSR set to: 0

	movf	(0+(_PacketFromPC+05h))&0ffh,w
	movwf	(??_ProcessIO+0+0)&0ffh,c
	clrf	(??_ProcessIO+0+0+1)&0ffh,c

		movf	(??_ProcessIO+0+0),c,w
	subwf	((c:ProcessIO@i)),c,w
	movf	(??_ProcessIO+0+1),c,w
	subwfb	((c:ProcessIO@i+1)),c,w
	btfss	status,0
	goto	u2211
	goto	u2210

u2211:
	goto	l643
u2210:
	
l644:; BSR set to: 0

	line	420
;boot_18fxxjxx.c: 409: }
;boot_18fxxjxx.c: 420: if(!ep1Bi.Stat.UOWN)
	movlb	4	; () banked
	btfsc	((1040))&0ffh,7	;volatile
	goto	u2221
	goto	u2220
u2221:
	goto	l616
u2220:
	goto	l3163
	line	427
	
l3239:; BSR set to: 0

;boot_18fxxjxx.c: 427: SignFlash();
	call	_SignFlash	;wreg free
	goto	l3165
	line	436
	
l3243:; BSR set to: 0

;boot_18fxxjxx.c: 436: PacketToPC.Command = 0x0C;
	movlw	low(0Ch)
	movwf	((_PacketToPC))&0ffh
	line	437
;boot_18fxxjxx.c: 437: PacketToPC.BootloaderVersion = ((unsigned int)1 << 8)| 2;
	movlw	high(0102h)
	movwf	(1+(_PacketToPC+01h))&0ffh
	movlw	low(0102h)
	movwf	(0+(_PacketToPC+01h))&0ffh
	line	438
	
l3245:; BSR set to: 0

;boot_18fxxjxx.c: 438: PacketToPC.ApplicationVersion = *(const unsigned int*)0x1016;
	movlw	low((4118))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((4118))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((4118))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,0+(_PacketToPC+03h)
	tblrd*-
	
	movff	tablat,1+(_PacketToPC+03h)

	line	439
	
l3247:; BSR set to: 0

;boot_18fxxjxx.c: 439: PacketToPC.SignatureAddress = 0x1006;
	movlw	low(01006h)
	movwf	(0+(_PacketToPC+05h))&0ffh
	movlw	high(01006h)
	movwf	(1+(_PacketToPC+05h))&0ffh
	movlw	low highword(01006h)
	movwf	(2+(_PacketToPC+05h))&0ffh
	movlw	high highword(01006h)
	movwf	(3+(_PacketToPC+05h))&0ffh
	line	440
	
l3249:; BSR set to: 0

;boot_18fxxjxx.c: 440: PacketToPC.SignatureValue = 0x600D;
	movlw	high(0600Dh)
	movwf	(1+(_PacketToPC+09h))&0ffh
	movlw	low(0600Dh)
	movwf	(0+(_PacketToPC+09h))&0ffh
	line	441
	
l3251:; BSR set to: 0

;boot_18fxxjxx.c: 441: PacketToPC.ErasePageSize = 1024;
	movlw	low(0400h)
	movwf	(0+(_PacketToPC+0Bh))&0ffh
	movlw	high(0400h)
	movwf	(1+(_PacketToPC+0Bh))&0ffh
	movlw	low highword(0400h)
	movwf	(2+(_PacketToPC+0Bh))&0ffh
	movlw	high highword(0400h)
	movwf	(3+(_PacketToPC+0Bh))&0ffh
	line	442
	
l3253:; BSR set to: 0

;boot_18fxxjxx.c: 442: PacketToPC.Config1LMask = 0xFF;
	setf	(0+(_PacketToPC+0Fh))&0ffh
	line	443
	
l3255:; BSR set to: 0

;boot_18fxxjxx.c: 443: PacketToPC.Config1HMask = 0xFF;
	setf	(0+(_PacketToPC+010h))&0ffh
	line	444
	
l3257:; BSR set to: 0

;boot_18fxxjxx.c: 444: PacketToPC.Config2LMask = 0xFF;
	setf	(0+(_PacketToPC+011h))&0ffh
	line	445
	
l3259:; BSR set to: 0

;boot_18fxxjxx.c: 445: PacketToPC.Config2HMask = 0xFF;
	setf	(0+(_PacketToPC+012h))&0ffh
	line	446
	
l3261:; BSR set to: 0

;boot_18fxxjxx.c: 446: PacketToPC.Config3LMask = 0xFF;
	setf	(0+(_PacketToPC+013h))&0ffh
	line	447
	
l3263:; BSR set to: 0

;boot_18fxxjxx.c: 447: PacketToPC.Config3HMask = 0xFF;
	setf	(0+(_PacketToPC+014h))&0ffh
	line	448
	
l3265:; BSR set to: 0

;boot_18fxxjxx.c: 448: PacketToPC.Config4LMask = 0xFF;
	setf	(0+(_PacketToPC+015h))&0ffh
	line	449
	
l3267:; BSR set to: 0

;boot_18fxxjxx.c: 449: PacketToPC.Config4HMask = 0xFF;
	setf	(0+(_PacketToPC+016h))&0ffh
	line	450
	
l3269:; BSR set to: 0

;boot_18fxxjxx.c: 450: PacketToPC.Config5LMask = 0x00;
	clrf	(0+(_PacketToPC+017h))&0ffh
	line	451
	
l3271:; BSR set to: 0

;boot_18fxxjxx.c: 451: PacketToPC.Config5HMask = 0x00;
	clrf	(0+(_PacketToPC+018h))&0ffh
	line	452
	
l3273:; BSR set to: 0

;boot_18fxxjxx.c: 452: PacketToPC.Config6LMask = 0x00;
	clrf	(0+(_PacketToPC+019h))&0ffh
	line	453
	
l3275:; BSR set to: 0

;boot_18fxxjxx.c: 453: PacketToPC.Config6HMask = 0x00;
	clrf	(0+(_PacketToPC+01Ah))&0ffh
	line	454
	
l3277:; BSR set to: 0

;boot_18fxxjxx.c: 454: PacketToPC.Config7LMask = 0x00;
	clrf	(0+(_PacketToPC+01Bh))&0ffh
	line	455
	
l3279:; BSR set to: 0

;boot_18fxxjxx.c: 455: PacketToPC.Config7HMask = 0x00;
	clrf	(0+(_PacketToPC+01Ch))&0ffh
	line	456
	
l3281:; BSR set to: 0

;boot_18fxxjxx.c: 456: PacketToPC.Config8LMask = 0x00;
	clrf	(0+(_PacketToPC+01Dh))&0ffh
	line	457
	
l3283:; BSR set to: 0

;boot_18fxxjxx.c: 457: PacketToPC.Config8HMask = 0x00;
	clrf	(0+(_PacketToPC+01Eh))&0ffh
	line	460
	
l3285:; BSR set to: 0

;boot_18fxxjxx.c: 460: if(!ep1Bi.Stat.UOWN)
	movlb	4	; () banked
	btfsc	((1040))&0ffh,7	;volatile
	goto	u2231
	goto	u2230
u2231:
	goto	l616
u2230:
	goto	l3163
	line	467
	
l3291:; BSR set to: 0

;boot_18fxxjxx.c: 467: ResetDeviceCleanly();
	call	_ResetDeviceCleanly	;wreg free
	goto	l3165
	line	316
	
l3295:
	movlb	0	; () banked
	movf	((_PacketFromPC))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 2 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	xorlw	2^0	; case 2
	skipnz
	goto	l3147
	xorlw	3^2	; case 3
	skipnz
	goto	l3167
	xorlw	4^3	; case 4
	skipnz
	goto	l3175
	xorlw	5^4	; case 5
	skipnz
	goto	l3187
	xorlw	6^5	; case 6
	skipnz
	goto	l3209
	xorlw	7^6	; case 7
	skipnz
	goto	l3215
	xorlw	8^7	; case 8
	skipnz
	goto	l3291
	xorlw	9^8	; case 9
	skipnz
	goto	l3239
	xorlw	12^9	; case 12
	skipnz
	goto	l3243
	goto	l3165

	line	475
	
l616:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ProcessIO
	__end_of_ProcessIO:
	signat	_ProcessIO,89
	global	_WriteFlashSubBlock

;; *************** function _WriteFlashSubBlock *****************
;; Defined at:
;;		line 587 in file "../demo_src/boot_18fxxjxx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  WordToWrite     2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_UnlockAndActivate
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	587
global __ptext3
__ptext3:
psect	text3
	file	"../demo_src/boot_18fxxjxx.c"
	line	587
	global	__size_of_WriteFlashSubBlock
	__size_of_WriteFlashSubBlock	equ	__end_of_WriteFlashSubBlock-_WriteFlashSubBlock
	
_WriteFlashSubBlock:
;incstack = 0
	opt	stack 26
	line	594
	
l3017:
;boot_18fxxjxx.c: 589: static unsigned char i;
;boot_18fxxjxx.c: 590: uint16_t WordToWrite;
;boot_18fxxjxx.c: 591: static uint32_t Address;
;boot_18fxxjxx.c: 594: i = 0;
	clrf	((c:WriteFlashSubBlock@i)),c
	line	595
;boot_18fxxjxx.c: 595: while(BufferedDataIndex > 0)
	goto	l3041
	line	598
	
l3019:
;boot_18fxxjxx.c: 596: {
;boot_18fxxjxx.c: 598: Address = (ProgrammedPointer - BufferedDataIndex);
	movf	((c:_BufferedDataIndex)),c,w
	movwf	(??_WriteFlashSubBlock+0+0)&0ffh,c
	movlw	0
	btfsc	(??_WriteFlashSubBlock+0+0)&0ffh,c,7
	movlw	255
	movwf	(??_WriteFlashSubBlock+0+0+1)&0ffh,c
	movwf	(??_WriteFlashSubBlock+0+0+2)&0ffh,c
	movwf	(??_WriteFlashSubBlock+0+0+3)&0ffh,c
	movf	(??_WriteFlashSubBlock+0+0),c,w
	subwf	((c:_ProgrammedPointer)),c,w
	movwf	((c:WriteFlashSubBlock@Address)),c
	movf	(??_WriteFlashSubBlock+0+1),c,w
	subwfb	((c:_ProgrammedPointer+1)),c,w
	movwf	1+((c:WriteFlashSubBlock@Address)),c
	
	movf	(??_WriteFlashSubBlock+0+2),c,w
	subwfb	((c:_ProgrammedPointer+2)),c,w
	movwf	2+((c:WriteFlashSubBlock@Address)),c
	
	movf	(??_WriteFlashSubBlock+0+3),c,w
	subwfb	((c:_ProgrammedPointer+3)),c,w
	movwf	3+((c:WriteFlashSubBlock@Address)),c
	line	599
	
l3021:
;boot_18fxxjxx.c: 599: TBLPTRU = Address >> 16;
	movff	0+((c:WriteFlashSubBlock@Address)+02h),(c:4088)	;volatile
	line	600
	
l3023:
;boot_18fxxjxx.c: 600: TBLPTRH = Address >> 8;
	movff	0+((c:WriteFlashSubBlock@Address)+01h),(c:4087)	;volatile
	line	601
	
l3025:
;boot_18fxxjxx.c: 601: TBLPTRL = (uint8_t)Address;
	movff	(c:WriteFlashSubBlock@Address),(c:4086)	;volatile
	line	603
	
l3027:
;boot_18fxxjxx.c: 603: TABLAT = ProgrammingBuffer[i];
	movlw	low(_ProgrammingBuffer)
	addwf	((c:WriteFlashSubBlock@i)),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_ProgrammingBuffer)
	addwfc	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4085)),c	;volatile
	line	605
# 605 "../demo_src/boot_18fxxjxx.c"
tblwtpostinc ;# 
psect	text3
	line	607
	
l3029:
;boot_18fxxjxx.c: 607: i++;
	incf	((c:WriteFlashSubBlock@i)),c
	line	608
	
l3031:
;boot_18fxxjxx.c: 608: TABLAT = ProgrammingBuffer[i];
	movlw	low(_ProgrammingBuffer)
	addwf	((c:WriteFlashSubBlock@i)),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_ProgrammingBuffer)
	addwfc	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4085)),c	;volatile
	line	610
# 610 "../demo_src/boot_18fxxjxx.c"
tblwt ;# 
psect	text3
	line	612
	
l3033:
;boot_18fxxjxx.c: 612: i++;
	incf	((c:WriteFlashSubBlock@i)),c
	line	628
	
l3035:
;boot_18fxxjxx.c: 628: EECON1 = 0b00100100;
	movlw	low(024h)
	movwf	((c:4006)),c	;volsfr
	line	629
	
l3037:
;boot_18fxxjxx.c: 629: UnlockAndActivate(0xB5);
	movlw	(0B5h)&0ffh
	
	call	_UnlockAndActivate
	line	631
	
l3039:
;boot_18fxxjxx.c: 631: BufferedDataIndex = BufferedDataIndex - 0x02;
	movlw	(-2)&0ffh
	addwf	((c:_BufferedDataIndex)),c
	line	595
	
l3041:
		movf	((c:_BufferedDataIndex)),c,w
	xorlw	80h
	addlw	-(80h^01h)
	btfsc	status,0
	goto	u2011
	goto	u2010

u2011:
	goto	l3019
u2010:
	line	633
	
l675:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_WriteFlashSubBlock
	__end_of_WriteFlashSubBlock:
	signat	_WriteFlashSubBlock,89
	global	_USBDeviceTasks

;; *************** function _USBDeviceTasks *****************
;; Defined at:
;;		line 441 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USBCheckBusStatus
;;		_USBCtrlTrfInHandler
;;		_USBCtrlTrfSetupHandler
;;		_USBProtocolResetHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;; This function is called by:
;;		_BootMain
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device.c"
	line	441
global __ptext4
__ptext4:
psect	text4
	file	"../demo_src/usb_device.c"
	line	441
	global	__size_of_USBDeviceTasks
	__size_of_USBDeviceTasks	equ	__end_of_USBDeviceTasks-_USBDeviceTasks
	
_USBDeviceTasks:
;incstack = 0
	opt	stack 24
	line	447
	
l2901:
;usb_device.c: 443: static volatile BDT* pBDTEntry;
;usb_device.c: 444: static uint8_t i;
;usb_device.c: 447: USBCheckBusStatus();
	call	_USBCheckBusStatus	;wreg free
	line	452
	
l2903:
;usb_device.c: 452: if(usb_device_state == 0) return;
	movf	((c:_usb_device_state)),c,w
	btfss	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l293
u1780:
	goto	l294
	
l293:
	line	458
;usb_device.c: 458: if(UIRbits.ACTVIF) USBWakeFromSuspend();
	btfss	((c:3938)),c,2	;volatile
	goto	u1791
	goto	u1790
u1791:
	goto	l2909
u1790:
	
l2907:
	call	_USBWakeFromSuspend	;wreg free
	line	463
	
l2909:
;usb_device.c: 463: if(UCONbits.SUSPND == 1) return;
	btfss	((c:3941)),c,1	;volatile
	goto	u1801
	goto	u1800
u1801:
	goto	l296
u1800:
	goto	l294
	
l296:
	line	471
;usb_device.c: 471: if(UIRbits.URSTIF) USBProtocolResetHandler();
	btfss	((c:3938)),c,0	;volatile
	goto	u1811
	goto	u1810
u1811:
	goto	l2915
u1810:
	
l2913:
	call	_USBProtocolResetHandler	;wreg free
	line	476
	
l2915:
;usb_device.c: 476: if(UIRbits.IDLEIF) USBSuspend();
	btfss	((c:3938)),c,4	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l2919
u1820:
	
l2917:
	call	_USBSuspend	;wreg free
	line	493
	
l2919:
;usb_device.c: 493: if(usb_device_state < 3) return;
		movlw	03h-0
	cpfslt	((c:_usb_device_state)),c
	goto	u1831
	goto	u1830

u1831:
	goto	l299
u1830:
	goto	l294
	
l299:
	line	498
;usb_device.c: 498: for(bTRNIFCount = 0; bTRNIFCount < 4; bTRNIFCount++)
	clrf	((c:_bTRNIFCount)),c
	line	499
	
l300:
	line	500
;usb_device.c: 499: {
;usb_device.c: 500: if(UIRbits.TRNIF)
	btfss	((c:3938)),c,3	;volatile
	goto	u1841
	goto	u1840
u1841:
	goto	l294
u1840:
	line	503
	
l2927:
;usb_device.c: 501: {
;usb_device.c: 503: USTATSave = USTAT;
	movf	((c:3940)),c,w	;volatile
	line	504
	
l2929:
;usb_device.c: 504: if((USTAT & 0x7C) == ((0x00<<3)|(0<<2)))
	movff	(c:3940),??_USBDeviceTasks+0+0	;volatile
	movlw	07Ch
	andwf	(??_USBDeviceTasks+0+0),c
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l2957
u1850:
	line	507
	
l2931:
;usb_device.c: 505: {
;usb_device.c: 507: if(USTATbits.PPBI == 0)
	btfsc	((c:3940)),c,1	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l2935
u1860:
	line	510
	
l2933:
;usb_device.c: 508: {
;usb_device.c: 510: pBDTEntry = &ep0BoEven;
		movlw	low(1024)
	movwf	((c:USBDeviceTasks@pBDTEntry)),c
	movlw	high(1024)
	movwf	((c:USBDeviceTasks@pBDTEntry+1)),c

	line	511
;usb_device.c: 511: }
	goto	l2937
	line	515
	
l2935:
;usb_device.c: 512: else
;usb_device.c: 513: {
;usb_device.c: 515: pBDTEntry = &ep0BoOdd;
		movlw	low(1028)
	movwf	((c:USBDeviceTasks@pBDTEntry)),c
	movlw	high(1028)
	movwf	((c:USBDeviceTasks@pBDTEntry+1)),c

	line	519
	
l2937:
;usb_device.c: 516: }
;usb_device.c: 519: UIRbits.TRNIF = 0;
	bcf	((c:3938)),c,3	;volatile
	line	522
	
l2939:
;usb_device.c: 522: if(pBDTEntry->Stat.PID == 0b00001101)
	movff	(c:USBDeviceTasks@pBDTEntry),fsr2l
	movff	(c:USBDeviceTasks@pBDTEntry+1),fsr2h
	rrcf	(c:indf2),c,w
	rrcf	wreg,f
	andlw	(1<<4)-1
	xorlw	0Dh
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l310
u1870:
	line	526
	
l2941:
;usb_device.c: 523: {
;usb_device.c: 526: for(i = 0; i < sizeof(CTRL_TRF_SETUP); i++)
	clrf	((c:USBDeviceTasks@i)),c
	line	528
	
l2947:
;usb_device.c: 527: {
;usb_device.c: 528: SetupPkt._byte[i] = *pBDTEntry->ADR++;
	lfsr	2,02h
	movf	((c:USBDeviceTasks@pBDTEntry)),c,w
	addwf	fsr2l
	movf	((c:USBDeviceTasks@pBDTEntry+1)),c,w
	addwfc	fsr2h
	movff	postinc2,??_USBDeviceTasks+0+0
	movff	postdec2,??_USBDeviceTasks+0+0+1
	movff	??_USBDeviceTasks+0+0,fsr2l
	movff	??_USBDeviceTasks+0+1,fsr2h
	movf	((c:USBDeviceTasks@i)),c,w
	addlw	low(_SetupPkt)
	movwf	fsr1l
	clrf	fsr1h
	movff	indf2,indf1
	
l2949:
	lfsr	2,02h
	movf	((c:USBDeviceTasks@pBDTEntry)),c,w
	addwf	fsr2l
	movf	((c:USBDeviceTasks@pBDTEntry+1)),c,w
	addwfc	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	526
	
l2951:
	incf	((c:USBDeviceTasks@i)),c
	
l2953:
		movlw	08h-1
	cpfsgt	((c:USBDeviceTasks@i)),c
	goto	u1881
	goto	u1880

u1881:
	goto	l2947
u1880:
	line	533
	
l2955:
;usb_device.c: 529: }
;usb_device.c: 533: USBCtrlTrfSetupHandler();
	call	_USBCtrlTrfSetupHandler	;wreg free
	line	534
;usb_device.c: 534: }
	goto	l2963
	line	541
	
l2957:
;usb_device.c: 541: else if(USTAT == ((0x00<<3)|(1<<2)))
		movlw	4
	xorwf	((c:3940)),c,w	;volatile
	btfss	status,2
	goto	u1891
	goto	u1890

u1891:
	goto	l311
u1890:
	line	544
	
l2959:
;usb_device.c: 542: {
;usb_device.c: 544: UIRbits.TRNIF = 0;
	bcf	((c:3938)),c,3	;volatile
	line	545
	
l2961:
;usb_device.c: 545: USBCtrlTrfInHandler();
	call	_USBCtrlTrfInHandler	;wreg free
	line	546
;usb_device.c: 546: }
	goto	l2963
	line	547
	
l311:
	line	553
;usb_device.c: 547: else
;usb_device.c: 548: {
;usb_device.c: 553: UIRbits.TRNIF = 0;
	bcf	((c:3938)),c,3	;volatile
	goto	l2963
	line	554
	
l310:
	line	498
;usb_device.c: 554: }
;usb_device.c: 555: }
	
l2963:
	incf	((c:_bTRNIFCount)),c
	
l2965:
		movlw	04h-1
	cpfsgt	((c:_bTRNIFCount)),c
	goto	u1901
	goto	u1900

u1901:
	goto	l300
u1900:
	line	562
	
l294:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBDeviceTasks
	__end_of_USBDeviceTasks:
	signat	_USBDeviceTasks,89
	global	_USBWakeFromSuspend

;; *************** function _USBWakeFromSuspend *****************
;; Defined at:
;;		line 679 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USBCBWakeFromSuspend
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	679
global __ptext5
__ptext5:
psect	text5
	file	"../demo_src/usb_device.c"
	line	679
	global	__size_of_USBWakeFromSuspend
	__size_of_USBWakeFromSuspend	equ	__end_of_USBWakeFromSuspend-_USBWakeFromSuspend
	
_USBWakeFromSuspend:
;incstack = 0
	opt	stack 25
	line	684
	
l2813:
;usb_device.c: 684: USBCBWakeFromSuspend();
	call	_USBCBWakeFromSuspend	;wreg free
	line	687
	
l2815:
;usb_device.c: 687: UCONbits.SUSPND = 0;
	bcf	((c:3941)),c,1	;volatile
	line	688
	
l2817:
;usb_device.c: 688: UIEbits.ACTVIE = 0;
	movlb	15	; () banked
	bcf	((3894))&0ffh,2	;volatile
	line	689
;usb_device.c: 689: while(UIRbits.ACTVIF){UIRbits.ACTVIF = 0;}
	goto	l321
	
l322:
	bcf	((c:3938)),c,2	;volatile
	
l321:
	btfsc	((c:3938)),c,2	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l322
u1680:
	line	691
	
l324:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBWakeFromSuspend
	__end_of_USBWakeFromSuspend:
	signat	_USBWakeFromSuspend,89
	global	_USBCBWakeFromSuspend

;; *************** function _USBCBWakeFromSuspend *****************
;; Defined at:
;;		line 924 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayRoutine
;; This function is called by:
;;		_USBWakeFromSuspend
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	924
global __ptext6
__ptext6:
psect	text6
	file	"../demo_src/main.c"
	line	924
	global	__size_of_USBCBWakeFromSuspend
	__size_of_USBCBWakeFromSuspend	equ	__end_of_USBCBWakeFromSuspend-_USBCBWakeFromSuspend
	
_USBCBWakeFromSuspend:
;incstack = 0
	opt	stack 25
	line	930
	
l2669:
;main.c: 930: DelayRoutine(0x300);
	movlw	high(0300h)
	movwf	((c:DelayRoutine@DelayAmount+1)),c
	movlw	low(0300h)
	movwf	((c:DelayRoutine@DelayAmount)),c
	call	_DelayRoutine	;wreg free
	line	941
	
l95:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCBWakeFromSuspend
	__end_of_USBCBWakeFromSuspend:
	signat	_USBCBWakeFromSuspend,89
	global	_USBSuspend

;; *************** function _USBSuspend *****************
;; Defined at:
;;		line 587 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCBSuspend
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device.c"
	line	587
global __ptext7
__ptext7:
psect	text7
	file	"../demo_src/usb_device.c"
	line	587
	global	__size_of_USBSuspend
	__size_of_USBSuspend	equ	__end_of_USBSuspend-_USBSuspend
	
_USBSuspend:
;incstack = 0
	opt	stack 27
	line	624
	
l2819:
;usb_device.c: 589: static unsigned char UIESave;
;usb_device.c: 624: UIESave = UIE;
	movff	(3894),(c:USBSuspend@UIESave)	;volatile
	line	625
	
l2821:
;usb_device.c: 625: UIE = 0b00000100;
	movlw	low(04h)
	movlb	15	; () banked
	movwf	((3894))&0ffh	;volatile
	line	629
	
l2823:; BSR set to: 15

;usb_device.c: 629: UIRbits.IDLEIF = 0;
	bcf	((c:3938)),c,4	;volatile
	line	630
	
l2825:; BSR set to: 15

;usb_device.c: 630: UCONbits.SUSPND = 1;
	bsf	((c:3941)),c,1	;volatile
	line	637
	
l2827:; BSR set to: 15

;usb_device.c: 637: PIR2bits.USBIF = 0;
	bcf	((c:4001)),c,4	;volatile
	line	641
	
l2829:; BSR set to: 15

;usb_device.c: 641: PIE2bits.USBIE = 1;
	bsf	((c:4000)),c,4	;volatile
	line	650
	
l2831:; BSR set to: 15

;usb_device.c: 650: USBCBSuspend();
	call	_USBCBSuspend	;wreg free
	line	657
	
l2833:
;usb_device.c: 657: PIE2bits.USBIE = 0;
	bcf	((c:4000)),c,4	;volatile
	line	658
	
l2835:
;usb_device.c: 658: UIE |= UIESave;
	movf	((c:USBSuspend@UIESave)),c,w
	movlb	15	; () banked
	iorwf	((3894))&0ffh	;volatile
	line	662
	
l318:; BSR set to: 15

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBSuspend
	__end_of_USBSuspend:
	signat	_USBSuspend,89
	global	_USBCBSuspend

;; *************** function _USBCBSuspend *****************
;; Defined at:
;;		line 960 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 3F/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBSuspend
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	960
global __ptext8
__ptext8:
psect	text8
	file	"../demo_src/main.c"
	line	960
	global	__size_of_USBCBSuspend
	__size_of_USBCBSuspend	equ	__end_of_USBCBSuspend-_USBCBSuspend
	
_USBCBSuspend:; BSR set to: 15

;incstack = 0
	opt	stack 27
	line	966
	
l2671:; BSR set to: 15

;main.c: 962: static unsigned char OSCCONSave;
;main.c: 966: LATEbits.LATE1 = 0;
	bcf	((c:3981)),c,1	;volatile
	line	972
;main.c: 972: OSCCONSave = OSCCON;
	movff	(c:4051),(c:USBCBSuspend@OSCCONSave)	;volatile
	line	976
# 976 "../demo_src/main.c"
sleep ;# 
psect	text8
	line	978
;main.c: 978: while((PIR2bits.USBIF == 0) && (RCONbits.TO == 0))
	goto	l100
	
l101:
	line	980
# 980 "../demo_src/main.c"
sleep ;# 
psect	text8
	line	981
	
l100:
	line	978
	btfsc	((c:4001)),c,4	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l104
u1530:
	
l2673:
	btfss	((c:4048)),c,3	;volatile
	goto	u1541
	goto	u1540
u1541:
	goto	l101
u1540:
	
l104:
	line	984
;main.c: 981: }
;main.c: 984: OSCCON = OSCCONSave;
	movff	(c:USBCBSuspend@OSCCONSave),(c:4051)	;volatile
	line	993
	
l105:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCBSuspend
	__end_of_USBCBSuspend:
	signat	_USBCBSuspend,89
	global	_USBCtrlTrfSetupHandler

;; *************** function _USBCtrlTrfSetupHandler *****************
;; Defined at:
;;		line 790 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USBCBCheckOtherReq
;;		_USBCheckStdRequest
;;		_USBCtrlEPServiceComplete
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device.c"
	line	790
global __ptext9
__ptext9:
psect	text9
	file	"../demo_src/usb_device.c"
	line	790
	global	__size_of_USBCtrlTrfSetupHandler
	__size_of_USBCtrlTrfSetupHandler	equ	__end_of_USBCtrlTrfSetupHandler-_USBCtrlTrfSetupHandler
	
_USBCtrlTrfSetupHandler:
;incstack = 0
	opt	stack 24
	line	797
	
l2837:
;usb_device.c: 797: ep0Bi.Stat._byte = 0x00;
	movlb	4	; () banked
	clrf	((1032))&0ffh	;volatile
	line	798
;usb_device.c: 798: short_pkt_status = 0;
	clrf	((c:_short_pkt_status)),c
	line	803
;usb_device.c: 803: if(ep0BoEven.Stat.UOWN == 1)
	btfss	((1024))&0ffh,7	;volatile
	goto	u1691
	goto	u1690
u1691:
	goto	l333
u1690:
	line	805
	
l2839:; BSR set to: 4

;usb_device.c: 804: {
;usb_device.c: 805: ep0BoEven.Stat._byte = 0x00;
	clrf	((1024))&0ffh	;volatile
	line	806
;usb_device.c: 806: EP0OutOddNeedsArmingNext = 0;
	clrf	((c:_EP0OutOddNeedsArmingNext)),c
	line	807
	
l333:; BSR set to: 4

	line	808
;usb_device.c: 807: }
;usb_device.c: 808: if(ep0BoOdd.Stat.UOWN == 1)
	btfss	((1028))&0ffh,7	;volatile
	goto	u1701
	goto	u1700
u1701:
	goto	l2845
u1700:
	line	810
	
l2841:; BSR set to: 4

;usb_device.c: 809: {
;usb_device.c: 810: ep0BoOdd.Stat._byte = 0x00;
	clrf	((1028))&0ffh	;volatile
	line	811
	
l2843:; BSR set to: 4

;usb_device.c: 811: EP0OutOddNeedsArmingNext = 1;
	movlw	low(01h)
	movwf	((c:_EP0OutOddNeedsArmingNext)),c
	line	813
	
l2845:; BSR set to: 4

;usb_device.c: 812: }
;usb_device.c: 813: ctrl_trf_state = 0;
	clrf	((c:_ctrl_trf_state)),c
	line	814
	
l2847:; BSR set to: 4

;usb_device.c: 814: ctrl_trf_session_owner = 0;
	clrf	((c:_ctrl_trf_session_owner)),c
	line	815
	
l2849:; BSR set to: 4

;usb_device.c: 815: wCount.Val = 0;
	clrf	((c:_wCount)),c
	clrf	((c:_wCount+1)),c
	line	816
	
l2851:; BSR set to: 4

;usb_device.c: 816: UCONbits.PKTDIS = 0;
	bcf	((c:3941)),c,4	;volatile
	line	822
	
l2853:; BSR set to: 4

;usb_device.c: 822: USBCheckStdRequest();
	call	_USBCheckStdRequest	;wreg free
	line	823
	
l2855:
;usb_device.c: 823: USBCBCheckOtherReq();
	call	_USBCBCheckOtherReq	;wreg free
	line	826
	
l2857:
;usb_device.c: 826: USBCtrlEPServiceComplete();
	call	_USBCtrlEPServiceComplete	;wreg free
	line	828
	
l335:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfSetupHandler
	__end_of_USBCtrlTrfSetupHandler:
	signat	_USBCtrlTrfSetupHandler,89
	global	_USBCtrlEPServiceComplete

;; *************** function _USBCtrlEPServiceComplete *****************
;; Defined at:
;;		line 1147 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LoadBDTandSetUOWN
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	1147
global __ptext10
__ptext10:
psect	text10
	file	"../demo_src/usb_device.c"
	line	1147
	global	__size_of_USBCtrlEPServiceComplete
	__size_of_USBCtrlEPServiceComplete	equ	__end_of_USBCtrlEPServiceComplete-_USBCtrlEPServiceComplete
	
_USBCtrlEPServiceComplete:
;incstack = 0
	opt	stack 26
	line	1151
	
l2733:
;usb_device.c: 1151: if(ctrl_trf_session_owner == 0)
	movf	((c:_ctrl_trf_session_owner)),c,w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l367
u1570:
	line	1156
	
l2735:
;usb_device.c: 1152: {
;usb_device.c: 1156: ep0Bi.Stat._byte = 0x04;
	movlw	low(04h)
	movlb	4	; () banked
	movwf	((1032))&0ffh	;volatile
	line	1157
	
l2737:; BSR set to: 4

;usb_device.c: 1157: ep0Bi.Stat._byte |= 0x80;
	bsf	(0+(7/8)+(1032))&0ffh,(7)&7	;volatile
	line	1158
	
l2739:; BSR set to: 4

;usb_device.c: 1158: TempBDT.Stat._byte = 0x04;
	movlw	low(04h)
	movwf	((c:_TempBDT)),c
	line	1159
	
l2741:; BSR set to: 4

;usb_device.c: 1159: if(EP0OutOddNeedsArmingNext == 1)
		decf	((c:_EP0OutOddNeedsArmingNext)),c,w
	btfss	status,2
	goto	u1581
	goto	u1580

u1581:
	goto	l2747
u1580:
	line	1161
	
l2743:; BSR set to: 4

;usb_device.c: 1160: {
;usb_device.c: 1161: LoadBDTandSetUOWN(1);
	movlw	(01h)&0ffh
	
	call	_LoadBDTandSetUOWN
	line	1162
	
l2745:
;usb_device.c: 1162: EP0OutOddNeedsArmingNext = 0;
	clrf	((c:_EP0OutOddNeedsArmingNext)),c
	line	1163
;usb_device.c: 1163: }
	goto	l378
	line	1166
	
l2747:; BSR set to: 4

;usb_device.c: 1164: else
;usb_device.c: 1165: {
;usb_device.c: 1166: LoadBDTandSetUOWN(0);
	movlw	(0)&0ffh
	
	call	_LoadBDTandSetUOWN
	line	1167
	
l2749:
;usb_device.c: 1167: EP0OutOddNeedsArmingNext = 1;
	movlw	low(01h)
	movwf	((c:_EP0OutOddNeedsArmingNext)),c
	goto	l378
	line	1170
	
l367:
	line	1172
;usb_device.c: 1170: else
;usb_device.c: 1171: {
;usb_device.c: 1172: if(SetupPkt.DataDir == 1)
	btfss	((c:_SetupPkt)),c,7
	goto	u1591
	goto	u1590
u1591:
	goto	l2771
u1590:
	line	1197
	
l2751:
;usb_device.c: 1173: {
;usb_device.c: 1197: ctrl_trf_state = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_state)),c
	line	1202
	
l2753:
;usb_device.c: 1202: if(SetupPkt.wLength < wCount.Val)
		movf	((c:_wCount)),c,w
	subwf	(0+((c:_SetupPkt)+06h)),c,w
	movf	((c:_wCount+1)),c,w
	subwfb	(1+((c:_SetupPkt)+06h)),c,w
	btfsc	status,0
	goto	u1601
	goto	u1600

u1601:
	goto	l2757
u1600:
	line	1203
	
l2755:
;usb_device.c: 1203: wCount.Val = SetupPkt.wLength;
	movff	0+((c:_SetupPkt)+06h),(c:_wCount)
	movff	1+((c:_SetupPkt)+06h),(c:_wCount+1)
	line	1207
	
l2757:
;usb_device.c: 1207: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	1211
	
l2759:
;usb_device.c: 1211: TempBDT.Stat._byte = 0x40 | 0x08;
	movlw	low(048h)
	movwf	((c:_TempBDT)),c
	line	1212
	
l2761:
;usb_device.c: 1212: LoadBDTandSetUOWN(1);
	movlw	(01h)&0ffh
	
	call	_LoadBDTandSetUOWN
	line	1213
	
l2763:
;usb_device.c: 1213: LoadBDTandSetUOWN(0);
	movlw	(0)&0ffh
	
	call	_LoadBDTandSetUOWN
	line	1218
	
l2765:
;usb_device.c: 1218: ep0Bi.ADR = (uint8_t*)&CtrlTrfData;
		movlw	low(1060)
	movlb	4	; () banked
	movwf	(0+(1032+02h))&0ffh	;volatile
	movlw	high(1060)
	movwf	(1+(1032+02h))&0ffh	;volatile

	line	1219
	
l2767:; BSR set to: 4

;usb_device.c: 1219: ep0Bi.Stat._byte = 0x40|0x08;
	movlw	low(048h)
	movwf	((1032))&0ffh	;volatile
	line	1220
	
l2769:; BSR set to: 4

;usb_device.c: 1220: ep0Bi.Stat._byte |= 0x80;
	bsf	(0+(7/8)+(1032))&0ffh,(7)&7	;volatile
	line	1221
;usb_device.c: 1221: }
	goto	l378
	line	1234
	
l2771:
;usb_device.c: 1222: else
;usb_device.c: 1223: {
;usb_device.c: 1234: ctrl_trf_state = 2;
	movlw	low(02h)
	movwf	((c:_ctrl_trf_state)),c
	line	1239
;usb_device.c: 1239: TempBDT.Stat._byte = 0x04;
	movlw	low(04h)
	movwf	((c:_TempBDT)),c
	line	1241
	
l2773:
;usb_device.c: 1241: if(SetupPkt.wLength == 0)
	movf	(0+((c:_SetupPkt)+06h)),c,w
iorwf	(1+((c:_SetupPkt)+06h)),c,w
	btfss	status,2
	goto	u1611
	goto	u1610

u1611:
	goto	l2777
u1610:
	line	1243
	
l2775:
;usb_device.c: 1242: {
;usb_device.c: 1243: TempBDT.Stat._byte = 0x40|0x08;
	movlw	low(048h)
	movwf	((c:_TempBDT)),c
	line	1246
	
l2777:
;usb_device.c: 1244: }
;usb_device.c: 1246: if(EP0OutOddNeedsArmingNext == 1)
		decf	((c:_EP0OutOddNeedsArmingNext)),c,w
	btfss	status,2
	goto	u1621
	goto	u1620

u1621:
	goto	l2783
u1620:
	line	1248
	
l2779:
;usb_device.c: 1247: {
;usb_device.c: 1248: LoadBDTandSetUOWN(1);
	movlw	(01h)&0ffh
	
	call	_LoadBDTandSetUOWN
	line	1249
	
l2781:
;usb_device.c: 1249: EP0OutOddNeedsArmingNext = 0;
	clrf	((c:_EP0OutOddNeedsArmingNext)),c
	line	1250
;usb_device.c: 1250: }
	goto	l2787
	line	1253
	
l2783:
;usb_device.c: 1251: else
;usb_device.c: 1252: {
;usb_device.c: 1253: LoadBDTandSetUOWN(0);
	movlw	(0)&0ffh
	
	call	_LoadBDTandSetUOWN
	line	1254
	
l2785:
;usb_device.c: 1254: EP0OutOddNeedsArmingNext = 1;
	movlw	low(01h)
	movwf	((c:_EP0OutOddNeedsArmingNext)),c
	line	1259
	
l2787:
;usb_device.c: 1255: }
;usb_device.c: 1259: if(SetupPkt.wLength == 0)
	movf	(0+((c:_SetupPkt)+06h)),c,w
iorwf	(1+((c:_SetupPkt)+06h)),c,w
	btfss	status,2
	goto	u1631
	goto	u1630

u1631:
	goto	l378
u1630:
	line	1262
	
l2789:
;usb_device.c: 1260: {
;usb_device.c: 1262: ep0Bi.Cnt = 0;
	movlb	4	; () banked
	clrf	(0+(1032+01h))&0ffh	;volatile
	line	1263
	
l2791:; BSR set to: 4

;usb_device.c: 1263: ep0Bi.Stat._byte = 0x40|0x08;
	movlw	low(048h)
	movwf	((1032))&0ffh	;volatile
	line	1264
	
l2793:; BSR set to: 4

;usb_device.c: 1264: ep0Bi.Stat._byte |= 0x80;
	bsf	(0+(7/8)+(1032))&0ffh,(7)&7	;volatile
	line	1274
	
l378:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlEPServiceComplete
	__end_of_USBCtrlEPServiceComplete:
	signat	_USBCtrlEPServiceComplete,89
	global	_USBCheckStdRequest

;; *************** function _USBCheckStdRequest *****************
;; Defined at:
;;		line 1294 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USBStdFeatureReqHandler
;;		_USBStdGetDscHandler
;;		_USBStdGetStatusHandler
;;		_USBStdSetCfgHandler
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	1294
global __ptext11
__ptext11:
psect	text11
	file	"../demo_src/usb_device.c"
	line	1294
	global	__size_of_USBCheckStdRequest
	__size_of_USBCheckStdRequest	equ	__end_of_USBCheckStdRequest-_USBCheckStdRequest
	
_USBCheckStdRequest:
;incstack = 0
	opt	stack 24
	line	1296
	
l2695:; BSR set to: 4

;usb_device.c: 1296: if(SetupPkt.RequestType != 0x00) return;
	swapf	((c:_SetupPkt)),c,w
	rrcf	wreg,f
	andlw	(1<<2)-1
	iorlw	0
	btfsc	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l2731
u1560:
	goto	l382
	
l2697:; BSR set to: 4

	goto	l382
	line	1301
	
l2699:; BSR set to: 4

;usb_device.c: 1301: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1302
;usb_device.c: 1302: usb_device_state = 4;
	movlw	low(04h)
	movwf	((c:_usb_device_state)),c
	line	1304
;usb_device.c: 1304: break;
	goto	l382
	line	1306
	
l2701:; BSR set to: 4

;usb_device.c: 1306: USBStdGetDscHandler();
	call	_USBStdGetDscHandler	;wreg free
	line	1307
;usb_device.c: 1307: break;
	goto	l382
	line	1309
	
l2703:; BSR set to: 4

;usb_device.c: 1309: USBStdSetCfgHandler();
	call	_USBStdSetCfgHandler	;wreg free
	line	1310
;usb_device.c: 1310: break;
	goto	l382
	line	1312
	
l2705:; BSR set to: 4

;usb_device.c: 1312: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1313
	
l2707:; BSR set to: 4

;usb_device.c: 1313: pSrc.bRam = (uint8_t*)&usb_active_cfg;
		movlw	low(_usb_active_cfg)
	movwf	((c:_pSrc)),c
	clrf	((c:_pSrc+1)),c

	line	1314
	
l2709:; BSR set to: 4

;usb_device.c: 1314: usb_stat.ctrl_trf_mem = 0;
	bcf	((c:_usb_stat)),c,1
	line	1316
	
l2711:; BSR set to: 4

;usb_device.c: 1316: wCount.v[0] = 1;
	movlw	low(01h)
	movwf	((c:_wCount)),c
	line	1317
;usb_device.c: 1317: break;
	goto	l382
	line	1319
	
l2713:; BSR set to: 4

;usb_device.c: 1319: USBStdGetStatusHandler();
	call	_USBStdGetStatusHandler	;wreg free
	line	1320
;usb_device.c: 1320: break;
	goto	l382
	line	1323
	
l2715:; BSR set to: 4

;usb_device.c: 1322: case 3:
;usb_device.c: 1323: USBStdFeatureReqHandler();
	call	_USBStdFeatureReqHandler	;wreg free
	line	1324
;usb_device.c: 1324: break;
	goto	l382
	line	1326
	
l2717:; BSR set to: 4

;usb_device.c: 1326: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1327
	
l2719:; BSR set to: 4

;usb_device.c: 1327: pSrc.bRam = (uint8_t*)&usb_alt_intf+SetupPkt.bIntfID;
	movf	(0+((c:_SetupPkt)+04h)),c,w
	addlw	low(_usb_alt_intf)
	movwf	(??_USBCheckStdRequest+0+0)&0ffh,c
		movff	(??_USBCheckStdRequest+0+0),(c:_pSrc)
	clrf	((c:_pSrc+1)),c

	goto	l2709
	line	1332
	
l2725:; BSR set to: 4

;usb_device.c: 1332: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1333
	
l2727:; BSR set to: 4

;usb_device.c: 1333: usb_alt_intf[SetupPkt.bIntfID] = SetupPkt.bAltID;
	movf	(0+((c:_SetupPkt)+04h)),c,w
	addlw	low(_usb_alt_intf)
	movwf	fsr2l
	clrf	fsr2h
	movff	0+((c:_SetupPkt)+02h),indf2

	line	1334
;usb_device.c: 1334: break;
	goto	l382
	line	1298
	
l2731:; BSR set to: 4

	movf	(0+((c:_SetupPkt)+01h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2713
	xorlw	1^0	; case 1
	skipnz
	goto	l2715
	xorlw	3^1	; case 3
	skipnz
	goto	l2715
	xorlw	5^3	; case 5
	skipnz
	goto	l2699
	xorlw	6^5	; case 6
	skipnz
	goto	l2701
	xorlw	7^6	; case 7
	skipnz
	goto	l2697
	xorlw	8^7	; case 8
	skipnz
	goto	l2705
	xorlw	9^8	; case 9
	skipnz
	goto	l2703
	xorlw	10^9	; case 10
	skipnz
	goto	l2717
	xorlw	11^10	; case 11
	skipnz
	goto	l2725
	xorlw	12^11	; case 12
	skipnz
	goto	l382
	goto	l382

	line	1341
	
l382:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCheckStdRequest
	__end_of_USBCheckStdRequest:
	signat	_USBCheckStdRequest,89
	global	_USBStdSetCfgHandler

;; *************** function _USBStdSetCfgHandler *****************
;; Defined at:
;;		line 1409 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCBInitEP
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	line	1409
global __ptext12
__ptext12:
psect	text12
	file	"../demo_src/usb_device.c"
	line	1409
	global	__size_of_USBStdSetCfgHandler
	__size_of_USBStdSetCfgHandler	equ	__end_of_USBStdSetCfgHandler-_USBStdSetCfgHandler
	
_USBStdSetCfgHandler:
;incstack = 0
	opt	stack 24
	line	1413
	
l2571:; BSR set to: 4

;usb_device.c: 1411: static unsigned char i;
;usb_device.c: 1413: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1415
	
l2573:; BSR set to: 4

;usb_device.c: 1415: UEP1=0x00;UEP2=0x00;UEP3=0x00; UEP4=0x00;UEP5=0x00;UEP6=0x00;UEP7=0x00;;
	movlb	15	; () banked
	clrf	((3879))&0ffh	;volatile
	
l2575:; BSR set to: 15

	clrf	((3880))&0ffh	;volatile
	
l2577:; BSR set to: 15

	clrf	((3881))&0ffh	;volatile
	
l2579:; BSR set to: 15

	clrf	((3882))&0ffh	;volatile
	
l2581:; BSR set to: 15

	clrf	((3883))&0ffh	;volatile
	
l2583:; BSR set to: 15

	clrf	((3884))&0ffh	;volatile
	
l2585:; BSR set to: 15

	clrf	((3885))&0ffh	;volatile
	line	1417
	
l2587:; BSR set to: 15

;usb_device.c: 1417: for(i = 0; i < 1; i++)
	clrf	((c:USBStdSetCfgHandler@i)),c
	line	1419
	
l2591:
;usb_device.c: 1418: {
;usb_device.c: 1419: usb_alt_intf[i] = 0;
	movf	((c:USBStdSetCfgHandler@i)),c,w
	addlw	low(_usb_alt_intf)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1417
	
l2593:
	incf	((c:USBStdSetCfgHandler@i)),c
	
l2595:
	movf	((c:USBStdSetCfgHandler@i)),c,w
	btfsc	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l2591
u1380:
	
l412:
	line	1423
;usb_device.c: 1420: }
;usb_device.c: 1423: usb_active_cfg = SetupPkt.bCfgValue;
	movff	0+((c:_SetupPkt)+02h),(c:_usb_active_cfg)
	line	1430
	
l2597:
;usb_device.c: 1430: USBCBInitEP(usb_active_cfg);
	movf	((c:_usb_active_cfg)),c,w
	
	call	_USBCBInitEP
	line	1432
	
l2599:
;usb_device.c: 1432: if(SetupPkt.bCfgValue == 0)
	movf	(0+((c:_SetupPkt)+02h)),c,w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l2603
u1390:
	line	1434
	
l2601:
;usb_device.c: 1433: {
;usb_device.c: 1434: usb_device_state = 5;
	movlw	low(05h)
	movwf	((c:_usb_device_state)),c
	line	1435
;usb_device.c: 1435: }
	goto	l415
	line	1438
	
l2603:
;usb_device.c: 1436: else
;usb_device.c: 1437: {
;usb_device.c: 1438: usb_device_state = 6;
	movlw	low(06h)
	movwf	((c:_usb_device_state)),c
	line	1440
	
l415:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdSetCfgHandler
	__end_of_USBStdSetCfgHandler:
	signat	_USBStdSetCfgHandler,89
	global	_USBStdGetStatusHandler

;; *************** function _USBStdGetStatusHandler *****************
;; Defined at:
;;		line 1458 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 3F/4
;;		On exit  : 3F/4
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	line	1458
global __ptext13
__ptext13:
psect	text13
	file	"../demo_src/usb_device.c"
	line	1458
	global	__size_of_USBStdGetStatusHandler
	__size_of_USBStdGetStatusHandler	equ	__end_of_USBStdGetStatusHandler-_USBStdGetStatusHandler
	
_USBStdGetStatusHandler:
;incstack = 0
	opt	stack 26
	line	1460
	
l2605:; BSR set to: 4

;usb_device.c: 1460: CtrlTrfData._byte0 = 0;
	clrf	((1060))&0ffh	;volatile
	line	1461
;usb_device.c: 1461: CtrlTrfData._byte1 = 0;
	clrf	(0+(1060+01h))&0ffh	;volatile
	line	1463
;usb_device.c: 1463: switch(SetupPkt.Recipient)
	goto	l2627
	line	1466
	
l2607:; BSR set to: 4

;usb_device.c: 1466: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1474
;usb_device.c: 1472: if(0 == 1)
	
l2611:; BSR set to: 4

;usb_device.c: 1474: if(usb_stat.RemoteWakeup == 1)
	btfss	((c:_usb_stat)),c,0
	goto	u1401
	goto	u1400
u1401:
	goto	l2629
u1400:
	line	1475
	
l2613:; BSR set to: 4

;usb_device.c: 1475: CtrlTrfData._byte0|=0b00000010;
	bsf	(0+(1/8)+(1060))&0ffh,(1)&7	;volatile
	goto	l2629
	line	1478
	
l2615:; BSR set to: 4

;usb_device.c: 1478: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1479
;usb_device.c: 1479: break;
	goto	l2629
	line	1481
	
l2617:; BSR set to: 4

;usb_device.c: 1481: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1485
	
l2619:; BSR set to: 4

;usb_device.c: 1485: pDst.bRam = (uint8_t*)&ep0BoEven+(SetupPkt.EPNum*8)+(SetupPkt.EPDir*4)+4;
	movf	(0+((c:_SetupPkt)+04h)),c,w
	andlw	(1<<4)-1
	mullw	08h
	movlw	low((1024))
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movlw	high((1024))
	movwf	1+(??_USBStdGetStatusHandler+0+0)&0ffh,c
	movlw	04h
	addwf	(??_USBStdGetStatusHandler+0+0),c
	movlw	0
	addwfc	(??_USBStdGetStatusHandler+0+1),c
	movf	(prodl),c,w
	addwf	(??_USBStdGetStatusHandler+0+0),c
	movf	(prodh),c,w
	addwfc	(??_USBStdGetStatusHandler+0+1),c
	btfsc	(0+((c:_SetupPkt)+04h)),c,7
	goto	u1411
	goto	u1410
u1411:
	movlw	1
	goto	u1416
u1410:
	movlw	0
u1416:
	mullw	04h
	movf	(prodl),c,w
	addwf	(??_USBStdGetStatusHandler+0+0),c,w
	movwf	((c:_pDst)),c
	movf	(prodh),c,w
	addwfc	(??_USBStdGetStatusHandler+0+1),c,w
	movwf	1+((c:_pDst)),c
	line	1486
	
l2621:; BSR set to: 4

;usb_device.c: 1486: if(*pDst.bRam & 0x04)
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	btfss	indf2,(2)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l2629
u1420:
	line	1487
	
l2623:; BSR set to: 4

;usb_device.c: 1487: CtrlTrfData._byte0=0x01;
	movlw	low(01h)
	movwf	((1060))&0ffh	;volatile
	goto	l2629
	line	1463
	
l2627:; BSR set to: 4

	movf	((c:_SetupPkt)),c,w
	andlw	(1<<5)-1
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2607
	xorlw	1^0	; case 1
	skipnz
	goto	l2615
	xorlw	2^1	; case 2
	skipnz
	goto	l2617
	goto	l2629

	line	1491
	
l2629:; BSR set to: 4

;usb_device.c: 1491: if(ctrl_trf_session_owner == 1)
		decf	((c:_ctrl_trf_session_owner)),c,w
	btfss	status,2
	goto	u1431
	goto	u1430

u1431:
	goto	l427
u1430:
	line	1493
	
l2631:; BSR set to: 4

;usb_device.c: 1492: {
;usb_device.c: 1493: pSrc.bRam = (uint8_t*)&CtrlTrfData;
		movlw	low(1060)
	movwf	((c:_pSrc)),c
	movlw	high(1060)
	movwf	((c:_pSrc+1)),c

	line	1494
	
l2633:; BSR set to: 4

;usb_device.c: 1494: usb_stat.ctrl_trf_mem = 0;
	bcf	((c:_usb_stat)),c,1
	line	1495
	
l2635:; BSR set to: 4

;usb_device.c: 1495: wCount.v[0] = 2;
	movlw	low(02h)
	movwf	((c:_wCount)),c
	line	1497
	
l427:; BSR set to: 4

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdGetStatusHandler
	__end_of_USBStdGetStatusHandler:
	signat	_USBStdGetStatusHandler,89
	global	_USBStdGetDscHandler

;; *************** function _USBStdGetDscHandler *****************
;; Defined at:
;;		line 1361 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 3F/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	1361
global __ptext14
__ptext14:
psect	text14
	file	"../demo_src/usb_device.c"
	line	1361
	global	__size_of_USBStdGetDscHandler
	__size_of_USBStdGetDscHandler	equ	__end_of_USBStdGetDscHandler-_USBStdGetDscHandler
	
_USBStdGetDscHandler:; BSR set to: 4

;incstack = 0
	opt	stack 26
	line	1363
	
l2543:; BSR set to: 4

;usb_device.c: 1363: if(SetupPkt.bmRequestType == 0x80)
		movlw	128
	xorwf	((c:_SetupPkt)),c,w
	btfss	status,2
	goto	u1351
	goto	u1350

u1351:
	goto	l406
u1350:
	goto	l2569
	line	1368
	
l2547:; BSR set to: 4

;usb_device.c: 1368: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1369
	
l2549:; BSR set to: 4

;usb_device.c: 1369: pSrc.bRom = (const uint8_t*)&device_dsc;
		movlw	low(_device_dsc)
	movwf	((c:_pSrc)),c
	movf	((c:_pSrc)),c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:_pSrc+1)),c

	line	1370
	
l2551:; BSR set to: 4

;usb_device.c: 1370: wCount.v[0] = sizeof(device_dsc);
	movlw	low(012h)
	movwf	((c:_wCount)),c
	line	1371
;usb_device.c: 1371: break;
	goto	l402
	line	1374
	
l2553:; BSR set to: 4

;usb_device.c: 1374: if(SetupPkt.bDscIndex < 1)
	movf	(0+((c:_SetupPkt)+02h)),c,w
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l402
u1360:
	line	1376
	
l2555:; BSR set to: 4

;usb_device.c: 1375: {
;usb_device.c: 1376: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1377
	
l2557:; BSR set to: 4

;usb_device.c: 1377: pSrc.bRom = (const BYTE*)&CFG01;
		movlw	low(_CFG01)
	movwf	((c:_pSrc)),c
	movf	((c:_pSrc)),c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:_pSrc+1)),c

	line	1378
	
l2559:; BSR set to: 4

;usb_device.c: 1378: wCount.Val = sizeof(CFG01);
	movlw	high(029h)
	movwf	((c:_wCount+1)),c
	movlw	low(029h)
	movwf	((c:_wCount)),c
	goto	l402
	line	1382
	
l2561:; BSR set to: 4

;usb_device.c: 1382: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1383
	
l2563:; BSR set to: 4

;usb_device.c: 1383: pSrc.bRom = *(USB_SD_Ptr+SetupPkt.bDscIndex);
	movf	(0+((c:_SetupPkt)+02h)),c,w
	addlw	low(_USB_SD_Ptr)
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh,c
	movff	(??_USBStdGetDscHandler+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:_pSrc)
	global __smallconst
movlw	high(__smallconst)
	movwf	((c:_pSrc+1)),c

	line	1384
	
l2565:; BSR set to: 4

;usb_device.c: 1384: wCount.Val = *pSrc.bRom;
	movff	(c:_pSrc),tblptrl
	movff	(c:_pSrc+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1377
	tblrd	*
	
	movf	tablat,w
	bra	u1370
u1377:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1370:
	movwf	((c:_wCount)),c
	clrf	((c:_wCount+1)),c
	line	1385
;usb_device.c: 1385: break;
	goto	l402
	line	1365
	
l2569:; BSR set to: 4

	movf	(0+((c:_SetupPkt)+03h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l2547
	xorlw	2^1	; case 2
	skipnz
	goto	l2553
	xorlw	3^2	; case 3
	skipnz
	goto	l2561
	goto	l402

	line	1386
	
l402:
	line	1388
;usb_device.c: 1388: usb_stat.ctrl_trf_mem = 1;
	bsf	((c:_usb_stat)),c,1
	line	1390
	
l406:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdGetDscHandler
	__end_of_USBStdGetDscHandler:
	signat	_USBStdGetDscHandler,89
	global	_USBStdFeatureReqHandler

;; *************** function _USBStdFeatureReqHandler *****************
;; Defined at:
;;		line 1516 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 3F/4
;;		On exit  : 3F/4
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	line	1516
global __ptext15
__ptext15:
psect	text15
	file	"../demo_src/usb_device.c"
	line	1516
	global	__size_of_USBStdFeatureReqHandler
	__size_of_USBStdFeatureReqHandler	equ	__end_of_USBStdFeatureReqHandler-_USBStdFeatureReqHandler
	
_USBStdFeatureReqHandler:
;incstack = 0
	opt	stack 26
	line	1519
	
l2637:; BSR set to: 4

;usb_device.c: 1519: if((SetupPkt.bFeature == 0x01)&&(SetupPkt.Recipient == 0))
		decf	(0+((c:_SetupPkt)+02h)),c,w
	btfss	status,2
	goto	u1441
	goto	u1440

u1441:
	goto	l2647
u1440:
	
l2639:; BSR set to: 4

	movf	((c:_SetupPkt)),c,w
	andlw	(1<<5)-1
	iorlw	0
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2647
u1450:
	line	1521
	
l2641:; BSR set to: 4

;usb_device.c: 1520: {
;usb_device.c: 1521: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1522
	
l2643:; BSR set to: 4

;usb_device.c: 1522: if(SetupPkt.bRequest == 3)
		movlw	3
	xorwf	(0+((c:_SetupPkt)+01h)),c,w
	btfss	status,2
	goto	u1461
	goto	u1460

u1461:
	goto	l431
u1460:
	line	1523
	
l2645:; BSR set to: 4

;usb_device.c: 1523: usb_stat.RemoteWakeup = 1;
	bsf	((c:_usb_stat)),c,0
	goto	l2647
	line	1524
	
l431:; BSR set to: 4

	line	1525
;usb_device.c: 1524: else
;usb_device.c: 1525: usb_stat.RemoteWakeup = 0;
	bcf	((c:_usb_stat)),c,0
	line	1529
	
l2647:; BSR set to: 4

;usb_device.c: 1526: }
;usb_device.c: 1529: if((SetupPkt.bFeature == 0x00)&&(SetupPkt.Recipient == 2)&&(SetupPkt.EPNum != 0))
	movf	(0+((c:_SetupPkt)+02h)),c,w
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l438
u1470:
	
l2649:; BSR set to: 4

	movf	((c:_SetupPkt)),c,w
	andlw	(1<<5)-1
	xorlw	02h
	btfss	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l438
u1480:
	
l2651:; BSR set to: 4

	movf	(0+((c:_SetupPkt)+04h)),c,w
	andlw	(1<<4)-1
	iorlw	0
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l438
u1490:
	line	1531
	
l2653:; BSR set to: 4

;usb_device.c: 1530: {
;usb_device.c: 1531: ctrl_trf_session_owner = 1;
	movlw	low(01h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	1533
	
l2655:; BSR set to: 4

;usb_device.c: 1533: pDst.bRam = (uint8_t*)&ep0BoEven+(SetupPkt.EPNum*8)+(SetupPkt.EPDir*4)+4;
	movf	(0+((c:_SetupPkt)+04h)),c,w
	andlw	(1<<4)-1
	mullw	08h
	movlw	low((1024))
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movlw	high((1024))
	movwf	1+(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movlw	04h
	addwf	(??_USBStdFeatureReqHandler+0+0),c
	movlw	0
	addwfc	(??_USBStdFeatureReqHandler+0+1),c
	movf	(prodl),c,w
	addwf	(??_USBStdFeatureReqHandler+0+0),c
	movf	(prodh),c,w
	addwfc	(??_USBStdFeatureReqHandler+0+1),c
	btfsc	(0+((c:_SetupPkt)+04h)),c,7
	goto	u1501
	goto	u1500
u1501:
	movlw	1
	goto	u1506
u1500:
	movlw	0
u1506:
	mullw	04h
	movf	(prodl),c,w
	addwf	(??_USBStdFeatureReqHandler+0+0),c,w
	movwf	((c:_pDst)),c
	movf	(prodh),c,w
	addwfc	(??_USBStdFeatureReqHandler+0+1),c,w
	movwf	1+((c:_pDst)),c
	line	1535
	
l2657:; BSR set to: 4

;usb_device.c: 1535: if(SetupPkt.bRequest == 3)
		movlw	3
	xorwf	(0+((c:_SetupPkt)+01h)),c,w
	btfss	status,2
	goto	u1511
	goto	u1510

u1511:
	goto	l434
u1510:
	line	1537
	
l2659:; BSR set to: 4

;usb_device.c: 1536: {
;usb_device.c: 1537: *pDst.bRam = 0x04;
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1538
	
l2661:; BSR set to: 4

;usb_device.c: 1538: *pDst.bRam |= 0x80;
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1539
;usb_device.c: 1539: }
	goto	l438
	line	1540
	
l434:; BSR set to: 4

	line	1542
;usb_device.c: 1540: else
;usb_device.c: 1541: {
;usb_device.c: 1542: if(SetupPkt.EPDir == 1)
	btfss	(0+((c:_SetupPkt)+04h)),c,7
	goto	u1521
	goto	u1520
u1521:
	goto	l2665
u1520:
	line	1543
	
l2663:; BSR set to: 4

;usb_device.c: 1543: *pDst.bRam = 0x00|0x40;
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	low(040h)
	movwf	indf2
	goto	l438
	line	1546
	
l2665:; BSR set to: 4

;usb_device.c: 1544: else
;usb_device.c: 1545: {
;usb_device.c: 1546: *pDst.bRam = 0x00|0x08;
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1547
	
l2667:; BSR set to: 4

;usb_device.c: 1547: *pDst.bRam |= 0x80;
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1551
	
l438:; BSR set to: 4

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBStdFeatureReqHandler
	__end_of_USBStdFeatureReqHandler:
	signat	_USBStdFeatureReqHandler,89
	global	_USBCBCheckOtherReq

;; *************** function _USBCBCheckOtherReq *****************
;; Defined at:
;;		line 1072 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCheckHIDRequest
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	1072
global __ptext16
__ptext16:
psect	text16
	file	"../demo_src/main.c"
	line	1072
	global	__size_of_USBCBCheckOtherReq
	__size_of_USBCBCheckOtherReq	equ	__end_of_USBCBCheckOtherReq-_USBCBCheckOtherReq
	
_USBCBCheckOtherReq:; BSR set to: 4

;incstack = 0
	opt	stack 25
	line	1074
	
l2675:
;main.c: 1074: USBCheckHIDRequest();
	call	_USBCheckHIDRequest	;wreg free
	line	1075
	
l112:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCBCheckOtherReq
	__end_of_USBCBCheckOtherReq:
	signat	_USBCBCheckOtherReq,89
	global	_USBCheckHIDRequest

;; *************** function _USBCheckHIDRequest *****************
;; Defined at:
;;		line 59 in file "../demo_src/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_HIDGetReportHandler
;;		_HIDSetReportHandler
;; This function is called by:
;;		_USBCBCheckOtherReq
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device_hid.c"
	line	59
global __ptext17
__ptext17:
psect	text17
	file	"../demo_src/usb_device_hid.c"
	line	59
	global	__size_of_USBCheckHIDRequest
	__size_of_USBCheckHIDRequest	equ	__end_of_USBCheckHIDRequest-_USBCheckHIDRequest
	
_USBCheckHIDRequest:
;incstack = 0
	opt	stack 25
	line	61
	
l2387:
;usb_device_hid.c: 61: if(SetupPkt.Recipient != 1) return;
	movf	((c:_SetupPkt)),c,w
	andlw	(1<<5)-1
	decf	wreg
	btfsc	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l2391
u1200:
	goto	l497
	line	62
	
l2391:
;usb_device_hid.c: 62: if(SetupPkt.bIntfID != 0x00) return;
	movf	(0+((c:_SetupPkt)+04h)),c,w
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l2395
u1210:
	goto	l497
	line	69
	
l2395:
;usb_device_hid.c: 69: if(SetupPkt.bRequest == 6)
		movlw	6
	xorwf	(0+((c:_SetupPkt)+01h)),c,w
	btfss	status,2
	goto	u1221
	goto	u1220

u1221:
	goto	l2417
u1220:
	goto	l2415
	line	74
	
l2399:
;usb_device_hid.c: 74: ctrl_trf_session_owner = 2;
	movlw	low(02h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	75
	
l2401:
;usb_device_hid.c: 75: pSrc.bRom = &CFG01[18];
		movlw	low(_CFG01+012h)
	movwf	((c:_pSrc)),c
	movf	((c:_pSrc)),c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:_pSrc+1)),c

	line	76
	
l2403:
;usb_device_hid.c: 76: wCount.Val = sizeof(USB_HID_DSC);
	movlw	high(09h)
	movwf	((c:_wCount+1)),c
	movlw	low(09h)
	movwf	((c:_wCount)),c
	line	77
;usb_device_hid.c: 77: break;
	goto	l502
	line	79
	
l2405:
;usb_device_hid.c: 79: ctrl_trf_session_owner = 2;
	movlw	low(02h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	80
	
l2407:
;usb_device_hid.c: 80: { if(usb_active_cfg == 1) pSrc.bRom = (const uint8_t*)&hid_rpt01; };
		decf	((c:_usb_active_cfg)),c,w
	btfss	status,2
	goto	u1231
	goto	u1230

u1231:
	goto	l504
u1230:
	
l2409:
		movlw	low(_hid_rpt01)
	movwf	((c:_pSrc)),c
	movf	((c:_pSrc)),c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:_pSrc+1)),c

	
l504:
	line	81
;usb_device_hid.c: 81: { if(usb_active_cfg == 1) wCount.Val = sizeof(hid_rpt01); };
		decf	((c:_usb_active_cfg)),c,w
	btfss	status,2
	goto	u1241
	goto	u1240

u1241:
	goto	l502
u1240:
	
l2411:
	movlw	high(01Dh)
	movwf	((c:_wCount+1)),c
	movlw	low(01Dh)
	movwf	((c:_wCount)),c
	goto	l502
	line	71
	
l2415:
	movf	(0+((c:_SetupPkt)+03h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 33 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	33^0	; case 33
	skipnz
	goto	l2399
	xorlw	34^33	; case 34
	skipnz
	goto	l2405
	xorlw	35^34	; case 35
	skipnz
	goto	l502
	goto	l502

	line	86
	
l502:
	line	87
;usb_device_hid.c: 87: usb_stat.ctrl_trf_mem = 1;
	bsf	((c:_usb_stat)),c,1
	line	90
	
l2417:
;usb_device_hid.c: 88: }
;usb_device_hid.c: 90: if(SetupPkt.RequestType != 0x01) return;
	swapf	((c:_SetupPkt)),c,w
	rrcf	wreg,f
	andlw	(1<<2)-1
	decf	wreg
	btfsc	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l2451
u1250:
	goto	l497
	line	94
	
l2421:
;usb_device_hid.c: 94: HIDGetReportHandler();
	call	_HIDGetReportHandler	;wreg free
	line	95
;usb_device_hid.c: 95: break;
	goto	l497
	line	97
	
l2423:
;usb_device_hid.c: 97: HIDSetReportHandler();
	call	_HIDSetReportHandler	;wreg free
	line	98
;usb_device_hid.c: 98: break;
	goto	l497
	line	100
	
l2425:
;usb_device_hid.c: 100: ctrl_trf_session_owner = 2;
	movlw	low(02h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	101
	
l2427:
;usb_device_hid.c: 101: pSrc.bRam = (uint8_t*)&idle_rate;
		movlw	low(_idle_rate)
	movwf	((c:_pSrc)),c
	clrf	((c:_pSrc+1)),c

	line	102
	
l2429:
;usb_device_hid.c: 102: usb_stat.ctrl_trf_mem = 0;
	bcf	((c:_usb_stat)),c,1
	line	103
	
l2431:
;usb_device_hid.c: 103: wCount.v[0] = 1;
	movlw	low(01h)
	movwf	((c:_wCount)),c
	line	104
;usb_device_hid.c: 104: break;
	goto	l497
	line	106
	
l2433:
;usb_device_hid.c: 106: ctrl_trf_session_owner = 2;
	movlw	low(02h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	108
	
l2435:
;usb_device_hid.c: 108: idle_rate = SetupPkt.W_Value.v[1];
	movff	0+((c:_SetupPkt)+03h),(c:_idle_rate)
	line	109
;usb_device_hid.c: 109: break;
	goto	l497
	line	111
	
l2437:
;usb_device_hid.c: 111: ctrl_trf_session_owner = 2;
	movlw	low(02h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	112
	
l2439:
;usb_device_hid.c: 112: pSrc.bRam = (uint8_t*)&active_protocol;
		movlw	low(_active_protocol)
	movwf	((c:_pSrc)),c
	clrf	((c:_pSrc+1)),c

	goto	l2429
	line	117
	
l2445:
;usb_device_hid.c: 117: ctrl_trf_session_owner = 2;
	movlw	low(02h)
	movwf	((c:_ctrl_trf_session_owner)),c
	line	119
	
l2447:
;usb_device_hid.c: 119: active_protocol = SetupPkt.W_Value.v[0];
	movff	0+((c:_SetupPkt)+02h),(c:_active_protocol)
	line	120
;usb_device_hid.c: 120: break;
	goto	l497
	line	91
	
l2451:
	movf	(0+((c:_SetupPkt)+01h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l2421
	xorlw	2^1	; case 2
	skipnz
	goto	l2425
	xorlw	3^2	; case 3
	skipnz
	goto	l2437
	xorlw	9^3	; case 9
	skipnz
	goto	l2423
	xorlw	10^9	; case 10
	skipnz
	goto	l2433
	xorlw	11^10	; case 11
	skipnz
	goto	l2445
	goto	l497

	line	123
	
l497:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCheckHIDRequest
	__end_of_USBCheckHIDRequest:
	signat	_USBCheckHIDRequest,89
	global	_HIDSetReportHandler

;; *************** function _HIDSetReportHandler *****************
;; Defined at:
;;		line 130 in file "../demo_src/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckHIDRequest
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	line	130
global __ptext18
__ptext18:
psect	text18
	file	"../demo_src/usb_device_hid.c"
	line	130
	global	__size_of_HIDSetReportHandler
	__size_of_HIDSetReportHandler	equ	__end_of_HIDSetReportHandler-_HIDSetReportHandler
	
_HIDSetReportHandler:
;incstack = 0
	opt	stack 25
	line	134
	
l521:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_HIDSetReportHandler
	__end_of_HIDSetReportHandler:
	signat	_HIDSetReportHandler,89
	global	_HIDGetReportHandler

;; *************** function _HIDGetReportHandler *****************
;; Defined at:
;;		line 125 in file "../demo_src/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckHIDRequest
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	125
global __ptext19
__ptext19:
psect	text19
	file	"../demo_src/usb_device_hid.c"
	line	125
	global	__size_of_HIDGetReportHandler
	__size_of_HIDGetReportHandler	equ	__end_of_HIDGetReportHandler-_HIDGetReportHandler
	
_HIDGetReportHandler:
;incstack = 0
	opt	stack 25
	line	128
	
l518:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_HIDGetReportHandler
	__end_of_HIDGetReportHandler:
	signat	_HIDGetReportHandler,89
	global	_USBCtrlTrfInHandler

;; *************** function _USBCtrlTrfInHandler *****************
;; Defined at:
;;		line 993 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device.c"
	line	993
global __ptext20
__ptext20:
psect	text20
	file	"../demo_src/usb_device.c"
	line	993
	global	__size_of_USBCtrlTrfInHandler
	__size_of_USBCtrlTrfInHandler	equ	__end_of_USBCtrlTrfInHandler-_USBCtrlTrfInHandler
	
_USBCtrlTrfInHandler:
;incstack = 0
	opt	stack 27
	line	998
	
l2859:
;usb_device.c: 998: if(usb_device_state == 4)
		movlw	4
	xorwf	((c:_usb_device_state)),c,w
	btfss	status,2
	goto	u1711
	goto	u1710

u1711:
	goto	l2869
u1710:
	line	1000
	
l2861:
;usb_device.c: 999: {
;usb_device.c: 1000: UADDR = SetupPkt.bDevADR;
	movff	0+((c:_SetupPkt)+02h),(3896)	;volatile
	line	1001
	
l2863:
;usb_device.c: 1001: if(UADDR > 0)
	movlb	15	; () banked
	movf	((3896))&0ffh,w	;volatile
	btfsc	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l2867
u1720:
	line	1002
	
l2865:; BSR set to: 15

;usb_device.c: 1002: usb_device_state = 5;
	movlw	low(05h)
	movwf	((c:_usb_device_state)),c
	goto	l2869
	line	1004
	
l2867:; BSR set to: 15

;usb_device.c: 1003: else
;usb_device.c: 1004: usb_device_state = 3;
	movlw	low(03h)
	movwf	((c:_usb_device_state)),c
	line	1009
	
l2869:
;usb_device.c: 1005: }
;usb_device.c: 1009: if(ctrl_trf_state == 1)
		decf	((c:_ctrl_trf_state)),c,w
	btfss	status,2
	goto	u1731
	goto	u1730

u1731:
	goto	l347
u1730:
	line	1013
	
l2871:
;usb_device.c: 1010: {
;usb_device.c: 1013: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	1016
	
l2873:
;usb_device.c: 1016: if(short_pkt_status == 2)
		movlw	2
	xorwf	((c:_short_pkt_status)),c,w
	btfss	status,2
	goto	u1741
	goto	u1740

u1741:
	goto	l342
u1740:
	line	1020
	
l2875:
;usb_device.c: 1017: {
;usb_device.c: 1020: ep0Bi.Stat._byte = 0x04;
	movlw	low(04h)
	movlb	4	; () banked
	movwf	((1032))&0ffh	;volatile
	line	1021
	
l2877:; BSR set to: 4

;usb_device.c: 1021: ep0Bi.Stat._byte |= 0x80;
	bsf	(0+(7/8)+(1032))&0ffh,(7)&7	;volatile
	line	1022
;usb_device.c: 1022: }
	goto	l347
	line	1023
	
l342:
	line	1026
;usb_device.c: 1023: else
;usb_device.c: 1024: {
;usb_device.c: 1026: if(ep0Bi.Stat.DTS == 0)
	movlb	4	; () banked
	btfsc	((1032))&0ffh,6	;volatile
	goto	u1751
	goto	u1750
u1751:
	goto	l2881
u1750:
	line	1027
	
l2879:; BSR set to: 4

;usb_device.c: 1027: ep0Bi.Stat._byte = 0x40|0x08;
	movlw	low(048h)
	movwf	((1032))&0ffh	;volatile
	goto	l2883
	line	1029
	
l2881:; BSR set to: 4

;usb_device.c: 1028: else
;usb_device.c: 1029: ep0Bi.Stat._byte = 0x00|0x08;
	movlw	low(08h)
	movwf	((1032))&0ffh	;volatile
	line	1031
	
l2883:; BSR set to: 4

;usb_device.c: 1031: ep0Bi.Stat._byte |= 0x80;
	bsf	(0+(7/8)+(1032))&0ffh,(7)&7	;volatile
	line	1041
	
l347:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfInHandler
	__end_of_USBCtrlTrfInHandler:
	signat	_USBCtrlTrfInHandler,89
	global	_USBCtrlTrfTxService

;; *************** function _USBCtrlTrfTxService *****************
;; Defined at:
;;		line 1063 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlTrfInHandler
;;		_USBCtrlEPServiceComplete
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	1063
global __ptext21
__ptext21:
psect	text21
	file	"../demo_src/usb_device.c"
	line	1063
	global	__size_of_USBCtrlTrfTxService
	__size_of_USBCtrlTrfTxService	equ	__end_of_USBCtrlTrfTxService-_USBCtrlTrfTxService
	
_USBCtrlTrfTxService:
;incstack = 0
	opt	stack 26
	line	1070
	
l2499:
;usb_device.c: 1065: static uint8_t bytes_to_send;
;usb_device.c: 1070: bytes_to_send = 8;
	movlw	low(08h)
	movwf	((c:USBCtrlTrfTxService@bytes_to_send)),c
	line	1071
	
l2501:
;usb_device.c: 1071: if(wCount.Val < 8)
		movf	((c:_wCount+1)),c,w
	bnz	u1271
	movlw	8
	subwf	 ((c:_wCount)),c,w
	btfsc	status,0
	goto	u1271
	goto	u1270

u1271:
	goto	l2513
u1270:
	line	1075
	
l2503:
;usb_device.c: 1072: {
;usb_device.c: 1075: bytes_to_send = wCount.Val;
	movff	(c:_wCount),(c:USBCtrlTrfTxService@bytes_to_send)
	line	1076
	
l2505:
;usb_device.c: 1076: if(short_pkt_status == 0)
	movf	((c:_short_pkt_status)),c,w
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l2509
u1280:
	line	1078
	
l2507:
;usb_device.c: 1077: {
;usb_device.c: 1078: short_pkt_status = 1;
	movlw	low(01h)
	movwf	((c:_short_pkt_status)),c
	line	1079
;usb_device.c: 1079: }
	goto	l2513
	line	1080
	
l2509:
;usb_device.c: 1080: else if(short_pkt_status == 1)
		decf	((c:_short_pkt_status)),c,w
	btfss	status,2
	goto	u1291
	goto	u1290

u1291:
	goto	l2513
u1290:
	line	1082
	
l2511:
;usb_device.c: 1081: {
;usb_device.c: 1082: short_pkt_status = 2;
	movlw	low(02h)
	movwf	((c:_short_pkt_status)),c
	line	1087
	
l2513:
;usb_device.c: 1083: }
;usb_device.c: 1084: }
;usb_device.c: 1087: ep0Bi.Cnt = bytes_to_send;
	movff	(c:USBCtrlTrfTxService@bytes_to_send),0+(1032+01h)	;volatile
	line	1090
	
l2515:
;usb_device.c: 1090: wCount.Val -= bytes_to_send;
	movf	((c:USBCtrlTrfTxService@bytes_to_send)),c,w
	subwf	((c:_wCount)),c
	movlw	0
	subwfb	((c:_wCount+1)),c
	line	1095
	
l2517:
;usb_device.c: 1095: pDst.bRam = (uint8_t*)&CtrlTrfData;
		movlw	low(1060)
	movwf	((c:_pDst)),c
	movlw	high(1060)
	movwf	((c:_pDst+1)),c

	line	1096
	
l2519:
;usb_device.c: 1096: if(usb_stat.ctrl_trf_mem == 1)
	btfss	((c:_usb_stat)),c,1
	goto	u1301
	goto	u1300
u1301:
	goto	l2541
u1300:
	goto	l2531
	line	1100
	
l2523:
;usb_device.c: 1099: {
;usb_device.c: 1100: *pDst.bRam = *pSrc.bRom;
	movff	(c:_pSrc),tblptrl
	movff	(c:_pSrc+1),tblptrh
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1317
	tblrd	*
	
	movf	tablat,w
	bra	u1310
u1317:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1310:
	movwf	indf2
	line	1101
	
l2525:
;usb_device.c: 1101: pDst.bRam++;
	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1102
	
l2527:
;usb_device.c: 1102: pSrc.bRom++;
	infsnz	((c:_pSrc)),c
	incf	((c:_pSrc+1)),c
	line	1103
	
l2529:
;usb_device.c: 1103: bytes_to_send--;
	decf	((c:USBCtrlTrfTxService@bytes_to_send)),c
	line	1098
	
l2531:
	movf	((c:USBCtrlTrfTxService@bytes_to_send)),c,w
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l2523
u1320:
	goto	l364
	line	1110
	
l2533:
;usb_device.c: 1109: {
;usb_device.c: 1110: *pDst.bRam = *pSrc.bRam;
	movff	(c:_pSrc),tblptrl
	movff	(c:_pSrc+1),tblptrh
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1337
	tblrd	*
	
	movf	tablat,w
	bra	u1330
u1337:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1330:
	movwf	indf2
	line	1111
	
l2535:
;usb_device.c: 1111: pDst.bRam++;
	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1112
	
l2537:
;usb_device.c: 1112: pSrc.bRam++;
	infsnz	((c:_pSrc)),c
	incf	((c:_pSrc+1)),c
	line	1113
	
l2539:
;usb_device.c: 1113: bytes_to_send--;
	decf	((c:USBCtrlTrfTxService@bytes_to_send)),c
	line	1108
	
l2541:
	movf	((c:USBCtrlTrfTxService@bytes_to_send)),c,w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l2533
u1340:
	line	1117
	
l364:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfTxService
	__end_of_USBCtrlTrfTxService:
	signat	_USBCtrlTrfTxService,89
	global	_SignFlash

;; *************** function _SignFlash *****************
;; Defined at:
;;		line 487 in file "../demo_src/boot_18fxxjxx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pROM            3    8[COMRAM] PTR  unsigned char 
;;		 -> ROM(65527), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearWatchdog
;;		_EraseFlashPage
;;		_UnlockAndActivate
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/boot_18fxxjxx.c"
	line	487
global __ptext22
__ptext22:
psect	text22
	file	"../demo_src/boot_18fxxjxx.c"
	line	487
	global	__size_of_SignFlash
	__size_of_SignFlash	equ	__end_of_SignFlash-_SignFlash
	
_SignFlash:
;incstack = 0
	opt	stack 25
	line	494
	
l3043:
;boot_18fxxjxx.c: 489: static unsigned int i;
;boot_18fxxjxx.c: 490: far const uint8_t* pROM;
;boot_18fxxjxx.c: 494: pROM = (far const uint8_t*)(0x1006 & (uint32_t)(0x1000000 - 1024));
		movlw	low(01000h)
	movwf	((c:SignFlash@pROM)),c
	movlw	high(01000h)
	movwf	((c:SignFlash@pROM+1)),c
	movlw	low highword(01000h)
	movwf	((c:SignFlash@pROM+2)),c

	line	495
	
l3045:
;boot_18fxxjxx.c: 495: for(i = 0; i < 1024; i++)
	clrf	((c:SignFlash@i)),c
	clrf	((c:SignFlash@i+1)),c
	line	497
	
l3049:
;boot_18fxxjxx.c: 496: {
;boot_18fxxjxx.c: 497: ProgrammingBuffer[i] = *pROM++;
	movff	(c:SignFlash@pROM),tblptrl
	movff	(c:SignFlash@pROM+1),tblptrh
	movff	(c:SignFlash@pROM+2),tblptru
	movlw	low(_ProgrammingBuffer)
	addwf	((c:SignFlash@i)),c,w
	movwf	c:fsr2l
	movlw	high(_ProgrammingBuffer)
	addwfc	((c:SignFlash@i+1)),c,w
	movwf	1+c:fsr2l
	tblrd	*
	
	movff	tablat,indf2
	
l3051:
	movlw	low(01h)
	addwf	((c:SignFlash@pROM)),c
	movlw	high(01h)
	addwfc	((c:SignFlash@pROM+1)),c
	movlw	low highword(01h)
	addwfc	((c:SignFlash@pROM+2)),c
	line	495
	
l3053:
	infsnz	((c:SignFlash@i)),c
	incf	((c:SignFlash@i+1)),c
	
l3055:
		movlw	4
	subwf	 ((c:SignFlash@i+1)),c,w
	btfss	status,0
	goto	u2021
	goto	u2020

u2021:
	goto	l3049
u2020:
	
l656:
	line	501
;boot_18fxxjxx.c: 498: }
;boot_18fxxjxx.c: 501: ProgrammingBuffer[(0x1006 & ~(uint32_t)(0x1000000 - 1024))] = (unsigned char)0x600D;
	movlw	low(0Dh)
	movff	wreg,0+(_ProgrammingBuffer+06h)

	line	502
;boot_18fxxjxx.c: 502: ProgrammingBuffer[(0x1006 & ~(uint32_t)(0x1000000 - 1024)) + 1] = (unsigned char)(0x600D >> 8);
	movlw	low(060h)
	movff	wreg,0+(_ProgrammingBuffer+07h)

	line	505
	
l3057:
;boot_18fxxjxx.c: 505: EraseFlashPage(0x1006 / 1024);
	movlw	high(04h)
	movwf	((c:EraseFlashPage@PageNumToErase+1)),c
	movlw	low(04h)
	movwf	((c:EraseFlashPage@PageNumToErase)),c
	call	_EraseFlashPage	;wreg free
	line	513
	
l3059:
;boot_18fxxjxx.c: 513: pROM = (far const uint8_t*)((0x1006 & (uint32_t)(0x1000000 - 1024)) + 1024 - 1);
		movlw	low(013FFh)
	movwf	((c:SignFlash@pROM)),c
	movlw	high(013FFh)
	movwf	((c:SignFlash@pROM+1)),c
	movlw	low highword(013FFh)
	movwf	((c:SignFlash@pROM+2)),c

	line	515
	
l3061:
;boot_18fxxjxx.c: 515: i = 1024 - 1;
	movlw	high(03FFh)
	movwf	((c:SignFlash@i+1)),c
	setf	((c:SignFlash@i)),c
	line	519
	
l3063:
;boot_18fxxjxx.c: 517: {
;boot_18fxxjxx.c: 519: TBLPTRU = (uint32_t)pROM >> 16;
	movff	0+((c:SignFlash@pROM)+02h),(c:4088)	;volatile
	line	520
	
l3065:
;boot_18fxxjxx.c: 520: TBLPTRH = (uint16_t)pROM >> 8;
	movff	0+((c:SignFlash@pROM)+01h),(c:4087)	;volatile
	line	521
	
l3067:
;boot_18fxxjxx.c: 521: TBLPTRL = (uint8_t)pROM;
	movff	(c:SignFlash@pROM),(c:4086)	;volatile
	line	525
	
l3069:
;boot_18fxxjxx.c: 525: TABLAT = ProgrammingBuffer[i];
	movlw	low(_ProgrammingBuffer)
	addwf	((c:SignFlash@i)),c,w
	movwf	c:fsr2l
	movlw	high(_ProgrammingBuffer)
	addwfc	((c:SignFlash@i+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4085)),c	;volatile
	line	529
# 529 "../demo_src/boot_18fxxjxx.c"
tblwt ;# 
psect	text22
	line	536
	
l3071:
;boot_18fxxjxx.c: 536: if((i % 64) == 0)
	movff	(c:SignFlash@i),??_SignFlash+0+0
	movlw	03Fh
	andwf	(??_SignFlash+0+0),c
	btfss	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l3079
u2030:
	line	539
	
l3073:
;boot_18fxxjxx.c: 537: {
;boot_18fxxjxx.c: 539: ClearWatchdog();
	call	_ClearWatchdog	;wreg free
	line	540
	
l3075:
;boot_18fxxjxx.c: 540: EECON1 = 0x04;
	movlw	low(04h)
	movwf	((c:4006)),c	;volsfr
	line	541
	
l3077:
;boot_18fxxjxx.c: 541: UnlockAndActivate(0xB5);
	movlw	(0B5h)&0ffh
	
	call	_UnlockAndActivate
	line	544
	
l3079:
;boot_18fxxjxx.c: 542: }
;boot_18fxxjxx.c: 544: pROM--;
	movlw	low(01h)
	subwf	((c:SignFlash@pROM)),c
	movlw	high(01h)
	subwfb	((c:SignFlash@pROM+1)),c
	movlw	low highword(01h)
	subwfb	((c:SignFlash@pROM+2)),c
	line	547
# 547 "../demo_src/boot_18fxxjxx.c"
tblrdpostdec ;# 
psect	text22
	line	554
	
l3081:
;boot_18fxxjxx.c: 554: if(i == 0)
	movf	((c:SignFlash@i)),c,w
iorwf	((c:SignFlash@i+1)),c,w
	btfss	status,2
	goto	u2041
	goto	u2040

u2041:
	goto	l3085
u2040:
	goto	l662
	line	558
	
l3085:
;boot_18fxxjxx.c: 557: }
;boot_18fxxjxx.c: 558: i--;
	decf	((c:SignFlash@i)),c
	btfss	status,0
	decf	((c:SignFlash@i+1)),c
	goto	l3063
	line	560
	
l662:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_SignFlash
	__end_of_SignFlash:
	signat	_SignFlash,89
	global	_EraseFlashPage

;; *************** function _EraseFlashPage *****************
;; Defined at:
;;		line 692 in file "../demo_src/boot_18fxxjxx.c"
;; Parameters:    Size  Location     Type
;;  PageNumToEra    2    1[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_UnlockAndActivate
;; This function is called by:
;;		_ProcessIO
;;		_SignFlash
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	692
global __ptext23
__ptext23:
psect	text23
	file	"../demo_src/boot_18fxxjxx.c"
	line	692
	global	__size_of_EraseFlashPage
	__size_of_EraseFlashPage	equ	__end_of_EraseFlashPage-_EraseFlashPage
	
_EraseFlashPage:
;incstack = 0
	opt	stack 25
	line	697
	
l2885:
;boot_18fxxjxx.c: 694: static uint32_t TablePointerValue;
;boot_18fxxjxx.c: 697: if(PageNumToErase < ((uint32_t)0x1000/1024))
		movf	((c:EraseFlashPage@PageNumToErase+1)),c,w
	bnz	u1761
	movlw	4
	subwf	 ((c:EraseFlashPage@PageNumToErase)),c,w
	btfsc	status,0
	goto	u1761
	goto	u1760

u1761:
	goto	l2889
u1760:
	line	698
	
l2887:
;boot_18fxxjxx.c: 698: PageNumToErase = ((uint32_t)0x1000/1024);
	movlw	high(04h)
	movwf	((c:EraseFlashPage@PageNumToErase+1)),c
	movlw	low(04h)
	movwf	((c:EraseFlashPage@PageNumToErase)),c
	line	702
	
l2889:
;boot_18fxxjxx.c: 702: TablePointerValue = 1024 * (uint32_t)PageNumToErase;
	movf	((c:EraseFlashPage@PageNumToErase)),c,w
	movwf	(??_EraseFlashPage+0+0)&0ffh,c
	movf	((c:EraseFlashPage@PageNumToErase+1)),c,w
	movwf	1+(??_EraseFlashPage+0+0)&0ffh,c
	
	clrf	2+(??_EraseFlashPage+0+0)&0ffh,c
	
	clrf	3+(??_EraseFlashPage+0+0)&0ffh,c
	movlw	0Ah
u1775:
	bcf	status,0
	rlcf	(??_EraseFlashPage+0+0),c
	rlcf	(??_EraseFlashPage+0+1),c
	rlcf	(??_EraseFlashPage+0+2),c
	rlcf	(??_EraseFlashPage+0+3),c
	decfsz	wreg
	goto	u1775
	movff	??_EraseFlashPage+0+0,(c:EraseFlashPage@TablePointerValue)
	movff	??_EraseFlashPage+0+1,(c:EraseFlashPage@TablePointerValue+1)
	movff	??_EraseFlashPage+0+2,(c:EraseFlashPage@TablePointerValue+2)
	movff	??_EraseFlashPage+0+3,(c:EraseFlashPage@TablePointerValue+3)
	line	703
	
l2891:
;boot_18fxxjxx.c: 703: TBLPTRU = TablePointerValue >> 16;
	movff	0+((c:EraseFlashPage@TablePointerValue)+02h),(c:4088)	;volatile
	line	704
	
l2893:
;boot_18fxxjxx.c: 704: TBLPTRH = TablePointerValue >> 8;
	movff	0+((c:EraseFlashPage@TablePointerValue)+01h),(c:4087)	;volatile
	line	705
	
l2895:
;boot_18fxxjxx.c: 705: TBLPTRL = 0x00;
	clrf	((c:4086)),c	;volatile
	line	711
	
l2897:
;boot_18fxxjxx.c: 711: EECON1 = 0b00010100;
	movlw	low(014h)
	movwf	((c:4006)),c	;volsfr
	line	712
	
l2899:
;boot_18fxxjxx.c: 712: UnlockAndActivate(0xB5);
	movlw	(0B5h)&0ffh
	
	call	_UnlockAndActivate
	line	713
	
l691:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EraseFlashPage
	__end_of_EraseFlashPage:
	signat	_EraseFlashPage,4217
	global	_UnlockAndActivate

;; *************** function _UnlockAndActivate *****************
;; Defined at:
;;		line 646 in file "../demo_src/boot_18fxxjxx.c"
;; Parameters:    Size  Location     Type
;;  UnlockKey       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  UnlockKey       1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LowVoltageCheck
;; This function is called by:
;;		_SignFlash
;;		_WriteFlashSubBlock
;;		_EraseFlashPage
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	line	646
global __ptext24
__ptext24:
psect	text24
	file	"../demo_src/boot_18fxxjxx.c"
	line	646
	global	__size_of_UnlockAndActivate
	__size_of_UnlockAndActivate	equ	__end_of_UnlockAndActivate-_UnlockAndActivate
	
_UnlockAndActivate:
;incstack = 0
	opt	stack 26
;UnlockAndActivate@UnlockKey stored from wreg
	movwf	((c:UnlockAndActivate@UnlockKey)),c
	line	648
	
l2795:
;boot_18fxxjxx.c: 648: INTCONbits.GIE = 0;
	bcf	((c:4082)),c,7	;volatile
	line	651
	
l2797:
;boot_18fxxjxx.c: 651: LowVoltageCheck();
	call	_LowVoltageCheck	;wreg free
	line	655
	
l2799:
;boot_18fxxjxx.c: 655: if(UnlockKey != 0xB5)
		movlw	181
	xorwf	((c:UnlockAndActivate@UnlockKey)),c,w
	btfsc	status,2
	goto	u1641
	goto	u1640

u1641:
	goto	l2803
u1640:
	line	664
	
l2801:
;boot_18fxxjxx.c: 656: {
;boot_18fxxjxx.c: 664: OSCCON = 0x03;
	movlw	low(03h)
	movwf	((c:4051)),c	;volatile
	line	665
;boot_18fxxjxx.c: 665: while(1)
	
l679:
	line	667
# 667 "../demo_src/boot_18fxxjxx.c"
sleep ;# 
psect	text24
	goto	l679
	line	673
	
l2803:
;boot_18fxxjxx.c: 670: }
;boot_18fxxjxx.c: 673: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:4007)),c	;volsfr
	line	674
;boot_18fxxjxx.c: 674: EECON2 = 0xAA;
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volsfr
	line	675
	
l2805:
;boot_18fxxjxx.c: 675: EECON1bits.WR = 1;
	bsf	((c:4006)),c,1	;volsfr
	line	687
;boot_18fxxjxx.c: 687: while(EECON1bits.WR);
	
l682:
	btfsc	((c:4006)),c,1	;volsfr
	goto	u1651
	goto	u1650
u1651:
	goto	l682
u1650:
	
l684:
	line	688
;boot_18fxxjxx.c: 688: EECON1bits.WREN = 0;
	bcf	((c:4006)),c,2	;volsfr
	line	689
	
l685:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_UnlockAndActivate
	__end_of_UnlockAndActivate:
	signat	_UnlockAndActivate,4217
	global	_LowVoltageCheck

;; *************** function _LowVoltageCheck *****************
;; Defined at:
;;		line 785 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BootMain
;;		_UnlockAndActivate
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	785
global __ptext25
__ptext25:
psect	text25
	file	"../demo_src/main.c"
	line	785
	global	__size_of_LowVoltageCheck
	__size_of_LowVoltageCheck	equ	__end_of_LowVoltageCheck-_LowVoltageCheck
	
_LowVoltageCheck:
;incstack = 0
	opt	stack 26
	line	791
	
l2371:
;main.c: 791: if(WDTCONbits.LVDSTAT == 0)
	btfsc	((c:4032)),c,6	;volatile
	goto	u1171
	goto	u1170
u1171:
	goto	l92
u1170:
	line	796
	
l2373:
;main.c: 792: {
;main.c: 796: OSCCON = 0x03;
	movlw	low(03h)
	movwf	((c:4051)),c	;volatile
	line	797
	
l2375:
;main.c: 797: UCONbits.SUSPND = 0;
	bcf	((c:3941)),c,1	;volatile
	line	798
	
l2377:
;main.c: 798: UCONbits.USBEN = 0;
	bcf	((c:3941)),c,3	;volatile
	line	799
	
l2379:
;main.c: 799: INTCON = 0x00;
	clrf	((c:4082)),c	;volatile
	line	802
;main.c: 802: uint_delay_counter = 0x400;
	movlw	high(0400h)
	movwf	((c:_uint_delay_counter+1)),c
	movlw	low(0400h)
	movwf	((c:_uint_delay_counter)),c
	line	803
;main.c: 803: while(uint_delay_counter)
	goto	l2385
	
l88:
	line	805
;main.c: 804: {
;main.c: 805: if(WDTCONbits.LVDSTAT == 1)
	btfss	((c:4032)),c,6	;volatile
	goto	u1181
	goto	u1180
u1181:
	goto	l2383
u1180:
	line	807
	
l2381:
;main.c: 806: {
;main.c: 807: uint_delay_counter--;
	decf	((c:_uint_delay_counter)),c
	btfss	status,0
	decf	((c:_uint_delay_counter+1)),c
	line	808
;main.c: 808: }
	goto	l90
	line	811
	
l2383:
;main.c: 809: else
;main.c: 810: {
;main.c: 811: uint_delay_counter = 0x400;
	movlw	high(0400h)
	movwf	((c:_uint_delay_counter+1)),c
	movlw	low(0400h)
	movwf	((c:_uint_delay_counter)),c
	line	812
	
l90:
	line	813
# 813 "../demo_src/main.c"
clrwdt ;# 
psect	text25
	line	803
	
l2385:
	movf	((c:_uint_delay_counter)),c,w
iorwf	((c:_uint_delay_counter+1)),c,w
	btfss	status,2
	goto	u1191
	goto	u1190

u1191:
	goto	l88
u1190:
	
l91:
	line	818
# 818 "../demo_src/main.c"
reset ;# 
psect	text25
	line	820
	
l92:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LowVoltageCheck
	__end_of_LowVoltageCheck:
	signat	_LowVoltageCheck,89
	global	_ResetDeviceCleanly

;; *************** function _ResetDeviceCleanly *****************
;; Defined at:
;;		line 572 in file "../demo_src/boot_18fxxjxx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USBDisableWithLongDelay
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/boot_18fxxjxx.c"
	line	572
global __ptext26
__ptext26:
psect	text26
	file	"../demo_src/boot_18fxxjxx.c"
	line	572
	global	__size_of_ResetDeviceCleanly
	__size_of_ResetDeviceCleanly	equ	__end_of_ResetDeviceCleanly-_ResetDeviceCleanly
	
_ResetDeviceCleanly:
;incstack = 0
	opt	stack 25
	line	574
	
l3087:
;boot_18fxxjxx.c: 574: USBDisableWithLongDelay();
	call	_USBDisableWithLongDelay	;wreg free
	line	575
# 575 "../demo_src/boot_18fxxjxx.c"
reset ;# 
psect	text26
	line	576
	
l3089:
;boot_18fxxjxx.c: 576: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	577
	
l3091:
;boot_18fxxjxx.c: 577: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	578
	
l665:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetDeviceCleanly
	__end_of_ResetDeviceCleanly:
	signat	_ResetDeviceCleanly,89
	global	_HIDTxReport

;; *************** function _HIDTxReport *****************
;; Defined at:
;;		line 215 in file "../demo_src/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    0[COMRAM] PTR unsigned char 
;;		 -> PacketToPC(65), 
;;  len             1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 3F/4
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device_hid.c"
	line	215
global __ptext27
__ptext27:
psect	text27
	file	"../demo_src/usb_device_hid.c"
	line	215
	global	__size_of_HIDTxReport
	__size_of_HIDTxReport	equ	__end_of_HIDTxReport-_HIDTxReport
	
_HIDTxReport:
;incstack = 0
	opt	stack 28
	line	223
	
l2975:
;usb_device_hid.c: 217: uint8_t i;
;usb_device_hid.c: 223: if(len > 64)
		movlw	041h-1
	cpfsgt	((c:HIDTxReport@len)),c
	goto	u1921
	goto	u1920

u1921:
	goto	l2979
u1920:
	line	224
	
l2977:
;usb_device_hid.c: 224: len = 64;
	movlw	low(040h)
	movwf	((c:HIDTxReport@len)),c
	line	229
	
l2979:
;usb_device_hid.c: 229: for (i = 0; i < len; i++)
	clrf	((c:HIDTxReport@i)),c
	goto	l2985
	line	230
	
l2981:
;usb_device_hid.c: 230: hid_report_in[i] = buffer[i];
	movf	((c:HIDTxReport@buffer)),c,w
	addwf	((c:HIDTxReport@i)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(1132)
	addwf	((c:HIDTxReport@i)),c,w
	movwf	c:fsr1l
	clrf	1+c:fsr1l
	movlw	high(1132)
	addwfc	1+c:fsr1l
	movff	indf2,indf1
	line	229
	
l2983:
	incf	((c:HIDTxReport@i)),c
	
l2985:
		movf	((c:HIDTxReport@len)),c,w
	subwf	((c:HIDTxReport@i)),c,w
	btfss	status,0
	goto	u1931
	goto	u1930

u1931:
	goto	l2981
u1930:
	
l530:
	line	232
;usb_device_hid.c: 232: ep1Bi.Cnt = len;
	movff	(c:HIDTxReport@len),0+(1040+01h)	;volatile
	line	233
	
l2987:
;usb_device_hid.c: 233: { ep1Bi.Stat._byte &= 0x40; ep1Bi.Stat.DTS = !ep1Bi.Stat.DTS; ep1Bi.Stat._byte |= 0x08; ep1Bi.Stat._byte |= 0x80; };
	movlw	(040h)&0ffh
	movlb	4	; () banked
	andwf	((1040))&0ffh	;volatile
	btfss	((1040))&0ffh,6	;volatile
	goto	u1941
	goto	u1940
u1941:
	clrf	(??_HIDTxReport+0+0)&0ffh,c
	incf	(??_HIDTxReport+0+0)&0ffh,c
	goto	u1958
u1940:
	clrf	(??_HIDTxReport+0+0)&0ffh,c
u1958:
	swapf	(??_HIDTxReport+0+0),c
	rlncf	(??_HIDTxReport+0+0),c
	rlncf	(??_HIDTxReport+0+0),c
	movlb	4	; () banked
	movf	((1040))&0ffh,w	;volatile
	xorwf	(??_HIDTxReport+0+0),c,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_HIDTxReport+0+0),c,w
	movwf	((1040))&0ffh	;volatile
	
l2989:; BSR set to: 4

	bsf	(0+(3/8)+(1040))&0ffh,(3)&7	;volatile
	
l2991:; BSR set to: 4

	bsf	(0+(7/8)+(1040))&0ffh,(7)&7	;volatile
	line	235
	
l531:; BSR set to: 4

	return	;funcret
	opt stack 0
GLOBAL	__end_of_HIDTxReport
	__end_of_HIDTxReport:
	signat	_HIDTxReport,8313
	global	_HIDRxReport

;; *************** function _HIDRxReport *****************
;; Defined at:
;;		line 270 in file "../demo_src/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    0[COMRAM] PTR unsigned char 
;;		 -> PacketFromPC(65), 
;;  len             1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/4
;;		On exit  : 3F/4
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	line	270
global __ptext28
__ptext28:
psect	text28
	file	"../demo_src/usb_device_hid.c"
	line	270
	global	__size_of_HIDRxReport
	__size_of_HIDRxReport	equ	__end_of_HIDRxReport-_HIDRxReport
	
_HIDRxReport:; BSR set to: 4

;incstack = 0
	opt	stack 28
	line	272
	
l2993:; BSR set to: 4

;usb_device_hid.c: 272: hid_rpt_rx_len = 0;
	clrf	((c:_hid_rpt_rx_len)),c
	line	274
;usb_device_hid.c: 274: if(!ep1Bo.Stat.UOWN)
	btfsc	((1036))&0ffh,7	;volatile
	goto	u1961
	goto	u1960
u1961:
	goto	l539
u1960:
	line	280
	
l2995:; BSR set to: 4

;usb_device_hid.c: 275: {
;usb_device_hid.c: 280: if(len > ep1Bo.Cnt)
		movf	((c:HIDRxReport@len)),c,w
	subwf	(0+(1036+01h))&0ffh,w	;volatile
	btfsc	status,0
	goto	u1971
	goto	u1970

u1971:
	goto	l535
u1970:
	line	281
	
l2997:; BSR set to: 4

;usb_device_hid.c: 281: len = ep1Bo.Cnt;
	movff	0+(1036+01h),(c:HIDRxReport@len)	;volatile
	
l535:; BSR set to: 4

	line	286
;usb_device_hid.c: 286: for(hid_rpt_rx_len = 0; hid_rpt_rx_len < len; hid_rpt_rx_len++)
	clrf	((c:_hid_rpt_rx_len)),c
	goto	l3003
	line	287
	
l2999:; BSR set to: 4

;usb_device_hid.c: 287: buffer[hid_rpt_rx_len] = hid_report_out[hid_rpt_rx_len];
	movlw	low(1068)
	addwf	((c:_hid_rpt_rx_len)),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(1068)
	addwfc	1+c:fsr2l
	movf	((c:HIDRxReport@buffer)),c,w
	addwf	((c:_hid_rpt_rx_len)),c,w
	movwf	fsr1l
	clrf	fsr1h
	movff	indf2,indf1
	line	286
	
l3001:; BSR set to: 4

	incf	((c:_hid_rpt_rx_len)),c
	
l3003:; BSR set to: 4

		movf	((c:HIDRxReport@len)),c,w
	subwf	((c:_hid_rpt_rx_len)),c,w
	btfss	status,0
	goto	u1981
	goto	u1980

u1981:
	goto	l2999
u1980:
	line	292
	
l3005:; BSR set to: 4

;usb_device_hid.c: 292: ep1Bo.Cnt = sizeof(hid_report_out);
	movlw	low(040h)
	movwf	(0+(1036+01h))&0ffh	;volatile
	line	293
	
l3007:; BSR set to: 4

;usb_device_hid.c: 293: { ep1Bo.Stat._byte &= 0x40; ep1Bo.Stat.DTS = !ep1Bo.Stat.DTS; ep1Bo.Stat._byte |= 0x08; ep1Bo.Stat._byte |= 0x80; };
	movlw	(040h)&0ffh
	andwf	((1036))&0ffh	;volatile
	
l3009:; BSR set to: 4

	btfss	((1036))&0ffh,6	;volatile
	goto	u1991
	goto	u1990
u1991:
	clrf	(??_HIDRxReport+0+0)&0ffh,c
	incf	(??_HIDRxReport+0+0)&0ffh,c
	goto	u2008
u1990:
	clrf	(??_HIDRxReport+0+0)&0ffh,c
u2008:
	swapf	(??_HIDRxReport+0+0),c
	rlncf	(??_HIDRxReport+0+0),c
	rlncf	(??_HIDRxReport+0+0),c
	movlb	4	; () banked
	movf	((1036))&0ffh,w	;volatile
	xorwf	(??_HIDRxReport+0+0),c,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_HIDRxReport+0+0),c,w
	movwf	((1036))&0ffh	;volatile
	
l3011:; BSR set to: 4

	bsf	(0+(3/8)+(1036))&0ffh,(3)&7	;volatile
	
l3013:; BSR set to: 4

	bsf	(0+(7/8)+(1036))&0ffh,(7)&7	;volatile
	line	298
	
l539:; BSR set to: 4

	return	;funcret
	opt stack 0
GLOBAL	__end_of_HIDRxReport
	__end_of_HIDRxReport:
	signat	_HIDRxReport,8313
	global	_InitializeSystem

;; *************** function _InitializeSystem *****************
;; Defined at:
;;		line 583 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DelayRoutine
;;		_USBDeviceInit
;;		_UserInit
;; This function is called by:
;;		_BootMain
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	583
global __ptext29
__ptext29:
psect	text29
	file	"../demo_src/main.c"
	line	583
	global	__size_of_InitializeSystem
	__size_of_InitializeSystem	equ	__end_of_InitializeSystem-_InitializeSystem
	
_InitializeSystem:; BSR set to: 4

;incstack = 0
	opt	stack 23
	line	603
	
l3093:
;main.c: 603: OSCCON = 0x60;
	movlw	low(060h)
	movwf	((c:4051)),c	;volatile
	line	604
	
l3095:
;main.c: 604: OSCTUNEbits.PLLEN = 1;
	bsf	((c:3995)),c,6	;volatile
	line	606
	
l3097:
;main.c: 606: DelayRoutine(0x300);
	movlw	high(0300h)
	movwf	((c:DelayRoutine@DelayAmount+1)),c
	movlw	low(0300h)
	movwf	((c:DelayRoutine@DelayAmount)),c
	call	_DelayRoutine	;wreg free
	line	621
	
l3099:
;main.c: 621: ANCON0 = 0x00;
	movlb	15	; () banked
	clrf	((3912))&0ffh	;volatile
	line	622
	
l3101:; BSR set to: 15

;main.c: 622: ANCON1 = 0x00;
	clrf	((3913))&0ffh	;volatile
	line	728
	
l3103:; BSR set to: 15

;main.c: 728: UserInit();
	call	_UserInit	;wreg free
	line	730
	
l3105:
;main.c: 730: LATEbits.LATE1 = 0;
	bcf	((c:3981)),c,1	;volatile
	line	731
	
l3107:
;main.c: 731: TRISEbits.TRISE1 = 0;
	bcf	((c:3990)),c,1	;volatile
	line	735
	
l3109:
;main.c: 735: USBDeviceInit();
	call	_USBDeviceInit	;wreg free
	line	737
	
l75:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitializeSystem
	__end_of_InitializeSystem:
	signat	_InitializeSystem,89
	global	_USBDeviceInit

;; *************** function _USBDeviceInit *****************
;; Defined at:
;;		line 295 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 34/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USBCheckBusStatus
;;		_USBDisableWithLongDelay
;; This function is called by:
;;		_InitializeSystem
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device.c"
	line	295
global __ptext30
__ptext30:
psect	text30
	file	"../demo_src/usb_device.c"
	line	295
	global	__size_of_USBDeviceInit
	__size_of_USBDeviceInit	equ	__end_of_USBDeviceInit-_USBDeviceInit
	
_USBDeviceInit:
;incstack = 0
	opt	stack 23
	line	301
	
l2967:
;usb_device.c: 301: if(UCONbits.USBEN == 1)
	btfss	((c:3941)),c,3	;volatile
	goto	u1911
	goto	u1910
u1911:
	goto	l2971
u1910:
	line	306
	
l2969:
;usb_device.c: 302: {
;usb_device.c: 306: USBDisableWithLongDelay();
	call	_USBDisableWithLongDelay	;wreg free
	line	308
	
l2971:
;usb_device.c: 307: }
;usb_device.c: 308: DeviceIsSoftDetached = 0;
	clrf	((c:_DeviceIsSoftDetached)),c
	line	316
	
l2973:
;usb_device.c: 316: USBCheckBusStatus();
	call	_USBCheckBusStatus	;wreg free
	line	317
	
l274:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBDeviceInit
	__end_of_USBDeviceInit:
	signat	_USBDeviceInit,89
	global	_USBCheckBusStatus

;; *************** function _USBCheckBusStatus *****************
;; Defined at:
;;		line 375 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USBSoftAttach
;; This function is called by:
;;		_USBDeviceInit
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	line	375
global __ptext31
__ptext31:
psect	text31
	file	"../demo_src/usb_device.c"
	line	375
	global	__size_of_USBCheckBusStatus
	__size_of_USBCheckBusStatus	equ	__end_of_USBCheckBusStatus-_USBCheckBusStatus
	
_USBCheckBusStatus:
;incstack = 0
	opt	stack 24
	line	380
	
l2807:
;usb_device.c: 380: if(DeviceIsSoftDetached == 1)
		decf	((c:_DeviceIsSoftDetached)),c,w
	btfss	status,2
	goto	u1661
	goto	u1660

u1661:
	goto	l284
u1660:
	goto	l285
	line	383
	
l284:
	line	409
;usb_device.c: 383: }
;usb_device.c: 409: if(UCONbits.USBEN == 0)
	btfsc	((c:3941)),c,3	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l285
u1670:
	line	410
	
l2811:
;usb_device.c: 410: USBSoftAttach();
	call	_USBSoftAttach	;wreg free
	line	412
	
l285:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCheckBusStatus
	__end_of_USBCheckBusStatus:
	signat	_USBCheckBusStatus,89
	global	_USBSoftAttach

;; *************** function _USBSoftAttach *****************
;; Defined at:
;;		line 323 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USBDisableWithLongDelay
;;		_USBProtocolResetHandler
;; This function is called by:
;;		_USBCheckBusStatus
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	line	323
global __ptext32
__ptext32:
psect	text32
	file	"../demo_src/usb_device.c"
	line	323
	global	__size_of_USBSoftAttach
	__size_of_USBSoftAttach	equ	__end_of_USBSoftAttach-_USBSoftAttach
	
_USBSoftAttach:
;incstack = 0
	opt	stack 24
	line	330
	
l2677:
;usb_device.c: 330: if(DeviceIsSoftDetached == 1)
		decf	((c:_DeviceIsSoftDetached)),c,w
	btfss	status,2
	goto	u1551
	goto	u1550

u1551:
	goto	l2681
u1550:
	line	332
	
l2679:
;usb_device.c: 331: {
;usb_device.c: 332: USBDisableWithLongDelay();
	call	_USBDisableWithLongDelay	;wreg free
	line	335
	
l2681:
;usb_device.c: 333: }
;usb_device.c: 335: UCON = 0;
	clrf	((c:3941)),c	;volatile
	line	336
	
l2683:
;usb_device.c: 336: UCFG = 0x10|0x00|0x04|0x01;
	movlw	low(015h)
	movlb	15	; () banked
	movwf	((3897))&0ffh	;volatile
	line	337
	
l2685:; BSR set to: 15

;usb_device.c: 337: UIE = 0;
	clrf	((3894))&0ffh	;volatile
	line	338
	
l2687:; BSR set to: 15

;usb_device.c: 338: UCONbits.USBEN = 1;
	bsf	((c:3941)),c,3	;volatile
	line	340
	
l2689:; BSR set to: 15

;usb_device.c: 340: USBProtocolResetHandler();
	call	_USBProtocolResetHandler	;wreg free
	line	341
	
l2691:
;usb_device.c: 341: usb_device_state = 1;
	movlw	low(01h)
	movwf	((c:_usb_device_state)),c
	line	342
	
l2693:
;usb_device.c: 342: DeviceIsSoftDetached = 0;
	clrf	((c:_DeviceIsSoftDetached)),c
	line	343
	
l278:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBSoftAttach
	__end_of_USBSoftAttach:
	signat	_USBSoftAttach,89
	global	_USBProtocolResetHandler

;; *************** function _USBProtocolResetHandler *****************
;; Defined at:
;;		line 722 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ClearWatchdog
;;		_LoadBDTandSetUOWN
;;		_USBCBInitEP
;; This function is called by:
;;		_USBSoftAttach
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	line	722
global __ptext33
__ptext33:
psect	text33
	file	"../demo_src/usb_device.c"
	line	722
	global	__size_of_USBProtocolResetHandler
	__size_of_USBProtocolResetHandler	equ	__end_of_USBProtocolResetHandler-_USBProtocolResetHandler
	
_USBProtocolResetHandler:
;incstack = 0
	opt	stack 26
	line	724
	
l2459:
;usb_device.c: 724: usb_device_state = 3;
	movlw	low(03h)
	movwf	((c:_usb_device_state)),c
	line	725
	
l2461:
;usb_device.c: 725: UEIE = 0;
	movlb	15	; () banked
	clrf	((3895))&0ffh	;volatile
	line	726
	
l2463:; BSR set to: 15

;usb_device.c: 726: UIR = 0;
	clrf	((c:3938)),c	;volatile
	line	727
;usb_device.c: 727: UIE = 0b01111011;
	movlw	low(07Bh)
	movwf	((3894))&0ffh	;volatile
	line	728
	
l2465:; BSR set to: 15

;usb_device.c: 728: UADDR = 0x00;
	clrf	((3896))&0ffh	;volatile
	line	729
	
l2467:; BSR set to: 15

;usb_device.c: 729: UEP1=0x00;UEP2=0x00;UEP3=0x00; UEP4=0x00;UEP5=0x00;UEP6=0x00;UEP7=0x00;;
	clrf	((3879))&0ffh	;volatile
	
l2469:; BSR set to: 15

	clrf	((3880))&0ffh	;volatile
	
l2471:; BSR set to: 15

	clrf	((3881))&0ffh	;volatile
	
l2473:; BSR set to: 15

	clrf	((3882))&0ffh	;volatile
	
l2475:; BSR set to: 15

	clrf	((3883))&0ffh	;volatile
	
l2477:; BSR set to: 15

	clrf	((3884))&0ffh	;volatile
	
l2479:; BSR set to: 15

	clrf	((3885))&0ffh	;volatile
	line	730
;usb_device.c: 730: UEP0 = 0x06|0x10;
	movlw	low(016h)
	movwf	((3878))&0ffh	;volatile
	line	731
	
l2481:; BSR set to: 15

;usb_device.c: 731: UCONbits.PPBRST = 1;
	bsf	((c:3941)),c,6	;volatile
	line	732
;usb_device.c: 732: while(UIRbits.TRNIF == 1)
	goto	l2485
	
l328:
	line	734
;usb_device.c: 733: {
;usb_device.c: 734: UIRbits.TRNIF = 0;
	bcf	((c:3938)),c,3	;volatile
	line	735
	
l2483:
;usb_device.c: 735: ClearWatchdog();
	call	_ClearWatchdog	;wreg free
	line	732
	
l2485:
	btfsc	((c:3938)),c,3	;volatile
	goto	u1261
	goto	u1260
u1261:
	goto	l328
u1260:
	
l329:
	line	737
;usb_device.c: 736: }
;usb_device.c: 737: UCONbits.PPBRST = 0;
	bcf	((c:3941)),c,6	;volatile
	line	738
;usb_device.c: 738: UCONbits.PKTDIS = 0;
	bcf	((c:3941)),c,4	;volatile
	line	741
	
l2487:
;usb_device.c: 741: TempBDT.Stat._byte = 0x00|0x04;
	movlw	low(04h)
	movwf	((c:_TempBDT)),c
	line	742
	
l2489:
;usb_device.c: 742: LoadBDTandSetUOWN(0);
	movlw	(0)&0ffh
	
	call	_LoadBDTandSetUOWN
	line	743
	
l2491:
;usb_device.c: 743: EP0OutOddNeedsArmingNext = 1;
	movlw	low(01h)
	movwf	((c:_EP0OutOddNeedsArmingNext)),c
	line	744
	
l2493:
;usb_device.c: 744: usb_stat._byte = 0x00;
	clrf	((c:_usb_stat)),c
	line	745
	
l2495:
;usb_device.c: 745: usb_active_cfg = 0;
	clrf	((c:_usb_active_cfg)),c
	line	746
	
l2497:
;usb_device.c: 746: USBCBInitEP(0);
	movlw	(0)&0ffh
	
	call	_USBCBInitEP
	line	748
	
l330:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBProtocolResetHandler
	__end_of_USBProtocolResetHandler:
	signat	_USBProtocolResetHandler,89
	global	_USBCBInitEP

;; *************** function _USBCBInitEP *****************
;; Defined at:
;;		line 1021 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;  Configuratio    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Configuratio    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_HIDInitEP
;;		_UserInit
;; This function is called by:
;;		_USBProtocolResetHandler
;;		_USBStdSetCfgHandler
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	1021
global __ptext34
__ptext34:
psect	text34
	file	"../demo_src/main.c"
	line	1021
	global	__size_of_USBCBInitEP
	__size_of_USBCBInitEP	equ	__end_of_USBCBInitEP-_USBCBInitEP
	
_USBCBInitEP:
;incstack = 0
	opt	stack 26
;USBCBInitEP@ConfigurationIndex stored from wreg
	movwf	((c:USBCBInitEP@ConfigurationIndex)),c
	line	1030
	
l2353:
;main.c: 1030: if(ConfigurationIndex == 1)
		decf	((c:USBCBInitEP@ConfigurationIndex)),c,w
	btfss	status,2
	goto	u1151
	goto	u1150

u1151:
	goto	l109
u1150:
	line	1036
	
l2355:
;main.c: 1031: {
;main.c: 1036: HIDInitEP();
	call	_HIDInitEP	;wreg free
	line	1039
	
l2357:; BSR set to: 4

;main.c: 1039: UserInit();
	call	_UserInit	;wreg free
	line	1046
	
l109:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBCBInitEP
	__end_of_USBCBInitEP:
	signat	_USBCBInitEP,4217
	global	_UserInit

;; *************** function _UserInit *****************
;; Defined at:
;;		line 248 in file "../demo_src/boot_18fxxjxx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 34/F
;;		On exit  : 34/4
;;		Unchanged: 34/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InitializeSystem
;;		_USBCBInitEP
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/boot_18fxxjxx.c"
	line	248
global __ptext35
__ptext35:
psect	text35
	file	"../demo_src/boot_18fxxjxx.c"
	line	248
	global	__size_of_UserInit
	__size_of_UserInit	equ	__end_of_UserInit-_UserInit
	
_UserInit:
;incstack = 0
	opt	stack 26
	line	251
	
l2321:
;boot_18fxxjxx.c: 251: MaxPageToErase = ((((uint32_t)0x00FFF8)/1024) - 1);
	movlw	low(03Eh)
	movwf	((c:_MaxPageToErase)),c
	line	252
;boot_18fxxjxx.c: 252: ProgramMemStopAddress = ((((((uint32_t)0x00FFF8)/1024) - 1) + 1) * 1024);
	movlw	low(0FC00h)
	movwf	((c:_ProgramMemStopAddress)),c
	movlw	high(0FC00h)
	movwf	((c:_ProgramMemStopAddress+1)),c
	movlw	low highword(0FC00h)
	movwf	((c:_ProgramMemStopAddress+2)),c
	movlw	high highword(0FC00h)
	movwf	((c:_ProgramMemStopAddress+3)),c
	line	253
	
l2323:
;boot_18fxxjxx.c: 253: BootState = 0x00;
	clrf	((c:_BootState)),c
	line	254
	
l2325:
;boot_18fxxjxx.c: 254: ProgrammedPointer = 0xFFFFFFFF;
	setf	((c:_ProgrammedPointer)),c
	setf	((c:_ProgrammedPointer+1)),c
	setf	((c:_ProgrammedPointer+2)),c
	setf	((c:_ProgrammedPointer+3)),c
	line	255
	
l2327:
;boot_18fxxjxx.c: 255: BufferedDataIndex = 0;
	clrf	((c:_BufferedDataIndex)),c
	line	256
	
l608:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_UserInit
	__end_of_UserInit:
	signat	_UserInit,89
	global	_HIDInitEP

;; *************** function _HIDInitEP *****************
;; Defined at:
;;		line 157 in file "../demo_src/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 3F/4
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCBInitEP
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device_hid.c"
	line	157
global __ptext36
__ptext36:
psect	text36
	file	"../demo_src/usb_device_hid.c"
	line	157
	global	__size_of_HIDInitEP
	__size_of_HIDInitEP	equ	__end_of_HIDInitEP-_HIDInitEP
	
_HIDInitEP:
;incstack = 0
	opt	stack 26
	line	159
	
l2329:
;usb_device_hid.c: 159: hid_rpt_rx_len =0;
	clrf	((c:_hid_rpt_rx_len)),c
	line	161
	
l2331:
;usb_device_hid.c: 161: UEP1 = 0x0E|0x10;
	movlw	low(01Eh)
	movlb	15	; () banked
	movwf	((3879))&0ffh	;volatile
	line	164
;usb_device_hid.c: 164: ep1Bo.Cnt = sizeof(hid_report_out);
	movlw	low(040h)
	movlb	4	; () banked
	movwf	(0+(1036+01h))&0ffh	;volatile
	line	165
	
l2333:; BSR set to: 4

;usb_device_hid.c: 165: ep1Bo.ADR = (uint8_t*)&hid_report_out;
		movlw	low(1068)
	movwf	(0+(1036+02h))&0ffh	;volatile
	movlw	high(1068)
	movwf	(1+(1036+02h))&0ffh	;volatile

	line	166
	
l2335:; BSR set to: 4

;usb_device_hid.c: 166: ep1Bo.Stat._byte = 0x00|0x08;
	movlw	low(08h)
	movwf	((1036))&0ffh	;volatile
	line	167
	
l2337:; BSR set to: 4

;usb_device_hid.c: 167: ep1Bo.Stat._byte |= 0x80;
	bsf	(0+(7/8)+(1036))&0ffh,(7)&7	;volatile
	line	180
	
l2339:; BSR set to: 4

;usb_device_hid.c: 180: ep1Bi.ADR = (uint8_t*)&hid_report_in;
		movlw	low(1132)
	movwf	(0+(1040+02h))&0ffh	;volatile
	movlw	high(1132)
	movwf	(1+(1040+02h))&0ffh	;volatile

	line	181
	
l2341:; BSR set to: 4

;usb_device_hid.c: 181: ep1Bi.Stat._byte = 0x00|0x40;
	movlw	low(040h)
	movwf	((1040))&0ffh	;volatile
	line	183
	
l524:; BSR set to: 4

	return	;funcret
	opt stack 0
GLOBAL	__end_of_HIDInitEP
	__end_of_HIDInitEP:
	signat	_HIDInitEP,89
	global	_LoadBDTandSetUOWN

;; *************** function _LoadBDTandSetUOWN *****************
;; Defined at:
;;		line 1561 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;  BDTIndexToLo    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  BDTIndexToLo    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBProtocolResetHandler
;;		_USBCtrlEPServiceComplete
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/usb_device.c"
	line	1561
global __ptext37
__ptext37:
psect	text37
	file	"../demo_src/usb_device.c"
	line	1561
	global	__size_of_LoadBDTandSetUOWN
	__size_of_LoadBDTandSetUOWN	equ	__end_of_LoadBDTandSetUOWN-_LoadBDTandSetUOWN
	
_LoadBDTandSetUOWN:; BSR set to: 4

;incstack = 0
	opt	stack 27
;LoadBDTandSetUOWN@BDTIndexToLoad stored from wreg
	movwf	((c:LoadBDTandSetUOWN@BDTIndexToLoad)),c
	line	1569
	
l2359:
;usb_device.c: 1563: static volatile BDT* pBDTEntry;
;usb_device.c: 1569: TempBDT.Cnt = 8;
	movlw	low(08h)
	movwf	(0+((c:_TempBDT)+01h)),c
	line	1570
;usb_device.c: 1570: TempBDT.ADR = (uint8_t*)&EP0OutOddBuf[0];
		movlw	low(1052)
	movwf	(0+((c:_TempBDT)+02h)),c
	movlw	high(1052)
	movwf	(1+((c:_TempBDT)+02h)),c

	line	1571
	
l2361:
;usb_device.c: 1571: if(BDTIndexToLoad == 0)
	movf	((c:LoadBDTandSetUOWN@BDTIndexToLoad)),c,w
	btfss	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l2365
u1160:
	line	1573
	
l2363:
;usb_device.c: 1572: {
;usb_device.c: 1573: TempBDT.ADR = (uint8_t*)&EP0OutEvenBuf[0];
		movlw	low(1044)
	movwf	(0+((c:_TempBDT)+02h)),c
	movlw	high(1044)
	movwf	(1+((c:_TempBDT)+02h)),c

	line	1574
;usb_device.c: 1574: pBDTEntry = (volatile BDT*)0x400;
		movlw	low(0400h)
	movwf	((c:LoadBDTandSetUOWN@pBDTEntry)),c
	movlw	high(0400h)
	movwf	((c:LoadBDTandSetUOWN@pBDTEntry+1)),c

	line	1575
;usb_device.c: 1575: }
	goto	l2367
	line	1578
	
l2365:
;usb_device.c: 1576: else
;usb_device.c: 1577: {
;usb_device.c: 1578: pBDTEntry = (volatile BDT*)(0x400 + 4);
		movlw	low(0404h)
	movwf	((c:LoadBDTandSetUOWN@pBDTEntry)),c
	movlw	high(0404h)
	movwf	((c:LoadBDTandSetUOWN@pBDTEntry+1)),c

	line	1582
	
l2367:
;usb_device.c: 1579: }
;usb_device.c: 1582: *pBDTEntry = TempBDT;
	movff	(c:LoadBDTandSetUOWN@pBDTEntry),fsr2l
	movff	(c:LoadBDTandSetUOWN@pBDTEntry+1),fsr2h
	movff	(c:_TempBDT),postinc2
	movff	(c:_TempBDT+1),postinc2
	movff	(c:_TempBDT+2),postinc2
	movff	(c:_TempBDT+3),postinc2

	line	1585
	
l2369:
;usb_device.c: 1585: pBDTEntry->Stat.UOWN = 1;
	movff	(c:LoadBDTandSetUOWN@pBDTEntry),fsr2l
	movff	(c:LoadBDTandSetUOWN@pBDTEntry+1),fsr2h
	bsf	c:indf2,7
	line	1586
	
l445:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LoadBDTandSetUOWN
	__end_of_LoadBDTandSetUOWN:
	signat	_LoadBDTandSetUOWN,4217
	global	_USBDisableWithLongDelay

;; *************** function _USBDisableWithLongDelay *****************
;; Defined at:
;;		line 1593 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayRoutine
;; This function is called by:
;;		_USBDeviceInit
;;		_USBSoftAttach
;;		_ResetDeviceCleanly
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	1593
global __ptext38
__ptext38:
psect	text38
	file	"../demo_src/usb_device.c"
	line	1593
	global	__size_of_USBDisableWithLongDelay
	__size_of_USBDisableWithLongDelay	equ	__end_of_USBDisableWithLongDelay-_USBDisableWithLongDelay
	
_USBDisableWithLongDelay:
;incstack = 0
	opt	stack 24
	line	1595
	
l2453:
;usb_device.c: 1595: UCONbits.SUSPND = 0;
	bcf	((c:3941)),c,1	;volatile
	line	1596
;usb_device.c: 1596: UCON = 0x00;
	clrf	((c:3941)),c	;volatile
	line	1597
	
l2455:
;usb_device.c: 1597: DelayRoutine(0xFFFF);
	movlw	high(0FFFFh)
	movwf	((c:DelayRoutine@DelayAmount+1)),c
	setf	((c:DelayRoutine@DelayAmount)),c
	call	_DelayRoutine	;wreg free
	line	1598
	
l2457:
;usb_device.c: 1598: usb_device_state = 0;
	clrf	((c:_usb_device_state)),c
	line	1599
	
l448:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USBDisableWithLongDelay
	__end_of_USBDisableWithLongDelay:
	signat	_USBDisableWithLongDelay,89
	global	_DelayRoutine

;; *************** function _DelayRoutine *****************
;; Defined at:
;;		line 1603 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;  DelayAmount     2    0[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ClearWatchdog
;; This function is called by:
;;		_InitializeSystem
;;		_USBCBWakeFromSuspend
;;		_USBDisableWithLongDelay
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	1603
global __ptext39
__ptext39:
psect	text39
	file	"../demo_src/usb_device.c"
	line	1603
	global	__size_of_DelayRoutine
	__size_of_DelayRoutine	equ	__end_of_DelayRoutine-_DelayRoutine
	
_DelayRoutine:
;incstack = 0
	opt	stack 25
	line	1605
	
l2345:
;usb_device.c: 1605: while(DelayAmount)
	goto	l2351
	line	1607
	
l2347:
;usb_device.c: 1606: {
;usb_device.c: 1607: ClearWatchdog();
	call	_ClearWatchdog	;wreg free
	line	1608
	
l2349:
;usb_device.c: 1608: DelayAmount--;
	decf	((c:DelayRoutine@DelayAmount)),c
	btfss	status,0
	decf	((c:DelayRoutine@DelayAmount+1)),c
	line	1605
	
l2351:
	movf	((c:DelayRoutine@DelayAmount)),c,w
iorwf	((c:DelayRoutine@DelayAmount+1)),c,w
	btfss	status,2
	goto	u1141
	goto	u1140

u1141:
	goto	l2347
u1140:
	line	1610
	
l454:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DelayRoutine
	__end_of_DelayRoutine:
	signat	_DelayRoutine,4217
	global	_ClearWatchdog

;; *************** function _ClearWatchdog *****************
;; Defined at:
;;		line 1620 in file "../demo_src/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBProtocolResetHandler
;;		_DelayRoutine
;;		_ProcessIO
;;		_SignFlash
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	line	1620
global __ptext40
__ptext40:
psect	text40
	file	"../demo_src/usb_device.c"
	line	1620
	global	__size_of_ClearWatchdog
	__size_of_ClearWatchdog	equ	__end_of_ClearWatchdog-_ClearWatchdog
	
_ClearWatchdog:
;incstack = 0
	opt	stack 25
	line	1622
	
l2343:
# 1622 "../demo_src/usb_device.c"
clrwdt ;# 
psect	text40
	line	1623
	
l457:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ClearWatchdog
	__end_of_ClearWatchdog:
	signat	_ClearWatchdog,89
	global	_BlinkUSBStatus

;; *************** function _BlinkUSBStatus *****************
;; Defined at:
;;		line 761 in file "../demo_src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BootMain
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	file	"../demo_src/main.c"
	line	761
global __ptext41
__ptext41:
psect	text41
	file	"../demo_src/main.c"
	line	761
	global	__size_of_BlinkUSBStatus
	__size_of_BlinkUSBStatus	equ	__end_of_BlinkUSBStatus-_BlinkUSBStatus
	
_BlinkUSBStatus:
;incstack = 0
	opt	stack 29
	line	766
	
l3111:
;main.c: 764: static unsigned int led_count = 0;
;main.c: 766: led_count--;
	decf	((c:BlinkUSBStatus@led_count)),c
	btfss	status,0
	decf	((c:BlinkUSBStatus@led_count+1)),c
	line	767
	
l3113:
;main.c: 767: if(led_count == 0)
	movf	((c:BlinkUSBStatus@led_count)),c,w
iorwf	((c:BlinkUSBStatus@led_count+1)),c,w
	btfss	status,2
	goto	u2051
	goto	u2050

u2051:
	goto	l83
u2050:
	line	769
	
l3115:
;main.c: 768: {
;main.c: 769: led_count = 0x4E00;
	movlw	high(04E00h)
	movwf	((c:BlinkUSBStatus@led_count+1)),c
	movlw	low(04E00h)
	movwf	((c:BlinkUSBStatus@led_count)),c
	line	770
	
l3117:
;main.c: 770: if(usb_device_state < 6)
		movlw	06h-0
	cpfslt	((c:_usb_device_state)),c
	goto	u2061
	goto	u2060

u2061:
	goto	l3121
u2060:
	line	772
	
l3119:
;main.c: 771: {
;main.c: 772: LATEbits.LATE1 = 1;
	bsf	((c:3981)),c,1	;volatile
	line	773
;main.c: 773: }
	goto	l83
	line	776
	
l3121:
;main.c: 774: else
;main.c: 775: {
;main.c: 776: LATEbits.LATE1 = !LATEbits.LATE1;
	btfss	((c:3981)),c,1	;volatile
	goto	u2071
	goto	u2070
u2071:
	clrf	(??_BlinkUSBStatus+0+0)&0ffh,c
	incf	(??_BlinkUSBStatus+0+0)&0ffh,c
	goto	u2088
u2070:
	clrf	(??_BlinkUSBStatus+0+0)&0ffh,c
u2088:
	rlncf	(??_BlinkUSBStatus+0+0),c
	movf	((c:3981)),c,w	;volatile
	xorwf	(??_BlinkUSBStatus+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_BlinkUSBStatus+0+0),c,w
	movwf	((c:3981)),c	;volatile
	line	780
	
l83:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_BlinkUSBStatus
	__end_of_BlinkUSBStatus:
	signat	_BlinkUSBStatus,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
