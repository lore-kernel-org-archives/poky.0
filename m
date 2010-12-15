Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04C5F4C811AA
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 11:13:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 09:13:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="362117651"
Received: from unknown (HELO [10.255.14.1]) ([10.255.14.1])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 09:13:28 -0800
Message-ID: <4D08F737.5010908@linux.intel.com>
Date: Wed, 15 Dec 2010 09:13:27 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1291970759.git.qing.he@intel.com>
In-Reply-To: <cover.1291970759.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] recipe/license upgrade
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
X-List-Received-Date: Wed, 15 Dec 2010 17:13:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/10/2010 12:45 AM, Qing He wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro
>
> Thanks,
>      Qing He
> ---
>
>
> Qing He (8):
>    udev: upgrade to version 164
>    fakeroot: upgrade to version 1.14.5
>    fakechroot: upgrade to version 2.13.1
>    diffutils: upgrade to version 3.0
>    udev-extraconf: add license info
>    qemu-config: update license info
>    usbinit: update license info
>    update-modules: update license info
>
>   meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
>   meta/recipes-bsp/qemu-config/qemu-config.bb        |    3 +
>   .../qemu-config/qemu-config/COPYING.GPL            |  339 ++++++++++++++++++++
>   meta/recipes-bsp/usbinit/usbinit.bb                |    3 +
>   meta/recipes-bsp/usbinit/usbinit/COPYING.GPL       |  339 ++++++++++++++++++++
>   meta/recipes-core/udev/{udev-158 =>  udev-164}/init |    0
>   .../udev/{udev-158 =>  udev-164}/local.rules        |    0
>   .../udev/{udev-158 =>  udev-164}/permissions.rules  |    0
>   .../udev/{udev-158 =>  udev-164}/run.rules          |    0
>   .../udev/{udev-158 =>  udev-164}/udev.rules         |    0
>   meta/recipes-core/udev/udev-extraconf/COPYING.GPL  |  339 ++++++++++++++++++++
>   meta/recipes-core/udev/udev-extraconf_0.0.bb       |    1 +
>   meta/recipes-core/udev/udev_158.bb                 |    6 -
>   meta/recipes-core/udev/udev_164.bb                 |    6 +
>   .../fakechroot/fakechroot/fix-readlink.patch       |   26 --
>   .../fakechroot/fakechroot_2.13.1.bb                |   17 +
>   meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |   20 --
>   .../absolutepaths.patch                            |    0
>   .../{fakeroot_1.14.4.bb =>  fakeroot_1.14.5.bb}     |   13 +-
>   meta/recipes-extended/diffutils/diffutils_3.0.bb   |   25 ++
>   .../update-modules/update-modules-1.0/COPYING.GPL  |  339 ++++++++++++++++++++
>   .../update-modules/update-modules_1.0.bb           |    2 +
>   22 files changed, 1423 insertions(+), 57 deletions(-)
>   create mode 100644 meta/recipes-bsp/qemu-config/qemu-config/COPYING.GPL
>   create mode 100644 meta/recipes-bsp/usbinit/usbinit/COPYING.GPL
>   rename meta/recipes-core/udev/{udev-158 =>  udev-164}/init (100%)
>   rename meta/recipes-core/udev/{udev-158 =>  udev-164}/local.rules (100%)
>   rename meta/recipes-core/udev/{udev-158 =>  udev-164}/permissions.rules (100%)
>   rename meta/recipes-core/udev/{udev-158 =>  udev-164}/run.rules (100%)
>   rename meta/recipes-core/udev/{udev-158 =>  udev-164}/udev.rules (100%)
>   create mode 100644 meta/recipes-core/udev/udev-extraconf/COPYING.GPL
>   delete mode 100644 meta/recipes-core/udev/udev_158.bb
>   create mode 100644 meta/recipes-core/udev/udev_164.bb
>   delete mode 100644 meta/recipes-devtools/fakechroot/fakechroot/fix-readlink.patch
>   create mode 100644 meta/recipes-devtools/fakechroot/fakechroot_2.13.1.bb
>   delete mode 100644 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
>   rename meta/recipes-devtools/fakeroot/{fakeroot-1.14.4 =>  fakeroot-1.14.5}/absolutepaths.patch (100%)
>   rename meta/recipes-devtools/fakeroot/{fakeroot_1.14.4.bb =>  fakeroot_1.14.5.bb} (75%)
>   create mode 100644 meta/recipes-extended/diffutils/diffutils_3.0.bb
>   create mode 100644 meta/recipes-kernel/update-modules/update-modules-1.0/COPYING.GPL
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into Master

Thanks
   Sau!

