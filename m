Return-Path: <aalonso00@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C1234C81214
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:29 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yx0-f176.google.com with SMTP id 8so2387231yxm.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=ITw1PKwWV7Ib37pK+B1YkuHhf2gi3DYCCiInorLOops=;
	b=U6O06rZ8EeaSO1ciZMe11yv/HbKIlem2rUTPsk9DIaS1o4aZNYU+x7QvdPnX9SDKMU
	EOY884j/VEKibJ5m+g8ary/+wXpVb0IV03tgdSX5FtzbetlX9Po7iwZdRlunHcCllhG5
	lr9ytiUoXJ5Y9IN4G0myEu0hC2dB2o+rRGfyg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=pNJ35mwdiMZY66WwgtjjeObl7ITDB8QUc+a3qudAOOtZfbiASsBCXkxctcJD9npAjp
	0LG/er1r9E5kutrzllk02Jld8CLbuYF9gGEZETPbbyq5nHglqjSQRa8R5eHksBjVFeHG
	b+9OJCHHvMOY0QX0YMQcwldEqHcvrmN9skN8Y=
Received: by 10.100.178.5 with SMTP id a5mr2774373anf.184.1295295868901;
	Mon, 17 Jan 2011 12:24:28 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.25
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:28 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:36 -0600
Message-Id: <1295296178-18590-23-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 23/25] defconfig: virtex4 config for linux 2.6.37.rc4
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jan 2011 20:24:29 -0000

* Update defconfig for linux 2.6.37 rc4
* Enable xilinx spi driver

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../linux/linux-xilinx/virtex4/defconfig           |  222 +++++++++++++++++---
 1 files changed, 188 insertions(+), 34 deletions(-)

diff --git a/recipes-kernel/linux/linux-xilinx/virtex4/defconfig b/recipes-kernel/linux/linux-xilinx/virtex4/defconfig
index 25aab9d..587f2b7 100644
--- a/recipes-kernel/linux/linux-xilinx/virtex4/defconfig
+++ b/recipes-kernel/linux/linux-xilinx/virtex4/defconfig
@@ -1,7 +1,7 @@
 #
 # Automatically generated make config: don't edit
-# Linux kernel version: 2.6.33
-# Wed Jun  2 23:48:57 2010
+# Linux/powerpc 2.6.37-rc4 Kernel Configuration
+# Tue Jan 11 17:34:49 2011
 #
 # CONFIG_PPC64 is not set
 
@@ -61,8 +61,13 @@ CONFIG_PPC_DCR_NATIVE=y
 CONFIG_PPC_DCR_MMIO=y
 CONFIG_PPC_DCR=y
 CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
+CONFIG_PPC_ADV_DEBUG_REGS=y
+CONFIG_PPC_ADV_DEBUG_IACS=2
+CONFIG_PPC_ADV_DEBUG_DACS=2
+CONFIG_PPC_ADV_DEBUG_DVCS=0
 CONFIG_DEFCONFIG_LIST="/lib/modules/$UNAME_RELEASE/.config"
 CONFIG_CONSTRUCTORS=y
+CONFIG_HAVE_IRQ_WORK=y
 
 #
 # General setup
@@ -71,6 +76,7 @@ CONFIG_EXPERIMENTAL=y
 CONFIG_BROKEN_ON_SMP=y
 CONFIG_LOCK_KERNEL=y
 CONFIG_INIT_ENV_ARG_LIMIT=32
+CONFIG_CROSS_COMPILE=""
 CONFIG_LOCALVERSION=""
 # CONFIG_LOCALVERSION_AUTO is not set
 CONFIG_SWAP=y
@@ -95,7 +101,6 @@ CONFIG_RCU_FANOUT=32
 CONFIG_IKCONFIG=y
 CONFIG_IKCONFIG_PROC=y
 CONFIG_LOG_BUF_SHIFT=14
-# CONFIG_GROUP_SCHED is not set
 # CONFIG_CGROUPS is not set
 # CONFIG_SYSFS_DEPRECATED_V2 is not set
 # CONFIG_RELAY is not set
