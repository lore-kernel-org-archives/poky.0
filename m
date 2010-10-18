Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 155E94C8119A
	for <poky@pokylinux.org>; Mon, 18 Oct 2010 14:55:20 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2010 12:55:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,346,1283756400"; d="scan'208";a="337500764"
Received: from unknown (HELO [10.255.12.85]) ([10.255.12.85])
	by azsmga001.ch.intel.com with ESMTP; 18 Oct 2010 12:55:18 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTi=gui3bioeOXU5gcgu6SuzoKD=cYTgAgEygBSkj@mail.gmail.com>
References: <AANLkTi=gui3bioeOXU5gcgu6SuzoKD=cYTgAgEygBSkj@mail.gmail.com>
Date: Mon, 18 Oct 2010 14:55:00 -0500
Message-ID: <1287431700.26874.134.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "Purdie, Richard" <richard.purdie@intel.com>, poky <poky@pokylinux.org>
Subject: Re: [PULL] [KERNEL] emenlow: logging / restart fixes
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Mon, 18 Oct 2010 19:55:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-10-18 at 12:42 -0700, Bruce Ashfield wrote:
> The following fixes logging / restart issues with the emenlow.
> 
> commit 9c734d919f194d2ecb8b06e9a987f306cf3f1593
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Mon Oct 18 15:33:30 2010 -0400
> 
>     wrs_meta: emenlow updates
> 
>     Fixes [BUGID #465]
> 
>         wrs_meta: add logbuf size feature
> 
>         A 16k kernel log buffer size is too small for emenlow and atom-pc -
>         boot messages are routinely lost with the current setting.  Increase
>         the size to something more reasonable - 64k seems to be a good
>         compromise.
> 
>         Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> 

Hi,

Just FYI, there are two fixes here, the above and this second one that:

Fixes [BUGID #160]

>         emenlow: add cmdline option for reboot quirk
> 
>         The default reboot options don't work for emenlow i.e. kbd + triple
>         results in a reboot hang.  According to the emenlow chipset manual,
>         port CF9 is supported, so let's use that.
> 
>         Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> 
>     Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> 

Thanks,

Tom



