Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17C374C801BF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 10:31:11 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jul 2011 08:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,262,1309762800"; d="scan'208";a="29819808"
Received: from unknown (HELO [10.255.14.61]) ([10.255.14.61])
	by orsmga002.jf.intel.com with ESMTP; 25 Jul 2011 08:31:10 -0700
Message-ID: <4E2D8C3D.4070008@linux.intel.com>
Date: Mon, 25 Jul 2011 08:31:09 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
	<dfaafb2683125950f8ba7a4d873058f30b2a1dfb.1311603837.git.paul.eggleton@linux.intel.com>
In-Reply-To: <dfaafb2683125950f8ba7a4d873058f30b2a1dfb.1311603837.git.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/6] meta-yocto/conf/local.conf.sample: move advanced settings to extended sample file
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
X-List-Received-Date: Mon, 25 Jul 2011 15:31:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/25/2011 07:28 AM, Paul Eggleton wrote:
> These settings are very unlikely to be needed by new users. Also add a
> comment pointing to the extended file as well as the Poky Reference
> Manual.
>
> Note that this removes the setting of PACKAGE_DEBUG_SPLIT_STYLE; however
> we check for the value that is not the default so this should not make
> any difference to the default behaviour.
>
> Signed-off-by: Paul Eggleton<paul.eggleton@linux.intel.com>
> ---
>   meta-yocto/conf/local.conf.sample          |   98 +++-------------------------
>   meta-yocto/conf/local.conf.sample.extended |   88 +++++++++++++++++++++++++
>   2 files changed, 97 insertions(+), 89 deletions(-)
>
> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
> index 6ba92af..523a737 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -1,3 +1,12 @@
> +# For more information on these configuration options, please see the
> +# Poky Reference Manual at:
> +#
> +#  http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html
> +#
> +# Note: there are additional more advanced configuration option examples
> +# (e.g. for debugging) in local.conf.sample.extended which can be found
> +# in meta-yocto/conf/
> +
>   # CONF_VERSION is increased each time build/conf/ changes incompatibly
>   CONF_VERSION = "1"
>
> @@ -64,15 +73,6 @@ EXTRA_IMAGE_FEATURES = "debug-tweaks"
>   #PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
>   PACKAGE_CLASSES ?= "package_rpm package_ipk"
>
> -# mklibs library size optimization is more useful to smaller images,
> -# and less useful for bigger images. Also mklibs library optimization
> -# can break the ABI compatibility, so should not be applied to the
> -# images which are to be extended or upgraded later.
> -#This enabled mklibs library size optimization just for the specified image.
> -#MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal"
> -#This enable mklibs library size optimization will be for all the images.
> -#MKLIBS_OPTIMIZED_IMAGES ?= "all"
> -
>   # A list of additional classes to use when building the system
>   # include 'image-mklibs' to reduce shared library files size for an image
>   # include 'image-prelink' in order to prelink the filesystem image
> @@ -80,65 +80,6 @@ PACKAGE_CLASSES ?= "package_rpm package_ipk"
>   # NOTE: if listing mklibs&  prelink both, then make sure mklibs is before prelink
>   USER_CLASSES ?= "image-mklibs image-prelink"
>
> -# POKYMODE controls the characteristics of the generated packages/images by
> -# telling poky which type of toolchain to use.
> -#
> -# Options include several different EABI combinations and a compatibility
> -# mode for the OABI mode poky previously used.
> -#
> -# The default is "eabi"
> -# Use "oabi" for machines with kernels<  2.6.18 on ARM for example.
> -# Use "external-MODE" to use the precompiled external toolchains where MODE
> -# is the type of external toolchain to use e.g. eabi.
> -# POKYMODE = "external-eabi"
> -
> -# Uncomment this to specify where BitBake should create its temporary files.
> -# Note that a full build of everything in OpenEmbedded will take GigaBytes of hard
> -# disk space, so make sure to free enough space. The default TMPDIR is
> -#<build directory>/tmp
> -#TMPDIR = "${COREBASE}/build/tmp"
> -
> -# The following are used to control options related to debugging.
> -#
> -# Uncomment this to change the optimization to make debugging easer, at the
> -# possible cost of performance.
> -# DEBUG_BUILD = "1"
> -#
> -# Uncomment this to disable the stripping of the installed binaries
> -# INHIBIT_PACKAGE_STRIP = "1"
> -#
> -# Uncomment this to disable the split of the debug information into -dbg files
> -# INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> -#
> -# When splitting debug information, the following controls the results of the
> -# file splitting.
> -#
> -#  .debug (default):
> -#    When splitting the debug information will be placed into
> -#    a .debug directory in the same dirname of the binary produced:
> -#      /bin/foo ->  /bin/.debug/foo
> -#
> -#  debug-file-directory:
> -#    When splitting the debug information will be placed into
> -#    a central debug-file-directory, /usr/lib/debug:
> -#      /bin/foo ->  /usr/lib/debug/bin/foo.debug
> -#
> -#    Any source code referenced in the debug symbols will be copied
> -#    and made available within the /usr/src/debug directory
> -#
> -PACKAGE_DEBUG_SPLIT_STYLE = '.debug'
> -# PACKAGE_DEBUG_SPLIT_STYLE = 'debug-file-directory'
> -
> -# Uncomment these to build a package such that you can use gprof to profile it.
> -# NOTE: This will only work with 'linux' targets, not
> -# 'linux-uclibc', as uClibc doesn't provide the necessary
> -# object files.  Also, don't build glibc itself with these
> -# flags, or it'll fail to build.
> -#
> -# PROFILE_OPTIMIZATION = "-pg"
> -# SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
> -# LDFLAGS =+ "-pg"
> -
>   # Uncomment this if you want BitBake to emit the log if a build fails.
>   BBINCLUDELOGS = "yes"
>
> @@ -159,23 +100,6 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
>   #file://.* http://someserver.tld/share/sstate/ \n \
>   #file://.* file:///some/local/dir/sstate/"
>
> -# Set IMAGETEST to qemu if you want to build testcases and start
> -# testing in qemu after do_rootfs.
> -#IMAGETEST = "qemu"
> -
> -# By default test cases in sanity suite will be ran. If you want to run other
> -# test suite or specific test case(e.g. bat or boot test case under sanity suite),
> -# list them like following.
> -#TEST_SCEN = "sanity bat sanity:boot toolchain"
> -
> -#Because of the QEMU booting slowness issue(see bug #646 and #618), autobuilder
> -#may suffer a timeout issue when running sanity test. We introduce variable
> -#TEST_SERIALIZE here to reduce the time on sanity test. It is by default set
> -#to 1. Poky will start image and run cases in the same image without reboot
> -#or kill. If it is set to 0, the image will be copied and tested for each
> -#case, which will take much time.
> -#TEST_SERIALIZE = "1"
> -
>   # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
>   # wish to perform the time-consuming step of generating all LIBC locales.
>   # NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
> @@ -207,9 +131,5 @@ NO32LIBS = "1"
>   #TERMCMD = "${KONSOLE_TERMCMD}"
>   #TERMCMDRUN = "${KONSOLE_TERMCMDRUN}"
>
Paul,

