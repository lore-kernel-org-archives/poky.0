Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55BB84C811C1
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 07:17:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2010 05:17:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="358184403"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2010 05:17:42 -0800
Date: Tue, 7 Dec 2010 18:40:53 +0800
From: Yu Ke <ke.yu@intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Message-ID: <20101207104053.GA24184@kyu3-hedt>
References: <cover.1291703954.git.tom.zanussi@intel.com>
	<41b29f580092411b9d6d3d6a5b8ecbe2b289ed3c.1291703954.git.tom.zanussi@intel.com>
MIME-Version: 1.0
In-Reply-To: <41b29f580092411b9d6d3d6a5b8ecbe2b289ed3c.1291703954.git.tom.zanussi@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-crownbay: new layer for E6xx/EG20T systems
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
X-List-Received-Date: Tue, 07 Dec 2010 13:17:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Tom,

I like the README.before.building, it provide comprehensive and useful info. Meanwhile, I am still feel this is not convenient especially for linux people who don't want to run windows app like IEMGD_1_5_GOLD_ALL_1742.exe.

I totally understand this is caused by the weired EMGD package approach. the ultimate way to fix that would be persuding EMGD release team to change their package appraoch. But before that happens, could we tweak a bit in our side, for example, put the final IEMGD_HEAD_Linux.tgz to our autobuilder, and make a SRC_URI to fetch it. in this case, thing will be automatically settled down and won't bother people by the manual install process. Just my two cents.

Regards
Ke

