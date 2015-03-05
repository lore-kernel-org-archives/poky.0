Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B42D5E0086E; Thu,  5 Mar 2015 12:17:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3114EE0083A
	for <poky@yoctoproject.org>; Thu,  5 Mar 2015 12:17:41 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 05 Mar 2015 12:12:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,348,1422950400"; d="scan'208";a="536714157"
Received: from aaceves-mobl1.amr.corp.intel.com (HELO
	swold-mobl.amr.corp.intel.com) ([10.254.183.174])
	by orsmga003.jf.intel.com with ESMTP; 05 Mar 2015 12:17:30 -0800
Message-ID: <54F8B9E5.3020403@linux.intel.com>
Date: Thu, 05 Mar 2015 12:17:41 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1425584576-14990-1-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1425584576-14990-1-git-send-email-sgw@linux.intel.com>
Subject: Re: [PATCH] intel-common: split out 32 bit common-drivers
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
X-List-Received-Date: Thu, 05 Mar 2015 20:17:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Doh, wrong list!

Sau!

On 03/05/2015 11:42 AM, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>   meta/cfg/kernel-cache/bsp/intel-common/intel-common-drivers.scc      | 1 -
>   meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-preempt-rt.scc | 1 +
>   meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-standard.scc   | 1 +
>   3 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/intel-common/intel-common-drivers.scc b/meta/cfg/kernel-cache/bsp/intel-common/intel-common-drivers.scc
> index 5dc19fc..1b07d2e 100644
> --- a/meta/cfg/kernel-cache/bsp/intel-common/intel-common-drivers.scc
> +++ b/meta/cfg/kernel-cache/bsp/intel-common/intel-common-drivers.scc
> @@ -22,7 +22,6 @@ include features/usb/touchscreen-composite.scc
>
>   include cfg/timer/hpet.scc
>   include cfg/timer/rtc.scc
> -include features/eg20t/eg20t.scc
>
>   # Graphics
>   include cfg/vesafb.scc
> diff --git a/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-preempt-rt.scc
> index b25dfbc..08c2ba4 100644
> --- a/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-preempt-rt.scc
> @@ -4,4 +4,5 @@ define KARCH i386
>
>   include ktypes/preempt-rt/preempt-rt.scc
>   include intel-common-drivers.scc
> +include intel-common-drivers-32.scc
>   include intel-core2-32.scc
> diff --git a/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-standard.scc b/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-standard.scc
> index dc7b49f..51e113e 100644
> --- a/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/intel-common/intel-core2-32-standard.scc
> @@ -9,4 +9,5 @@ define KTYPE standard
>
>   include ktypes/standard/standard.scc
>   include intel-common-drivers.scc
> +include intel-common-drivers-32.scc
>   include intel-core2-32.scc
>

