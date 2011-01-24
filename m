Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54A834C811B0
	for <poky@pokylinux.org>; Sun, 23 Jan 2011 22:52:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Jan 2011 20:52:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="595786302"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2011 20:52:46 -0800
Message-ID: <4D3D059D.2050609@intel.com>
Date: Sun, 23 Jan 2011 20:52:45 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kevin Tian <kevin.tian@intel.com>
References: <0d30dc$kqbuu6@orsmga001.jf.intel.com>
In-Reply-To: <0d30dc$kqbuu6@orsmga001.jf.intel.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/3] sstate fixes: whitelist and bitbake-diffsigs
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
X-List-Received-Date: Mon, 24 Jan 2011 04:52:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2011 03:23 AM, Kevin Tian wrote:
> this series include one whitelist fix about USER and USERNAME, which allows sstate packages
> generated from opensuse to be usable on ubuntu. other two fixes about bitbake-diffsigs, for
> better output and correctness
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: tk/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master
>
> Thanks,
>      Kevin Tian<kevin.tian@intel.com>
> ---
>
>
> Kevin Tian (3):
>    bitbake.conf: add USERNAME to BB_HASHBASE_WHITELIST
>    siggen.py: better print for task hash comparison
>    siggen.py: remove path in 'runtaskdeps'
This was not pulled into master at this time.

>
>   bitbake/lib/bb/siggen.py |   27 +++++++++++++++++++--------
>   meta/conf/bitbake.conf   |    2 +-
>   2 files changed, 20 insertions(+), 9 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Partial Pulled into master.

Thanks
	Sau!



