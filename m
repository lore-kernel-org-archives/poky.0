Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E7B084C800A0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 14:49:39 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Mar 2011 12:49:39 -0700
Message-Id: <849307$c85qn8@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,270,1299484800"; d="scan'208";a="411233000"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by azsmga001.ch.intel.com with ESMTP; 30 Mar 2011 12:49:38 -0700
Old-Date: Wed, 30 Mar 2011 14:16:55 -0500
MIME-Version: 1.0
Date: Wed, 30 Mar 2011 14:49:22 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 00/71][KERNEL] crownbay: patches for 2.6.37
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
X-List-Received-Date: Wed, 30 Mar 2011 19:49:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Tom Zanussi <tom.zanussi@intel.com>

This is a large patchset that reflects a lot of post-2.6.37 activity
but that we need for the crownbay 2.6.37 upgrade.

Due to the large number, the patches themselves aren't posted here -
please see the branch for those.

Please pull.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
  Branch: tzanussi/crownbay-2.6.37-machine
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/crownbay-2.6.37-machine

Axel Lin (1):
  drivers/misc/pch_phub.c: add MODULE_DEVICE_TABLE

Denis Turischev (1):
  pch_uart: reference clock on CM-iTC

Jesper Juhl (1):
  serial, pch uart: Remove duplicate inclusion of linux/pci.h header

Justin P. Mattock (1):
  spi/topcliff: Typo fix threhold to threshold

Michał Mirosław (1):
  net: Fix too optimistic NETIF_F_HW_CSUM features

Rakib Mullick (1):
  drivers, pch_dma: Fix warning when CONFIG_PM=n.

Richard Röjfors (2):
  usb: pch_udc: Fix compile error, warnings and checkpatch warnings
  usb: pch_udc: Fix setup transfers with data out

Tejun Heo (1):
  pch_gbe: don't use flush_scheduled_work()

Tom Zanussi (4):
  pch_uart: move to drivers/tty/serial/
  From 5ac387d983149d4658aad17242d24eef85a43fa8 Mon Sep 17 00:00:00
    2001 From: Randy Dunlap <randy.dunlap@oracle.com> Date: Thu, 2 Dec
    2010 09:19:48 -0800 Subject: [PATCH] serial: fix pch_uart kconfig &
    build
  commit 1c5189976ffc130416e808f41049c12615a6380c Author: Tomoya
    MORINAGA <tomoya-linux@dsn.okisemi.com> Date: Thu Dec 16 16:13:29
    2010 +0900
  From 89bf67f1f080c947c92f8773482d9e57767ca292 Mon Sep 17 00:00:00
    2001 From: Eric Dumazet <eric.dumazet@gmail.com> Date: Mon, 22 Nov
    2010 00:15:06 +0000 Subject: [PATCH] drivers/net: use vzalloc()

Tomoya (30):
  can: EG20T PCH: add prefix to macro
  can: EG20T PCH: use BIT(X)
  can: EG20T PCH: Separate Interface Register(IF1/IF2)
  can: EG20T PCH: Change Message Object Index
  can: EG20T PCH: Enumerate LEC macros
  can: EG20T PCH: Delete unnecessary spin_lock
  pch_can: Add flow control processing
  pch_can: Divide poll function
  pch_can: Fix endianness issue
  pch_can: Improve rx processing
  pch_can: Fix warnings
  pch_can: Rename function/macro name
  pch_can: Change functions type
  pch_can: Reduce register access
  pch_can: Change Copyright and module description
  pch_can: Replace netdev_dbg instead of dev_dbg partly
  pch_can: Fix coding rule violation
  pch_can: Delete unnecessary/redundant code
  pch_can: Fix bit timing calculation issue
  pch_can: Fix miss-setting status issue
  pch_can: Comment optimization
  pch_can: Move MSI processing to probe/remove processing
  pch_can: Fix incorrect return processing
  pch_can: Optimize "if" condition in rx/tx processing
  pch_can: Add setting TEC/REC statistics processing
  pch_can: Replace netif_rx to netif_receive_skb
  pch_can: Fix array miss-pointing issue
  pch_can: fix 800k comms issue
  pch_can: fix rmmod issue
  pch_can: fix module reload issue with MSI

