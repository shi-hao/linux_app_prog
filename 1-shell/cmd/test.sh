#!/bin/bash 

#查看linux硬件信息，可能需要root权限
lshw    

#
# lshw
# sudo lshw
#
# bleach-thinkpad-x1-carbon-5th
#     description: Notebook
#     product: 20HRA007CD (LENOVO_MT_20HR_BU_Think_FM_ThinkPad X1 Carbon 5th)
#     vendor: LENOVO
#     version: ThinkPad X1 Carbon 5th
#     serial: PF10B8N8
#     width: 64 bits
#     capabilities: smbios-3.0 dmi-3.0 smp vsyscall32
#     configuration: administrator_password=disabled chassis=notebook family=ThinkPad X1 Carbon 5th power-on_password=disabled sku=LENOVO_MT_20HR_BU_Think_FM_ThinkPad X1 Carbon 5th uuid=CC0D4181-E326-B211-A85C-F17C72326EFC
#   *-core
#        description: Motherboard
#        product: 20HRA007CD
#        vendor: LENOVO
#        physical id: 0
#        version: SDK0L77769 WIN
#        serial: L3HF7C701V6
#        slot: Not Available
#      *-memory
#           description: System Memory
#           physical id: 3
#           slot: System board or motherboard
#           size: 8GiB
#         *-bank:0
#              description: Row of chips LPDDR3 Synchronous Unbuffered (Unregistered) 1867 MHz (0.5 ns)
#              product: K4E6E304EB-EGCF
#              vendor: Samsung
#              physical id: 0
#              serial: 00000000
#              slot: ChannelA-DIMM0
#              size: 4GiB
#              width: 64 bits
#              clock: 1867MHz (0.5ns)
#         *-bank:1
#              description: Row of chips LPDDR3 Synchronous Unbuffered (Unregistered) 1867 MHz (0.5 ns)
#              product: K4E6E304EB-EGCF
#              vendor: Samsung
#              physical id: 1
#              serial: 00000000
#              slot: ChannelB-DIMM0
#              size: 4GiB
#              width: 64 bits
#              clock: 1867MHz (0.5ns)
#      *-cache:0
#           description: L1 cache
#           physical id: 7
#           slot: L1 Cache
#           size: 128KiB
#           capacity: 128KiB
#           capabilities: synchronous internal write-back unified
#           configuration: level=1
#      *-cache:1
#           description: L2 cache
#           physical id: 8
#           slot: L2 Cache
#           size: 512KiB
#           capacity: 512KiB
#           capabilities: synchronous internal write-back unified
#           configuration: level=2
#      *-cache:2
#           description: L3 cache
#           physical id: 9
#           slot: L3 Cache
#           size: 3MiB
#           capacity: 3MiB
#           capabilities: synchronous internal write-back unified
#           configuration: level=3



#查看cpu详细信息
lscpu

#
# lscpu
#
# Architecture:        x86_64
# CPU op-mode(s):      32-bit, 64-bit
# Byte Order:          Little Endian
# CPU(s):              4
# On-line CPU(s) list: 0-3
# Thread(s) per core:  2
# Core(s) per socket:  2
# Socket(s):           1
# NUMA node(s):        1
# Vendor ID:           GenuineIntel
# CPU family:          6
# Model:               142
# Model name:          Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
# Stepping:            9
# CPU MHz:             1223.881
# CPU max MHz:         3100.0000
# CPU min MHz:         400.0000
# BogoMIPS:            5424.00
# Virtualization:      VT-x
# L1d cache:           32K
# L1i cache:           32K
# L2 cache:            256K
# L3 cache:            3072K


#查看cpu，内存使用率
top 