@@ -105,12 +110,7 @@ CONFIG_NAMESPACES=y
 # CONFIG_USER_NS is not set
 # CONFIG_PID_NS is not set
 # CONFIG_NET_NS is not set
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_INITRAMFS_SOURCE=""
-CONFIG_RD_GZIP=y
-CONFIG_RD_BZIP2=y
-CONFIG_RD_LZMA=y
-CONFIG_RD_LZO=y
+# CONFIG_BLK_DEV_INITRD is not set
 # CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_SYSCTL=y
 CONFIG_ANON_INODES=y
@@ -153,6 +153,7 @@ CONFIG_HAVE_KPROBES=y
 CONFIG_HAVE_KRETPROBES=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 CONFIG_HAVE_DMA_ATTRS=y
+CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
 CONFIG_HAVE_DMA_API_DEBUG=y
 
 #
@@ -222,6 +223,7 @@ CONFIG_DEFAULT_IOSCHED="cfq"
 # CONFIG_PPC_CELL is not set
 # CONFIG_PPC_CELL_NATIVE is not set
 # CONFIG_PQ2ADS is not set
+# CONFIG_ISS4xx is not set
 # CONFIG_PPC4xx_GPIO is not set
 CONFIG_XILINX_VIRTEX=y
 # CONFIG_ACADIA is not set
@@ -237,6 +239,7 @@ CONFIG_XILINX_VIRTEX_II_PRO=y
 CONFIG_XILINX_VIRTEX_4_FX=y
 CONFIG_IBM405_ERR77=y
 CONFIG_IBM405_ERR51=y
+CONFIG_KVM_GUEST=y
 # CONFIG_IPIC is not set
 # CONFIG_MPIC is not set
 # CONFIG_MPIC_WEIRD is not set
@@ -288,6 +291,7 @@ CONFIG_FLATMEM_MANUAL=y
 # CONFIG_SPARSEMEM_MANUAL is not set
 CONFIG_FLATMEM=y
 CONFIG_FLAT_NODE_MEM_MAP=y
+CONFIG_HAVE_MEMBLOCK=y
 CONFIG_PAGEFLAGS_EXTENDED=y
 CONFIG_SPLIT_PTLOCK_CPUS=4
 CONFIG_MIGRATION=y
@@ -297,6 +301,7 @@ CONFIG_BOUNCE=y
 CONFIG_VIRT_TO_BUS=y
 # CONFIG_KSM is not set
 CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
+CONFIG_NEED_PER_CPU_KM=y
 CONFIG_PPC_4K_PAGES=y
 # CONFIG_PPC_16K_PAGES is not set
 # CONFIG_PPC_64K_PAGES is not set
@@ -304,8 +309,8 @@ CONFIG_PPC_4K_PAGES=y
 CONFIG_FORCE_MAX_ZONEORDER=11
 CONFIG_PROC_DEVICETREE=y
 CONFIG_CMDLINE_BOOL=y
-CONFIG_CMDLINE=" debug "
-CONFIG_EXTRA_TARGETS="simpleImage.virtex405-ml405 simpleImage.initrd.virtex405-ml405"
+CONFIG_CMDLINE=""
+CONFIG_EXTRA_TARGETS=""
 # CONFIG_PM is not set
 CONFIG_SECCOMP=y
 # CONFIG_COMPRESSED_DEVICE_TREE is not set
@@ -315,6 +320,9 @@ CONFIG_ISA_DMA_API=y
 # Bus options
 #
 CONFIG_ZONE_DMA=y
+CONFIG_NEED_DMA_MAP_STATE=y
+CONFIG_NEED_SG_DMA_LENGTH=y
+CONFIG_GENERIC_ISA_DMA=y
 CONFIG_PPC_INDIRECT_PCI=y
 CONFIG_4xx_SOC=y
 CONFIG_PPC_PCI_CHOICE=y
@@ -324,7 +332,6 @@ CONFIG_PCI_SYSCALL=y
 # CONFIG_PCIEPORTBUS is not set
 CONFIG_ARCH_SUPPORTS_MSI=y
 # CONFIG_PCI_MSI is not set
-# CONFIG_PCI_LEGACY is not set
 # CONFIG_PCI_DEBUG is not set
 # CONFIG_PCI_STUB is not set
 # CONFIG_PCI_IOV is not set
@@ -352,7 +359,6 @@ CONFIG_NET=y
 # Networking options
 #
 CONFIG_PACKET=y
-# CONFIG_PACKET_MMAP is not set
 CONFIG_UNIX=y
 CONFIG_XFRM=y
 # CONFIG_XFRM_USER is not set
