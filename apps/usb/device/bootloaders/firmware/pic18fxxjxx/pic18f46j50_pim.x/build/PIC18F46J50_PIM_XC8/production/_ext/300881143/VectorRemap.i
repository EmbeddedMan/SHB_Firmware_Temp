# 1 "../demo_src/VectorRemap.asm"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../demo_src/VectorRemap.asm" 2
;
# 20 "../demo_src/VectorRemap.asm"
    ;

    PSECT HiVector,class=CODE,delta=1,abs

        org 0x08
    goto 0x1008 ;Resides at 0x0008 (hardware high priority interrupt vector), and causes PC to jump to 0x1008 upon a high priority interrupt event


    ;
    ;

    PSECT LoVector,class=CODE,delta=1,abs

        org 0x18
    goto 0x1018 ;Resides at 0x0018 (hardware low priority interrupt vector), and causes PC to jump to 0x1018 upon a low priority interrupt event
    goto 0x30 ;Resides at 0x001C



    end
