Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 694DD4C80048;
	Mon, 13 Dec 2010 12:37:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2010 10:37:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,337,1288594800"; d="scan'208";a="686720531"
Received: from unknown (HELO [10.24.5.122]) ([10.24.5.122])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 10:37:06 -0800
Message-ID: <4D0667D2.20507@linux.intel.com>
Date: Mon, 13 Dec 2010 10:37:06 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1292218710.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292218710.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] qemuppc: fix 2.6.37 build failure
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
X-List-Received-Date: Mon, 13 Dec 2010 18:37:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2010 09:41 PM, Bruce Ashfield wrote:
> Somehow the ppc32 irq routines were only partially updated
> to 2.6.37. I'll have to check later to see what happened, since
> these were all built and booted here.
>
> The fix is simple enough, here's the update for the SRCREV
> that gets qemuppc building again.
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
>    qemuppc: update 2.6.37 SRCREV
>
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
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

