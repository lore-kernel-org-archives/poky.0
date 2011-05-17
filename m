Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3D8A4C80FD4
	for <poky@yoctoproject.org>; Tue, 17 May 2011 18:07:51 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 May 2011 16:07:51 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.255.12.160]) ([10.255.12.160])
	by orsmga002.jf.intel.com with ESMTP; 17 May 2011 16:07:51 -0700
Message-ID: <4DD2FFC6.9080500@intel.com>
Date: Tue, 17 May 2011 16:07:50 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1305528202.git.ke.yu@intel.com>
In-Reply-To: <cover.1305528202.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] patch upstream status update
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
X-List-Received-Date: Tue, 17 May 2011 23:07:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/15/2011 11:45 PM, Yu Ke wrote:
> From: Yu Ke<ke.yu@intel.com>
>
> update the patch upstream status for
>
>   - modutils
>   - module-init-tools
>   - libacpi
>   - keymaps
>   - initscripts
>   - console-tools
>   - mesa-demos
>   - xserver-xf86-lite
>
> meahwhile, upgrade the xserver-kdrive and remove its obsolate patches
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/patch-update-05-16
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/patch-update-05-16
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (2):
>    xserver-kdrive: upgrade from 1.7.99.2 to 1.10.1

Ke,

This patch was not taken per Richard's email about checking the Touch 
Screen Calibration.

>    Upstream-Status update for several recipes
>
This patch has been pulled.

Sau!


>   meta/recipes-bsp/keymaps/files/GPLv2.patch         |    2 +
>   meta/recipes-bsp/libacpi/files/makefile-fix.patch  |    2 +
>   .../console-tools-0.3.2/codepage.patch             |    1 +
>   .../console-tools-0.3.2/compile.patch              |    2 +
>   .../console-tools-0.3.2/configure.patch            |    1 +
>   .../console-tools-0.3.2/kbdrate.patch              |    2 +
>   .../console-tools-0.3.2/uclibc-fileno.patch        |    2 +
>   .../initscripts/initscripts-1.0/GPLv2.patch        |    2 +
>   .../mesa-demos/dso_linking_change_build_fix.patch  |    1 +
>   .../enable-builtin-fonts.patch                     |   12 -
>   .../xserver-kdrive-1.3.0.0/enable-epson.patch      |   11 -
>   .../xserver-kdrive-1.3.0.0/enable-tslib.patch      |   12 -
>   .../xserver-kdrive-1.3.0.0/enable-xcalibrate.patch |  110 -----
>   .../xserver-kdrive-1.3.0.0/fbdev_use_current.patch |   41 --
>   .../hide-cursor-and-ppm-root.patch                 |  307 ------------
>   .../xserver-kdrive-1.3.0.0/kdrive-evdev.patch      |  515 --------------------
>   .../xserver-kdrive-1.3.0.0/kdrive-use-evdev.patch  |   54 --
>   .../xserver-kdrive-1.3.0.0/optional-xkb.patch      |   58 ---
>   .../report-correct-randr12.patch                   |   29 --
>   .../xserver-kdrive-1.3.0.0/scheduler.patch         |  151 ------
>   .../xserver-kdrive-1.3.0.0/xcalibrate_coords.patch |  122 -----
>   .../xserver-kdrive-1.7.99.2/crosscompile.patch     |   19 -
>   .../xserver-kdrive-1.7.99.2/disable-apm.patch      |   20 -
>   .../enable-builtin-fonts.patch                     |   12 -
>   .../enable-xcalibrate.patch                        |  148 ------
>   .../xserver-kdrive-1.7.99.2/extra-kmodes.patch     |   83 ----
>   .../fbdev_xrandr_ioctl.patch                       |   61 ---
>   .../fix-newer-xorg-headers.patch                   |   18 -
>   .../xserver-kdrive-1.7.99.2/kdrive-evdev.patch     |  515 --------------------
>   .../xserver-kdrive-1.7.99.2/kdrive-use-evdev.patch |   54 --
>   .../no-serial-probing.patch                        |   13 -
>   .../xserver-kdrive-1.7.99.2/nodolt.patch           |   12 -
>   .../xserver-kdrive-1.7.99.2/optional-xkb.patch     |   58 ---
>   .../xorg-xserver/xserver-kdrive.inc                |    2 +-
>   .../xorg-xserver/xserver-kdrive/crosscompile.patch |   22 +
>   .../xorg-xserver/xserver-kdrive/disable-apm.patch  |   20 +-
>   .../xserver-kdrive/disable-xf86-dga-xorgcfg.patch  |   39 --
>   .../xorg-xserver/xserver-kdrive/extra-kmodes.patch |   33 +-
>   .../xserver-kdrive/fbdev_xrandr_ioctl.patch        |   25 +-
>   .../fix-newer-xorg-headers.patch                   |    0
>   .../hide-cursor-and-ppm-root.patch                 |   68 ++--
>   .../keyboard-resume-workaround.patch               |    0
>   .../xorg-xserver/xserver-kdrive_1.10.1.bb          |   22 +
>   .../xorg-xserver/xserver-kdrive_1.7.99.2.bb        |   29 --
>   .../fix_open_max_preprocessor_error.patch          |    2 +
>   .../module-init-tools/files/disable_man.patch      |    2 +
>   .../files/grab_module_memset.patch                 |    2 +
>   .../files/ignore_arch_directory.patch              |    2 +
>   .../files/modutils_extension.patch                 |    3 +
>   .../files/no-static-binaries.patch                 |    2 +
>   meta/recipes-kernel/modutils/files/PD.patch        |    2 +
>   meta/recipes-kernel/modutils/files/armeb.patch     |    2 +
>   meta/recipes-kernel/modutils/files/configure.patch |    1 +
>   meta/recipes-kernel/modutils/files/gcc4.patch      |    2 +
>   meta/recipes-kernel/modutils/files/lex.l.diff      |    2 +
>   .../modutils/files/modutils-notest.patch           |    2 +
>   .../modutils/files/program_prefix.patch            |    2 +
>   .../modutils/modutils-cross/module.h.diff          |    2 +
>   58 files changed, 160 insertions(+), 2578 deletions(-)
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/enable-builtin-fonts.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/enable-epson.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/enable-tslib.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/enable-xcalibrate.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/fbdev_use_current.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/hide-cursor-and-ppm-root.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/kdrive-evdev.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/kdrive-use-evdev.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/optional-xkb.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/report-correct-randr12.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/scheduler.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.3.0.0/xcalibrate_coords.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/crosscompile.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/disable-apm.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/enable-builtin-fonts.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/enable-xcalibrate.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/extra-kmodes.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/fbdev_xrandr_ioctl.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/fix-newer-xorg-headers.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/kdrive-evdev.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/kdrive-use-evdev.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/no-serial-probing.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/nodolt.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive-1.7.99.2/optional-xkb.patch
>   create mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive/crosscompile.patch
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive/disable-xf86-dga-xorgcfg.patch
>   rename meta/recipes-graphics/xorg-xserver/{xserver-kdrive-1.3.0.0 =>  xserver-kdrive}/fix-newer-xorg-headers.patch (100%)
>   rename meta/recipes-graphics/xorg-xserver/{xserver-kdrive-1.7.99.2 =>  xserver-kdrive}/hide-cursor-and-ppm-root.patch (79%)
>   rename meta/recipes-graphics/xorg-xserver/{xserver-kdrive-1.7.99.2 =>  xserver-kdrive}/keyboard-resume-workaround.patch (100%)
>   create mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.10.1.bb
>   delete mode 100644 meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


