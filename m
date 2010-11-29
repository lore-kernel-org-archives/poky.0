Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EBF8B4C80815
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 16:38:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2010 14:38:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="682132851"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2010 14:38:29 -0800
Message-ID: <4CF42B64.8010208@intel.com>
Date: Mon, 29 Nov 2010 14:38:28 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@intel.com>
References: <201011191503.33006.paul.eggleton@intel.com>
In-Reply-To: <201011191503.33006.paul.eggleton@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] qemu: fix failure to find zlib header files during configure
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
X-List-Received-Date: Mon, 29 Nov 2010 22:38:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 07:03 AM, Paul Eggleton wrote:
> Corrects problems during configure of qemu-native due to the BUILD_CFLAGS
> not being included when attempting to compile the test program for zlib
> within the configure script.
>
> Signed-off-by: Paul Eggleton<paul.eggleton@intel.com>
> ---
>   .../qemu/qemu-0.12.4/fix-configure-checks.patch    |   12 ++++++++++++
>   meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 ++-
>   2 files changed, 14 insertions(+), 1 deletions(-)
>   create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
>
> diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
> new file mode 100644
> index 0000000..5d81fc3
> --- /dev/null
> +++ b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
> @@ -0,0 +1,12 @@
> +Index: qemu-0.12.4/configure
> +===================================================================
> +--- qemu-0.12.4.orig/configure
> ++++ qemu-0.12.4/configure
> +@@ -99,6 +99,7 @@ QEMU_CFLAGS="-Wstrict-prototypes -Wredun
> + QEMU_CFLAGS="-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE $QEMU_CFLAGS"
> + QEMU_CFLAGS="-U_FORTIFY_SOURCE $QEMU_CFLAGS"
> + QEMU_CFLAGS="-I. -I\$(SRC_PATH) $QEMU_CFLAGS"
> ++QEMU_CFLAGS="$QEMU_CFLAGS $BUILD_CFLAGS"
> + LDFLAGS="-g $LDFLAGS"
> +
> + gcc_flags="-Wold-style-declaration -Wold-style-definition"
> diff --git a/meta/recipes-devtools/qemu/qemu_0.12.4.bb b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
> index 6e7d86f..ec0d9d2 100644
> --- a/meta/recipes-devtools/qemu/qemu_0.12.4.bb
> +++ b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
> @@ -1,6 +1,6 @@
>   require qemu.inc
>
> -PR = "r22"
> +PR = "r23"
>
>   FILESPATH = "${FILE_DIRNAME}/qemu-${PV}"
>   FILESDIR = "${WORKDIR}"
> @@ -21,6 +21,7 @@ SRC_URI = "\
>       file://arm-cp15-fix.patch \
>       file://cursor-shadow-fix.patch \
>       file://vmware-vga-fifo-rewind.patch \
> +    file://fix-configure-checks.patch \
>       file://powerpc_rom.bin"
>
>   do_install_append () {

Pulled into Master

Thanks
    Sau!

