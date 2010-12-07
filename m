Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F9AD4C811C4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 10:01:16 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so48200iwn.35
	for <poky@yoctoproject.org>; Tue, 07 Dec 2010 08:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=Q02Ybs6akhp+MgfvRiL1wcqgEcfxp27pH03oQH1B5cg=;
	b=ZspKeoL44xV0iMDu7HmR3wxXXPieP3hMhNZQ+e5+NUv0fLlQ4DgKyImQ9k4VgFdJqv
	r87kNvpSLridT/OBbVUsPRY1Ts27oHuIWDIgLPyeZeBFU1ul4UfNFP2pqBbFHxzsOADV
	QGGDzoLq1u0DjFkzEOHkc3pauaogUaEQLkAoc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=j8Qo9wdbdOarx5RNbxWTmO+ddzZ1E8T0hxG4FgrAnjsl4OwdhAgeg9Z+GZO9lY4L/g
	z+KjGaY0dgb/0z2zSC22Ste5qelcdroloxgYzVSRa24nfv3B92/YzxJjammjMz+Llx0T
	1kxpBx+NTYkWWiCBsEUzotvCWMezTVPQyLM+M=
MIME-Version: 1.0
Received: by 10.231.30.68 with SMTP id t4mr7782571ibc.129.1291737675849; Tue,
	07 Dec 2010 08:01:15 -0800 (PST)
Received: by 10.231.207.5 with HTTP; Tue, 7 Dec 2010 08:01:15 -0800 (PST)
In-Reply-To: <41b29f580092411b9d6d3d6a5b8ecbe2b289ed3c.1291703954.git.tom.zanussi@intel.com>
References: <cover.1291703954.git.tom.zanussi@intel.com>
	<41b29f580092411b9d6d3d6a5b8ecbe2b289ed3c.1291703954.git.tom.zanussi@intel.com>
Date: Tue, 7 Dec 2010 11:01:15 -0500
Message-ID: <AANLkTindUNw7STsfrFiZMj9nu73Jx-FCq8mh9GOZ1EpB@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
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
X-List-Received-Date: Tue, 07 Dec 2010 16:01:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 7, 2010 at 12:57 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> This layer provides support for Tunnel Creek + Topcliff Intel systems.
>
> It supports the E6xx embedded on-chip graphics via the Intel Embedded
> Media and Graphics Driver (EMGD) 1.5 Gold Driver.

This part of the patch series, coupled with my questions on the kernel
patches themselves makes me wonder about doing a README along
with a BSP/meta layer.

We've used them successfully with BSPs in the past, they are simple,
text and provide technical/testing information only.

If anyone else sees value in this, I have some templates that I can float
for comment.

Cheers,

Bruce