On Dec 06, 23:57, Tom Zanussi wrote:
> This layer provides support for Tunnel Creek + Topcliff Intel systems.
> 
> It supports the E6xx embedded on-chip graphics via the Intel Embedded
> Media and Graphics Driver (EMGD) 1.5 Gold Driver.
> 
> The EMGD and EG20T PCH kernel drivers are of course GPL'ed and are
> submitted in a separate patchset for the 2.6.34 yocto kernel.
> 
> The userspace X drivers and supporting libraries however are closed
> and need to be manually copied into the layer before building.  The
> details on how to do this can be found in the README.before.building
> doc in meta-crownbay/.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-crownbay/COPYING.MIT                          |   17 +++
>  meta-crownbay/README.before.building               |  112 ++++++++++++++++++++
>  meta-crownbay/conf/layer.conf                      |   10 ++
>  meta-crownbay/conf/machine/crownbay.conf           |   46 ++++++++
>  .../formfactor/formfactor/crownbay/machconfig      |    3 +
>  .../recipes/formfactor/formfactor_0.0.bbappend     |    3 +
>  .../recipes/linux/linux-yocto_git.bbappend         |    3 +
>  .../xserver-xf86-config/crownbay/xorg.conf         |   47 ++++++++
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>  .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 ++++++++++++++++
>  .../xserver-xf86-emgd/crosscompile.patch           |   19 ++++
>  .../fix_open_max_preprocessor_error.patch          |   13 +++
>  .../xserver-xf86-emgd/macro_tweak.patch            |   18 +++
>  .../xorg-xserver/xserver-xf86-emgd/nodolt.patch    |   12 ++
>  .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 +++++
>  15 files changed, 421 insertions(+), 0 deletions(-)
>  create mode 100644 meta-crownbay/COPYING.MIT
>  create mode 100755 meta-crownbay/README.before.building
>  create mode 100644 meta-crownbay/conf/layer.conf
>  create mode 100644 meta-crownbay/conf/machine/crownbay.conf
>  create mode 100644 meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
>  create mode 100644 meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
>  create mode 100644 meta-crownbay/recipes/linux/linux-yocto_git.bbappend
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
>  create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
> 
> diff --git a/meta-crownbay/COPYING.MIT b/meta-crownbay/COPYING.MIT
> new file mode 100644
> index 0000000..fb950dc
> --- /dev/null
> +++ b/meta-crownbay/COPYING.MIT
> @@ -0,0 +1,17 @@
> +Permission is hereby granted, free of charge, to any person obtaining a copy 
> +of this software and associated documentation files (the "Software"), to deal 
> +in the Software without restriction, including without limitation the rights 
> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
> +copies of the Software, and to permit persons to whom the Software is 
> +furnished to do so, subject to the following conditions:
> +
> +The above copyright notice and this permission notice shall be included in 
> +all copies or substantial portions of the Software.
> +
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
> +THE SOFTWARE.
> diff --git a/meta-crownbay/README.before.building b/meta-crownbay/README.before.building
> new file mode 100755
> index 0000000..ded4c05
> --- /dev/null
> +++ b/meta-crownbay/README.before.building
> @@ -0,0 +1,112 @@
> +The meta-crownbay layer makes use of the proprietary Intel EMGD
> +userspace drivers, which at this point in time require that the user
> +accept the Intel license by manually extracting the binaries and
> +copying them to the proper location in the meta-crownbay layer.
> +
> +There currently isn't an automated way to do this, thus the manual
> +step.  When Yocto supports a click-through installation mechanism, the
> +binary files will be packaged as part of the recipe, and this step
> +will be unnecessary.
> +
> +These steps require that you run a graphical application in Windows.
> +Windows 7 was used for these instructions, but it shouldn't matter
> +which version of Windows you use.
> +
> +The first step of the process is to download the EMGD 1.5 Gold Driver.
> +Here is the current link to the URL which it can be downloaded from:
> +
> +http://edc.intel.com/Software/Downloads/EMGD/
> +
> +In the Download Now tab, select:
> +
> +Intel? architecture-based product: Intel Atom Processor E6XX Series
> +Operating System: MeeGo 1.0 IVI Linux (kernel 2.6.33.3, X.server 1.8.0)
> +
> +That will give you a large zip file:
> +
> +IEMGD_1_5_GOLD_ALL_1742.zip
> +
> +Extract the files in the zip file, which will in turn give you a large
> +.exe file:
> +
> +IEMGD_1_5_GOLD_ALL_1742.exe
> +
> +Run IEMGD_1_5_GOLD_ALL_1742.exe to install, accept licenses, etc.
> +
> +If it says to install watcom, follow the instructions to do that.
> +
> +When the installation completes, an application named "emgd-ced" will
> +be present in the install directory.  Double-click to run it.
> +
> +Select the menu item: New Configuration
> +
> +In the tabbed page, make the following selections and/or enter the
> +specified data:
gg> +
> +Configuration File Name: myconfig
> +Platform Chipset: Intel Atom Processor E6xx
> +Port Devices: LVDS, sDVO
> +
> +Hit the 'Next' button.
> +
> +On the next tabbed page, make the following selections and/or enter
> +the specified data:
> +
> +Readable Port Name: portname0
> +Encoder Configuration: Select sDVO Device: Internal LVDS
> +
> +Hit the 'Finish' button.
> +
> +Select the menu item: New Package
> +
> +In the tabbed page, make the following selections and/or enter the
> +specified data:
> +
> +Package File Name: mypackage
> +Configurations: selec myconfig.cnfg
> +Target OS: Linux operating System
> +
> +Hit the 'Finish' button.
> +
> +Select the menu item: Generate Installation
> +
> +This will create the EMGD installation package:
> +
> +Generating EMGD installation...
> +
> +The installation package should now be under the 'workspace'
> +subdirectory of the directory you installed to:
> +
> +workspace/installation/mypackage.pkg_installation/IEMGD_HEAD_Linux/IEMGD_HEAD_Linux.tgz
> +
> +This is the file you are interested in.  Copy it to your Poky build
> +system, and uncompress/untar it:
> +
> +$ tar cvfz IEMGD_HEAD_Linux.tgz
> +
> +Finally, copy Xorg-xserver binaries in the Meego1.0 driver directory
> +to the xserver-xf86-emgd-bin directory in the meta-crownbay layer:
> +
> +$ cp IEMGD_HEAD_Linux/MeeGo1.0/driver/Xorg-xserver-1.7.99/* meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin
> +
> +You also need to copy the IEMGD License.txt file to the same directory:
> +
> +$ cp IEMGD_HEAD_Linux/License/License.txt meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin
> +
> +At this point, you should be able to build meta-crownbay images as usual.
> +
> +----
> +
> +For reference, the EMGD Driver documentation is also available at the
> +above link (it's also part of the installation).
> +
> +The specific text of the document is:
> +
> +User Guide: Intel? Embedded Media and Graphics Driver, EFI Video
> +Driver, EPOG, and Video BIOS v1.5 for Windows* XP and Linux* Provides
> +installation requirements/procedures & describes the vbios/firmware,
> +configuration options, & functionality of Intel? EMGD under Windows* &
> +Linux*. Refer to guide for details.
> +
> +File Type/Size: PDF 3,340KB
> +Version: 008 : October 2010
> diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
> new file mode 100644
> index 0000000..79dd89b
> --- /dev/null
> +++ b/meta-crownbay/conf/layer.conf
> @@ -0,0 +1,10 @@
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH := "${BBPATH}:${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES := "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \
> +	${LAYERDIR}/recipes/*/*.bbappend"
> +
> +BBFILE_COLLECTIONS += "crownbay"
> +BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
> +BBFILE_PRIORITY_crownbay = "6"
> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> new file mode 100644
> index 0000000..a2c349a
> --- /dev/null
> +++ b/meta-crownbay/conf/machine/crownbay.conf
> @@ -0,0 +1,46 @@
> +#@TYPE: Machine
> +#@NAME: crownbay
> +
> +#@DESCRIPTION: Machine configuration for Crown Bay systems
> +# i.e. E660 + EG20T
> +
> +TARGET_ARCH = "i586"
> +PACKAGE_EXTRA_ARCHS = "x86 atom"
> +
> +include conf/machine/include/tune-atom.inc
> +
> +BASE_PACKAGE_ARCH="atom"
> +
> +MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> +                    acpi serial usbgadget"
> +
> +KERNEL_IMAGETYPE = "bzImage"
> +
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> +PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
> +PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
> +PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-emgd"
> +PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-emgd"
> +XSERVER ?= "xserver-xf86-emgd \
> +           xserver-xf86-emgd-bin \
> +           xf86-input-mouse \
> +           xf86-input-keyboard \
> +           xf86-input-evdev \
> +           xf86-input-synaptics \
> +           xf86-video-vesa"
> +
> +PREFERRED_VERSION_xserver-xf86-emgd ?= "1.7.99.2"
> +PREFERRED_VERSION_xserver-xf86-emgd-bin ?= "1.7.99.2"
> +
> +SERIAL_CONSOLE = "115200 ttyS0"
> +
> +MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
> +
> +GUI_MACHINE_CLASS = "bigscreen"
> +
> +IMAGE_ROOTFS_SIZE_ext3 = "2000000"
> +
> +IMAGE_FSTYPES ?= "ext3 cpio.gz"
> +
> +GLIBC_ADDONS = "nptl"
> +GLIBC_EXTRA_OECONF = "--with-tls"
> diff --git a/meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig b/meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
> new file mode 100644
> index 0000000..ffce012
> --- /dev/null
> +++ b/meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
> @@ -0,0 +1,3 @@
> +# Assume a USB mouse and keyboard are connected
> +HAVE_TOUCHSCREEN=0
> +HAVE_KEYBOARD=1
> diff --git a/meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend b/meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
> new file mode 100644
> index 0000000..4a41d48
> --- /dev/null
> +++ b/meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> + 
> +PRINC = "1"
> diff --git a/meta-crownbay/recipes/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes/linux/linux-yocto_git.bbappend
> new file mode 100644
> index 0000000..3a50a32
> --- /dev/null
> +++ b/meta-crownbay/recipes/linux/linux-yocto_git.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +COMPATIBLE_MACHINE_crownbay = "crownbay"
> +KMACHINE_crownbay  = "crownbay"
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
> new file mode 100644
> index 0000000..f78a538
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
> @@ -0,0 +1,47 @@
> +##
> +## X Config options generated from CED
> +## x11 conf skeleton
> +## DriverVer=
> +##
> +
> +Section "Screen"
> +    Identifier    "Screen0"
> +    Device        "IntelEMGD-0"
> +    Monitor       "Monitor0"
> +    SubSection    "Display"
> +    EndSubSection
> +EndSection
> +
> +# Primary (First/only) display
> +Section "Device"
> +    Identifier "IntelEMGD-0"
> +    Driver     "emgd"
> +    VendorName "Intel(R) DEG"
> +    BoardName  "Embedded Graphics"
> +    BusID      "0:2:0"
> +    Screen      0
> +    Option     "PcfVersion"            "1792"
> +    Option     "ConfigId"              "1"
> +    Option     "ALL/1/name"                   "e6xx"
> +    Option     "ALL/1/General/PortOrder"      "40000"
> +    Option     "ALL/1/General/DisplayConfig"  "1"
> +    Option     "ALL/1/General/DisplayDetect"  "1"
> +    Option     "ALL/1/Port/4/General/name"           "lvds"
> +    Option     "ALL/1/Port/4/General/EdidAvail"      "3"
> +    Option     "ALL/1/Port/4/General/EdidNotAvail"   "1"
> +    Option     "ALL/1/Port/4/General/Rotation"       "0"
> +    Option     "ALL/1/Port/4/General/Edid"           "1"
> +EndSection
> +
> +Section "ServerLayout"
> +    Identifier     "Default Layout"
> +    Screen 0       "Screen0" 0 0
> +   # InputDevice    "Mouse0" "CorePointer"
> +   # InputDevice    "Keyboard0" "CoreKeyboard"
> +   # InputDevice    "DevInputMice" "SendCoreEvents"
> +EndSection
> +
> +Section "ServerFlags"
> +    Option        "DontZap"  "0"
> +    Option        "AutoAddDevices"  "False"
> +EndSection
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
> new file mode 100644
> index 0000000..4b8d0e6
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -0,0 +1,3 @@
> +THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> +FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> +
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
> new file mode 100644
> index 0000000..1b2e1e8
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
> @@ -0,0 +1,90 @@
> +SUMMARY = "EMGD 1.5 xserver binaries"
> +DESCRIPTION = "EMGD 1.5 includes some userspace binaries that use non-free licensing.  Intel Open Source Technology Center unfortunately has no power to change that, but tries to make their use as painless as possible.  Please see the README.before.building in meta-crownbay/recipes/xorg-xerver for instuctions on the (simple) manual steps necessary to make the necessary binaries available to this recipe.  Please do that before building an image"
> +
> +LICENSE = "Intel-binary-only"
> +LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=95c4d031b83ab803f3f2401b04ecfbcd"
> +PR = "r0"
> +
> +FILESPATH = "${FILE_DIRNAME}/xserver-xf86-emgd-bin"
> +
> +FILES_${PN} = "${libdir}/*.so.* ${libdir}/dri ${libdir}/xorg/modules/drivers"
> +
> +SRC_URI = "file://emgd_dri.so \
> +           file://emgd_drv.so \
> +           file://emgd_drv_video.so \
> +           file://libEGL.so \
> +           file://libGLES_CM.so \
> +           file://libGLESv2.so \
> +           file://libIMGegl.so \
> +           file://libOpenVG.so \
> +           file://libOpenVGU.so \
> +           file://libPVROGL.so \
> +           file://libPVRScopeServices.so \
> +           file://libXegd_escape.so.2.0.0 \
> +           file://libglslcompiler.so \
> +           file://libpvr2d.so \
> +           file://libpvrPVR2D_DRIWSEGL.so \
> +           file://libsrv_init.so \
> +           file://libsrv_um.so \
> +           file://libva-x11.so.1.0.1 \
> +           file://libva.so.1.0.1 \
> +           file://License.txt"
> +
> +S = "${WORKDIR}"
> +
> +do_install () {
> +	install -d -m 0755 ${D}/${libdir}/dri ${D}/${libdir}/xorg/modules/drivers
> +
> +	install -m 0755	${S}/emgd_dri.so			${D}${libdir}/dri/emgd_dri.so.1.1.15.3082
> +	ln -sf		emgd_dri.so.1.1.15.3082			${D}${libdir}/dri/emgd_dri.so
> +
> +	install -m 0755	${S}/emgd_drv.so			${D}${libdir}/xorg/modules/drivers/emgd_drv.so
> +	install -m 0755	${S}/emgd_drv_video.so			${D}${libdir}/xorg/modules/drivers/emgd_drv_video.so
> +
> +	install -m 0755	${S}/libEGL.so				${D}${libdir}/libEGL.so.1.1.15.3082
> +	ln -sf		libEGL.so.1.1.15.3082			${D}${libdir}/libEGL.so
> +
> +	install -m 0755	${S}/libGLES_CM.so			${D}${libdir}/libGLES_CM.so.1.1.15.3082
> +	ln -sf		libGLES_CM.so.1.1.15.3082		${D}${libdir}/libGLES_CM.so
> +
> +	install -m 0755	${S}/libGLESv2.so			${D}${libdir}/libGLESv2.so.1.1.15.3082
> +	ln -sf		libGLESv2.so.1.1.15.3082		${D}${libdir}/libGLESv2.so
> +
> +	install -m 0755	${S}/libIMGegl.so			${D}${libdir}/libIMGegl.so.1.1.15.3082
> +	ln -sf		libIMGegl.so.1.1.15.3082		${D}${libdir}/libIMGegl.so
> +
> +	install -m 0755	${S}/libOpenVG.so			${D}${libdir}/libOpenVG.so.1.1.15.3082
> +	ln -sf		libOpenVG.so.1.1.15.3082		${D}${libdir}/libOpenVG.so
> +
> +	install -m 0755	${S}/libOpenVGU.so			${D}${libdir}/libOpenVGU.so.1.1.15.3082
> +	ln -sf		libOpenVG.so.1.1.15.3082		${D}${libdir}/libOpenVGU.so
> +
> +	install -m 0755	${S}/libPVROGL.so			${D}${libdir}/libPVROGL.so.1.1.15.3082
> +	ln -sf		libPVROGL.so.1.1.15.3082		${D}${libdir}/libPVROGL.so
> +
> +	install -m 0755	${S}/libPVRScopeServices.so		${D}${libdir}/libPVRScopeServices.so.1.1.15.3082
> +	ln -sf		libPVRScopeServices.so.1.1.15.3082	${D}${libdir}/libPVRScopeServices.so
> +
> +	install -m 0755	${S}/libXegd_escape.so.2.0.0		${D}${libdir}/libXegd_escape.so.2.0.0
> +
> +	install -m 0755	${S}/libglslcompiler.so			${D}${libdir}/libglslcompiler.so.1.1.15.3082
> +	ln -sf		libglslcompiler.so.1.1.15.3082		${D}${libdir}/libglslcompiler.so
> +
> +	install -m 0755	${S}/libpvr2d.so			${D}${libdir}/libpvr2d.so.1.1.15.3082
> +	ln -sf		libpvr2d.so.1.1.15.3082			${D}${libdir}/libpvr2d.so
> +
> +	install -m 0755	${S}/libpvrPVR2D_DRIWSEGL.so		${D}${libdir}/libpvrPVR2D_DRIWSEGL.so.1.1.15.3082
> +	ln -sf		libpvrPVR2D_DRIWSEGL.so.1.1.15.3082	${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
> +
> +	install -m 0755	${S}/libsrv_init.so			${D}${libdir}/libsrv_init.so.1.1.15.3082
> +	ln -sf		libsrv_init.so.1.1.15.3082		${D}${libdir}/libsrv_init.so
> +
> +	install -m 0755	${S}/libsrv_um.so			${D}${libdir}/libsrv_um.so.1.1.15.3082
> +	ln -sf		libsrv_um.so.1.1.15.3082		${D}${libdir}/libsrv_um.so
> +
> +	install -m 0755	${S}/libva-x11.so.1.0.1			${D}${libdir}/libva-x11.so.1.0.1
> +
> +	install -m 0755	${S}/libva.so.1.0.1			${D}${libdir}/libva.so.1.0.1
> +}
> +
> +LEAD_SONAME = "libEGL.so"
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.patch b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
> new file mode 100644
> index 0000000..2341e40
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
> @@ -0,0 +1,19 @@
> +Index: xorg-server-1.7.99.2/configure.ac
> +===================================================================
> +--- xorg-server-1.7.99.2.orig/configure.ac	2010-01-29 16:38:49.000000000 +0000
> ++++ xorg-server-1.7.99.2/configure.ac	2010-01-29 16:42:39.000000000 +0000
> +@@ -503,14 +503,10 @@
> + 
> + dnl Uses --default-font-path if set, otherwise checks for /etc/X11/fontpath.d,
> + dnl otherwise uses standard subdirectories of FONTROOTDIR
> +-AC_CHECK_FILE([${sysconfdir}/X11/fontpath.d],
> +-	[DEFAULT_FONT_PATH='catalogue:${sysconfdir}/X11/fontpath.d'],
> +-	[
> + 		DEFAULT_FONT_PATH="${FONTMISCDIR}/,${FONTTTFDIR}/,${FONTOTFDIR}/,${FONTTYPE1DIR}/,${FONT100DPIDIR}/,${FONT75DPIDIR}/"
> + 		case $host_os in
> + 			darwin*)    DEFAULT_FONT_PATH="${DEFAULT_FONT_PATH},/Library/Fonts,/System/Library/Fonts" ;;
> + 		esac
> +-	])
> + AC_ARG_WITH(default-font-path, AS_HELP_STRING([--with-default-font-path=PATH], [Comma separated list of font dirs]),
> + 				[ FONTPATH="$withval" ],
> + 				[ FONTPATH="${DEFAULT_FONT_PATH}" ])
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
> new file mode 100644
> index 0000000..565832e
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
> @@ -0,0 +1,13 @@
> +Index: git/os/osdep.h
> +===================================================================
> +--- git.orig/os/osdep.h	2008-10-07 18:38:21.000000000 +0100
> ++++ git/os/osdep.h	2008-10-07 18:39:36.000000000 +0100
> +@@ -92,7 +92,7 @@
> +  * like sysconf(_SC_OPEN_MAX) is not supported.
> +  */
> + 
> +-#if OPEN_MAX <= 256
> ++#if 0
> + #define MAXSOCKS (OPEN_MAX - 1)
> + #else
> + #define MAXSOCKS 256
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
> new file mode 100644
> index 0000000..6998adf
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
> @@ -0,0 +1,18 @@
> +Index: xorg-server-1.5.0/xorg-server.m4
> +===================================================================
> +--- xorg-server-1.5.0.orig/xorg-server.m4	2007-05-29 20:36:51.000000000 +0100
> ++++ xorg-server-1.5.0/xorg-server.m4	2008-11-04 23:56:55.000000000 +0000
> +@@ -28,9 +28,12 @@
> + # Checks for the $1 define in xorg-server.h (from the sdk).  If it
> + # is defined, then add $1 to $REQUIRED_MODULES.
> + 
> ++m4_pattern_allow(PKG_CONFIG_SYSROOT_DIR)
> ++
> + AC_DEFUN([XORG_DRIVER_CHECK_EXT],[
> ++	PKG_PROG_PKG_CONFIG
> + 	SAVE_CFLAGS="$CFLAGS"
> +-	CFLAGS="$CFLAGS -I`pkg-config --variable=sdkdir xorg-server`"
> ++	CFLAGS="$CFLAGS -I$PKG_CONFIG_SYSROOT_DIR`pkg-config --variable=sdkdir xorg-server`"
> + 	AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
> + #include "xorg-server.h"
> + #if !defined $1
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
> new file mode 100644
> index 0000000..6b34032
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
> @@ -0,0 +1,12 @@
> +Index: git/configure.ac
> +===================================================================
> +--- git.orig/configure.ac	2009-01-15 20:35:31.000000000 +0000
> ++++ git/configure.ac	2009-01-15 20:35:38.000000000 +0000
> +@@ -62,7 +62,6 @@
> + AC_LIBTOOL_WIN32_DLL
> + AC_DISABLE_STATIC
> + AC_PROG_LIBTOOL
> +-DOLT
> + AC_PROG_MAKE_SET
> + PKG_PROG_PKG_CONFIG
> + AC_PROG_LEX
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
> new file mode 100644
> index 0000000..d5d15df
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
> @@ -0,0 +1,25 @@
> +require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
> +
> +PROTO_DEPS += "xf86driproto dri2proto"
> +
> +DEPENDS += "font-util"
> +
> +PE = "1"
> +PR = "r0"
> +
> +SRC_URI += "file://nodolt.patch \
> +            file://crosscompile.patch"
> +
> +# Misc build failure for master HEAD
> +SRC_URI += "file://fix_open_max_preprocessor_error.patch"
> +
> +SRC_URI[md5sum] = "5c8773499a6a8c1ddaedf33577ec9634"
> +SRC_URI[sha256sum] = "8b30800004c98fc7a8e6ff31a339f28451be5132e774443be22bf226e1791e34"
> +
> +RDEPENDS_${PN} += "xserver-xf86-emgd-bin"
> +
> +COMPATIBLE_MACHINE = "crownbay"
> +
> +EXTRA_OECONF += "--enable-dga --enable-dri --enable-dri2"
> -- 
> 1.7.0.4
> 

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


