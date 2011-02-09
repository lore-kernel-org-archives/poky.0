Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E94FC4C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 11:34:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2011 09:34:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="656074647"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2011 09:34:13 -0800
Message-ID: <4D52D005.7000801@linux.intel.com>
Date: Wed, 09 Feb 2011 09:33:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
In-Reply-To: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 1/3] linux: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Wed, 09 Feb 2011 17:34:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2011 12:26 PM, Ilya Yanok wrote:
> Linux is licensed under GPL so add appropriate LIC_FILES_CHKSUM to
> linux.inc file.
>
> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
> ---
>   meta/recipes-kernel/linux/linux.inc |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-kernel/linux/linux.inc b/meta/recipes-kernel/linux/linux.inc
> index 93859bb..c23d90f 100644
> --- a/meta/recipes-kernel/linux/linux.inc
> +++ b/meta/recipes-kernel/linux/linux.inc
> @@ -2,6 +2,8 @@ DESCRIPTION = "Linux Kernel"
>   SECTION = "kernel"
>   LICENSE = "GPL"
>
> +LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> +

This is consistent with other .inc files (such as linux-yocto.inc). I'm 
fine with it, but wanted to mention that linux.inc is going to be going 
trough some serious pruning and refactoring in the near future.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

