Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3258B4C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 23:58:58 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2011 21:58:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,413,1291622400"; d="scan'208";a="883491565"
Received: from unknown (HELO [10.255.14.127]) ([10.255.14.127])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2011 21:58:57 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTi=nevskgmtJnSm-x7nyCJF5khmpoiYgeXwxgCgD@mail.gmail.com>
References: <b7da2f$qa3mls@fmsmga001.fm.intel.com>
	<AANLkTi=nevskgmtJnSm-x7nyCJF5khmpoiYgeXwxgCgD@mail.gmail.com>
Date: Tue, 01 Feb 2011 23:58:54 -0600
Message-ID: <1296626334.26842.19.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 02 Feb 2011 05:58:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-01 at 21:52 -0800, Bruce Ashfield wrote:
> On Mon, Jan 31, 2011 at 11:35 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> >
> > This layer provides support for the 'Sugar Bay' platform, which
> > consists of the Intel Sandy Bridge processor and the Cougar Point PCH.
> >
> > It also adds a new meta-intel/common directory for sharing commmon
> > code between meta-intel BSPs - for now, it's acting as a kind of
> > 'staging' area for the grub2 and associated live-install changes
> > needed to install from a live image.
> 
> Based on where I just merged support for this your kernel bbappend
> 
> +KMACHINE_sugarbay  = "yocto/standard/sugarbay"
> 
> will need to be:
> 
> +KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
> 
> I'll cc you on my SRCREV change so you'll know to make this update.
> 

Thanks, Bruce.  I'll make the changes then and retest as well...

Tom

> Cheers,
> 
> Bruce
> 
> 
> >
> > Thanks,
> >
> > Tom
> >
> > Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/sugarbay
> >  Branch: tzanussi/sugarbay
> >  Browse:
> > http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/sugarbay
> >
> > Tom Zanussi (2):
> >  meta-intel: add a /common dir with grub2/live-install changes
> >  meta-sugarbay: new layer for Sandy Bridge/Cougar Point systems
> >
> >  common/recipes-bsp/grub/grub-1.98/40_custom        |    9 +
> >  .../grub/grub-1.98/grub-install.in.patch           |   13 ++
> >  .../grub/grub-1.98/uninit-shdr-fix.patch           |   31 ++++
> >  common/recipes-bsp/grub/grub_1.98.bb               |   45 +++++
> >  .../initramfs-live-install/init-install.sh         |  188 ++++++++++++++++++++
> >  .../initramfs-live-install_1.0.bbappend            |    2 +
> >  meta-sugarbay/COPYING.MIT                          |   17 ++
> >  meta-sugarbay/README                               |   84 +++++++++
> >  meta-sugarbay/conf/layer.conf                      |   12 ++
> >  meta-sugarbay/conf/machine/sugarbay.conf           |   57 ++++++
> >  .../formfactor/formfactor/sugarbay/machconfig      |    3 +
> >  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
> >  .../xserver-xf86-config/sugarbay/xorg.conf         |   26 +++
> >  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
> >  .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 +
> >  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    5 +
> >  16 files changed, 499 insertions(+), 0 deletions(-)
> >  create mode 100755 common/recipes-bsp/grub/grub-1.98/40_custom
> >  create mode 100644 common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
> >  create mode 100644 common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
> >  create mode 100644 common/recipes-bsp/grub/grub_1.98.bb
> >  create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
> >  create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
> >  create mode 100644 meta-sugarbay/COPYING.MIT
> >  create mode 100644 meta-sugarbay/README
> >  create mode 100644 meta-sugarbay/binary/.gitignore
> >  create mode 100644 meta-sugarbay/conf/layer.conf
> >  create mode 100644 meta-sugarbay/conf/machine/sugarbay.conf
> >  create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor/sugarbay/machconfig
> >  create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
> >  create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config/sugarbay/xorg.conf
> >  create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> >  create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
> >  create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> 
> 
> 



