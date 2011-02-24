Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40E1B4C80A79
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 00:20:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Feb 2011 22:20:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,215,1297065600"; d="scan'208";a="660945464"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2011 22:20:09 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Yu, Ke" <ke.yu@intel.com>
In-Reply-To: <cover.1298526181.git.ke.yu@intel.com>
References: <cover.1298526181.git.ke.yu@intel.com>
Date: Thu, 24 Feb 2011 00:20:07 -0600
Message-ID: <1298528407.5067.30.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 24 Feb 2011 06:20:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-23 at 21:47 -0800, Yu, Ke wrote:
> mesa lib is required for sugarbuy 3D application, so add it in the BSP config.
> this fix [BUGID #727]
> 

Hi Yu,

Thanks for catching this - stupid oversight on my part...

Tom

> this patch is targeted for BSP git tree: "git://git.pokylinux.org/meta-intel"
> 
> CC: Tom Zanussi <tom.zanussi@intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kyu3/bug727
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug727
> 
> Thanks,
>     Yu Ke <ke.yu@intel.com>
> ---
> 
> 
> Yu Ke (1):
>   sugarbay.conf: add mesa library to fix BUG 727
> 
>  meta-sugarbay/conf/machine/sugarbay.conf |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
> 