>
> The EMGD and EG20T PCH kernel drivers are of course GPL'ed and are
> submitted in a separate patchset for the 2.6.34 yocto kernel.
>
> The userspace X drivers and supporting libraries however are closed
> and need to be manually copied into the layer before building. =A0The
> details on how to do this can be found in the README.before.building
> doc in meta-crownbay/.
>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
> =A0meta-crownbay/COPYING.MIT =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0| =A0 17 +++
> =A0meta-crownbay/README.before.building =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
112 ++++++++++++++++++++
> =A0meta-crownbay/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 10 ++
> =A0meta-crownbay/conf/machine/crownbay.conf =A0 =A0 =A0 =A0 =A0 | =A0 46 =
++++++++
> =A0.../formfactor/formfactor/crownbay/machconfig =A0 =A0 =A0| =A0 =A03 +
> =A0.../recipes/formfactor/formfactor_0.0.bbappend =A0 =A0 | =A0 =A03 +
> =A0.../recipes/linux/linux-yocto_git.bbappend =A0 =A0 =A0 =A0 | =A0 =A03 =
+
> =A0.../xserver-xf86-config/crownbay/xorg.conf =A0 =A0 =A0 =A0 | =A0 47 ++=
++++++
> =A0.../xorg-xserver/xserver-xf86-config_0.1.bbappend =A0| =A0 =A03 +
> =A0.../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb | =A0 90 ++++++++++=
++++++
> =A0.../xserver-xf86-emgd/crosscompile.patch =A0 =A0 =A0 =A0 =A0 | =A0 19 =
++++
> =A0.../fix_open_max_preprocessor_error.patch =A0 =A0 =A0 =A0 =A0| =A0 13 =
+++
> =A0.../xserver-xf86-emgd/macro_tweak.patch =A0 =A0 =A0 =A0 =A0 =A0| =A0 1=
8 +++
> =A0.../xorg-xserver/xserver-xf86-emgd/nodolt.patch =A0 =A0| =A0 12 ++
> =A0.../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb =A0 =A0 | =A0 25 +++++
> =A015 files changed, 421 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta-crownbay/COPYING.MIT
> =A0create mode 100755 meta-crownbay/README.before.building
> =A0create mode 100644 meta-crownbay/conf/layer.conf
> =A0create mode 100644 meta-crownbay/conf/machine/crownbay.conf
> =A0create mode 100644 meta-crownbay/recipes/formfactor/formfactor/crownba=
y/machconfig
> =A0create mode 100644 meta-crownbay/recipes/formfactor/formfactor_0.0.bba=
ppend
> =A0create mode 100644 meta-crownbay/recipes/linux/linux-yocto_git.bbappen=
d
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-con=
fig/crownbay/xorg.conf
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-con=
fig_0.1.bbappend
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emg=
d-bin_1.7.99.2.bb
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emg=
d/crosscompile.patch
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emg=
d/fix_open_max_preprocessor_error.patch
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emg=
d/macro_tweak.patch
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emg=
d/nodolt.patch
> =A0create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emg=
d_1.7.99.2.bb
>
> diff --git a/meta-crownbay/COPYING.MIT b/meta-crownbay/COPYING.MIT
> new file mode 100644
> index 0000000..fb950dc
> --- /dev/null
> +++ b/meta-crownbay/COPYING.MIT
> @@ -0,0 +1,17 @@
> +Permission is hereby granted, free of charge, to any person obtaining a =
copy
> +of this software and associated documentation files (the "Software"), to=
 deal