I noticed the TERMCMD* here and realized that maybe we need to update 
this default with XTERM_* or SCREEN_*, rather than KONSOLE, I realize 
that this is an example.

Sau!

> -# The network based PR service host and port
> -#PRSERV_HOST = "localhost"
> -#PRSERV_PORT = "8585"
> -
>   # Uncomment this if your host distribution provides the help2man tool.
>   #ASSUME_PROVIDED += "help2man-native"
> diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
> index 775d6d3..82e9ea9 100644
> --- a/meta-yocto/conf/local.conf.sample.extended
> +++ b/meta-yocto/conf/local.conf.sample.extended
> @@ -10,3 +10,91 @@
>   #               libc-posix-wchar-io"
>   #DISTRO_FEATURES = "alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g ${DISTRO_FEATURES_LIBC}"
>
> +# mklibs library size optimization is more useful to smaller images,
> +# and less useful for bigger images. Also mklibs library optimization
> +# can break the ABI compatibility, so should not be applied to the
> +# images which are to be extended or upgraded later.
> +#This enabled mklibs library size optimization just for the specified image.
> +#MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal"
> +#This enable mklibs library size optimization will be for all the images.
> +#MKLIBS_OPTIMIZED_IMAGES ?= "all"
> +
> +# POKYMODE controls the characteristics of the generated packages/images by
> +# telling poky which type of toolchain to use.
> +#
> +# Options include several different EABI combinations and a compatibility
> +# mode for the OABI mode poky previously used.
> +#
> +# The default is "eabi"
> +# Use "oabi" for machines with kernels<  2.6.18 on ARM for example.
> +# Use "external-MODE" to use the precompiled external toolchains where MODE
> +# is the type of external toolchain to use e.g. eabi.
> +# POKYMODE = "external-eabi"
> +
> +# Uncomment this to specify where BitBake should create its temporary files.
> +# Note that a full build of everything in OpenEmbedded will take GigaBytes of hard
> +# disk space, so make sure to free enough space. The default TMPDIR is
> +#<build directory>/tmp
> +#TMPDIR = "${COREBASE}/build/tmp"
> +
> +# The following are used to control options related to debugging.
> +#
> +# Uncomment this to change the optimization to make debugging easer, at the
> +# possible cost of performance.
> +# DEBUG_BUILD = "1"
> +#
> +# Uncomment this to disable the stripping of the installed binaries
> +# INHIBIT_PACKAGE_STRIP = "1"
> +#
> +# Uncomment this to disable the split of the debug information into -dbg files
> +# INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> +#
> +# When splitting debug information, the following controls the results of the
> +# file splitting.
> +#
> +#  .debug (default):
> +#    When splitting the debug information will be placed into
> +#    a .debug directory in the same dirname of the binary produced:
> +#      /bin/foo ->  /bin/.debug/foo
> +#
> +#  debug-file-directory:
> +#    When splitting the debug information will be placed into
> +#    a central debug-file-directory, /usr/lib/debug:
> +#      /bin/foo ->  /usr/lib/debug/bin/foo.debug
> +#
> +#    Any source code referenced in the debug symbols will be copied
> +#    and made available within the /usr/src/debug directory
> +#
> +# PACKAGE_DEBUG_SPLIT_STYLE = 'debug-file-directory'
> +
> +# Uncomment these to build a package such that you can use gprof to profile it.
> +# NOTE: This will only work with 'linux' targets, not
> +# 'linux-uclibc', as uClibc doesn't provide the necessary
> +# object files.  Also, don't build glibc itself with these
> +# flags, or it'll fail to build.
> +#
> +# PROFILE_OPTIMIZATION = "-pg"
> +# SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
> +# LDFLAGS =+ "-pg"
> +
> +# Set IMAGETEST to qemu if you want to build testcases and start
> +# testing in qemu after do_rootfs.
> +#IMAGETEST = "qemu"
> +
> +# By default test cases in sanity suite will be ran. If you want to run other
> +# test suite or specific test case(e.g. bat or boot test case under sanity suite),
> +# list them like following.
> +#TEST_SCEN = "sanity bat sanity:boot toolchain"
> +
> +#Because of the QEMU booting slowness issue(see bug #646 and #618), autobuilder
> +#may suffer a timeout issue when running sanity test. We introduce variable
> +#TEST_SERIALIZE here to reduce the time on sanity test. It is by default set
> +#to 1. Poky will start image and run cases in the same image without reboot
> +#or kill. If it is set to 0, the image will be copied and tested for each
> +#case, which will take much time.
> +#TEST_SERIALIZE = "1"
> +
> +# The network based PR service host and port
> +#PRSERV_HOST = "localhost"
> +#PRSERV_PORT = "8585"
> +

