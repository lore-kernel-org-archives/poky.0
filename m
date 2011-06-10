Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DB474C800E0
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 13:20:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jun 2011 11:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,348,1304319600"; d="scan'208";a="14898815"
Received: from unknown (HELO [10.255.12.233]) ([10.255.12.233])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2011 11:20:55 -0700
Message-ID: <4DF26085.3000609@linux.intel.com>
Date: Fri, 10 Jun 2011 11:20:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1307727577.git.paul.eggleton@linux.intel.com>
	<d7189aeeb5376f12f4eb32f897c2cf020d8bb677.1307727577.git.paul.eggleton@linux.intel.com>
In-Reply-To: <d7189aeeb5376f12f4eb32f897c2cf020d8bb677.1307727577.git.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto: use FILESEXTRAPATHS_prepend := in	all bbappends
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
X-List-Received-Date: Fri, 10 Jun 2011 18:20:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Thanks Paul!

On 06/10/2011 10:43 AM, Paul Eggleton wrote:
> Using FILESEXTRAPATHS is cleaner than the old FILESPATH-based method, and
> as meta-intel layers are using FILESEXTRAPATHS their formfactor bbappends
> will now work. In addition I have used FILESEXTRAPATHS_prepend which is
> not absolutely necessary, but provides a good working example in case it
> is copied by other layers that are intended to be used on top of it.
> 
> Fixes [YOCTO #1156]
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>


> ---
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    4 +---
>  .../recipes-core/netbase/netbase_4.45.bbappend     |    4 +---
>  meta-yocto/recipes-core/uclibc/uclibc_git.bbappend |    4 +---
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    4 +---
>  4 files changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend
> index 4b8d0e6..72d991c 100644
> --- a/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ b/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1 @@
> -THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> -FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> -
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> diff --git a/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend b/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
> index 4b8d0e6..72d991c 100644
> --- a/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
> +++ b/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
> @@ -1,3 +1 @@
> -THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> -FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> -
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> diff --git a/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend b/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
> index 4b8d0e6..72d991c 100644
> --- a/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
> +++ b/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
> @@ -1,3 +1 @@
> -THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> -FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> -
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> diff --git a/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 4b8d0e6..72d991c 100644
> --- a/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -1,3 +1 @@
> -THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> -FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> -
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

