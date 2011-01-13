Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20AFF4C810AF;
	Thu, 13 Jan 2011 00:01:15 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jan 2011 22:01:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,316,1291622400"; d="scan'208";a="646471560"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2011 22:01:13 -0800
Message-ID: <4D2E9529.6020704@linux.intel.com>
Date: Wed, 12 Jan 2011 22:01:13 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/5] linux-yocto: consolidated pull request
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
X-List-Received-Date: Thu, 13 Jan 2011 06:01:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2011 09:30 AM, Bruce Ashfield wrote:
> It looks like some of my last pull request didn't make it
> to master, so I've repeated it here. Patches 4/5 have already
> been sent:
>
>    kernel-yocto: pass the build directory to configme
>    routerstation: disable command line overrides
>
> The remaining three changes are new and are:
>
>   - A merge from Darren to update the default 2.6.37 configs
>     to enable the debug/ftrace configs we need.
>
>   - A change to make board descriptions generic. These are
>     transparent to nearly everyone, but any new BSPs will be
>     described with: KARCH, KMACHINE and KTYPE which are more
>     generic variables and used internally during kernel
>     configuration. They are differnet from yocto/poky variables
>     on purpose, since the kernel tree can be cloned and used
>     distinctly from any build system.
>
>   - And finally an update to 2.6.37 with a port of the alternate
>     RPC ports patch which reinstates usermode NFS support to
>     2.6.37.
>
> Also out of interest, the routerstation pro and fsl-mpc8315e-rdb
> have all been booted against 2.6.37 and will follow shortly.
> Next up are feature merges (lttng, etc) to match the -stable
> kernel functionality.
>
> Cheers,
>
> Bruce
>
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
> Bruce Ashfield (5):
>    kernel-yocto: pass the build directory to configme
>    routerstation: disable command line overrides
>    linux-yocto: update SRCREV to pickup debug/ftrace config changes
>    kern-tools: create generic variables for platform/board/kernel
>    linux-yocto: update to 2.6.37
>
>   meta/classes/kernel-yocto.bbclass                  |    2 +-
>   .../conf/distro/include/poky-default-revisions.inc |   28 ++++++++++----------
>   2 files changed, 15 insertions(+), 15 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Everything got pulled this time

In Master now

Thanks
	Sau!