@@ -409,6 +415,7 @@ CONFIG_IPV6_NDISC_NODETYPE=y
 # CONFIG_IPV6_MULTIPLE_TABLES is not set
 # CONFIG_IPV6_MROUTE is not set
 # CONFIG_NETWORK_SECMARK is not set
+# CONFIG_NETWORK_PHY_TIMESTAMPING is not set
 CONFIG_NETFILTER=y
 # CONFIG_NETFILTER_DEBUG is not set
 CONFIG_NETFILTER_ADVANCED=y
@@ -421,6 +428,15 @@ CONFIG_NETFILTER_ADVANCED=y
 # CONFIG_NF_CONNTRACK is not set
 # CONFIG_NETFILTER_TPROXY is not set
 CONFIG_NETFILTER_XTABLES=m
+
+#
+# Xtables combined modules
+#
+# CONFIG_NETFILTER_XT_MARK is not set
+
+#
+# Xtables targets
+#
 # CONFIG_NETFILTER_XT_TARGET_CLASSIFY is not set
 # CONFIG_NETFILTER_XT_TARGET_DSCP is not set
 # CONFIG_NETFILTER_XT_TARGET_HL is not set
@@ -428,8 +444,13 @@ CONFIG_NETFILTER_XTABLES=m
 # CONFIG_NETFILTER_XT_TARGET_NFLOG is not set
 # CONFIG_NETFILTER_XT_TARGET_NFQUEUE is not set
 # CONFIG_NETFILTER_XT_TARGET_RATEEST is not set
+# CONFIG_NETFILTER_XT_TARGET_TEE is not set
 # CONFIG_NETFILTER_XT_TARGET_TCPMSS is not set
 # CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP is not set
+
+#
+# Xtables matches
+#
 # CONFIG_NETFILTER_XT_MATCH_COMMENT is not set
 # CONFIG_NETFILTER_XT_MATCH_DCCP is not set
 # CONFIG_NETFILTER_XT_MATCH_DSCP is not set
@@ -487,6 +508,7 @@ CONFIG_IP_NF_MANGLE=m
 # CONFIG_RDS is not set
 # CONFIG_TIPC is not set
 # CONFIG_ATM is not set
+# CONFIG_L2TP is not set
 # CONFIG_BRIDGE is not set
 # CONFIG_NET_DSA is not set
 # CONFIG_VLAN_8021Q is not set
@@ -519,9 +541,14 @@ CONFIG_WIRELESS=y
 #
 # CFG80211 needs to be enabled for MAC80211
 #
+
+#
+# Some wireless drivers require a rate control algorithm
+#
 # CONFIG_WIMAX is not set
 # CONFIG_RFKILL is not set
 # CONFIG_NET_9P is not set
+# CONFIG_CAIF is not set
 
 #
 # Device Drivers
@@ -563,6 +590,7 @@ CONFIG_MTD_BLOCK=y
 # CONFIG_INFTL is not set
 # CONFIG_RFD_FTL is not set
 # CONFIG_SSFDC is not set
+# CONFIG_SM_FTL is not set
 # CONFIG_MTD_OOPS is not set
 
 #
@@ -603,6 +631,9 @@ CONFIG_MTD_PHYSMAP_OF=y
 # Self-contained MTD device drivers
 #
 # CONFIG_MTD_PMC551 is not set
+# CONFIG_MTD_DATAFLASH is not set
+# CONFIG_MTD_M25P80 is not set
+# CONFIG_MTD_SST25L is not set
 # CONFIG_MTD_SLRAM is not set
 # CONFIG_MTD_PHRAM is not set
 # CONFIG_MTD_MTDRAM is not set
@@ -626,8 +657,21 @@ CONFIG_MTD_PHYSMAP_OF=y
 # UBI - Unsorted block images
 #
 # CONFIG_MTD_UBI is not set
+CONFIG_DTC=y
+CONFIG_OF=y
+
+#
+# Device Tree and Open Firmware support
+#
+CONFIG_PROC_DEVICETREE=y
+CONFIG_OF_FLATTREE=y
+CONFIG_OF_DYNAMIC=y
+CONFIG_OF_ADDRESS=y
+CONFIG_OF_IRQ=y
 CONFIG_OF_DEVICE=y
 CONFIG_OF_GPIO=y
