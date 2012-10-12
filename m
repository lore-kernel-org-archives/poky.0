Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D0E0E0027E
	for <poky@yoctoproject.org>; Fri, 12 Oct 2012 13:11:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q9CKBLxF025449
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Oct 2012 13:11:21 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Fri, 12 Oct 2012 13:11:21 -0700
Message-ID: <50787957.4070106@windriver.com>
Date: Fri, 12 Oct 2012 16:11:03 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1350070372.git.tom.zanussi@intel.com>
	<83af67a8e717a631355c0deed80cf64969b8ae99.1350070372.git.tom.zanussi@intel.com>
In-Reply-To: <83af67a8e717a631355c0deed80cf64969b8ae99.1350070372.git.tom.zanussi@intel.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] packagegroup-core-tools-profile: replace 'legacy' lttng with lttng 2.0
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Oct 2012 20:11:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-10-12 03:53 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> packagegroup-core-tools-profile currently pulls in the 'legacy' lttng
> packages, which are useless without legacy lttng support in the kernel.
>
> This makes packagegroup-core-tools-profile pull in the lttng 2.0
> packages instead, which don't need any kernel modifications to work.

Definitely the right thing to do, oe-core needs the email too though!

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../packagegroups/packagegroup-core-tools-profile.bb             | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
> index 1035036..bf6e16e 100644
> --- a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
> +++ b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
> @@ -5,7 +5,7 @@
>   SUMMARY = "Profiling tools"
>   LICENSE = "MIT"
>
> -PR = "r1"
> +PR = "r2"
>
>   inherit packagegroup
>
> @@ -29,8 +29,9 @@ PROFILETOOLS = "\
>       oprofileui-server \
>       powertop \
>       latencytop \
> -    lttng-control \
> -    lttng-viewer"
> +    lttng-tools \
> +    lttng-modules \
> +    babeltrace"
>
>   # systemtap needs elfutils which is not fully buildable on uclibc
>   # hence we exclude it from uclibc based builds
> @@ -44,7 +45,7 @@ SYSTEMTAP_mips = ""
>   # which means we can not use syscall() to call it. So we ignore
>   # it for x86_64/uclibc
>
> -LTTNGUST = "lttng-ust"
> +LTTNGUST = "lttng2-ust"
>   LTTNGUST_libc-uclibc = ""
>   LTTNGUST_mips = ""
>


