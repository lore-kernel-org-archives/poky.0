Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8ED0D4C800AC;
	Sat, 26 Feb 2011 01:56:25 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Feb 2011 23:56:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,231,1297065600"; d="scan'208";a="394409919"
Received: from unknown (HELO [10.255.12.120]) ([10.255.12.120])
	by azsmga001.ch.intel.com with ESMTP; 25 Feb 2011 23:56:24 -0800
Message-ID: <4D68B227.4090000@linux.intel.com>
Date: Fri, 25 Feb 2011 23:56:23 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1298690997.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1298690997.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [yocto] [PATCH 0/1] linux-yocto: add crowbay BSP
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
X-List-Received-Date: Sat, 26 Feb 2011 07:56:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2011 07:32 PM, Bruce Ashfield wrote:
> Richard/Saul,
>
> This adds the crownbay BSP infrastructure to the 2.6.37 kernel.
> The BSP branch has already been pushed and this adds the config
> data.
>
> TomZ will use this for a baseline and for further testing, so
> for now the change is harmless to any existing functionality.
>
Does this go against the meta-intel or core yocto meta-data?

It missed RC1 for core yocto.

Sau!

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
>    linux-yocto: add crownbay BSP infrastructure
>
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


