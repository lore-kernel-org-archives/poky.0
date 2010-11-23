Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98B504C80B70
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 09:47:30 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oANFlTLI010250;
	Tue, 23 Nov 2010 07:47:29 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 07:47:29 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 07:47:28 -0800
Message-ID: <4CEBE20F.8090807@windriver.com>
Date: Tue, 23 Nov 2010 10:47:27 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1290492595.2784.149.camel@elmorro>
In-Reply-To: <1290492595.2784.149.camel@elmorro>
X-OriginalArrivalTime: 23 Nov 2010 15:47:28.0845 (UTC)
	FILETIME=[BBA5D7D0:01CB8B25]
Cc: poky@yoctoproject.org
Subject: Re: [KERNEL][PATCH 1/1] wrs_meta: add blktrace feature
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
X-List-Received-Date: Tue, 23 Nov 2010 15:47:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-23 01:09 AM, Tom Zanussi wrote:
> Add a 'blktrace feature' that turns on kernel support for blktrace, a
> block I/O tracing tool.  Added to 'standard' alongside similar tracing
> tool config.

Looks good Tom. I'll drop this into 2.6.34 and propagate
it to the 2.6.37 kernel as well.

Bruce

>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../kernel-cache/features/blktrace/blktrace.cfg    |    1 +
>   .../kernel-cache/features/blktrace/blktrace.scc    |    1 +
>   wrs/cfg/kernel-cache/ktypes/standard/standard.scc  |    3 +++
>   3 files changed, 5 insertions(+), 0 deletions(-)
>   create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
>   create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.scc
>
> diff --git a/wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg b/wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
> new file mode 100644
> index 0000000..3e61f2b
> --- /dev/null
> +++ b/wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
> @@ -0,0 +1 @@
> +CONFIG_BLK_DEV_IO_TRACE=y
> diff --git a/wrs/cfg/kernel-cache/features/blktrace/blktrace.scc b/wrs/cfg/kernel-cache/features/blktrace/blktrace.scc
> new file mode 100644
> index 0000000..945714b
> --- /dev/null
> +++ b/wrs/cfg/kernel-cache/features/blktrace/blktrace.scc
> @@ -0,0 +1 @@
> +kconf non-hardware blktrace.cfg
> diff --git a/wrs/cfg/kernel-cache/ktypes/standard/standard.scc b/wrs/cfg/kernel-cache/ktypes/standard/standard.scc
> index 7eb9585..8f07220 100644
> --- a/wrs/cfg/kernel-cache/ktypes/standard/standard.scc
> +++ b/wrs/cfg/kernel-cache/ktypes/standard/standard.scc
> @@ -16,6 +16,9 @@ include mips.scc
>   include features/lttng/lttng.scc
>   tag lttng
>
> +include features/blktrace/blktrace.scc
> +tag blktrace
> +
>   include features/ocd/ocd.scc
>   tag ocd
>


