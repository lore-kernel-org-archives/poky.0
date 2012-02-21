Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBFCEE0059A
	for <poky@yoctoproject.org>; Tue, 21 Feb 2012 11:23:43 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Feb 2012 11:23:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="112940335"
Received: from unknown (HELO [10.255.15.72]) ([10.255.15.72])
	by orsmga002.jf.intel.com with ESMTP; 21 Feb 2012 11:23:43 -0800
Message-ID: <4F43EF3F.9090109@linux.intel.com>
Date: Tue, 21 Feb 2012 11:23:43 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Bob Cochran <yocto@mindchasers.com>
References: <4F389609.7010900@mindchasers.com>
In-Reply-To: <4F389609.7010900@mindchasers.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] udev.inc has a bad link for udev home page; update the link
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
X-List-Received-Date: Tue, 21 Feb 2012 19:23:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/12/2012 08:48 PM, Bob Cochran wrote:
> Fixed bad link in udev.inc to the udev home page / documentation on
> kernel.org
>
>
> Signed-off-by: Robert Cochran<yocto@mindchasers.com>
> ---
> meta/recipes-core/udev/udev.inc | 2 +-
> 1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-core/udev/udev.inc
> b/meta/recipes-core/udev/udev.inc
> index e5fbe40..886fa0b 100644
> --- a/meta/recipes-core/udev/udev.inc
> +++ b/meta/recipes-core/udev/udev.inc
> @@ -1,7 +1,7 @@
> SUMMARY = "/dev/ and hotplug management daemon"
> DESCRIPTION = "udev is a daemon which dynamically creates and removes
> device nodes from \
> /dev/, handles hotplug events and loads drivers at boot time."
> -HOMEPAGE =
> "http://www.kernel.org/pub/linux/utils/kernel/hotplug/udev.html"
> +HOMEPAGE =
> "http://www.kernel.org/pub/linux/utils/kernel/hotplug/udev/udev.html"
> LICENSE = "GPLv2.0+ & LGPLv2.1+"
> LICENSE_${PN} = "GPLv2.0+"
> LICENSE_libudev = "LGPLv2.1+"

Merged into OE-core

BTW, in the future, please send patches to meta/* to the 
openembedded-core@lists.openembedded.org list.

Thanks
	Sau!

