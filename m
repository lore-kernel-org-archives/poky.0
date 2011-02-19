Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90C674C8090F
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 22:32:54 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Feb 2011 20:32:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="391105091"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by azsmga001.ch.intel.com with ESMTP; 18 Feb 2011 20:32:53 -0800
Message-ID: <4D5F47F5.5050200@intel.com>
Date: Fri, 18 Feb 2011 20:32:53 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1297995730.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1297995730.git.edwin.zhai@intel.com>
Subject: Re: [PATCH 0/1] Enable parallel make for eds-dbus
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
X-List-Received-Date: Sat, 19 Feb 2011 04:32:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 06:24 PM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> RP,
>      After last upgrade of eds-dbus, the parallel make issues gone. So enable it to speed up build process.
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/fix2
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (1):
>    eds-dbus: Enable parallel make to speed up build process
>
>   meta/recipes-sato/eds/eds-dbus_git.bb |    5 -----
>   1 files changed, 0 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!


