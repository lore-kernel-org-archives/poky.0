Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBCDA4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 23:19:29 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Mar 2011 21:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="403889049"
Received: from unknown (HELO [10.255.12.136]) ([10.255.12.136])
	by azsmga001.ch.intel.com with ESMTP; 16 Mar 2011 21:19:28 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <49bffc5de0226fb1a215200d800189aaf286970b.1300334468.git.dvhart@linux.intel.com>
References: <cover.1300334468.git.dvhart@linux.intel.com>
	<49bffc5de0226fb1a215200d800189aaf286970b.1300334468.git.dvhart@linux.intel.com>
Date: Wed, 16 Mar 2011 23:19:23 -0500
Message-ID: <1300335563.809.120.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] gtk+: remove per-machine gtk+ FULL_OPTIMIZATION in favor of tune-atom.inc
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
X-List-Received-Date: Thu, 17 Mar 2011 04:19:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-16 at 21:03 -0700, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> Now that the FULL_OPTIMIZATION for gtk+ has been enabled in the core
> tune-atom.inc, it is no longer necessary to do so for every atom based
> bsp.
> 

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>
> CC: Ke Yu <ke.yu@intel.com>
> CC: Richard Purdie <richard.purdie@intel.com>
> ---
>  .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    5 -----
>  meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend  |    2 --
>  2 files changed, 0 insertions(+), 7 deletions(-)
>  delete mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
>  delete mode 100644 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
> 
> diff --git a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
> deleted file mode 100644
> index d20e233..0000000
> --- a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -PR .= ".1"
> -
> -#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on crownbay
> -FULL_OPTIMIZATION_crownbay = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
> -FULL_OPTIMIZATION_crownbay-noemgd = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
> diff --git a/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
> deleted file mode 100644
> index 3af4187..0000000
> --- a/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on n450
> -FULL_OPTIMIZATION_n450 = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"



