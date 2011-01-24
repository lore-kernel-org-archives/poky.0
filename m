Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39F114C810E3
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 22:53:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Jan 2011 20:53:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="595786437"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2011 20:53:55 -0800
Message-ID: <4D3D05E3.2050500@linux.intel.com>
Date: Sun, 23 Jan 2011 20:53:55 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1295529720.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1295529720.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] qemu upgrade, edwin, Jan 20, 2011
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
X-List-Received-Date: Mon, 24 Jan 2011 04:53:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2011 05:27 AM, Zhai Edwin wrote:
> Saul,
> This is upgrade of qemu from 0.12.4 to 0.13.0. Test across all platforms including x86/x86-64/arm/mips/ppc were done, and found no regression.
> Pls. help to review and pull.
>
> Thanks,
> edwin
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/upgrade01
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade01
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (1):
>    qemu: Upgrade from 0.12.4 to 0.13.0
>
>   .../qemu/qemu-0.12.4/arm-cp15-fix.patch            |  131 -----
>   .../qemu-0.12.4/arm_timer-fix-oneshot-mode.patch   |   32 --
>   .../arm_timer-reload-timer-when-enabled.patch      |   40 --
>   .../qemu/qemu-0.12.4/cursor-shadow-fix.patch       |   35 --
>   .../qemu/qemu-0.12.4/qemu-ppc-hack.patch           |  136 -----
>   .../enable-i386-linux-user.patch                   |   16 +-
>   .../fix-configure-checks.patch                     |   12 +-
>   .../{qemu-0.12.4 =>  qemu-0.13.0}/fix-dirent.patch  |    0
>   .../{qemu-0.12.4 =>  qemu-0.13.0}/fix-nogl.patch    |   24 +-
>   .../{qemu-0.12.4 =>  qemu-0.13.0}/glflags.patch     |    0
>   .../{qemu-0.12.4 =>  qemu-0.13.0}/init-info.patch   |    8 +-
>   .../linker-flags.patch                             |   16 +-
>   .../{qemu-0.12.4 =>  qemu-0.13.0}/no-strip.patch    |   18 +-
>   .../qemu/qemu-0.13.0/parallel_make.patch           |   34 ++
>   .../qemu/qemu-0.13.0/port92_fix.patch              |  196 ++++++++
>   .../{qemu-0.12.4 =>  qemu-0.13.0}/powerpc_rom.bin   |  Bin 4096 ->  4096 bytes
>   .../qemu-git-qemugl-host.patch                     |  518 ++++++++++----------
>   .../qemu/qemu-0.13.0/qemu-ppc-hack.patch           |  108 ++++
>   .../qemu-vmware-vga-depth.patch                    |   52 +-
>   .../qemugl-allow-glxcontext-release.patch          |    0
>   .../vmware-vga-fifo-rewind.patch                   |   24 +-
>   .../qemu/qemu-0.13.0/wacom-tablet-fix.patch        |   65 +++
>   .../workaround_bad_futex_headers.patch             |    8 +-
>   .../qemu/{qemu_0.12.4.bb =>  qemu_0.13.0.bb}        |   15 +-
>   24 files changed, 752 insertions(+), 736 deletions(-)
>   delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm-cp15-fix.patch
>   delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
>   delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
>   delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/cursor-shadow-fix.patch
>   delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/qemu-ppc-hack.patch
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/enable-i386-linux-user.patch (73%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/fix-configure-checks.patch (65%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/fix-dirent.patch (100%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/fix-nogl.patch (73%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/glflags.patch (100%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/init-info.patch (74%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/linker-flags.patch (59%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/no-strip.patch (57%)
>   create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/parallel_make.patch
>   create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/port92_fix.patch
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/powerpc_rom.bin (100%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/qemu-git-qemugl-host.patch (99%)
>   create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/qemu-ppc-hack.patch
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/qemu-vmware-vga-depth.patch (68%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/qemugl-allow-glxcontext-release.patch (100%)
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/vmware-vga-fifo-rewind.patch (94%)
>   create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/wacom-tablet-fix.patch
>   rename meta/recipes-devtools/qemu/{qemu-0.12.4 =>  qemu-0.13.0}/workaround_bad_futex_headers.patch (71%)
>   rename meta/recipes-devtools/qemu/{qemu_0.12.4.bb =>  qemu_0.13.0.bb} (73%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!


