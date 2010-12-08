Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73AE74C81234
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 11:52:48 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 09:52:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="634424078"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 09:52:38 -0800
Message-ID: <4CFFC5DB.8060009@linux.intel.com>
Date: Wed, 08 Dec 2010 09:52:27 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1291703954.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1291703954.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Add meta-crownbay
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
X-List-Received-Date: Wed, 08 Dec 2010 17:52:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 10:39 PM, Tom Zanussi wrote:
> Adds a new layer for Tunnel Creek/Topcliff systems.
>

I'm concerned about the long-term sustainability of this approach of 
adding a new layer for each "platform". Just Intel platforms alone will 
make 'ls meta-*' unwieldy in fairly short order, add to that the other 
architectures and we're looking at a lot of layers.

We support a lot of platforms under the existing machine types. Is the 
primary reason for this being a layer to accomodate the EMGD bits? if 
so, are those specific to crownbay, or can they somehow be shared across 
multiple platforms?

For instance, could the xf86 patches be appended to the existing xf86 
recipe using the SRC_URI_crownbay mechanism?

--
Darren

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: tzanussi/crownbay
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/crownbay
>
> Thanks,
>      Tom Zanussi<tom.zanussi@intel.com>
> ---
>
>
> Tom Zanussi (1):
>    meta-crownbay: new layer for E6xx/EG20T systems
>
>   meta-crownbay/COPYING.MIT                          |   17 +++
>   meta-crownbay/README.before.building               |  112 ++++++++++++++++++++
>   meta-crownbay/conf/layer.conf                      |   10 ++
>   meta-crownbay/conf/machine/crownbay.conf           |   46 ++++++++
>   .../formfactor/formfactor/crownbay/machconfig      |    3 +
>   .../recipes/formfactor/formfactor_0.0.bbappend     |    3 +
>   .../recipes/linux/linux-yocto_git.bbappend         |    3 +
>   .../xserver-xf86-config/crownbay/xorg.conf         |   47 ++++++++
>   .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>   .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 ++++++++++++++++
>   .../xserver-xf86-emgd/crosscompile.patch           |   19 ++++
>   .../fix_open_max_preprocessor_error.patch          |   13 +++
>   .../xserver-xf86-emgd/macro_tweak.patch            |   18 +++
>   .../xorg-xserver/xserver-xf86-emgd/nodolt.patch    |   12 ++
>   .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 +++++
>   15 files changed, 421 insertions(+), 0 deletions(-)
>   create mode 100644 meta-crownbay/COPYING.MIT
>   create mode 100755 meta-crownbay/README.before.building
>   create mode 100644 meta-crownbay/conf/layer.conf
>   create mode 100644 meta-crownbay/conf/machine/crownbay.conf
>   create mode 100644 meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
>   create mode 100644 meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
>   create mode 100644 meta-crownbay/recipes/linux/linux-yocto_git.bbappend
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
>   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Darren Hart
Yocto Linux Kernel

