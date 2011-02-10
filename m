Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED39A4C80053
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 11:13:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Feb 2011 09:13:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="886280829"
Received: from unknown (HELO [10.255.14.122]) ([10.255.14.122])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2011 09:13:05 -0800
Message-ID: <4D541CA1.8000500@intel.com>
Date: Thu, 10 Feb 2011 09:13:05 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <849307$bh0po3@azsmga001.ch.intel.com>
In-Reply-To: <849307$bh0po3@azsmga001.ch.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] put udev trigger fix into meta-intel laverne
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
X-List-Received-Date: Thu, 10 Feb 2011 17:13:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2011 08:30 AM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> We can't do a laverne point release to include the udev trigger fix
> right now, but we still need it in the laverne BSP, so roll it into
> the layer instead.
>
> Please pull into meta-intel laverne.
>
Pulled into meta-intel

Thanks for the quick turn.

Sau!


> Pull URL: git://git.pokylinux.org/meta-intel.git
>    Branch: tzanussi/apply-udev-trigger-for-laverne-here
>    Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/apply-udev-trigger-for-laverne-here
>
> Tom Zanussi (1):
>    meta-crownbay: apply init-live.sh coldplug udev trigger patch here
>      instead
>
>   ...01-init-live.sh-add-coldplug-udev-trigger.patch |   44 ++++++++++++++++++++
>   .../initrdscripts/initramfs-live-boot_1.0.bbappend |    6 +++
>   2 files changed, 50 insertions(+), 0 deletions(-)
>   create mode 100644 meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot/0001-init-live.sh-add-coldplug-udev-trigger.patch
>   create mode 100644 meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot_1.0.bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


