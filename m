Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 32B294C810AF
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 12:28:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Jan 2011 10:28:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,352,1291622400"; d="scan'208";a="698870135"
Received: from doubt.jf.intel.com (HELO [10.7.199.52]) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2011 10:28:42 -0800
Message-ID: <4D387ECF.5040509@linux.intel.com>
Date: Thu, 20 Jan 2011 10:28:31 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1295546428.12074.243.camel@elmorro>
In-Reply-To: <1295546428.12074.243.camel@elmorro>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH][2.6.34 KERNEL] wrs_meta: turn on OHCI USB config option
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
X-List-Received-Date: Thu, 20 Jan 2011 18:28:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2011 10:00 AM, Tom Zanussi wrote:
> Allow crownbay to recognize low-speed devices such as mouse and
> keyboard.
>
> Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
>    Branch: tzanussi/crownbay-usb-fix
>    Browse:
> http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=tzanussi/crownbay-usb-fix
>
> Please pull...
>
> Thanks,
>      Tom Zanussi<tom.zanussi@intel.com>
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> index a516dc9..864e1dc 100644
> --- a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> +++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> @@ -21,6 +21,7 @@ CONFIG_USB_EHCI_HCD=y
>   CONFIG_PCIEPORTBUS=y
>   CONFIG_NET=y
>   CONFIG_USB_UHCI_HCD=y
> +CONFIG_USB_OHCI_HCD=y
>   CONFIG_BLK_DEV_SD=y
>   CONFIG_CHR_DEV_SG=y
>   CONFIG_SOUND=y

This seems like the sort of thing we should push to standard. Or do BSPs 
like the crownbay start from an empty config?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

