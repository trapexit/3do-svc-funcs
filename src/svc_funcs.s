        AREA |C$$code|, CODE, READONLY
|x$codeseg|

        IMPORT KernelBase

SVC_FUNCS_VERSION DCB "1.0.0",0
        EXPORT SVC_FUNCS_VERSION
        ;; user functions
	EXPORT svc_RemHead
	EXPORT svc_AddHead
	EXPORT svc_RemTail
	EXPORT svc_AddTail
	EXPORT svc_TailInsertNode
	EXPORT svc_RemNode
	EXPORT svc_AllocMemFromMemLists
	EXPORT svc_FreeMemToMemLists
	EXPORT svc_InitList
	EXPORT svc_FindNamedNode
	EXPORT svc_ScavengeMem
	EXPORT svc_LookupItem
	EXPORT svc_memset
	EXPORT svc_memcpy
	EXPORT svc_GetPageSize
	EXPORT svc_CheckItem
	EXPORT svc_UniversalInsertNode
	EXPORT svc_USec2Ticks
	EXPORT svc_SetNodePri
	EXPORT svc_InsertNodeFromHead
	EXPORT svc_vfprintf
	EXPORT svc_GetSysErr
	EXPORT svc_AllocMemFromMemList
	EXPORT svc_FreeMemToMemList
	EXPORT svc_AllocMemList
	EXPORT svc_FreeMemList
	EXPORT svc_ItemOpened
	EXPORT svc_ExitTask
	EXPORT svc_FindImage
	EXPORT svc_GetMemAllocAlignment
	EXPORT svc_GetMemTrackSize
	EXPORT svc_externalCheckIO
	EXPORT svc_IsRamAddr
	EXPORT svc_IsMemWritable
	EXPORT svc_FindTagArg
	EXPORT svc_NextTagArg
	EXPORT svc_internalDoIO
	EXPORT svc_internalWaitIO
	EXPORT svc_internalWaitPort
	EXPORT svc_internalReleaseDirectoryBuffer
	EXPORT svc_internalGetDirectoryBuffer
	EXPORT svc_internalGetDirectoryCache
	EXPORT svc_SectorECC
	EXPORT svc_SetSysInfo
	EXPORT svc_QuerySysInfo
	EXPORT svc_internalReportEvent
	EXPORT svc_internalRegisterSingleVBLACS
	EXPORT svc_internalRegisterPeriodicVBLACS
	EXPORT svc_internalPendACS
	EXPORT svc_internalAllocACS
	EXPORT svc_internalFreeSignal
	EXPORT svc_internalDeleteItem
        EXPORT svc_LockItem
	EXPORT svc_internalLockSemaphore
        EXPORT svc_UnlockItem
	EXPORT svc_internalUnlockSemaphore
	EXPORT svc_TimeStamp
	EXPORT svc_TagProcessor
	EXPORT svc_Switch
	EXPORT svc_internalSignal
	EXPORT svc_ValidateMem
	EXPORT svc_internalControlSuperMem
	EXPORT svc_internalAbortIO
	EXPORT svc_internalCompleteIO
	EXPORT svc_GetItem
	EXPORT svc_internalSendIO
	EXPORT svc_FirqInterruptControl
	EXPORT svc_DebugTrigger
	EXPORT svc_Enable
	EXPORT svc_Disable
	EXPORT svc_internalPutMsg
        ;; swi / priv functions
	EXPORT svc_internalCreateItem
	EXPORT svc_internalWait
	EXPORT svc_externalSignal
	EXPORT svc_externalDeleteItem
	EXPORT svc_internalFindItem
	EXPORT svc_internalOpenItem
	EXPORT svc_externalUnlockSemaphore
	EXPORT svc_externalLockSemaphore
	EXPORT svc_externalCloseItem
	EXPORT svc_internalYield
	EXPORT svc_externalSetItemPriority
	EXPORT svc_internalForbid
	EXPORT svc_internalPermit
	EXPORT svc_internalAllocMemBlocks
	EXPORT svc_kprintf
	EXPORT svc_internalGetThisMsg
	EXPORT svc_externalPutMsg
	EXPORT svc_ReadHardwareRandomNumber
	EXPORT svc_externalReplyMsg
	EXPORT svc_internalGetMsg
	EXPORT svc_externalControlMem
	EXPORT svc_internalAllocSignal
	EXPORT svc_externalFreeSignal
	EXPORT svc_internalSetFunction
	EXPORT svc_externalSendIO
	EXPORT svc_externalAbortIO
	EXPORT svc_RSACheck
	EXPORT svc_wcopy
	EXPORT svc_externalSetItemOwner
	EXPORT svc_callbacksuper
	EXPORT svc_MayGetChar
	EXPORT svc_externalSystemScavengeMem
	EXPORT svc_externalCompleteIO
	EXPORT svc_internalDiscOsVersion
	EXPORT svc_externalFindAndOpenItem
	EXPORT svc_externalDoIO
	EXPORT svc_SampleSystemTime
	EXPORT svc_externalSetExitStatus
	EXPORT svc_externalWaitPort
	EXPORT svc_externalWaitIO
	EXPORT svc_internalPrint3DOHeader

        ;; user functions