+CONFIG_OF_SPI=y
+CONFIG_OF_MDIO=y
 # CONFIG_PARPORT is not set
 CONFIG_BLK_DEV=y
 # CONFIG_BLK_DEV_FD is not set
@@ -653,26 +697,39 @@ CONFIG_BLK_DEV_RAM_SIZE=8192
 CONFIG_XILINX_SYSACE=y
 # CONFIG_BLK_DEV_HD is not set
 CONFIG_MISC_DEVICES=y
+# CONFIG_AD525X_DPOT is not set
 # CONFIG_PHANTOM is not set
 # CONFIG_SGI_IOC4 is not set
 # CONFIG_TIFM_CORE is not set
+# CONFIG_ICS932S401 is not set
 # CONFIG_ENCLOSURE_SERVICES is not set
 # CONFIG_HP_ILO is not set
+# CONFIG_ISL29003 is not set
+# CONFIG_SENSORS_TSL2550 is not set
+# CONFIG_DS1682 is not set
+# CONFIG_TI_DAC7512 is not set
 # CONFIG_C2PORT is not set
 
 #
 # EEPROM support
 #
+# CONFIG_EEPROM_AT24 is not set
+# CONFIG_EEPROM_AT25 is not set
+# CONFIG_EEPROM_LEGACY is not set
+# CONFIG_EEPROM_MAX6875 is not set
 # CONFIG_EEPROM_93CX6 is not set
 # CONFIG_CB710_CORE is not set
 CONFIG_XILINX_DRIVERS=y
+CONFIG_NEED_XILINX_DMAV3=y
 CONFIG_NEED_XILINX_LLDMA=y
+CONFIG_NEED_XILINX_IPIF=y
 CONFIG_HAVE_IDE=y
 # CONFIG_IDE is not set
 
 #
 # SCSI device support
 #
+CONFIG_SCSI_MOD=y
 # CONFIG_RAID_ATTRS is not set
 # CONFIG_SCSI is not set
 # CONFIG_SCSI_DMA is not set
@@ -704,13 +761,34 @@ CONFIG_NETDEVICES=y
 # CONFIG_TUN is not set
 # CONFIG_VETH is not set
 # CONFIG_ARCNET is not set
-# CONFIG_PHYLIB is not set
-CONFIG_NET_ETHERNET=y
 CONFIG_MII=y
+CONFIG_PHYLIB=y
+
+#
+# MII PHY device drivers
+#
+# CONFIG_MARVELL_PHY is not set
+# CONFIG_DAVICOM_PHY is not set
+# CONFIG_QSEMI_PHY is not set
+# CONFIG_LXT_PHY is not set
+# CONFIG_CICADA_PHY is not set
+# CONFIG_VITESSE_PHY is not set
+# CONFIG_SMSC_PHY is not set
+# CONFIG_BROADCOM_PHY is not set
+# CONFIG_ICPLUS_PHY is not set
+# CONFIG_REALTEK_PHY is not set
+# CONFIG_NATIONAL_PHY is not set
+# CONFIG_STE10XP is not set
+# CONFIG_LSI_ET1011C_PHY is not set
+# CONFIG_MICREL_PHY is not set
+CONFIG_FIXED_PHY=y
+# CONFIG_MDIO_BITBANG is not set
+CONFIG_NET_ETHERNET=y
 # CONFIG_HAPPYMEAL is not set
 # CONFIG_SUNGEM is not set
 # CONFIG_CASSINI is not set
 # CONFIG_NET_VENDOR_3COM is not set
+# CONFIG_ENC28J60 is not set
 # CONFIG_ETHOC is not set
 # CONFIG_DNET is not set
 # CONFIG_NET_TULIP is not set
@@ -726,10 +804,11 @@ CONFIG_MII=y
 # CONFIG_NET_PCI is not set
 # CONFIG_B44 is not set
 # CONFIG_KS8842 is not set
+# CONFIG_KS8851 is not set
 # CONFIG_KS8851_MLL is not set
 # CONFIG_XILINX_EMAC is not set
 # CONFIG_ATL2 is not set
-# CONFIG_XILINX_EMACLITE is not set
+CONFIG_XILINX_EMACLITE=y
 CONFIG_NETDEV_1000=y
 # CONFIG_ACENIC is not set
 # CONFIG_DL2K is not set
