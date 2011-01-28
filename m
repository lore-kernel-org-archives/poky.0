Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BD434C81250
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:27:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 17:27:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="597211840"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 17:27:53 -0800
Message-ID: <4D421B98.6060405@linux.intel.com>
Date: Thu, 27 Jan 2011 17:27:52 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1295483757.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295483757.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 00/12] libtool 2.4 sysroot support [v2]
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
X-List-Received-Date: Fri, 28 Jan 2011 01:27:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 04:38 PM, Scott Garman wrote:
> Hi Saul,
>
> This patch series enables sysroot support in libtool, a new feature
> that was added in libtool 2.4. Countless thanks to Khem Raj, who got
> this working in OpenEmbedded recently - just about everything here
> is based on his work, with a couple of additional tweaks courtesy
> of Richard Purdie.
>
> This is a respin of my previous pull request, which includes some
> changes to the libtool recipe changes that Richard raised concerns
> with and forward-ports the binutils poison patch that I had forgotten
> to include in my last pull request.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/libtool-sysroot-rev2
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/libtool-sysroot-rev2
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Richard Purdie (1):
>    libtool: Move common version specific data to a common include file
>
> Scott Garman (11):
>    libtool: Small cleanups of metadata
>    libtool: Changes to enable sysroot support
>    libtool: fix library RPATHs
>    autotools.bbclass: libtool sysroot support changes
>    staging.bbclass, utils.bbclass: remove la mangling code
>    insane.bbclass: skip checks on .la installed status
>    binutils: upgrade to 2.21 and add libtool sysroot support
>    binutils: forward-port the binutils-poison.patch
>    binutils: Fix QA staging errors for target binutils
>    binutils: fix library RPATHs
>    poky-default.inc: bump binutils preferred version to 2.21
>
>   meta/classes/autotools.bbclass                     |   25 +-
>   meta/classes/insane.bbclass                        |    5 -
>   meta/classes/staging.bbclass                       |   14 -
>   meta/classes/utils.bbclass                         |   15 +-
>   meta/conf/distro/include/poky-default.inc          |    2 +-
>   .../binutils-2.20.1/binutils-2.16.1-e300c2c3.patch |   18 -
>   .../binutils-2.20.1/binutils-libtool.patch         |   67 -
>   .../binutils-2.20.1/binutils-mips-pie.patch        |   29 -
>   .../binutils/binutils-2.20.1/binutils-poison.patch |  253 -
>   .../110-arm-eabi-conf.patch                        |    0
>   .../binutils-2.21/binutils-2.19.1-ld-sysroot.patch |   37 +
>   .../binutils/binutils-2.21/binutils-poison.patch   |  245 +
>   .../binutils-uclibc-100-uclibc-conf.patch          |    0
>   ...binutils-uclibc-300-001_ld_makefile_patch.patch |    0
>   ...binutils-uclibc-300-006_better_file_error.patch |    0
>   ...ils-uclibc-300-012_check_ldrunpath_length.patch |   19 +-
>   .../binutils-uclibc-gas-needs-libm.patch           |    0
>   .../binutils-x86_64_i386_biarch.patch              |    0
>   .../libiberty_path_fix.patch                       |    0
>   .../binutils-2.21/libtool-2.4-update.patch         |18719 ++++++++++++++++++++
>   .../binutils/binutils-2.21/libtool-rpath-fix.patch |   36 +
>   ...n_2.20.1.bb =>  binutils-cross-canadian_2.21.bb} |    2 +-
>   ...tils-cross_2.20.1.bb =>  binutils-cross_2.21.bb} |    1 -
>   ...rosssdk_2.20.1.bb =>  binutils-crosssdk_2.21.bb} |    2 +-
>   .../{binutils_2.20.1.bb =>  binutils_2.21.bb}       |   18 +-
>   meta/recipes-devtools/libtool/libtool-2.4.inc      |   13 +
>   meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    9 +-
>   .../recipes-devtools/libtool/libtool-native_2.4.bb |   11 +-
>   .../libtool/libtool-nativesdk_2.4.bb               |    7 +-
>   meta/recipes-devtools/libtool/libtool.inc          |   22 +-
>   .../libtool/libtool/cross_compile.patch            |   38 -
>   .../libtool/libtool/fix-final-rpath.patch          |   36 +
>   .../libtool/libtool/rename-with-sysroot.patch      |  824 +
>   .../libtool/libtool/resolve-sysroot.patch          |   40 +
>   .../libtool/libtool/use-sysroot-in-libpath.patch   |   20 +
>   meta/recipes-devtools/libtool/libtool_2.4.bb       |   31 +-
>   36 files changed, 20034 insertions(+), 524 deletions(-)
>   delete mode 100644 meta/recipes-devtools/binutils/binutils-2.20.1/binutils-2.16.1-e300c2c3.patch
>   delete mode 100644 meta/recipes-devtools/binutils/binutils-2.20.1/binutils-libtool.patch
>   delete mode 100644 meta/recipes-devtools/binutils/binutils-2.20.1/binutils-mips-pie.patch
>   delete mode 100644 meta/recipes-devtools/binutils/binutils-2.20.1/binutils-poison.patch
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/110-arm-eabi-conf.patch (100%)
>   create mode 100644 meta/recipes-devtools/binutils/binutils-2.21/binutils-2.19.1-ld-sysroot.patch
>   create mode 100644 meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/binutils-uclibc-100-uclibc-conf.patch (100%)
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/binutils-uclibc-300-001_ld_makefile_patch.patch (100%)
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/binutils-uclibc-300-006_better_file_error.patch (100%)
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/binutils-uclibc-300-012_check_ldrunpath_length.patch (70%)
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/binutils-uclibc-gas-needs-libm.patch (100%)
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/binutils-x86_64_i386_biarch.patch (100%)
>   rename meta/recipes-devtools/binutils/{binutils-2.20.1 =>  binutils-2.21}/libiberty_path_fix.patch (100%)
>   create mode 100644 meta/recipes-devtools/binutils/binutils-2.21/libtool-2.4-update.patch
>   create mode 100644 meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch
>   rename meta/recipes-devtools/binutils/{binutils-cross-canadian_2.20.1.bb =>  binutils-cross-canadian_2.21.bb} (86%)
>   rename meta/recipes-devtools/binutils/{binutils-cross_2.20.1.bb =>  binutils-cross_2.21.bb} (98%)
>   rename meta/recipes-devtools/binutils/{binutils-crosssdk_2.20.1.bb =>  binutils-crosssdk_2.21.bb} (96%)
>   rename meta/recipes-devtools/binutils/{binutils_2.20.1.bb =>  binutils_2.21.bb} (75%)
>   create mode 100644 meta/recipes-devtools/libtool/libtool-2.4.inc
>   delete mode 100644 meta/recipes-devtools/libtool/libtool/cross_compile.patch
>   create mode 100644 meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch
>   create mode 100644 meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
>   create mode 100644 meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
>   create mode 100644 meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!