Tomoya MORINAGA (20):
  pch_can: fix tseg1/tseg2 setting issue
  pch_phub: add new device ML7213
  Serial: EG20T: add PCH_UART driver
  serial: pch_uart: support new device ML7213
  pch_uart: add multi-scatter processing
  pch_uart: add spin_lock_init
  pch_uart : Reduce memcpy
  pch_uart : Use dev_xxx not pr_xxx
  pch_uart: fix uart clock setting issue
  pch_uart: fix auto flow control miss-setting issue
  pch_uart: fix exclusive access issue
  pch_uart: Fix DMA channel miss-setting issue.
  serial: pch_uart: revert Kconfig for non-DMA mode
  pch_dma: support new device ML7213 IOH
  pch_dma: fix kernel error issue
  pch_dma: set the number of array correctly
  spi/topcliff_pch: Fix data transfer issue
  USB: pch_udc: support new device ML7213 IOH
  i2c-eg20t: add driver for Intel EG20T
  i2c-eg20t: support new device OKI SEMICONDUCTOR ML7213 IOH

Toshiharu Okada (7):
  pch_gbe: Fix the issue which a driver locks when rx offload is set by
    ethtool
  pch_gbe: Fix the issue that the receiving data is not normal.
  pch_gbe: Fix the MAC Address load issue.
  USB device driver of Topcliff PCH
  usb: pch_udc: Fixed issue which does not work with g_serial
  usb: pch_udc: Fix the worning log issue at gadget driver remove
  usb: pch_udc: Fixed issue which does not work with g_ether

Wolfram Sang (1):
  i2c-eg20t: include slab.h for memory allocations

 drivers/char/Kconfig                  |    1 +
 drivers/dma/Kconfig                   |    9 +-
 drivers/dma/pch_dma.c                 |   54 +-
 drivers/i2c/busses/Kconfig            |   11 +
 drivers/i2c/busses/Makefile           |    1 +
 drivers/i2c/busses/i2c-eg20t.c        |  938 ++++++++++
 drivers/misc/Kconfig                  |    7 +-
 drivers/misc/pch_phub.c               |   86 +-
 drivers/net/benet/be_main.c           |    6 +-
 drivers/net/bnx2x/bnx2x_main.c        |    4 +-
 drivers/net/can/pch_can.c             | 1355 +++++++---------
 drivers/net/jme.c                     |   16 +-
 drivers/net/pch_gbe/pch_gbe.h         |    2 +-
 drivers/net/pch_gbe/pch_gbe_ethtool.c |   19 +-
 drivers/net/pch_gbe/pch_gbe_main.c    |  130 +-
 drivers/net/sc92031.c                 |    3 +-
 drivers/net/stmmac/stmmac_ethtool.c   |   12 +-
 drivers/net/stmmac/stmmac_main.c      |    5 +-
 drivers/net/vxge/vxge-ethtool.c       |    2 +-
 drivers/net/vxge/vxge-main.c          |    2 +-
 drivers/serial/Kconfig                |    1 -
 drivers/serial/Makefile               |    2 +
 drivers/spi/spi_topcliff_pch.c        |   12 +-
 drivers/tty/serial/Kconfig            |   21 +
 drivers/tty/serial/Makefile           |    6 +
 drivers/tty/serial/pch_uart.c         | 1601 ++++++++++++++++++
 drivers/usb/gadget/Kconfig            |   27 +
 drivers/usb/gadget/Makefile           |    1 +
 drivers/usb/gadget/gadget_chips.h     |    7 +
 drivers/usb/gadget/pch_udc.c          | 3002 +++++++++++++++++++++++++++++++++
 net/core/dev.c                        |    7 +-
 net/core/ethtool.c                    |    4 +-
 32 files changed, 6429 insertions(+), 925 deletions(-)
 create mode 100644 drivers/i2c/busses/i2c-eg20t.c
 create mode 100644 drivers/tty/serial/Kconfig
 create mode 100644 drivers/tty/serial/Makefile
 create mode 100644 drivers/tty/serial/pch_uart.c
 create mode 100644 drivers/usb/gadget/pch_udc.c


