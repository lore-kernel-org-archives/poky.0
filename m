Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64EB94C80039
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 14:51:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p04KpU63014345;
	Tue, 4 Jan 2011 12:51:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 4 Jan 2011 12:51:30 -0800
Received: from windriver.com ([128.224.146.67]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 4 Jan 2011 12:51:30 -0800
Received: by windriver.com (Postfix, from userid 8026)
	id 7F59B7CE8D5; Tue,  4 Jan 2011 15:51:29 -0500 (EST)
Date: Tue, 4 Jan 2011 15:51:29 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20110104205126.GA25385@windriver.com>
References: <4D225AB1.7010404@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4D225AB1.7010404@linux.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
X-OriginalArrivalTime: 04 Jan 2011 20:51:30.0294 (UTC)
	FILETIME=[29BF9160:01CBAC51]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] linux-yocto-2.6.37: Add debugfs and ftrace features to standard ktype meta-data
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
X-List-Received-Date: Tue, 04 Jan 2011 20:51:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In message: [PATCH] linux-yocto-2.6.37: Add debugfs and ftrace features to standard ktype meta-data
on 03/01/2011 Darren Hart wrote:

> ftrace provides low impact tracing facilities and should be made
> available on the main kernel - as opposed to a debug or tracing
> kernel which often add enough overhead to mask subtle bugs.

I had similar changes to this queued up in preparation for 
feature merging into 2.6.37, but I've grabbed this instead
since it is standalone and tested. I've got it here and
will push it out tomorrow after some other minor things are
done.

Cheers,

Bruce

> 
> These features are available on the 2.6.34 yocto kernel.
> 
> Boot and trace-cmd tested on qemux86-64.
> 
> Signed-off-by: Darren Hart <darren@dvhart.com>
> CC: Bruce Ashfield <bruce.ashfield@windriver.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta/cfg/kernel-cache/features/debugfs/debugfs.cfg |    1 +
>  meta/cfg/kernel-cache/features/debugfs/debugfs.scc |    1 +
>  meta/cfg/kernel-cache/features/ftrace/ftrace.cfg   |    2 ++
>  meta/cfg/kernel-cache/features/ftrace/ftrace.scc   |    1 +
>  meta/cfg/kernel-cache/ktypes/standard/standard.scc |    4 ++++
>  5 files changed, 9 insertions(+), 0 deletions(-)
>  create mode 100644 meta/cfg/kernel-cache/features/debugfs/debugfs.cfg
>  create mode 100644 meta/cfg/kernel-cache/features/debugfs/debugfs.scc
>  create mode 100644 meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
>  create mode 100644 meta/cfg/kernel-cache/features/ftrace/ftrace.scc
> 
> diff --git a/meta/cfg/kernel-cache/features/debugfs/debugfs.cfg b/meta/cfg/kernel-cache/features/debugfs/debugfs.cfg
> new file mode 100644
> index 0000000..39c2d26
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/debugfs/debugfs.cfg
> @@ -0,0 +1 @@
> +CONFIG_DEBUG_FS=y
> diff --git a/meta/cfg/kernel-cache/features/debugfs/debugfs.scc b/meta/cfg/kernel-cache/features/debugfs/debugfs.scc
> new file mode 100644
> index 0000000..8f84947
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/debugfs/debugfs.scc
> @@ -0,0 +1 @@
> +kconf non-hardware debugfs.cfg
> diff --git a/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg b/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
> new file mode 100644
> index 0000000..bab800c
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
> @@ -0,0 +1,2 @@
> +CONFIG_FUNCTION_TRACER=y
> +CONFIG_FUNCTION_GRAPH_TRACER=y
> diff --git a/meta/cfg/kernel-cache/features/ftrace/ftrace.scc b/meta/cfg/kernel-cache/features/ftrace/ftrace.scc
> new file mode 100644
> index 0000000..c92e30f
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/ftrace/ftrace.scc
> @@ -0,0 +1 @@
> +kconf non-hardware ftrace.cfg
> diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> index 9fa6c1e..8212465 100644
> --- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> +++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> @@ -33,6 +33,10 @@ tag powerpc
>  
>  include features/hrt/hrt.scc
>  
> +include features/debugfs/debugfs.scc
> +
> +include features/ftrace/ftrace.scc
> +
>  include patches/wrs_patches.scc
>  
>  # #include features/ieee_float/ieee_float.scc
> -- 
> 1.7.1
> -- 
> Darren Hart
> Yocto Linux Kernel

