#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-PIC18F46J50_PIM_XC8.mk)" "nbproject/Makefile-local-PIC18F46J50_PIM_XC8.mk"
include nbproject/Makefile-local-PIC18F46J50_PIM_XC8.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC18F46J50_PIM_XC8
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../demo_src/main.c ../demo_src/usb_descriptors.c ../demo_src/usb_device.c ../demo_src/usb_device_hid.c ../demo_src/VectorRemap.asm ../demo_src/boot_18fxxjxx.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/300881143/main.p1 ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ${OBJECTDIR}/_ext/300881143/usb_device.p1 ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1 ${OBJECTDIR}/_ext/300881143/VectorRemap.obj ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/300881143/main.p1.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d ${OBJECTDIR}/_ext/300881143/usb_device.p1.d ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1.d ${OBJECTDIR}/_ext/300881143/VectorRemap.obj.d ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/300881143/main.p1 ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ${OBJECTDIR}/_ext/300881143/usb_device.p1 ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1 ${OBJECTDIR}/_ext/300881143/VectorRemap.obj ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1

# Source Files
SOURCEFILES=../demo_src/main.c ../demo_src/usb_descriptors.c ../demo_src/usb_device.c ../demo_src/usb_device_hid.c ../demo_src/VectorRemap.asm ../demo_src/boot_18fxxjxx.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-PIC18F46J50_PIM_XC8.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46J50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/300881143/main.p1: ../demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/main.p1 ../demo_src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/main.d ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_descriptors.p1: ../demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ../demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_descriptors.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_device.p1: ../demo_src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/usb_device.p1 ../demo_src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_device.d ${OBJECTDIR}/_ext/300881143/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_device_hid.p1: ../demo_src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/usb_device_hid.p1 ../demo_src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_device_hid.d ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1: ../demo_src/boot_18fxxjxx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1 ../demo_src/boot_18fxxjxx.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.d ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/300881143/main.p1: ../demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/main.p1 ../demo_src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/main.d ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_descriptors.p1: ../demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ../demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_descriptors.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_device.p1: ../demo_src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/usb_device.p1 ../demo_src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_device.d ${OBJECTDIR}/_ext/300881143/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_device_hid.p1: ../demo_src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/usb_device_hid.p1 ../demo_src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_device_hid.d ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1: ../demo_src/boot_18fxxjxx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1 ../demo_src/boot_18fxxjxx.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.d ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/boot_18fxxjxx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/300881143/VectorRemap.obj: ../demo_src/VectorRemap.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/VectorRemap.obj.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/VectorRemap.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=icd3  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/300881143/VectorRemap.obj  ../demo_src/VectorRemap.asm 
	@-${MV} ${OBJECTDIR}/_ext/300881143/VectorRemap.d ${OBJECTDIR}/_ext/300881143/VectorRemap.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/VectorRemap.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/300881143/VectorRemap.obj: ../demo_src/VectorRemap.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/VectorRemap.obj.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/VectorRemap.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/300881143/VectorRemap.obj  ../demo_src/VectorRemap.asm 
	@-${MV} ${OBJECTDIR}/_ext/300881143/VectorRemap.d ${OBJECTDIR}/_ext/300881143/VectorRemap.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/VectorRemap.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=icd3  -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.map  -DXPRJ_PIC18F46J50_PIM_XC8=$(CND_CONF)  --double=32 --float=32 --emi=wordwrite --rom=default,-1000-FFF7 --opt=+asm,-asmfile,-speed,+space,-debug,-local --addrqual=require --mode=pro -P -N255 --warn=0 --cci --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,-clear,-init,+keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pic18f46j50_pim.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC18F46J50_PIM_XC8
	${RM} -r dist/PIC18F46J50_PIM_XC8

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
