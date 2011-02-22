Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2865F4C800B2
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 21:38:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Feb 2011 19:38:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,204,1297065600"; d="scan'208";a="711540557"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga001.jf.intel.com with ESMTP; 21 Feb 2011 19:37:59 -0800
Message-ID: <4D632F9E.1010404@intel.com>
Date: Tue, 22 Feb 2011 11:38:06 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1298340269.git.edwin.zhai@intel.com>	<31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>
	<AANLkTin8CLU7Ok4C8Gd2i=a52qMyBBaSYGCW-Ch=M2p7@mail.gmail.com>
In-Reply-To: <AANLkTin8CLU7Ok4C8Gd2i=a52qMyBBaSYGCW-Ch=M2p7@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] qemu: enable audio support
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
X-List-Received-Date: Tue, 22 Feb 2011 03:38:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Bruce Ashfield wrote:
>
> On Mon, Feb 21, 2011 at 9:06 PM, Zhai Edwin <edwin.zhai@intel.com> wrote:
> > From: Zhai Edwin <edwin.zhai@intel.com>
> >
> > On qemux86, export ac97 & es1370 emulated device to guest, and 
> enable host oss&alsa
> > driver. So end user can get sound from qemux86 guest if the sound card
> > driver installed.
>
> I presume that you tested the sound, if you send me the working .config
> (or better a config fragement), I'll update the base configs for the 
> qemu*
> platforms to at least build and make the modules available.
>

Bruce,
I have tested a ubuntu disk image and heard the sound. What's the simple 
way to change the kernel config for test?

Thanks,
edwin


> Looks good BTW!
>
> Bruce
>
> >
> > [BUGID #488] got fixed.
> >
> > Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
> > ---
> >  meta/recipes-devtools/qemu/qemu.inc |    2 +-
> >  scripts/poky-qemu                   |    7 +++++++
> >  2 files changed, 8 insertions(+), 1 deletions(-)
> >
> > diff --git a/meta/recipes-devtools/qemu/qemu.inc 
> b/meta/recipes-devtools/qemu/qemu.inc
> > index 33c2c71..2c6b114 100644
> > --- a/meta/recipes-devtools/qemu/qemu.inc
> > +++ b/meta/recipes-devtools/qemu/qemu.inc
> > @@ -3,7 +3,7 @@ HOMEPAGE = "http://qemu.org"
> >  LICENSE = "GPLv2 & LGPLv2.1"
> >  DEPENDS = "zlib"
> >
> > -EXTRA_OECONF = 
> "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user 
> --disable-werror --disable-vnc-tls --enable-kvm"
>
> > +EXTRA_OECONF = 
> "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user 
> --disable-werror --disable-vnc-tls --enable-kvm 
> --audio-drv-list=oss,alsa --audio-card-list=ac97,es1370"
>
> >  #EXTRA_OECONF += "--disable-sdl"
> >
> >  inherit autotools
> > diff --git a/scripts/poky-qemu b/scripts/poky-qemu
> > index b19a89d..cb08f27 100755
> > --- a/scripts/poky-qemu
> > +++ b/scripts/poky-qemu
> > @@ -129,6 +129,13 @@ while [ $i -le $# ]; do
> >             SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -serial stdio"
> >             SCRIPT_KERNEL_OPT="$SCRIPT_KERNEL_OPT console=ttyS0"
> >             ;;
> > +        "audio")
> > +            if [[ "x$MACHINE" == "xqemux86" || "x$MACHINE" == 
> "xqemux86-64" ]]; then
> > +                echo "Enable audio on qemu. Pls. install 
> snd_intel8x0 or snd_ens1370 driver in linux guest.";
> > +                QEMU_AUDIO_DRV="alsa"
> > +                SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -soundhw 
> ac97,es1370"
> > +            fi
> > +            ;;
> >         "kvm")
> >             KVM_ENABLED="yes"
> >             KVM_CAPABLE=`grep 'vmx\|smx' /proc/cpuinfo`
> > --
> > 1.6.3.3
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
>
>
>
> -- 
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>