@@ -750,7 +829,7 @@ CONFIG_NETDEV_1000=y
 # CONFIG_BNX2 is not set
 # CONFIG_CNIC is not set
 # CONFIG_MV643XX_ETH is not set
-# CONFIG_XILINX_LL_TEMAC is not set
+CONFIG_XILINX_LL_TEMAC=y
 # CONFIG_QLA3XXX is not set
 # CONFIG_ATL1 is not set
 # CONFIG_XILINX_TEMAC is not set
@@ -762,6 +841,8 @@ CONFIG_XILINX_LLTEMAC_MARVELL_88E1111_GMII=y
 # CONFIG_XILINX_LLTEMAC_NATIONAL_DP83865_GMII is not set
 # CONFIG_ATL1C is not set
 # CONFIG_JME is not set
+# CONFIG_STMMAC_ETH is not set
+# CONFIG_PCH_GBE is not set
 # CONFIG_NETDEV_10000 is not set
 # CONFIG_TR is not set
 CONFIG_WLAN=y
@@ -808,10 +889,14 @@ CONFIG_INPUT_EVDEV=y
 # Input Device Drivers
 #
 CONFIG_INPUT_KEYBOARD=y
+# CONFIG_KEYBOARD_ADP5588 is not set
 CONFIG_KEYBOARD_ATKBD=y
+# CONFIG_KEYBOARD_QT2160 is not set
 # CONFIG_KEYBOARD_LKKBD is not set
 # CONFIG_KEYBOARD_GPIO is not set
+# CONFIG_KEYBOARD_TCA6416 is not set
 # CONFIG_KEYBOARD_MATRIX is not set
+# CONFIG_KEYBOARD_MAX7359 is not set
 # CONFIG_KEYBOARD_NEWTON is not set
 # CONFIG_KEYBOARD_OPENCORES is not set
 # CONFIG_KEYBOARD_STOWAWAY is not set
@@ -829,6 +914,7 @@ CONFIG_MOUSE_PS2_TRACKPOINT=y
 # CONFIG_MOUSE_SERIAL is not set
 # CONFIG_MOUSE_VSXXXAA is not set
 # CONFIG_MOUSE_GPIO is not set
+# CONFIG_MOUSE_SYNAPTICS_I2C is not set
 # CONFIG_INPUT_JOYSTICK is not set
 # CONFIG_INPUT_TABLET is not set
 # CONFIG_INPUT_TOUCHSCREEN is not set
@@ -846,6 +932,7 @@ CONFIG_SERIO_LIBPS2=y
 CONFIG_SERIO_XILINX_XPS_PS2=y
 # CONFIG_SERIO_RAW is not set
 # CONFIG_SERIO_ALTERA_PS2 is not set
+# CONFIG_SERIO_PS2MULT is not set
 # CONFIG_GAMEPORT is not set
 
 #
@@ -858,6 +945,7 @@ CONFIG_HW_CONSOLE=y
 # CONFIG_VT_HW_CONSOLE_BINDING is not set
 CONFIG_DEVKMEM=y
 # CONFIG_SERIAL_NONSTANDARD is not set
+# CONFIG_N_GSM is not set
 # CONFIG_NOZOMI is not set
 
 #
@@ -873,6 +961,9 @@ CONFIG_SERIAL_8250_RUNTIME_UARTS=4
 #
 # Non-8250 serial port support
 #
+# CONFIG_SERIAL_MAX3100 is not set
+# CONFIG_SERIAL_MAX3107 is not set
+# CONFIG_SERIAL_MFD_HSU is not set
 CONFIG_SERIAL_UARTLITE=y
 CONFIG_SERIAL_UARTLITE_CONSOLE=y
 CONFIG_SERIAL_CORE=y
@@ -880,7 +971,10 @@ CONFIG_SERIAL_CORE_CONSOLE=y
 # CONFIG_SERIAL_JSM is not set
 CONFIG_SERIAL_OF_PLATFORM=y
 # CONFIG_SERIAL_OF_PLATFORM_NWPSERIAL is not set
+# CONFIG_SERIAL_TIMBERDALE is not set
 # CONFIG_SERIAL_GRLIB_GAISLER_APBUART is not set
+# CONFIG_SERIAL_ALTERA_JTAGUART is not set
+# CONFIG_SERIAL_ALTERA_UART is not set
 CONFIG_UNIX98_PTYS=y
 # CONFIG_DEVPTS_MULTIPLE_INSTANCES is not set
 CONFIG_LEGACY_PTYS=y
