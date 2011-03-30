Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65C014C804D9
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 15:15:15 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so894674ywo.35
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 13:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=JJ54kVFX0WYCB9CKoJDhZEKmyMGy4wJ56Kk/BGzULVA=;
	b=bJQAqLk+8XMkhqNaOQ+AC/5YadXbXMDxNGRsC7YmDHVycLaro/BDR9o2U+e/id7R7T
	D652PeaFWn0Qnr6w9DR8vMsIx6ebu1tNXW0e0eRCv52a5ZLDv4uQJq8hfOp439NEfhaL
	Oqbfb+OhOqLiE29DOFGxDGh914GU0BwNCM9d0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=BJ4zMLNbofwV65MOPWcLtCCL+RWW97i7xUQ+nugwHb0OrXaDiP8KCC/4go4IKmzaNp
	VZC5x7F4/8cTdY5YjQ/aid70K7mCyM0j8bckL3ewPu7Ml2jegVeUMycu8xSsrPsUPmJn
	bqjK5/33/fktigBZXCEkwf578xLenV/cW3+hQ=
MIME-Version: 1.0
Received: by 10.42.224.9 with SMTP id im9mr1530075icb.455.1301516109797; Wed,
	30 Mar 2011 13:15:09 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Wed, 30 Mar 2011 13:15:09 -0700 (PDT)
In-Reply-To: <849307$c85qn8@azsmga001.ch.intel.com>
References: <849307$c85qn8@azsmga001.ch.intel.com>
Date: Wed, 30 Mar 2011 16:15:09 -0400
Message-ID: <AANLkTikT-A8OV+zPkvSFq=8eAXiAZnFVZZoZ-n5RyE5w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/71][KERNEL] crownbay: patches for 2.6.37
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
X-List-Received-Date: Wed, 30 Mar 2011 20:15:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 30, 2011 at 3:49 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> This is a large patchset that reflects a lot of post-2.6.37 activity
> but that we need for the crownbay 2.6.37 upgrade.

The config changes all look good. I've queued them up.

>
> Due to the large number, the patches themselves aren't posted here -
> please see the branch for those.
>
> Please pull.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
> =C2=A0Branch: tzanussi/crownbay-2.6.37-machine
> =C2=A0Browse: http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.37-c=
ontrib/log/?h=3Dtzanussi/crownbay-2.6.37-machine
>
> Axel Lin (1):
> =C2=A0drivers/misc/pch_phub.c: add MODULE_DEVICE_TABLE
>
> Denis Turischev (1):
> =C2=A0pch_uart: reference clock on CM-iTC
>
> Jesper Juhl (1):
> =C2=A0serial, pch uart: Remove duplicate inclusion of linux/pci.h header
>
> Justin P. Mattock (1):
> =C2=A0spi/topcliff: Typo fix threhold to threshold
>
> Micha=C5=82 Miros=C5=82aw (1):
> =C2=A0net: Fix too optimistic NETIF_F_HW_CSUM features
>
> Rakib Mullick (1):
> =C2=A0drivers, pch_dma: Fix warning when CONFIG_PM=3Dn.
>
> Richard R=C3=B6jfors (2):
> =C2=A0usb: pch_udc: Fix compile error, warnings and checkpatch warnings
> =C2=A0usb: pch_udc: Fix setup transfers with data out
>
> Tejun Heo (1):
> =C2=A0pch_gbe: don't use flush_scheduled_work()
>
> Tom Zanussi (4):
> =C2=A0pch_uart: move to drivers/tty/serial/
> =C2=A0From 5ac387d983149d4658aad17242d24eef85a43fa8 Mon Sep 17 00:00:00
> =C2=A0 =C2=A02001 From: Randy Dunlap <randy.dunlap@oracle.com> Date: Thu,=
 2 Dec
