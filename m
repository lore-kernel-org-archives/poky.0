Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0566E013CB
	for <poky@yoctoproject.org>; Wed, 10 Jul 2013 01:30:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jul 2013 01:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1034,1363158000"; d="scan'208";a="343220347"
Received: from unknown (HELO helios.localnet) ([10.252.122.25])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2013 01:30:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Qi.Chen@windriver.com, "Hart, Darren" <dvhart@linux.intel.com>
Date: Wed, 10 Jul 2013 09:30:36 +0100
Message-ID: <5822283.x6sXiXjJIc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <9915990f3fb2466fb2146394f65154e21b35890d.1373438138.git.Qi.Chen@windriver.com>
References: <cover.1373438138.git.Qi.Chen@windriver.com>
	<9915990f3fb2466fb2146394f65154e21b35890d.1373438138.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com, poky@yoctoproject.org
Subject: Re: [PATCH 1/2] poky-tiny.conf: add extra libc features
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
X-List-Received-Date: Wed, 10 Jul 2013 08:30:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Qi / Darren,

On Wednesday 10 July 2013 14:37:12 Qi.Chen@windriver.com wrote:
> From: Chen Qi <Qi.Chen@windriver.com>
> 
> Add two extra libc features, libc-spawn and libc-rcmd, as they are
> needed to successfully compile the shadow package which is needed
> if we set USER_GROUP_SETTIGNS in some configuration file.
> 
> [YOCTO #4074]
> 
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf
> b/meta-yocto/conf/distro/poky-tiny.conf index 755667f..9d9ea3c 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -62,7 +62,7 @@ ASSUME_PROVIDED += "pkgconfig$"
> 
>  # Reconfigure eglibc for a smaller installation
>  # Comment out any of the lines below to disable them in the build
> -DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
> +DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt libc-spawn libc-rcmd"
>  DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
> 
>  # Required for "who"

Is this really appropriate for poky-tiny? It seems to me it might be 
orthogonal to the point of poky-tiny which is to be pretty much as light as 
possible.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

