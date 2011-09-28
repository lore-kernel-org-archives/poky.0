Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 815D7E0051B
	for <poky@yoctoproject.org>; Wed, 28 Sep 2011 07:08:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Sep 2011 07:08:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,456,1312182000"; d="scan'208";a="68279061"
Received: from unknown (HELO [10.255.14.186]) ([10.255.14.186])
	by fmsmga001.fm.intel.com with ESMTP; 28 Sep 2011 07:08:33 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <CAFt-coxvnV=WbYBAyRTBXeeXZ0Zc1ascqCXPC3V_WmWAWTspyQ@mail.gmail.com>
References: <CAFt-coxvnV=WbYBAyRTBXeeXZ0Zc1ascqCXPC3V_WmWAWTspyQ@mail.gmail.com>
Date: Wed, 28 Sep 2011 09:08:28 -0500
Message-ID: <1317218908.2327.10.camel@elmorro>
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
X-List-Received-Date: Wed, 28 Sep 2011 14:08:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Wed, 2011-09-28 at 06:21 -0700, v sailaja wrote:
> Hi,
> 
> 
> I  have built the poky source with grub-0.97 but Now i want to pull
> grub2.
> I have grub2 recipe i.e, grub_1.98.bb.
> If grub_0.97.bb file is there, then it is building for grub-0.97 only,
> so I deleted the grub_0.97.bb file from meta/recipes-bsp/ and
> I just changed the preferred version of grub from 0.97 to 1.98
> in  fishriver.conf.
> 
> 
> -REFERRED_VERSION_grub ?= "0.97"
> +REFERRED_VERSION_grub ?= "1.98"
> 
> 
> But i am facing an error "ERROR: Nothing PROVIDES 'grub'".
> Can anyone tell me how to resolve this error and why i  am facing this
> error though the grub recipe is there in meta/recipes-bsp/.
> 

Hi,

It's because the grub 1.98 recipe is restricted to only x86.64 and the
grub 0.97 recipe to only i.86, so fishriver will only use .97 and won't
see 1.98.

There's now a grub 1.99 recipe in poky/master that does both, so I'd
recommend you upgrade to edison or master of both poky and meta-intel to
take advantage of it.

Tom

> 
> 
> 
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
> 