> +in the Software without restriction, including without limitation the ri=
ghts
> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sel=
l
> +copies of the Software, and to permit persons to whom the Software is
> +furnished to do so, subject to the following conditions:
> +
> +The above copyright notice and this permission notice shall be included =
in
> +all copies or substantial portions of the Software.
> +
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS =
OR
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL =
THE
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING =
FROM,
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS I=
N
> +THE SOFTWARE.
> diff --git a/meta-crownbay/README.before.building b/meta-crownbay/README.=
before.building
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
> +step. =A0When Yocto supports a click-through installation mechanism, the
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
> +Intel=AE architecture-based product: Intel Atom Processor E6XX Series
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
> +be present in the install directory. =A0Double-click to run it.
> +
> +Select the menu item: New Configuration
> +
> +In the tabbed page, make the following selections and/or enter the
> +specified data:
> +
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
> +workspace/installation/mypackage.pkg_installation/IEMGD_HEAD_Linux/IEMGD=
_HEAD_Linux.tgz
> +
> +This is the file you are interested in. =A0Copy it to your Poky build
> +system, and uncompress/untar it:
> +
> +$ tar cvfz IEMGD_HEAD_Linux.tgz
> +
> +Finally, copy Xorg-xserver binaries in the Meego1.0 driver directory
> +to the xserver-xf86-emgd-bin directory in the meta-crownbay layer:
> +
> +$ cp IEMGD_HEAD_Linux/MeeGo1.0/driver/Xorg-xserver-1.7.99/* meta-crownba=
y/recipes/xorg-xserver/xserver-xf86-emgd-bin
> +
> +You also need to copy the IEMGD License.txt file to the same directory:
> +
> +$ cp IEMGD_HEAD_Linux/License/License.txt meta-crownbay/recipes/xorg-xse=
rver/xserver-xf86-emgd-bin
> +
> +At this point, you should be able to build meta-crownbay images as usual=
.
> +
> +----
> +
> +For reference, the EMGD Driver documentation is also available at the
> +above link (it's also part of the installation).
> +
> +The specific text of the document is:
> +
> +User Guide: Intel=AE Embedded Media and Graphics Driver, EFI Video
> +Driver, EPOG, and Video BIOS v1.5 for Windows* XP and Linux* Provides
> +installation requirements/procedures & describes the vbios/firmware,
> +configuration options, & functionality of Intel=AE EMGD under Windows* &
> +Linux*. Refer to guide for details.
> +
> +File Type/Size: PDF 3,340KB
> +Version: 008 : October 2010
> diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.con=
f
> new file mode 100644
> index 0000000..79dd89b
> --- /dev/null
> +++ b/meta-crownbay/conf/layer.conf
> @@ -0,0 +1,10 @@
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH :=3D "${BBPATH}:${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \
> + =A0 =A0 =A0 ${LAYERDIR}/recipes/*/*.bbappend"
> +
> +BBFILE_COLLECTIONS +=3D "crownbay"
> +BBFILE_PATTERN_crownbay :=3D "^${LAYERDIR}/"
> +BBFILE_PRIORITY_crownbay =3D "6"
> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/con=
f/machine/crownbay.conf
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
> +TARGET_ARCH =3D "i586"
> +PACKAGE_EXTRA_ARCHS =3D "x86 atom"
> +
> +include conf/machine/include/tune-atom.inc
> +
> +BASE_PACKAGE_ARCH=3D"atom"
> +
> +MACHINE_FEATURES =3D "kernel26 screen keyboard pci usbhost ext2 ext3 x86=
 \
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0acpi serial usbgadget"
> +
> +KERNEL_IMAGETYPE =3D "bzImage"
> +
> +PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> +PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> +PREFERRED_PROVIDER_virtual/libgl =A0?=3D "mesa-dri"
> +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-emgd"
> +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-emgd"
> +XSERVER ?=3D "xserver-xf86-emgd \
> + =A0 =A0 =A0 =A0 =A0 xserver-xf86-emgd-bin \
> + =A0 =A0 =A0 =A0 =A0 xf86-input-mouse \
> + =A0 =A0 =A0 =A0 =A0 xf86-input-keyboard \
> + =A0 =A0 =A0 =A0 =A0 xf86-input-evdev \
> + =A0 =A0 =A0 =A0 =A0 xf86-input-synaptics \
> + =A0 =A0 =A0 =A0 =A0 xf86-video-vesa"
> +
> +PREFERRED_VERSION_xserver-xf86-emgd ?=3D "1.7.99.2"
> +PREFERRED_VERSION_xserver-xf86-emgd-bin ?=3D "1.7.99.2"
> +
> +SERIAL_CONSOLE =3D "115200 ttyS0"
> +
> +MACHINE_EXTRA_RRECOMMENDS =3D "kernel-modules eee-acpi-scripts"
> +
> +GUI_MACHINE_CLASS =3D "bigscreen"
> +
> +IMAGE_ROOTFS_SIZE_ext3 =3D "2000000"
> +
> +IMAGE_FSTYPES ?=3D "ext3 cpio.gz"
> +
> +GLIBC_ADDONS =3D "nptl"
> +GLIBC_EXTRA_OECONF =3D "--with-tls"
> diff --git a/meta-crownbay/recipes/formfactor/formfactor/crownbay/machcon=
fig b/meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
> new file mode 100644
> index 0000000..ffce012
> --- /dev/null
> +++ b/meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
> @@ -0,0 +1,3 @@
> +# Assume a USB mouse and keyboard are connected
> +HAVE_TOUCHSCREEN=3D0
> +HAVE_KEYBOARD=3D1
> diff --git a/meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend b/m=
eta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
> new file mode 100644
> index 0000000..4a41d48
> --- /dev/null
> +++ b/meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
> +
> +PRINC =3D "1"
> diff --git a/meta-crownbay/recipes/linux/linux-yocto_git.bbappend b/meta-=
crownbay/recipes/linux/linux-yocto_git.bbappend
> new file mode 100644
> index 0000000..3a50a32
> --- /dev/null
> +++ b/meta-crownbay/recipes/linux/linux-yocto_git.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
> +COMPATIBLE_MACHINE_crownbay =3D "crownbay"
> +KMACHINE_crownbay =A0=3D "crownbay"
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crown=
bay/xorg.conf b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crow=
nbay/xorg.conf
> new file mode 100644
> index 0000000..f78a538
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xor=
g.conf
> @@ -0,0 +1,47 @@
> +##
> +## X Config options generated from CED
> +## x11 conf skeleton
> +## DriverVer=3D
> +##
> +
> +Section "Screen"
> + =A0 =A0Identifier =A0 =A0"Screen0"
> + =A0 =A0Device =A0 =A0 =A0 =A0"IntelEMGD-0"
> + =A0 =A0Monitor =A0 =A0 =A0 "Monitor0"
> + =A0 =A0SubSection =A0 =A0"Display"
> + =A0 =A0EndSubSection
> +EndSection
> +
> +# Primary (First/only) display
> +Section "Device"
> + =A0 =A0Identifier "IntelEMGD-0"
> + =A0 =A0Driver =A0 =A0 "emgd"
> + =A0 =A0VendorName "Intel(R) DEG"
> + =A0 =A0BoardName =A0"Embedded Graphics"
> + =A0 =A0BusID =A0 =A0 =A0"0:2:0"
> + =A0 =A0Screen =A0 =A0 =A00
> + =A0 =A0Option =A0 =A0 "PcfVersion" =A0 =A0 =A0 =A0 =A0 =A0"1792"
> + =A0 =A0Option =A0 =A0 "ConfigId" =A0 =A0 =A0 =A0 =A0 =A0 =A0"1"
> + =A0 =A0Option =A0 =A0 "ALL/1/name" =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
"e6xx"
> + =A0 =A0Option =A0 =A0 "ALL/1/General/PortOrder" =A0 =A0 =A0"40000"
> + =A0 =A0Option =A0 =A0 "ALL/1/General/DisplayConfig" =A0"1"
> + =A0 =A0Option =A0 =A0 "ALL/1/General/DisplayDetect" =A0"1"
> + =A0 =A0Option =A0 =A0 "ALL/1/Port/4/General/name" =A0 =A0 =A0 =A0 =A0 "=
lvds"
> + =A0 =A0Option =A0 =A0 "ALL/1/Port/4/General/EdidAvail" =A0 =A0 =A0"3"
> + =A0 =A0Option =A0 =A0 "ALL/1/Port/4/General/EdidNotAvail" =A0 "1"
> + =A0 =A0Option =A0 =A0 "ALL/1/Port/4/General/Rotation" =A0 =A0 =A0 "0"
> + =A0 =A0Option =A0 =A0 "ALL/1/Port/4/General/Edid" =A0 =A0 =A0 =A0 =A0 "=
1"
> +EndSection
> +
> +Section "ServerLayout"
> + =A0 =A0Identifier =A0 =A0 "Default Layout"
> + =A0 =A0Screen 0 =A0 =A0 =A0 "Screen0" 0 0
> + =A0 # InputDevice =A0 =A0"Mouse0" "CorePointer"
> + =A0 # InputDevice =A0 =A0"Keyboard0" "CoreKeyboard"
> + =A0 # InputDevice =A0 =A0"DevInputMice" "SendCoreEvents"
> +EndSection
> +
> +Section "ServerFlags"
> + =A0 =A0Option =A0 =A0 =A0 =A0"DontZap" =A0"0"
> + =A0 =A0Option =A0 =A0 =A0 =A0"AutoAddDevices" =A0"False"
> +EndSection
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.b=
bappend b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappe=
nd
> new file mode 100644
> index 0000000..4b8d0e6
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -0,0 +1,3 @@
> +THISDIR :=3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> +FILESPATH =3D. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> +
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7=
.99.2.bb b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.=
2.bb
> new file mode 100644
> index 0000000..1b2e1e8
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.b=
b
> @@ -0,0 +1,90 @@
> +SUMMARY =3D "EMGD 1.5 xserver binaries"
> +DESCRIPTION =3D "EMGD 1.5 includes some userspace binaries that use non-=
free licensing. =A0Intel Open Source Technology Center unfortunately has no=
 power to change that, but tries to make their use as painless as possible.=
 =A0Please see the README.before.building in meta-crownbay/recipes/xorg-xer=
