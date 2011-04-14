Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3002A4C80AC6
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 16:14:06 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Apr 2011 14:14:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,213,1301900400"; d="scan'208";a="679193154"
Received: from unknown (HELO [10.255.12.232]) ([10.255.12.232])
	by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2011 14:14:05 -0700
Message-ID: <4DA7639D.3010004@linux.intel.com>
Date: Thu, 14 Apr 2011 14:14:05 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
	<34aa0bc63962a57f4b819156fa824673252a559d.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <34aa0bc63962a57f4b819156fa824673252a559d.1302739788.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/9] avahi: Upgrade to 0.6.30 (from 0.6.28)
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
X-List-Received-Date: Thu, 14 Apr 2011 21:14:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/13/2011 05:13 PM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> This upgrade fix the one security issue:
> http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2011-1002
> [YOCTO #975] fixed.
>
> This should be included in the Bernard point-release.
>
> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> ---
>   .../avahi/{avahi_0.6.28.bb =>  avahi_0.6.30.bb}     |    6 +++---
>   1 files changed, 3 insertions(+), 3 deletions(-)
>   rename meta/recipes-connectivity/avahi/{avahi_0.6.28.bb =>  avahi_0.6.30.bb} (82%)
>
Since we are updating this recipe, I noticed that there is a patch and 
also that the patch line has an older style (patch=1) that could be 
removed.  Please check into the patch and update the avahi.inc file.

Thanks
	Sau!

> diff --git a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb b/meta/recipes-connectivity/avahi/avahi_0.6.30.bb
> similarity index 82%
> rename from meta/recipes-connectivity/avahi/avahi_0.6.28.bb
> rename to meta/recipes-connectivity/avahi/avahi_0.6.30.bb
> index 6e034b0..1084c04 100644
> --- a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
> +++ b/meta/recipes-connectivity/avahi/avahi_0.6.30.bb
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1 \
>                       file://avahi-client/client.h;endline=23;md5=f4ac741a25c4f434039ba3e18c8674cf"
>
>   RDEPENDS_avahi-daemon = "sysvinit-pidof"
> -PR = "r2"
> +PR = "r0"
>
>   EXTRA_OECONF += "--disable-gtk3"
>
> @@ -15,5 +15,5 @@ FILES_avahi-autoipd = "${sbindir}/avahi-autoipd \
>                          ${sysconfdir}/avahi/avahi-autoipd.action \
>   		       ${sysconfdir}/dhcp3/*/avahi-autoipd"
>
> -SRC_URI[md5sum] = "d0143a5aa3265019072e53ab497818d0"
> -SRC_URI[sha256sum] = "a0d80aac88212b9f9d5331c248091d3c9c9209f0e41985421636ebd14230fc91"
> +SRC_URI[md5sum] = "e4db89a2a403ff4c47d66ac66fad1f43"
> +SRC_URI[sha256sum] = "f9e4316c2339d0020726edd846d01bee0c39980906db0c247479e5807457ff1f"