svc_RemHead
	mov r12,#1
	b call_func_in_r12
svc_AddHead
	mov r12,#2
	b call_func_in_r12
svc_RemTail
	mov r12,#3
	b call_func_in_r12
svc_AddTail
	mov r12,#4
	b call_func_in_r12
svc_TailInsertNode
	mov r12,#5
	b call_func_in_r12
svc_RemNode
	mov r12,#6
	b call_func_in_r12
svc_AllocMemFromMemLists
	mov r12,#7
	b call_func_in_r12
svc_FreeMemToMemLists
	mov r12,#8
	b call_func_in_r12
svc_InitList
	mov r12,#9
	b call_func_in_r12
svc_FindNamedNode
	mov r12,#10
	b call_func_in_r12
svc_ScavengeMem
	mov r12,#11
	b call_func_in_r12
svc_LookupItem
	mov r12,#12
	b call_func_in_r12
svc_memset
	mov r12,#13
	b call_func_in_r12
svc_memcpy
	mov r12,#14
	b call_func_in_r12
svc_GetPageSize
	mov r12,#15
	b call_func_in_r12
svc_CheckItem
	mov r12,#16
	b call_func_in_r12
svc_UniversalInsertNode
	mov r12,#17
	b call_func_in_r12
svc_USec2Ticks
	mov r12,#18
	b call_func_in_r12
svc_SetNodePri
	mov r12,#19
	b call_func_in_r12
svc_InsertNodeFromHead
	mov r12,#20
	b call_func_in_r12
svc_vfprintf
	mov r12,#21
	b call_func_in_r12
svc_GetSysErr
	mov r12,#22
	b call_func_in_r12
svc_AllocMemFromMemList
	mov r12,#26
	b call_func_in_r12
svc_FreeMemToMemList
	mov r12,#27
	b call_func_in_r12
svc_AllocMemList
	mov r12,#28
	b call_func_in_r12
svc_FreeMemList
	mov r12,#29
	b call_func_in_r12
svc_ItemOpened
	mov r12,#32
	b call_func_in_r12
svc_ExitTask
	mov r12,#37
	b call_func_in_r12
svc_FindImage
	mov r12,#38
	b call_func_in_r12
svc_GetMemAllocAlignment
	mov r12,#39
	b call_func_in_r12
svc_GetMemTrackSize
	mov r12,#40
	b call_func_in_r12
svc_externalCheckIO
	mov r12,#41
	b call_func_in_r12
svc_IsRamAddr
	mov r12,#42
	b call_func_in_r12
svc_IsMemWritable
	mov r12,#43
	b call_func_in_r12
svc_FindTagArg
	mov r12,#44
	b call_func_in_r12
svc_NextTagArg
	mov r12,#45
	b call_func_in_r12
svc_internalDoIO
	mov r12,#46
	b call_func_in_r12
svc_internalWaitIO
	mov r12,#47
	b call_func_in_r12
svc_internalWaitPort
	mov r12,#48
	b call_func_in_r12
svc_internalReleaseDirectoryBuffer
        mov r12,#49
        b call_func_in_r12
svc_internalGetDirectoryBuffer
        mov r12, #51
        b call_func_in_r12
svc_internalGetDirectoryCache
        mov r12, #51
        b call_func_in_r12
svc_SectorECC
        mov r12, #52
        b call_func_in_r12
svc_SetSysInfo
        mov r12,#53
        b call_func_in_r12
svc_QuerySysInfo
        mov r12,#54
        b call_func_in_r12
svc_internalReportEvent
        mov r12,#55
        b call_func_in_r12
svc_internalRegisterSingleVBLACS
        mov r12,#56
        b call_func_in_r12
svc_internalRegisterPeriodicVBLACS
        mov r12,#57
        b call_func_in_r12
svc_internalPendACS
        mov r12,#58
        b call_func_in_r12
svc_internalAllocACS
        mov r12,#59
        b call_func_in_r12
svc_internalFreeSignal
        mov r12,#60
        b call_func_in_r12
svc_internalDeleteItem
        mov r12,#61
        b call_func_in_r12
svc_LockItem
svc_internalLockSemaphore
        mov r12,#62
        b call_func_in_r12
svc_UnlockItem
svc_internalUnlockSemaphore
        mov r12,#63
        b call_func_in_r12
svc_TimeStamp
        mov r12,#64
        b call_func_in_r12
svc_TagProcessor
        mov r12,#65
        b call_func_in_r12
svc_Switch
        mov r12,#66
        b call_func_in_r12
;; svc_IsRamAddr
;;         mov r12,#67
;;         b call_func_in_r12
svc_internalSignal
        mov r12,#68
        b call_func_in_r12
svc_ValidateMem
        mov r12,#69
        b call_func_in_r12
