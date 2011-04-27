Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B3664C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 12:55:47 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3RHtkZw019648
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 10:55:46 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 27 Apr 2011 10:55:46 -0700
Message-ID: <4DB858A0.5010404@windriver.com>
Date: Wed, 27 Apr 2011 13:55:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <d41191395a917a375153df53dd31740fb9e8b92c.1303926202.git.dvhart@linux.intel.com>
In-Reply-To: <d41191395a917a375153df53dd31740fb9e8b92c.1303926202.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [KERNEL PATCH] Add SMP config fragment
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
X-List-Received-Date: Wed, 27 Apr 2011 17:55:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-04-27 01:43 PM, Darren Hart wrote:
> For reusable BSPs like atom-pc which may or may not have SMP support,
> allow the linux-yocto recipe to choose whether or not to enable SMP support.
> The smp config fragment enables SMP and SCHED_SMT.

Looks good. This is merged out to the 2.6.34 kernel now
(we'll consider where to put this in 1.1 when we get to
the config fragement cleanup activity), on the wrs_meta
branch.

I'll send a secondary RR to have the SRCREV updated for
the wrs_meta branch, but it is available for you to use
locally now.

Cheers,

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   wrs/cfg/kernel-cache/cfg/smp.cfg |    2 ++
>   wrs/cfg/kernel-cache/cfg/smp.scc |    1 +
>   2 files changed, 3 insertions(+), 0 deletions(-)
>   create mode 100644 wrs/cfg/kernel-cache/cfg/smp.cfg
>   create mode 100644 wrs/cfg/kernel-cache/cfg/smp.scc
>
> diff --git a/wrs/cfg/kernel-cache/cfg/smp.cfg b/wrs/cfg/kernel-cache/cfg/smp.cfg
> new file mode 100644
> index 0000000..f53b969
> --- /dev/null
> +++ b/wrs/cfg/kernel-cache/cfg/smp.cfg
> @@ -0,0 +1,2 @@
> +CONFIG_SMP=y
> +CONFIG_SCHED_SMT=y
> diff --git a/wrs/cfg/kernel-cache/cfg/smp.scc b/wrs/cfg/kernel-cache/cfg/smp.scc
> new file mode 100644
> index 0000000..1fd8c32
> --- /dev/null
> +++ b/wrs/cfg/kernel-cache/cfg/smp.scc
> @@ -0,0 +1 @@
> +kconf hardware smp.cfg


