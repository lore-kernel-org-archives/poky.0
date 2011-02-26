Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1B9A4C800B1;
	Fri, 25 Feb 2011 23:20:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Feb 2011 21:20:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,230,1297065600"; d="scan'208";a="606734245"
Received: from unknown (HELO [10.255.12.76]) ([10.255.12.76])
	by orsmga002.jf.intel.com with ESMTP; 25 Feb 2011 21:20:21 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1298690997.git.bruce.ashfield@windriver.com>
References: <cover.1298690997.git.bruce.ashfield@windriver.com>
Date: Fri, 25 Feb 2011 23:20:15 -0600
Message-ID: <1298697615.5067.72.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 0/1] linux-yocto: add crowbay BSP
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
X-List-Received-Date: Sat, 26 Feb 2011 05:20:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-25 at 19:32 -0800, Bruce Ashfield wrote:
> Richard/Saul,
> 
> This adds the crownbay BSP infrastructure to the 2.6.37 kernel.
> The BSP branch has already been pushed and this adds the config
> data.
> 
> TomZ will use this for a baseline and for further testing, so
> for now the change is harmless to any existing functionality.
> 

Thanks, Bruce.  In my haste to get things out, I forgot to push my local
meta branch, which was essentially the same...

Tom

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/kernel
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
> 
> Thanks,
>     Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> 
> 
> Bruce Ashfield (1):
>   linux-yocto: add crownbay BSP infrastructure
> 
>  .../conf/distro/include/poky-default-revisions.inc |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 