svc_internalControlSuperMem
        mov r12,#70
        b call_func_in_r12
svc_internalAbortIO
        mov r12,#71
        b call_func_in_r12
svc_internalCompleteIO
        mov r12,#72
        b call_func_in_r12
svc_GetItem
        mov r12,#73
        b call_func_in_r12
svc_internalSendIO
        mov r12,#74
        b call_func_in_r12
svc_FirqInterruptControl
        mov r12,#75
        b call_func_in_r12
svc_DebugTrigger
        mov r12,#76
        b call_func_in_r12
svc_Enable
        mov r12,#77
        b call_func_in_r12
svc_Disable
        mov r12,#78
        b call_func_in_r12
svc_internalPutMsg
        mov r12,#79
        b call_func_in_r12


        ;; SWI / priv functions
svc_internalCreateItem
        mov r12,#0
        b call_swi_in_r12
svc_internalWait
        mov r12,#1
        b call_swi_in_r12
svc_externalSignal
        mov r12,#2
        b call_swi_in_r12
svc_externalDeleteItem
        mov r12,#3
        b call_swi_in_r12
svc_internalFindItem
        mov r12,#4
        b call_swi_in_r12
svc_internalOpenItem
        mov r12,#5
        b call_swi_in_r12
svc_externalUnlockSemaphore
        mov r12,#6
        b call_swi_in_r12
svc_externalLockSemaphore
        mov r12,#7
        b call_swi_in_r12
svc_externalCloseItem
        mov r12,#8
        b call_swi_in_r12
svc_internalYield
        mov r12,#9
        b call_swi_in_r12
svc_externalSetItemPriority
        mov r12,#10
        b call_swi_in_r12
svc_internalForbid
        mov r12,#11
        b call_swi_in_r12
svc_internalPermit
        mov r12,#12
        b call_swi_in_r12
svc_internalAllocMemBlocks
        mov r12,#13
        b call_swi_in_r12
svc_kprintf
        mov r12,#14
        b call_swi_in_r12
svc_internalGetThisMsg
        mov r12,#15
        b call_swi_in_r12
svc_externalPutMsg
        mov r12,#16
        b call_swi_in_r12
svc_ReadHardwareRandomNumber
        mov r12,#17
        b call_swi_in_r12
svc_externalReplyMsg
        mov r12,#18
        b call_swi_in_r12
svc_internalGetMsg
        mov r12,#19
        b call_swi_in_r12
svc_externalControlMem
        mov r12,#20
        b call_swi_in_r12
svc_internalAllocSignal
        mov r12,#21
        b call_swi_in_r12
svc_externalFreeSignal
        mov r12,#22
        b call_swi_in_r12
svc_internalSetFunction
        mov r12,#23
        b call_swi_in_r12
svc_externalSendIO
        mov r12,#24
        b call_swi_in_r12
svc_externalAbortIO
        mov r12,#25
        b call_swi_in_r12
svc_RSACheck
        mov r12,#26
        b call_swi_in_r12
svc_wcopy
        mov r12,#27
        b call_swi_in_r12
svc_externalSetItemOwner
        mov r12,#28
        b call_swi_in_r12
svc_callbacksuper
        mov r12,#29
        b call_swi_in_r12
svc_MayGetChar
        mov r12,#30
        b call_swi_in_r12
;; svc_illegal
;;         mov r12,#31
;;         b call_swi_in_r12
;; svc_illegal
;;         mov r12,#32
;;         b call_swi_in_r12
svc_externalSystemScavengeMem
        mov r12,#33
        b call_swi_in_r12
svc_externalCompleteIO
        mov r12,#34
        b call_swi_in_r12
svc_internalDiscOsVersion
        mov r12,#35
        b call_swi_in_r12
svc_externalFindAndOpenItem
        mov r12,#36
        b call_swi_in_r12
svc_externalDoIO
        mov r12,#37
        b call_swi_in_r12
svc_SampleSystemTime
        mov r12,#38
        b call_swi_in_r12
svc_externalSetExitStatus
        mov r12,#39
        b call_swi_in_r12
svc_externalWaitPort
        mov r12,#40
        b call_swi_in_r12
svc_externalWaitIO
        mov r12,#41
        b call_swi_in_r12
svc_internalPrint3DOHeader
        mov r12,#42
        b call_swi_in_r12


call_swi_in_r12
	stmfd sp!, {r9,r14}
	ldr r9,=KernelBase
	ldr r9, [r9]
	ldrb r14, [r9, #&2a]
	add r12,r12,r14
	add r12,r12,#1
	mov r14,r15
	ldr r15,[r9,-r12,lsl #2]
	ldmfd sp!, {r9,r15}

call_func_in_r12
	stmfd sp!, {r9,r14}
	ldr r9,=KernelBase
	ldr r9, [r9]
	mov r14,r15
	ldr r15,[r9,-r12,lsl #2]
	ldmfd sp!, {r9,r15}

	END
