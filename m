Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73F844C800A4;
	Tue,  1 Mar 2011 13:00:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2011 11:00:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="662711078"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by fmsmga002.fm.intel.com with ESMTP; 01 Mar 2011 11:00:00 -0800
Message-ID: <4D6D4230.9030502@intel.com>
Date: Tue, 01 Mar 2011 11:00:00 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1299001559.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1299001559.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] u-boot: don't install host mkimage on non-native builds
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
X-List-Received-Date: Tue, 01 Mar 2011 19:00:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 09:49 AM, Bruce Ashfield wrote:
> Richar/Saul,
>
> This fixes BUG 777.
>
> The u-boot package clearly uses HOST_CC and HOST_STRIP to build
> mkimage, so installing it into ${D}${bindir} for anything but the
> native mkimage is a bad idea. The native recipe has its own install
> function, so we can safely delete the entire do_install from
> u-boot.inc
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/uboot
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/uboot
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (1):
>    u-boot: remove do_install from u-boot.inc
>
>   meta/recipes-bsp/uboot/u-boot.inc |    5 -----
>   1 files changed, 0 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master and Bernard

Thanks
	Sau!