> =C2=A0 =C2=A02010 09:19:48 -0800 Subject: [PATCH] serial: fix pch_uart kc=
onfig &
> =C2=A0 =C2=A0build
> =C2=A0commit 1c5189976ffc130416e808f41049c12615a6380c Author: Tomoya
> =C2=A0 =C2=A0MORINAGA <tomoya-linux@dsn.okisemi.com> Date: Thu Dec 16 16:=
13:29
> =C2=A0 =C2=A02010 +0900
> =C2=A0From 89bf67f1f080c947c92f8773482d9e57767ca292 Mon Sep 17 00:00:00
> =C2=A0 =C2=A02001 From: Eric Dumazet <eric.dumazet@gmail.com> Date: Mon, =
22 Nov
> =C2=A0 =C2=A02010 00:15:06 +0000 Subject: [PATCH] drivers/net: use vzallo=
c()
>
> Tomoya (30):
> =C2=A0can: EG20T PCH: add prefix to macro
> =C2=A0can: EG20T PCH: use BIT(X)
> =C2=A0can: EG20T PCH: Separate Interface Register(IF1/IF2)
> =C2=A0can: EG20T PCH: Change Message Object Index
> =C2=A0can: EG20T PCH: Enumerate LEC macros
> =C2=A0can: EG20T PCH: Delete unnecessary spin_lock
> =C2=A0pch_can: Add flow control processing
> =C2=A0pch_can: Divide poll function
> =C2=A0pch_can: Fix endianness issue
> =C2=A0pch_can: Improve rx processing
> =C2=A0pch_can: Fix warnings
> =C2=A0pch_can: Rename function/macro name
> =C2=A0pch_can: Change functions type
> =C2=A0pch_can: Reduce register access
> =C2=A0pch_can: Change Copyright and module description
> =C2=A0pch_can: Replace netdev_dbg instead of dev_dbg partly
> =C2=A0pch_can: Fix coding rule violation
> =C2=A0pch_can: Delete unnecessary/redundant code
> =C2=A0pch_can: Fix bit timing calculation issue
> =C2=A0pch_can: Fix miss-setting status issue
> =C2=A0pch_can: Comment optimization
> =C2=A0pch_can: Move MSI processing to probe/remove processing
> =C2=A0pch_can: Fix incorrect return processing
> =C2=A0pch_can: Optimize "if" condition in rx/tx processing
> =C2=A0pch_can: Add setting TEC/REC statistics processing
> =C2=A0pch_can: Replace netif_rx to netif_receive_skb
> =C2=A0pch_can: Fix array miss-pointing issue
> =C2=A0pch_can: fix 800k comms issue
> =C2=A0pch_can: fix rmmod issue
> =C2=A0pch_can: fix module reload issue with MSI
>
> Tomoya MORINAGA (20):
> =C2=A0pch_can: fix tseg1/tseg2 setting issue
> =C2=A0pch_phub: add new device ML7213
> =C2=A0Serial: EG20T: add PCH_UART driver
> =C2=A0serial: pch_uart: support new device ML7213
> =C2=A0pch_uart: add multi-scatter processing
> =C2=A0pch_uart: add spin_lock_init
> =C2=A0pch_uart : Reduce memcpy
> =C2=A0pch_uart : Use dev_xxx not pr_xxx
> =C2=A0pch_uart: fix uart clock setting issue
> =C2=A0pch_uart: fix auto flow control miss-setting issue
> =C2=A0pch_uart: fix exclusive access issue
> =C2=A0pch_uart: Fix DMA channel miss-setting issue.
> =C2=A0serial: pch_uart: revert Kconfig for non-DMA mode
> =C2=A0pch_dma: support new device ML7213 IOH
> =C2=A0pch_dma: fix kernel error issue
> =C2=A0pch_dma: set the number of array correctly
> =C2=A0spi/topcliff_pch: Fix data transfer issue
> =C2=A0USB: pch_udc: support new device ML7213 IOH
> =C2=A0i2c-eg20t: add driver for Intel EG20T
> =C2=A0i2c-eg20t: support new device OKI SEMICONDUCTOR ML7213 IOH
>
> Toshiharu Okada (7):
> =C2=A0pch_gbe: Fix the issue which a driver locks when rx offload is set =
by
> =C2=A0 =C2=A0ethtool
> =C2=A0pch_gbe: Fix the issue that the receiving data is not normal.
> =C2=A0pch_gbe: Fix the MAC Address load issue.
> =C2=A0USB device driver of Topcliff PCH
> =C2=A0usb: pch_udc: Fixed issue which does not work with g_serial
> =C2=A0usb: pch_udc: Fix the worning log issue at gadget driver remove
> =C2=A0usb: pch_udc: Fixed issue which does not work with g_ether
>
> Wolfram Sang (1):
> =C2=A0i2c-eg20t: include slab.h for memory allocations

