Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87ED34C80AA8
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 11:33:49 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2011 09:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="612776529"
Received: from doubt.jf.intel.com (HELO [10.7.199.155]) ([10.7.199.155])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 09:33:49 -0700
Message-ID: <4D7E436A.9070006@linux.intel.com>
Date: Mon, 14 Mar 2011 09:33:46 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1300081427.git.tom.zanussi@intel.com>
	<2eae9caf17ab49ad3164d6ab585534b5791ac70a.1300081427.git.tom.zanussi@intel.com>
In-Reply-To: <2eae9caf17ab49ad3164d6ab585534b5791ac70a.1300081427.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] documentation: BSP Developer's Guide fixes
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
X-List-Received-Date: Mon, 14 Mar 2011 16:33:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/13/2011 10:50 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> - use linux-yocto instead of linux-yocto-stable in examples
> - change branch names to match linux-yocto usage
> - remove outdated 'wrs' where it appears
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   documentation/bsp-guide/bsp.xml |   22 +++++++++++-----------
>   1 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
> index ea9b001..ba6ad74 100644
> --- a/documentation/bsp-guide/bsp.xml
> +++ b/documentation/bsp-guide/bsp.xml
> @@ -83,7 +83,7 @@ meta-&lt;bsp_name&gt;/conf/layer.conf
>   meta-&lt;bsp_name&gt;/conf/machine/*.conf
>   meta-&lt;bsp_name&gt;/recipes-bsp/*
>   meta-&lt;bsp_name&gt;/recipes-graphics/*
> -meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto-stable.bbappend
> +meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto_git.bbappend
>                   </programlisting>
>               </para>
>
> @@ -107,7 +107,7 @@ meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_prepr
>   meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
>   meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
>   meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
> -meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
> +meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
>                   </programlisting>
>               </para>
>
> @@ -315,7 +315,7 @@ meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
>               <section id='bsp-filelayout-kernel'>
>               <title>Linux Kernel Configuration</title>
>               <programlisting>
> -meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto-stable.bbappend
> +meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto_git.bbappend
>               </programlisting>
>
>               <para>
> @@ -330,27 +330,27 @@ meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto-stable.bbappend
>                   directory.
>               </para>
>               <para>
> -                Suppose you use a BSP that uses the<filename>linux-yocto-stable_git.bb</filename>  kernel,
> +                Suppose you use a BSP that uses the<filename>linux-yocto_git.bb</filename>  kernel,
>                   which is the preferred kernel to use for developing a new BSP using the Yocto Project.
>                   In other words, you have selected the kernel in your
>                   <filename>&lt;bsp_name&gt;.conf</filename>  file by adding the following statement:
>                   <programlisting>
> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>                   </programlisting>
> -                You would use the<filename>linux-yocto-stable_git.bbappend</filename>  file to append
> +                You would use the<filename>linux-yocto_git.bbappend</filename>  file to append
>                   specific BSP settings to the kernel, thus configuring the kernel for your particular BSP.
>               </para>
>               <para>
>                   Now take a look at the existing "crownbay" BSP.
>                   The append file used is:
>                   <programlisting>
> -meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> +meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
>                   </programlisting>
>                   The file contains the following:
>                   <programlisting>
>   FILESEXTRAPATHS := "${THISDIR}/${PN}"
>   COMPATIBLE_MACHINE_crownbay = "crownbay"
> -KMACHINE_crownbay = "crownbay"
> +KMACHINE_crownbay = "yocto/standard/crownbay"
>                   </programlisting>
>                   This append file adds "crownbay" as a compatible machine,
>                   and additionally sets a Yocto Kernel-specific variable that identifies the name of the
> @@ -371,7 +371,7 @@ KMACHINE_crownbay = "crownbay"
>                   For example, suppose you had a set of configuration options in a file called
>                   <filename>defconfig</filename>.
>                   If you put that file inside a directory named
> -<filename class='directory'>/linux-yocto-stable</filename>  and then added
> +<filename class='directory'>/linux-yocto</filename>  and then added
>                   a SRC_URI statement such as the following to the append file, those configuration
>                   options will be picked up and applied when the kernel is built.
>                   <programlisting>
> @@ -397,7 +397,7 @@ SRC_URI += "file://defconfig \
>               <note><para>
>                   Other methods exist to accomplish grouping and defining configuration options.
>                   For example, you could directly add configuration options to the Yocto kernel
> -<filename class='directory'>wrs_meta</filename>  branch for your BSP.
> +<filename class='directory'>meta</filename>  branch for your BSP.
>                   The configuration options will likely end up in that location anyway if the BSP gets
>                   added to the Yocto Project.
>                   For information on how to add these configurations directly, see the
> @@ -407,7 +407,7 @@ SRC_URI += "file://defconfig \
>               </para>
>               <para>
>                   In general, however, the Yocto Project maintainers take care of moving the SRC_URI-specified
> -                configuration options to the<filename class='directory'>wrs_meta</filename>  branch.
> +                configuration options to the<filename class='directory'>meta</filename>  branch.
>                   Not only is it easier for BSP developers to not have to worry about putting those
>                   configurations in the branch, but having the maintainers do it allows them to apply
>                   'global' knowledge about the kinds of common configuration options multiple BSPs in

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

