Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 756AF4C80044
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 11:54:14 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Apr 2011 09:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,324,1299484800"; d="scan'208";a="625625721"
Received: from unknown (HELO [10.255.13.36]) ([10.255.13.36])
	by orsmga002.jf.intel.com with ESMTP; 08 Apr 2011 09:54:00 -0700
Message-ID: <4D9F3DA8.6020004@linux.intel.com>
Date: Fri, 08 Apr 2011 09:54:00 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <24a677317c4a8d2b20c91e9fbc42697b19b94d37.1302123273.git.dvhart@linux.intel.com>
In-Reply-To: <24a677317c4a8d2b20c91e9fbc42697b19b94d37.1302123273.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] Update trace-cmd and kernelshark distro_tracking
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
X-List-Received-Date: Fri, 08 Apr 2011 16:54:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/2011 01:54 PM, Darren Hart wrote:
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   .../conf/distro/include/distro_tracking_fields.inc |   14 ++++++++++----
>   1 files changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
> index cadfac2..6384f80 100644
> --- a/meta/conf/distro/include/distro_tracking_fields.inc
> +++ b/meta/conf/distro/include/distro_tracking_fields.inc
> @@ -113,11 +113,17 @@ RECIPE_LATEST_VERSION_pn-subversion = "1.6.15"
>   RECIPE_MANUAL_CHECK_DATE_pn-subversion = "Jan 25, 2011"
>   RECIPE_MAINTAINER_pn-subversion = "Nitin A Kamble<nitin.a.kamble@intel.com>"
>
> -RECIPE_STATUS_pn-trace-cmd = "red"
> -RECIPE_LATEST_VERSION_pn-trace-cmd = "check"
> +RECIPE_STATUS_pn-trace-cmd = "green"
> +RECIPE_LATEST_VERSION_pn-trace-cmd = "1.1.1"
>   DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
> -RECIPE_LAST_UPDATE_pn-trace-cmd = "Aug 20, 2010"
> -RECIPE_MAINTAINER_pn-trace-cmd = "Bruce"
> +RECIPE_LAST_UPDATE_pn-trace-cmd = "Jan 11, 2011"
> +RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart<dvhart@linux.intel.com>"
> +
> +RECIPE_STATUS_pn-kernelshark = "green"
> +RECIPE_LATEST_VERSION_pn-kernelshark = "0.2"
> +DISTRO_PN_ALIAS_pn-kernelshark = "Mandriva=kernelshark Ubuntu=kernelshark"
> +RECIPE_LAST_UPDATE_pn-kernelshark = "Jan 11, 2011"
> +RECIPE_MAINTAINER_pn-kernelshark = "Darren Hart<dvhart@linux.intel.com>"
>
>   RECIPE_STATUS_pn-web = "green"
>   RECIPE_LATEST_VERSION_pn-web = "0.0+svnr129"

Pulled into Master

Thanks
	Sau!