ver for instuctions on the (simple) manual steps necessary to make the nece=
ssary binaries available to this recipe. =A0Please do that before building =
an image"
> +
> +LICENSE =3D "Intel-binary-only"
> +LIC_FILES_CHKSUM =3D "file://${WORKDIR}/License.txt;md5=3D95c4d031b83ab8=
03f3f2401b04ecfbcd"
> +PR =3D "r0"
> +
> +FILESPATH =3D "${FILE_DIRNAME}/xserver-xf86-emgd-bin"
> +
> +FILES_${PN} =3D "${libdir}/*.so.* ${libdir}/dri ${libdir}/xorg/modules/d=
rivers"
> +
> +SRC_URI =3D "file://emgd_dri.so \
> + =A0 =A0 =A0 =A0 =A0 file://emgd_drv.so \
> + =A0 =A0 =A0 =A0 =A0 file://emgd_drv_video.so \
> + =A0 =A0 =A0 =A0 =A0 file://libEGL.so \
> + =A0 =A0 =A0 =A0 =A0 file://libGLES_CM.so \
> + =A0 =A0 =A0 =A0 =A0 file://libGLESv2.so \
> + =A0 =A0 =A0 =A0 =A0 file://libIMGegl.so \
> + =A0 =A0 =A0 =A0 =A0 file://libOpenVG.so \
> + =A0 =A0 =A0 =A0 =A0 file://libOpenVGU.so \
> + =A0 =A0 =A0 =A0 =A0 file://libPVROGL.so \
> + =A0 =A0 =A0 =A0 =A0 file://libPVRScopeServices.so \
> + =A0 =A0 =A0 =A0 =A0 file://libXegd_escape.so.2.0.0 \
> + =A0 =A0 =A0 =A0 =A0 file://libglslcompiler.so \
> + =A0 =A0 =A0 =A0 =A0 file://libpvr2d.so \
> + =A0 =A0 =A0 =A0 =A0 file://libpvrPVR2D_DRIWSEGL.so \
> + =A0 =A0 =A0 =A0 =A0 file://libsrv_init.so \
> + =A0 =A0 =A0 =A0 =A0 file://libsrv_um.so \
> + =A0 =A0 =A0 =A0 =A0 file://libva-x11.so.1.0.1 \
> + =A0 =A0 =A0 =A0 =A0 file://libva.so.1.0.1 \
> + =A0 =A0 =A0 =A0 =A0 file://License.txt"
> +
> +S =3D "${WORKDIR}"
> +
> +do_install () {
> + =A0 =A0 =A0 install -d -m 0755 ${D}/${libdir}/dri ${D}/${libdir}/xorg/m=
odules/drivers
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/emgd_dri.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/dri/emgd_dri.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0emgd_dri.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 ${D}${libdir}/dri/emgd_dri.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/emgd_drv.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/xorg/modules/drivers/emgd_drv.so
> + =A0 =A0 =A0 install -m 0755 ${S}/emgd_drv_video.so =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0${D}${libdir}/xorg/modules/drivers/emgd_drv_video.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libEGL.so =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libEGL.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libEGL.so.1.1.15.3082 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libEGL.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libGLES_CM.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0${D}${libdir}/libGLES_CM.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libGLES_CM.so.1.1.15.3082 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libGLES_CM.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libGLESv2.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libGLESv2.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libGLESv2.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libGLESv2.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libIMGegl.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libIMGegl.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libIMGegl.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libIMGegl.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libOpenVG.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libOpenVG.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libOpenVG.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libOpenVG.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libOpenVGU.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0${D}${libdir}/libOpenVGU.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libOpenVG.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libOpenVGU.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libPVROGL.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libPVROGL.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libPVROGL.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libPVROGL.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libPVRScopeServices.so =A0 =A0 =A0 =A0=
 =A0 =A0 ${D}${libdir}/libPVRScopeServices.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libPVRScopeServices.so.1.1.15.308=
2 =A0 =A0 =A0${D}${libdir}/libPVRScopeServices.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libXegd_escape.so.2.0.0 =A0 =A0 =A0 =
=A0 =A0 =A0${D}${libdir}/libXegd_escape.so.2.0.0
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libglslcompiler.so =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 ${D}${libdir}/libglslcompiler.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libglslcompiler.so.1.1.15.3082 =
=A0 =A0 =A0 =A0 =A0${D}${libdir}/libglslcompiler.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libpvr2d.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libpvr2d.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libpvr2d.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libpvr2d.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libpvrPVR2D_DRIWSEGL.so =A0 =A0 =A0 =
=A0 =A0 =A0${D}${libdir}/libpvrPVR2D_DRIWSEGL.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libpvrPVR2D_DRIWSEGL.so.1.1.15.30=
82 =A0 =A0 ${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libsrv_init.so =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 ${D}${libdir}/libsrv_init.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libsrv_init.so.1.1.15.3082 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libsrv_init.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libsrv_um.so =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 ${D}${libdir}/libsrv_um.so.1.1.15.3082
> + =A0 =A0 =A0 ln -sf =A0 =A0 =A0 =A0 =A0libsrv_um.so.1.1.15.3082 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0${D}${libdir}/libsrv_um.so
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libva-x11.so.1.0.1 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 ${D}${libdir}/libva-x11.so.1.0.1
> +
> + =A0 =A0 =A0 install -m 0755 ${S}/libva.so.1.0.1 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 ${D}${libdir}/libva.so.1.0.1
> +}
> +
> +LEAD_SONAME =3D "libEGL.so"
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crossco=
mpile.patch b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscom=
pile.patch
> new file mode 100644
> index 0000000..2341e40
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.p=
atch
> @@ -0,0 +1,19 @@
> +Index: xorg-server-1.7.99.2/configure.ac
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- xorg-server-1.7.99.2.orig/configure.ac =A0 =A0 2010-01-29 16:38:49.0=
00000000 +0000
> ++++ xorg-server-1.7.99.2/configure.ac =A02010-01-29 16:42:39.000000000 +=
0000
> +@@ -503,14 +503,10 @@
> +
> + dnl Uses --default-font-path if set, otherwise checks for /etc/X11/font=
path.d,
> + dnl otherwise uses standard subdirectories of FONTROOTDIR
> +-AC_CHECK_FILE([${sysconfdir}/X11/fontpath.d],
> +- =A0 =A0 =A0[DEFAULT_FONT_PATH=3D'catalogue:${sysconfdir}/X11/fontpath.=
d'],
> +- =A0 =A0 =A0[
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 DEFAULT_FONT_PATH=3D"${FONTMISCDIR}/,${FONT=
TTFDIR}/,${FONTOTFDIR}/,${FONTTYPE1DIR}/,${FONT100DPIDIR}/,${FONT75DPIDIR}/=
"
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case $host_os in
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 darwin*) =A0 =A0DEFAULT_FON=
T_PATH=3D"${DEFAULT_FONT_PATH},/Library/Fonts,/System/Library/Fonts" ;;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 esac
> +- =A0 =A0 =A0])
> + AC_ARG_WITH(default-font-path, AS_HELP_STRING([--with-default-font-path=
=3DPATH], [Comma separated list of font dirs]),
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 [ FONTPATH=
=3D"$withval" ],
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 [ FONTPATH=
=3D"${DEFAULT_FONT_PATH}" ])
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_ope=
n_max_preprocessor_error.patch b/meta-crownbay/recipes/xorg-xserver/xserver=
-xf86-emgd/fix_open_max_preprocessor_error.patch
> new file mode 100644
> index 0000000..565832e
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_p=
reprocessor_error.patch
> @@ -0,0 +1,13 @@
> +Index: git/os/osdep.h
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- git.orig/os/osdep.h =A0 =A0 =A0 =A02008-10-07 18:38:21.000000000 +01=
00
> ++++ git/os/osdep.h =A0 =A0 2008-10-07 18:39:36.000000000 +0100
> +@@ -92,7 +92,7 @@
> + =A0* like sysconf(_SC_OPEN_MAX) is not supported.
> + =A0*/
> +
> +-#if OPEN_MAX <=3D 256
> ++#if 0
> + #define MAXSOCKS (OPEN_MAX - 1)
> + #else
> + #define MAXSOCKS 256
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_t=
weak.patch b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_twe=
ak.patch
> new file mode 100644
> index 0000000..6998adf
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.pa=
tch
> @@ -0,0 +1,18 @@
> +Index: xorg-server-1.5.0/xorg-server.m4
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- xorg-server-1.5.0.orig/xorg-server.m4 =A0 =A0 =A02007-05-29 20:36:51=
.000000000 +0100
> ++++ xorg-server-1.5.0/xorg-server.m4 =A0 2008-11-04 23:56:55.000000000 +=
0000
> +@@ -28,9 +28,12 @@
> + # Checks for the $1 define in xorg-server.h (from the sdk). =A0If it
> + # is defined, then add $1 to $REQUIRED_MODULES.
> +
> ++m4_pattern_allow(PKG_CONFIG_SYSROOT_DIR)
> ++
> + AC_DEFUN([XORG_DRIVER_CHECK_EXT],[
> ++ =A0 =A0 =A0PKG_PROG_PKG_CONFIG
> + =A0 =A0 =A0 SAVE_CFLAGS=3D"$CFLAGS"
> +- =A0 =A0 =A0CFLAGS=3D"$CFLAGS -I`pkg-config --variable=3Dsdkdir xorg-se=
rver`"
> ++ =A0 =A0 =A0CFLAGS=3D"$CFLAGS -I$PKG_CONFIG_SYSROOT_DIR`pkg-config --va=
riable=3Dsdkdir xorg-server`"
> + =A0 =A0 =A0 AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
> + #include "xorg-server.h"
> + #if !defined $1
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.=
patch b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
> new file mode 100644
> index 0000000..6b34032
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
> @@ -0,0 +1,12 @@
> +Index: git/configure.ac
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- git.orig/configure.ac =A0 =A0 =A02009-01-15 20:35:31.000000000 +0000
> ++++ git/configure.ac =A0 2009-01-15 20:35:38.000000000 +0000
> +@@ -62,7 +62,6 @@
> + AC_LIBTOOL_WIN32_DLL
> + AC_DISABLE_STATIC
> + AC_PROG_LIBTOOL
> +-DOLT
> + AC_PROG_MAKE_SET
> + PKG_PROG_PKG_CONFIG
> + AC_PROG_LEX
> diff --git a/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.=
2.bb b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
> new file mode 100644
> index 0000000..d5d15df
> --- /dev/null
> +++ b/meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
> @@ -0,0 +1,25 @@
> +require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
> +
> +LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D3dd2bbe3563837f80ed8926b06c1c=
353"
> +
> +PROTO_DEPS +=3D "xf86driproto dri2proto"
> +
> +DEPENDS +=3D "font-util"
> +
> +PE =3D "1"
> +PR =3D "r0"
> +
> +SRC_URI +=3D "file://nodolt.patch \
> + =A0 =A0 =A0 =A0 =A0 =A0file://crosscompile.patch"
> +
> +# Misc build failure for master HEAD
> +SRC_URI +=3D "file://fix_open_max_preprocessor_error.patch"
> +
> +SRC_URI[md5sum] =3D "5c8773499a6a8c1ddaedf33577ec9634"
> +SRC_URI[sha256sum] =3D "8b30800004c98fc7a8e6ff31a339f28451be5132e774443b=
e22bf226e1791e34"
> +
> +RDEPENDS_${PN} +=3D "xserver-xf86-emgd-bin"
> +
> +COMPATIBLE_MACHINE =3D "crownbay"
> +
> +EXTRA_OECONF +=3D "--enable-dga --enable-dri --enable-dri2"
> --
> 1.7.0.4
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

