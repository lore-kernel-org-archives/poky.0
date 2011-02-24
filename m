Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2E564C800AC
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 12:55:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Feb 2011 10:55:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,219,1297065600"; d="scan'208";a="393650612"
Received: from unknown (HELO [10.255.12.120]) ([10.255.12.120])
	by azsmga001.ch.intel.com with ESMTP; 24 Feb 2011 10:55:20 -0800
Message-ID: <4D66A998.8020502@intel.com>
Date: Thu, 24 Feb 2011 10:55:20 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1298526181.git.ke.yu@intel.com>
In-Reply-To: <cover.1298526181.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-sugarbay: add mesa lib in BSP to fix BUG 727
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
X-List-Received-Date: Thu, 24 Feb 2011 18:55:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/23/2011 09:47 PM, Yu Ke wrote:
> mesa lib is required for sugarbuy 3D application, so add it in the BSP config.
> this fix [BUGID #727]
>
> this patch is targeted for BSP git tree: "git://git.pokylinux.org/meta-intel"
>
> CC: Tom Zanussi<tom.zanussi@intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/bug727
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug727
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (1):
>    sugarbay.conf: add mesa library to fix BUG 727
>
>   meta-sugarbay/conf/machine/sugarbay.conf |    4 +++-
>   1 files changed, 3 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into meta-intel master

Thanks
	Sau!


