Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49F974C80039;
	Wed, 12 Jan 2011 23:59:57 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jan 2011 21:59:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,316,1291622400"; d="scan'208";a="646471058"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2011 21:59:56 -0800
Message-ID: <4D2E94DC.5020605@intel.com>
Date: Wed, 12 Jan 2011 21:59:56 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1294771756.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294771756.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto: add routerstation pro and	mpc8315e-rdb support
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
X-List-Received-Date: Thu, 13 Jan 2011 05:59:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/2011 10:50 AM, Bruce Ashfield wrote:
> Just repeating the patch header here, since it is self explanitory:
>
> The routerstation pro and mpc8315e-rdb have been validated
> on 2.6.37 so we can switch their preference to linux-yocto
> and update the machine compatibility to add them to the support
> list.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (1):
>    linux-yocto: add routerstation pro and mpc8315e-rdb support
>
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   meta/conf/machine/mpc8315e-rdb.conf                |    4 ++--
>   meta/conf/machine/routerstationpro.conf            |    4 ++--
>   meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
>   4 files changed, 6 insertions(+), 6 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into master

Thanks
	Sau!



