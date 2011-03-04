Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2850F4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 19:26:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Mar 2011 17:26:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,261,1297065600"; d="scan'208";a="715961912"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 17:26:01 -0800
Message-ID: <4D703FA9.9020204@intel.com>
Date: Thu, 03 Mar 2011 17:26:01 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1299094021.git.liping.ke@intel.com>
In-Reply-To: <cover.1299094021.git.liping.ke@intel.com>
Subject: Re: [PATCH 0/1] new bugfix for adt installer on SuseLinux
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
X-List-Received-Date: Fri, 04 Mar 2011 01:26:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/02/2011 11:28 AM, Liping Ke wrote:
> From: Liping Ke<liping.ke@intel.com>
>
> On Suse linux11.2, we found when using sudo, we must add -E opts
> to preserver some network proxy environment settings. Otherwise,
> opkg-cl can't access files behind firewall. [bug #785]
> Also, we need to add absolute path when sourcing files.
> Fix for [bug #786]
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lke/adt-newfix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/adt-newfix
>
> Thanks,
>      Liping Ke<liping.ke@intel.com>
> ---
>
>
> Liping Ke (1):
>    ADT: Bug fix for Suse Linux
>
>   .../adt-installer/scripts/adt_installer_internal   |    2 +-
>   .../installer/adt-installer/scripts/data_define    |    2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into OE-Core and Bernard

with a minor tweak to change the `eval echo $PWD` -> `pwd`

Thanks
	Sau!


