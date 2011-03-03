Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87B7A4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 13:12:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 11:12:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="608756920"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2011 11:12:51 -0800
Message-ID: <4D6FE833.8090805@intel.com>
Date: Thu, 03 Mar 2011 11:12:51 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1299014724.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1299014724.git.bruce.ashfield@windriver.com>
Subject: Re: [PATCH 0/1] kernel: fix menuconfig
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
X-List-Received-Date: Thu, 03 Mar 2011 19:12:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 01:28 PM, Bruce Ashfield wrote:
> Fixes [BUGID #598]
>
> The explicit addition of "bash" before "make menuconfig"
> is clearing variables that are required for pseudo. The
> end result is that menuconfig often fails silently with:
>
> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
>
> Removing bash from the menuconfig SHELLCMDS variable fixes
> the pseudo problem.
>
> As near as I can tell this is unversally safe (i.e. with
> a different TERMCMD), but I'm willing to be correct and/or
> replaced by a better patch. But this definitely fixed the
> problem for me.
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
> Bruce Ashfield (1):
>    kernel: remove explicit bash call in do_menuconfig
>
>   meta/classes/kernel.bbclass |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Bernard, OE-Core and Master

Thanks
	Sau!

