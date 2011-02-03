Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F24834C800C0;
	Thu,  3 Feb 2011 13:37:22 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2011 11:37:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,421,1291622400"; d="scan'208";a="884093477"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2011 11:37:13 -0800
Message-ID: <4D4B03E9.2000000@intel.com>
Date: Thu, 03 Feb 2011 11:37:13 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1296666481.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1296666481.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto: BSP updates
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
X-List-Received-Date: Thu, 03 Feb 2011 19:37:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2011 09:11 AM, Bruce Ashfield wrote:
> Richard/Saul,
>
> Here's the update for the sugarbay and beagleboard BSPs. To make the sugarbay
> inhert common-pc-64 generic config/changes/fixes it has been
> branched in the kernel as yocto/standard/common-pc-64/sugarbar, as
> a result, we'll bump the common-pc-64 to be yocto/standard/common-pc-64/base.
>
> I've built the common-pc-64, sugarbay and beagleboard here. Branch
> renames and creations have been pushed to the repos.
>
> This commit also stages lttng for a single board qemux86, but more
> will follow by the end of day.
>
> cc'ing Tom and Darren, since they both have changes pending on this
> making it into the tree.
>
> cc: Darren Hart<dvhart@linux.intel.com>
> cc: Tom Zanussi<tom.zanussi@intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/bsp
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/bsp
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (1):
>    linux-yocto: BSP updates
>
>   .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
>   meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
>   2 files changed, 13 insertions(+), 13 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!