@@ -897,8 +991,27 @@ CONFIG_XILINX_HWICAP=y
 # CONFIG_RAW_DRIVER is not set
 # CONFIG_TCG_TPM is not set
 CONFIG_DEVPORT=y
+# CONFIG_RAMOOPS is not set
 # CONFIG_I2C is not set
-# CONFIG_SPI is not set
+CONFIG_SPI=y
+# CONFIG_SPI_DEBUG is not set
+CONFIG_SPI_MASTER=y
+
+#
+# SPI Master Controller Drivers
+#
+CONFIG_SPI_BITBANG=y
+# CONFIG_SPI_GPIO is not set
+# CONFIG_SPI_PPC4xx is not set
+# CONFIG_SPI_TOPCLIFF_PCH is not set
+CONFIG_SPI_XILINX=y
+# CONFIG_SPI_DESIGNWARE is not set
+
+#
+# SPI Protocol Masters
+#
+# CONFIG_SPI_SPIDEV is not set
+# CONFIG_SPI_TLE62X0 is not set
 
 #
 # PPS support
@@ -912,11 +1025,18 @@ CONFIG_GPIO_SYSFS=y
 #
 # Memory mapped GPIO expanders:
 #
+# CONFIG_GPIO_IT8761E is not set
 CONFIG_GPIO_XILINX=y
+# CONFIG_GPIO_SCH is not set
 
 #
 # I2C GPIO expanders:
 #
+# CONFIG_GPIO_MAX7300 is not set
+# CONFIG_GPIO_MAX732X is not set
+# CONFIG_GPIO_PCA953X is not set
+# CONFIG_GPIO_PCF857X is not set
+# CONFIG_GPIO_ADP5588 is not set
 
 #
 # PCI GPIO expanders:
@@ -924,14 +1044,22 @@ CONFIG_GPIO_XILINX=y
 # CONFIG_GPIO_CS5535 is not set
 # CONFIG_GPIO_BT8XX is not set
 # CONFIG_GPIO_LANGWELL is not set
+# CONFIG_GPIO_RDC321X is not set
 
 #
 # SPI GPIO expanders:
 #
+# CONFIG_GPIO_MAX7301 is not set
+# CONFIG_GPIO_MCP23S08 is not set
+# CONFIG_GPIO_MC33880 is not set
 
 #
 # AC97 GPIO expanders:
 #
+
+#
+# MODULbus GPIO expanders:
+#
 # CONFIG_W1 is not set
 # CONFIG_POWER_SUPPLY is not set
 # CONFIG_HWMON is not set
@@ -943,22 +1071,55 @@ CONFIG_SSB_POSSIBLE=y
 # Sonics Silicon Backplane
 #
 # CONFIG_SSB is not set
-
-#
-# Multifunction device drivers
-#
+CONFIG_MFD_SUPPORT=y
 # CONFIG_MFD_CORE is not set
 # CONFIG_MFD_SM501 is not set
 # CONFIG_HTC_PASIC3 is not set
+# CONFIG_TPS65010 is not set
+# CONFIG_TPS6507X is not set
 # CONFIG_MFD_TMIO is not set
+# CONFIG_MFD_WM8400 is not set
+# CONFIG_MFD_PCF50633 is not set
+# CONFIG_MFD_MC13783 is not set
+# CONFIG_ABX500_CORE is not set
+# CONFIG_EZX_PCAP is not set
+# CONFIG_AB8500_CORE is not set
+# CONFIG_MFD_TIMBERDALE is not set
+# CONFIG_LPC_SCH is not set
+# CONFIG_MFD_RDC321X is not set
+# CONFIG_MFD_JANZ_CMODIO is not set
 # CONFIG_REGULATOR is not set
