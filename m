Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CB6E4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:45:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Feb 2011 11:45:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,421,1291622400"; d="scan'208";a="703770256"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by orsmga001.jf.intel.com with ESMTP; 03 Feb 2011 11:45:40 -0800
Message-ID: <4D4B05E4.9040503@intel.com>
Date: Thu, 03 Feb 2011 11:45:40 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <b7da2f$qa3mls@fmsmga001.fm.intel.com>
In-Reply-To: <b7da2f$qa3mls@fmsmga001.fm.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-sugarbay: new layer for Sandy Bridge/Cougar Point
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
X-List-Received-Date: Thu, 03 Feb 2011 19:45:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/31/2011 08:35 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This layer provides support for the 'Sugar Bay' platform, which
> consists of the Intel Sandy Bridge processor and the Cougar Point PCH.
>
> It also adds a new meta-intel/common directory for sharing commmon
> code between meta-intel BSPs - for now, it's acting as a kind of
> 'staging' area for the grub2 and associated live-install changes
> needed to install from a live image.
>
> Thanks,
>
> Tom
>
> Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/sugarbay
>    Branch: tzanussi/sugarbay
>    Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/sugarbay
>
> Tom Zanussi (2):
>    meta-intel: add a /common dir with grub2/live-install changes
>    meta-sugarbay: new layer for Sandy Bridge/Cougar Point systems
>
>   common/recipes-bsp/grub/grub-1.98/40_custom        |    9 +
>   .../grub/grub-1.98/grub-install.in.patch           |   13 ++
>   .../grub/grub-1.98/uninit-shdr-fix.patch           |   31 ++++
>   common/recipes-bsp/grub/grub_1.98.bb               |   45 +++++
>   .../initramfs-live-install/init-install.sh         |  188 ++++++++++++++++++++
>   .../initramfs-live-install_1.0.bbappend            |    2 +
>   meta-sugarbay/COPYING.MIT                          |   17 ++
>   meta-sugarbay/README                               |   84 +++++++++
>   meta-sugarbay/conf/layer.conf                      |   12 ++
>   meta-sugarbay/conf/machine/sugarbay.conf           |   57 ++++++
>   .../formfactor/formfactor/sugarbay/machconfig      |    3 +
>   .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
>   .../xserver-xf86-config/sugarbay/xorg.conf         |   26 +++
>   .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>   .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 +
>   .../recipes-kernel/linux/linux-yocto_git.bbappend  |    5 +
>   16 files changed, 499 insertions(+), 0 deletions(-)
>   create mode 100755 common/recipes-bsp/grub/grub-1.98/40_custom
>   create mode 100644 common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
>   create mode 100644 common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
>   create mode 100644 common/recipes-bsp/grub/grub_1.98.bb
>   create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
>   create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
>   create mode 100644 meta-sugarbay/COPYING.MIT
>   create mode 100644 meta-sugarbay/README
>   create mode 100644 meta-sugarbay/binary/.gitignore
>   create mode 100644 meta-sugarbay/conf/layer.conf
>   create mode 100644 meta-sugarbay/conf/machine/sugarbay.conf
>   create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor/sugarbay/machconfig
>   create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
>   create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config/sugarbay/xorg.conf
>   create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>   create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
>   create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into meta-intel/master

Thanks for your patience

	Sau!


