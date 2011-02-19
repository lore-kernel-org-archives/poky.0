Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68C024C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 22:00:23 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Feb 2011 20:00:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="604413466"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by orsmga002.jf.intel.com with ESMTP; 18 Feb 2011 20:00:22 -0800
Message-ID: <4D5F4056.4090306@intel.com>
Date: Fri, 18 Feb 2011 20:00:22 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1297940034.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297940034.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][PULL] gstreamer: reenable PARALLEL_MAKE
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
X-List-Received-Date: Sat, 19 Feb 2011 04:00:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 02:55 AM, Dongxiao Xu wrote:
> From: Dongxiao Xu<dongxiao.xu@intel.com>
>
> This pull request re-enables PARALLEL_MAKE for gstreamer. Builds on all architectures are tested.
>
> Please help to review and pull.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dxu4/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro
>
> Thanks,
>      Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>
>
> Dongxiao Xu (1):
>    gstreamer: reenable PARALLEL_MAKE
>
>   .../gstreamer/gstreamer_0.10.31.bb                 |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!


