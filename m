Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE156E006C6
	for <poky@yoctoproject.org>; Wed,  5 Dec 2012 21:31:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Dec 2012 21:31:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,228,1355126400"; d="scan'208";a="252772983"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.13.117])
	by orsmga002.jf.intel.com with ESMTP; 05 Dec 2012 21:30:59 -0800
Message-ID: <50C02D93.1060208@linux.intel.com>
Date: Wed, 05 Dec 2012 21:30:59 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Constantin Musca <constantinx.musca@intel.com>
References: <1353328788-31664-1-git-send-email-constantinx.musca@intel.com>
In-Reply-To: <1353328788-31664-1-git-send-email-constantinx.musca@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky-tiny.conf: blacklist inappropriate image options
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 05:31:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2012 04:39 AM, Constantin Musca wrote:
> Blacklist all images that aren't core-image-minimal-*
>
> [YOCTO #2565]
>

During my testing of MUT, I found that poky-tiny would not build with 
this patch.

Please verify.

You can see the failure here:

http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/357/steps/shell_43/logs/stdio

I was able to reproduce it on my desktop machine.

Sau!

> Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
> ---
>   meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
>
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index d40748e..121534e 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
>   # will build perl in case this package is installed. Since we don't care about
>   # this script for the purposes of tiny, remove the dependency from here.
>   RDEPENDS_${PN}-mtrace_pn-eglibc = ""
> +
> +INHERIT_DISTRO += "blacklist"
> +PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-gtk-directfb] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
> +PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
> +PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
>