upstream and all good as well. queued, a quick sanity and I'll push
things out.

Cheers,

Bruce

>
> =C2=A0drivers/char/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A01 +
> =C2=A0drivers/dma/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A09 +-
> =C2=A0drivers/dma/pch_dma.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 54 +-
> =C2=A0drivers/i2c/busses/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A0 11 +
> =C2=A0drivers/i2c/busses/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A01 +
> =C2=A0drivers/i2c/busses/i2c-eg20t.c =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A09=
38 ++++++++++
> =C2=A0drivers/misc/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A07 +-
> =C2=A0drivers/misc/pch_phub.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 86 +-
> =C2=A0drivers/net/benet/be_main.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A06 +-
> =C2=A0drivers/net/bnx2x/bnx2x_main.c =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A04 +-
> =C2=A0drivers/net/can/pch_can.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 | 1355 +++++++---------
> =C2=A0drivers/net/jme.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0 16 +-
> =C2=A0drivers/net/pch_gbe/pch_gbe.h =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A02 +-
> =C2=A0drivers/net/pch_gbe/pch_gbe_ethtool.c | =C2=A0 19 +-
> =C2=A0drivers/net/pch_gbe/pch_gbe_main.c =C2=A0 =C2=A0| =C2=A0130 +-
> =C2=A0drivers/net/sc92031.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A03 +-
> =C2=A0drivers/net/stmmac/stmmac_ethtool.c =C2=A0 | =C2=A0 12 +-
> =C2=A0drivers/net/stmmac/stmmac_main.c =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A05 +-
> =C2=A0drivers/net/vxge/vxge-ethtool.c =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=
=A02 +-
> =C2=A0drivers/net/vxge/vxge-main.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =
=C2=A0 =C2=A02 +-
> =C2=A0drivers/serial/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| =C2=A0 =C2=A01 -
> =C2=A0drivers/serial/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A02 +
> =C2=A0drivers/spi/spi_topcliff_pch.c =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
12 +-
> =C2=A0drivers/tty/serial/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A0 21 +
> =C2=A0drivers/tty/serial/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A06 +
> =C2=A0drivers/tty/serial/pch_uart.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 1601 ++=
++++++++++++++++
> =C2=A0drivers/usb/gadget/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A0 27 +
> =C2=A0drivers/usb/gadget/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A01 +
> =C2=A0drivers/usb/gadget/gadget_chips.h =C2=A0 =C2=A0 | =C2=A0 =C2=A07 +
> =C2=A0drivers/usb/gadget/pch_udc.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 30=
02 +++++++++++++++++++++++++++++++++
> =C2=A0net/core/dev.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A07 +-
> =C2=A0net/core/ethtool.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A04 +-
> =C2=A032 files changed, 6429 insertions(+), 925 deletions(-)
> =C2=A0create mode 100644 drivers/i2c/busses/i2c-eg20t.c
> =C2=A0create mode 100644 drivers/tty/serial/Kconfig
> =C2=A0create mode 100644 drivers/tty/serial/Makefile
> =C2=A0create mode 100644 drivers/tty/serial/pch_uart.c
> =C2=A0create mode 100644 drivers/usb/gadget/pch_udc.c
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

