Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 278ED4C80578
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 00:03:16 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Apr 2011 22:03:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,264,1301900400"; d="scan'208";a="424868173"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2011 22:03:15 -0700
Message-ID: <4DB50092.8010705@linux.intel.com>
Date: Sun, 24 Apr 2011 22:03:14 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1303131764.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303131764.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] [PULL] X apps/UX upgrade, edwin, Apr18, 2011
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
X-List-Received-Date: Mon, 25 Apr 2011 05:03:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/18/2011 06:10 AM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> This is modified version of last upgrade by adding "Upstream-Status" and other minor format change.
>
> Thanks,
> edwin
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/upgrade04
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade04
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (5):
>    tasks: Upgrade to 0.19 (from 0.18)
>    avahi: Upgrade to 0.6.30 (from 0.6.28)
>    consolekit: Upgrade to 0.4.4 (from 0.4.3)
>    libgpg-error: Upgrade to 1.10 (from 1.9)
>    jpeg: Upgrade to 8c (from 8b)
>
>   meta/recipes-connectivity/avahi/avahi.inc          |    2 +-
>   .../avahi/{avahi_0.6.28.bb =>  avahi_0.6.30.bb}     |    6 +++---
>   .../avahi/files/initscript.patch                   |    2 ++
>   .../{jpeg-8b =>  jpeg-8c}/debian-libjpeg7_7-1.diff  |    4 ++++
>   meta/recipes-core/jpeg/{jpeg_8b.bb =>  jpeg_8c.bb}  |    8 ++++----
>   .../pimlico/{tasks_0.18.bb =>  tasks_0.19.bb}       |    4 ++--
>   .../{consolekit_0.4.3.bb =>  consolekit_0.4.4.bb}   |   10 ++++++----
>   .../consolekit/files/nopolkit.patch                |    2 ++
>   .../pkgconfig.patch                                |    2 ++
>   .../{libgpg-error_1.9.bb =>  libgpg-error_1.10.bb}  |    6 +++---
>   10 files changed, 29 insertions(+), 17 deletions(-)
>   rename meta/recipes-connectivity/avahi/{avahi_0.6.28.bb =>  avahi_0.6.30.bb} (82%)
>   rename meta/recipes-core/jpeg/{jpeg-8b =>  jpeg-8c}/debian-libjpeg7_7-1.diff (98%)
>   rename meta/recipes-core/jpeg/{jpeg_8b.bb =>  jpeg_8c.bb} (82%)
>   rename meta/recipes-sato/pimlico/{tasks_0.18.bb =>  tasks_0.19.bb} (78%)
>   rename meta/recipes-support/consolekit/{consolekit_0.4.3.bb =>  consolekit_0.4.4.bb} (75%)
>   rename meta/recipes-support/libgpg-error/{libgpg-error-1.9 =>  libgpg-error-1.10}/pkgconfig.patch (98%)
>   rename meta/recipes-support/libgpg-error/{libgpg-error_1.9.bb =>  libgpg-error_1.10.bb} (82%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into oe-core and poky/master

Thanks
	Sau!


