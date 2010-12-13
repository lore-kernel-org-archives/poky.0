Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BEA1A4C810AC
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 12:35:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 10:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="686720069"
Received: from unknown (HELO [10.24.5.122]) ([10.24.5.122])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 10:35:55 -0800
Message-ID: <4D06678A.2030903@linux.intel.com>
Date: Mon, 13 Dec 2010 10:35:54 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1292221596.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292221596.git.bruce.ashfield@windriver.com>
Subject: Re: [PATCH 0/1] linux-yocto: fix machine compatibility lists
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
X-List-Received-Date: Mon, 13 Dec 2010 18:35:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2010 10:27 PM, Bruce Ashfield wrote:
> During the last phase of the recipe factoring, the board compatibility
> lists ended up in the wrong place, which meant we had an incomplete
> list of boards, and the same set of boards for both kernels (stable
> and devel).
>
> To fix this, I've yanked the compatibility to the recipes themselves and
> updated the emenlow to have a -stable bbappend.
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
>    linux-yocto: fix machine compatibility
>
>   ...it.bbappend =>  linux-yocto-stable_git.bbappend} |    0
>   .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 ++
>   meta/recipes-kernel/linux/linux-yocto.inc          |    2 --
>   meta/recipes-kernel/linux/linux-yocto_git.bb       |    1 +
>   4 files changed, 3 insertions(+), 2 deletions(-)
>   rename meta-emenlow/recipes/linux/{linux-yocto_git.bbappend =>  linux-yocto-stable_git.bbappend} (100%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Bruce,

Thanks for the fast turn on these fixes, there are pulled into master 
and the 1.0 M2 branch.

Sau!