-# CONFIG_MEDIA_SUPPORT is not set
+CONFIG_MEDIA_SUPPORT=y
+
+#
+# Multimedia core support
+#
+# CONFIG_VIDEO_DEV is not set
+# CONFIG_DVB_CORE is not set
+# CONFIG_VIDEO_MEDIA is not set
+
+#
+# Multimedia drivers
+#
+CONFIG_IR_CORE=y
+CONFIG_VIDEO_IR=y
+CONFIG_LIRC=y
+CONFIG_RC_MAP=y
+CONFIG_IR_NEC_DECODER=y
+CONFIG_IR_RC5_DECODER=y
+CONFIG_IR_RC6_DECODER=y
+CONFIG_IR_JVC_DECODER=y
+CONFIG_IR_SONY_DECODER=y
+CONFIG_IR_RC5_SZ_DECODER=y
+CONFIG_IR_LIRC_CODEC=y
+# CONFIG_DAB is not set
 
 #
 # Graphics support
 #
 # CONFIG_AGP is not set
 CONFIG_VGA_ARB=y
+CONFIG_VGA_ARB_MAX_GPUS=16
 # CONFIG_DRM is not set
 # CONFIG_VGASTATE is not set
 # CONFIG_VIDEO_OUTPUT_CONTROL is not set
@@ -990,10 +1151,6 @@ CONFIG_DUMMY_CONSOLE=y
 CONFIG_XILINX_EDK=y
 # CONFIG_XILINX_LLDMA_USE_DCR is not set
 # CONFIG_UIO is not set
-
-#
-# TI VLYNQ
-#
 # CONFIG_STAGING is not set
 
 #
@@ -1078,6 +1235,7 @@ CONFIG_MISC_FILESYSTEMS=y
 # CONFIG_BFS_FS is not set
 # CONFIG_EFS_FS is not set
 # CONFIG_JFFS2_FS is not set
+# CONFIG_LOGFS is not set
 CONFIG_CRAMFS=y
 # CONFIG_SQUASHFS is not set
 # CONFIG_VXFS_FS is not set
@@ -1106,6 +1264,7 @@ CONFIG_SUNRPC=y
 # CONFIG_RPCSEC_GSS_KRB5 is not set
 # CONFIG_RPCSEC_GSS_SPKM3 is not set
 # CONFIG_SMB_FS is not set
+# CONFIG_CEPH_FS is not set
 # CONFIG_CIFS is not set
 # CONFIG_NCP_FS is not set
 # CONFIG_CODA_FS is not set
@@ -1172,15 +1331,9 @@ CONFIG_CRC32=y
 # CONFIG_CRC7 is not set
 # CONFIG_LIBCRC32C is not set
 CONFIG_ZLIB_INFLATE=y
-CONFIG_LZO_DECOMPRESS=y
-CONFIG_DECOMPRESS_GZIP=y
-CONFIG_DECOMPRESS_BZIP2=y
-CONFIG_DECOMPRESS_LZMA=y
-CONFIG_DECOMPRESS_LZO=y
 CONFIG_HAS_IOMEM=y
 CONFIG_HAS_IOPORT=y
 CONFIG_HAS_DMA=y
-CONFIG_HAVE_LMB=y
 CONFIG_NLATTR=y
 CONFIG_GENERIC_ATOMIC64=y
 
@@ -1215,6 +1368,7 @@ CONFIG_DEBUG_PREEMPT=y
 # CONFIG_RT_MUTEX_TESTER is not set
 # CONFIG_DEBUG_SPINLOCK is not set
 # CONFIG_DEBUG_MUTEXES is not set
+CONFIG_BKL=y
 # CONFIG_DEBUG_LOCK_ALLOC is not set
 # CONFIG_PROVE_LOCKING is not set
 # CONFIG_LOCK_STAT is not set
@@ -1259,6 +1413,7 @@ CONFIG_BRANCH_PROFILE_NONE=y
 # CONFIG_WORKQUEUE_TRACER is not set
 # CONFIG_BLK_DEV_IO_TRACE is not set
 # CONFIG_DMA_API_DEBUG is not set
+# CONFIG_ATOMIC64_SELFTEST is not set
 # CONFIG_SAMPLES is not set
 CONFIG_HAVE_ARCH_KGDB=y
 # CONFIG_KGDB is not set
@@ -1271,7 +1426,6 @@ CONFIG_PRINT_STACK_DEPTH=64
 # CONFIG_FTR_FIXUP_SELFTEST is not set
 # CONFIG_MSI_BITMAP_SELFTEST is not set
 # CONFIG_XMON is not set
-# CONFIG_IRQSTACKS is not set
 # CONFIG_BDI_SWITCH is not set
 # CONFIG_PPC_EARLY_DEBUG is not set
 
-- 
1.7.3.4


