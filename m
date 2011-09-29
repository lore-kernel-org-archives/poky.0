Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 591FDE004D1
	for <poky@yoctoproject.org>; Thu, 29 Sep 2011 07:56:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Sep 2011 07:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,461,1312182000"; d="scan'208";a="56973097"
Received: from unknown (HELO [10.255.15.24]) ([10.255.15.24])
	by azsmga001.ch.intel.com with ESMTP; 29 Sep 2011 07:56:55 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <CAFt-cozQ=Tp5gfn4HvC_pLgmO8WW49++FCyp-sOFErvOzjiWPQ@mail.gmail.com>
References: <CAFt-coxvnV=WbYBAyRTBXeeXZ0Zc1ascqCXPC3V_WmWAWTspyQ@mail.gmail.com>
	<1317218908.2327.10.camel@elmorro>
	<CAFt-cozQ=Tp5gfn4HvC_pLgmO8WW49++FCyp-sOFErvOzjiWPQ@mail.gmail.com>
Date: Thu, 29 Sep 2011 09:56:48 -0500
Message-ID: <1317308208.2404.17.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: How to pull grub2
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
X-List-Received-Date: Thu, 29 Sep 2011 14:56:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-09-29 at 04:58 -0700, v sailaja wrote:
> Hi,
> 
> 
> I just pulled the grub_1.99.bb in poky and built it for "fishriver"
> machine.
> I am trying to install the image on "Gigabyte" machine, but it is
> promting an error while installing.
> 
> 
> ERROR:
> 
> 
> /usr/sbin/grub-setup: warn: This msdos-style partition label hal no
> post-MBR gap; embedding won't be possible!
> /usr/sbin/grub-setup:warn: Embedding is not possible. GRUB can only be
> installed in this setup by using blocklists. However, blockclists area
> UNRELIABLE and their use is discouraged..
> /usr/sbin/grub-setup: error:will not proceed with blocklilsts.
> Installtion image failed.
> sh: can't access tty; job control truned off
> 
> 
> 
> 
> Please tell me is there anything I need to modify the bb file ?
> Does grub2 work fine with fishriver machine?
> 

Hi,

Looks like you're using the old
recipes-core/initrdscripts/initramfs-live-install recipe and
init-install.sh update that goes with it, which would avoid this
problem.  Those are also available in poky/master and edison.

With those updates, it should work fine with the fishriver machine.

Tom

> 
> 
> 
> 
> 
> -- 
> Thanks & Regards,
> SAI
> 
> 
> 
> 
> On Wed, Sep 28, 2011 at 7:38 PM, Tom Zanussi <tom.zanussi@intel.com>
> wrote:
>         
>         
>         On Wed, 2011-09-28 at 06:21 -0700, v sailaja wrote:
>         > Hi,
>         >
>         >
>         > I  have built the poky source with grub-0.97 but Now i want
>         to pull
>         > grub2.
>         > I have grub2 recipe i.e, grub_1.98.bb.
>         > If grub_0.97.bb file is there, then it is building for
>         grub-0.97 only,
>         > so I deleted the grub_0.97.bb file from meta/recipes-bsp/
>         and
>         > I just changed the preferred version of grub from 0.97 to
>         1.98
>         > in  fishriver.conf.
>         >
>         >
>         > -REFERRED_VERSION_grub ?= "0.97"
>         > +REFERRED_VERSION_grub ?= "1.98"
>         >
>         >
>         > But i am facing an error "ERROR: Nothing PROVIDES 'grub'".
>         > Can anyone tell me how to resolve this error and why i  am
>         facing this
>         > error though the grub recipe is there in meta/recipes-bsp/.
>         >
>         
>         
>         Hi,
>         
>         It's because the grub 1.98 recipe is restricted to only x86.64
>         and the
>         grub 0.97 recipe to only i.86, so fishriver will only use .97
>         and won't
>         see 1.98.
>         
>         There's now a grub 1.99 recipe in poky/master that does both,
>         so I'd
>         recommend you upgrade to edison or master of both poky and
>         meta-intel to
>         take advantage of it.
>         
>         Tom
>         
>         >
>         >
>         >
>         >
>         >
>         >
>         >
>         >
>         >
>         > --
>         > Thanks & Regards,
>         > SAI
>         >
>         >
>         
>         
> 
> 
> 
> 
> -- 
> Thanks & Regards,
> SAI
> 



