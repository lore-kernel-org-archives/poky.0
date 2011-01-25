Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A799E4C811A5;
	Tue, 25 Jan 2011 11:21:17 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Jan 2011 09:21:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,375,1291622400"; d="scan'208";a="596327879"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2011 09:20:58 -0800
Message-ID: <4D3F067A.2040103@intel.com>
Date: Tue, 25 Jan 2011 09:20:58 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1295970827.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295970827.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] perf: hard-code NO_LIBPERL/NO_LIBPYTHO
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
X-List-Received-Date: Tue, 25 Jan 2011 17:21:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 07:59 AM, Bruce Ashfield wrote:
> We already had this fix in the 2.6.37 kernel (and it is staged
> temporarily there) so this is the same change for the -stable
> kernel to fix the perf build error reported by Gary this morning.
>
> I went ahead and merged this to the kernel tree directly, since
> we may not loop back and do another fix for this on in the -stable
> kernel.
>
> Compiled for atom-pc/beagleboard and routerstationpro.
>
Does this mean we can revert the patch in perl and python recipes?

Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel-stable
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-stable
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (1):
>    linux-yocto/stable: perf: hard-code NO_LIBPERL/NO_LIBPYTHO
>
>   .../conf/distro/include/poky-default-revisions.inc |   18 +++++++++---------
>   1 files changed, 9 insertions(+), 9 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


