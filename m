Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66E4B4C80FB2
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 12:55:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Nov 2010 10:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="573016324"
Received: from doubt.jf.intel.com (HELO [10.24.1.112]) ([10.24.1.112])
	by orsmga002.jf.intel.com with ESMTP; 12 Nov 2010 10:55:37 -0800
Message-ID: <4CDD8DA5.3040106@linux.intel.com>
Date: Fri, 12 Nov 2010 10:55:33 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1289583673.git.bruce.ashfield@windriver.com>
	<260f3ad367b34221104b71380d329e092b6c93c6.1289583673.git.bruce.ashfield@windriver.com>
In-Reply-To: <260f3ad367b34221104b71380d329e092b6c93c6.1289583673.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] linux-wrs: implement BSP bootstrapping via fallback branches
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
X-List-Received-Date: Fri, 12 Nov 2010 18:55:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hey Bruce,

Dropping yocto list as this is a development discussion (and the webpage 
says those take place on poky@yoctoproject.org). Someone correct me if 
I've got this wrong.

On 11/12/2010 10:40 AM, Bruce Ashfield wrote:
> When creating a new BSP there isn't always an upstream branch
> to validate SRCREVs against. Therefore, creating a new BSP
> required extra manipulations of the git repository, even though
> the branch for the build would be dynamically created.
>
> To fix this, provide a fallback to the 'standard' branch if
> WRMACHINE is not assigned a specific value for the given MACHINE.
> The fallback saved in KBRANCH, and represents the branch that

It seems that KBRANCH_FALLBACK might be a bit more self-descriptive. 
Unless I'm misunderstanding it's purpose...

OK reading the patch, KBRANCH is basically the new variable we store the 
kernel branch in, and it is set to standard if WRMACHINE is not set - 
KBRANCH itself is not the fallback. Code looks good, commit message was 
ambiguous (to me).

> we should build, even if no fallback is required. Some substeps
> of the recipe have been updated to use KBRANCH rather than
> enforcing MACHINE-KERNELTYPE.
>
> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>   meta/recipes-kernel/linux/linux-wrs_git.bb |   40 ++++++++++++++++++++++-----
>   1 files changed, 32 insertions(+), 8 deletions(-)
>
> diff --git a/meta/recipes-kernel/linux/linux-wrs_git.bb b/meta/recipes-kernel/linux/linux-wrs_git.bb
> index 1f2b11e..209648b 100644
> --- a/meta/recipes-kernel/linux/linux-wrs_git.bb
> +++ b/meta/recipes-kernel/linux/linux-wrs_git.bb
> @@ -10,10 +10,10 @@ PV = "2.6.34+git${SRCPV}"
>   # To use a staged, on-disk bare clone of a Wind River Kernel, use a
>   # variant of the below
>   # SRC_URI = "git://///path/to/kernel/default_kernel.git;fullclone=1"
> -SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${WRMACHINE}-${LINUX_KERNEL_TYPE};name=machine \
> +SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
>              git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
>
> -WRMACHINE = "${MACHINE}"
> +WRMACHINE = "UNDEFINED"

Not a critique, just a question - why "UNDEFINED" instead of just not set?

-- 
Darren Hart
Yocto Linux Kernel

