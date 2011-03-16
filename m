Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A64644C805BB
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 13:18:52 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Mar 2011 11:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="897965421"
Received: from unknown (HELO [10.255.12.153]) ([10.255.12.153])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 11:18:47 -0700
Message-ID: <4D80FF06.2040206@intel.com>
Date: Wed, 16 Mar 2011 11:18:46 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1300277765.git.edwin.zhai@intel.com>
	<cea6b5f80bd71deec58980d59de6310933aea0c7.1300277765.git.edwin.zhai@intel.com>
In-Reply-To: <cea6b5f80bd71deec58980d59de6310933aea0c7.1300277765.git.edwin.zhai@intel.com>
Subject: Re: [PATCH 2/2] qemu: Use mesa's libGL rather than nVidia's to	avoid segfault of qemu
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
X-List-Received-Date: Wed, 16 Mar 2011 18:18:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2011 05:32 AM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> Proprietary nVidia driver introduce its own libGL that precede mesa's.
> qemu has segfault if linked with it. This fix try to use mesa's libGL
> in such case.
>
> [YOCTO #649]
> [YOCTO #698]
>
> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>

This fixes the problem on my Ubuntu 10.10 system using NVIDIA 
proprietary graphics.

Acked-by: Scott Garman <scott.a.garman@intel.com>

> ---
>   scripts/poky-qemu |    4 ++++
>   1 files changed, 4 insertions(+), 0 deletions(-)
>
> diff --git a/scripts/poky-qemu b/scripts/poky-qemu
> index 2d94a11..1d04c37 100755
> --- a/scripts/poky-qemu
> +++ b/scripts/poky-qemu
> @@ -404,6 +404,10 @@ if [ "$nv_libgl" == 'yes' ]; then
>       echo "************** !!!Warning!!! **************
>       You installed nVidia's libGL.so that probably lead qemu segfault!
>       Pls. uninstall proprietary nVidia driver or make mesa libgl precede nvidia's."
> +
> +    # To avoid segfault of qemu, skip nVidia's libGL and use mesa's instead
> +    echo "Skip nVidia's libGL!"
> +    export LD_PRELOAD="/usr/lib/libGL.so $LD_PRELOAD"
>   fi
>
>   INTERNAL_SCRIPT=`which poky-qemu-internal`


-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

