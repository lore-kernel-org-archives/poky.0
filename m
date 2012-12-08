Return-Path: <pab@pabigot.com>
Received: from p3plsmtpa08-02.prod.phx3.secureserver.net
	(p3plsmtpa08-02.prod.phx3.secureserver.net [173.201.193.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E306CE00559
	for <poky@yoctoproject.org>; Sat,  8 Dec 2012 10:14:53 -0800 (PST)
Received: from llc.pab ([66.41.60.82])
	by p3plsmtpa08-02.prod.phx3.secureserver.net with 
	id Z6Es1k0011mTNtu016Esk0; Sat, 08 Dec 2012 11:14:52 -0700
Message-ID: <50C3839B.9070001@pabigot.com>
Date: Sat, 08 Dec 2012 12:14:51 -0600
From: "Peter A. Bigot" <pab@pabigot.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: beagleboard invalid config in 1.3 danny branch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Dec 2012 18:14:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This is mostly informative, unless it's because I'm doing something 
wrong in which case I'd appreciate a clue.

With this sequence:

  git clone -b danny git://git.yoctoproject.org/poky
  cd poky
  . oe-init-build-env
  MACHINE=beagleboard bitbake virtual/kernel

which documents itself as:

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "danny:09031ac2fc0f30ec577ee823fc61ff0e5d852e21"

the build produces the following warning (with referenced file contents 
inserted):

This BSP sets 4 invalid/obsolete kernel options.
These config options are not offered anywhere within this kernel.
The full list can be found in your kernel src dir at:
meta/cfg/standard/beagleboard/invalid.

CONFIG_DISPLAY_SUPPORT
CONFIG_USB_MUSB_HDRC_HCD
CONFIG_USB_MUSB_OTG
CONFIG_WL12XX_HT

This BSP sets 4 kernel options that are possibly non-hardware related.
The full list can be found in your kernel src dir at:
meta/cfg/standard/beagleboard/specified_non_hdw.cfg

CONFIG_CC_OPTIMIZE_FOR_SIZE
CONFIG_NET
CONFIG_NETDEVICES
CONFIG_PANEL_DVI

WARNING: There were 8 hardware options requested that do not
          have a corresponding value present in the final ".config" file.
          This probably means you aren't getting the config you wanted.
The full list can be found in your kernel src dir at:
meta/cfg/standard/beagleboard/mismatch.cfg

Value requested for CONFIG_BACKLIGHT_CLASS_DEVICE not in final ".config"
Requested value: "CONFIG_BACKLIGHT_CLASS_DEVICE=y"
Actual value set: ""

Value requested for CONFIG_PANEL_SHARP_LS037V7DW01 not in final ".config"
Requested value: "CONFIG_PANEL_SHARP_LS037V7DW01=y"
Actual value set: ""

Value requested for CONFIG_USB_G_NCM not in final ".config"
Requested value: "CONFIG_USB_G_NCM=y"
Actual value set: "# CONFIG_USB_G_NCM is not set"

Value requested for CONFIG_USB_MUSB_HDRC_HCD not in final ".config"
Requested value: "CONFIG_USB_MUSB_HDRC_HCD=y"
Actual value set: ""

Value requested for CONFIG_USB_MUSB_OTG not in final ".config"
Requested value: "CONFIG_USB_MUSB_OTG=y"
Actual value set: ""

Value requested for CONFIG_USB_OMAP not in final ".config"
Requested value: "CONFIG_USB_OMAP=y"
Actual value set: "# CONFIG_USB_OMAP is not set"

Value requested for CONFIG_USB_OTG not in final ".config"
Requested value: "CONFIG_USB_OTG=y"
Actual value set: ""

Value requested for CONFIG_WL12XX_HT not in final ".config"
Requested value: "CONFIG_WL12XX_HT=y"
Actual value set: ""

Since beagleboard is a reference platform I had not expected these 
warnings.  I see in the archives discussion of a similar issue in the 
pre-release phases of 1.2.  I didn't try with "real" 1.3 but subsequent 
changes in danny don't seem relevant.

There's also the following which is suspicious:

find: warning: -path 
/prj/oe/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.4.11+git1+a201268353c030d9fafe00f2041976f7437d9386_1+449f7f520350700858f21a5554b81cc8ad23267d-r4.3/linux/ 
will not match anything because it ends with /.

Peter


