Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B05814C80050
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 00:44:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Apr 2011 22:44:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,287,1299484800"; d="scan'208";a="674429856"
Received: from unknown (HELO [10.255.12.195]) ([10.255.12.195])
	by fmsmga002.fm.intel.com with ESMTP; 01 Apr 2011 22:44:47 -0700
Message-ID: <4D96B7CF.5050908@linux.intel.com>
Date: Fri, 01 Apr 2011 22:44:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1301503818.git.bruce.ashfield@windriver.com>
	<80eb591ef244f2a9ebaeca3ed2da985c72b98daf.1301503818.git.bruce.ashfield@windriver.com>
In-Reply-To: <80eb591ef244f2a9ebaeca3ed2da985c72b98daf.1301503818.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 1/2] linux-yocto/qemux86-64: enable profiling and latency
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
X-List-Received-Date: Sat, 02 Apr 2011 05:44:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/30/2011 09:55 AM, Bruce Ashfield wrote:
> The configuration chunks for profiling and latency top have
> been enabled in tree now, so we can drop optional feature
> additions in the recipe itself.
>
> build tests show identical configurations.
>
> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   meta/recipes-kernel/linux/linux-yocto_git.bb |    4 ----
>   1 files changed, 0 insertions(+), 4 deletions(-)
>
> diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
> index f35d1a2..38fbba3 100644
> --- a/meta/recipes-kernel/linux/linux-yocto_git.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
> @@ -31,10 +31,6 @@ KERNEL_FEATURES="features/netfilter"
>   KERNEL_FEATURES_append_qemux86=" cfg/sound"
>   KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
>
> -# Temporary fix for oprofile and latencytop on qemux86-64
> -KERNEL_FEATURES_append_qemux86-64=" features/profiling"
> -KERNEL_FEATURES_append_qemux86-64=" features/latencytop"
> -
>   # extra tasks
>   addtask kernel_link_vmlinux after do_compile before do_install
>   addtask validate_branches before do_patch after do_kernel_checkout

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

