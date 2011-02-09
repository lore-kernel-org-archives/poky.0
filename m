Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0C044C800A4;
	Wed,  9 Feb 2011 05:14:30 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BENob031378;
	Wed, 9 Feb 2011 11:14:23 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31221-04; Wed,  9 Feb 2011 11:14:19 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BEIiT031372
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 11:14:18 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <eaec388c5c2bfcfde022835e359bd9a8f73e9137.1297232160.git.bruce.ashfield@windriver.com>
References: <cover.1297232160.git.bruce.ashfield@windriver.com>
	<eaec388c5c2bfcfde022835e359bd9a8f73e9137.1297232160.git.bruce.ashfield@windriver.com>
Date: Wed, 09 Feb 2011 11:14:16 +0000
Message-ID: <1297250056.1395.6333.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] linux-yocto: streamline BSP bootstrapping
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
X-List-Received-Date: Wed, 09 Feb 2011 11:14:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 01:22 -0500, Bruce Ashfield wrote:
> In order to build BSPs that were not already integrated into
> the upstream linux yocto kernel AND keep the git fetcher happy,
> some fairly complex anonymous python sections were required.
> 
> These sections cause problems with variable expansion and SRCREV
> processing.
> 
> With the updated git fetcher code, we can streamline the BSP
> boostrapping process and drop 99% of the anonymous python code.
> 
> This commit has the following changes to support BSP boot strapping
> and simplication for existing BSPs.
> 
>    - KMETA is set per-recipe rather than in python code
>    - undefined machines are no longer used, but instead common
>      branch names are set per-recipe
>    - fallback machine SRCREVs are present in the default revisions
>      file
>    - A new variable YOCTO_KERNEL_EXTERNAL_BRANCH should be set in
>      the local.conf for new BSPs instead of being programatically
>      determined in the anonymous python.
>    - No more explicity KMACHINE variable expansion and manipulation,
>      since the tools and build phases no longer require it due
>      to the per-recipe fallbacks.
> 
> Integrated/merged BSPs are unaffected by the changes and have been
> regression tested.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> 
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
> index 9abc4a5..a04fa9e 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -59,7 +59,7 @@ SRCREV_pn-gypsy ??= "147"
>  SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
>  SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
>  SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
> -SRCREV_pn-kern-tools-native ??= "fde7ef8fa8043607752563b9b7908f487eb2f7dd"
> +SRCREV_pn-kern-tools-native ??= "4f13a46499261ea181fdc13db5459067df08aca7"
>  SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
>  SRCREV_pn-libfakekey ??= "e8c2e412ea4a417afc1f30e32cb7bdc508b1dccc"
>  SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
> @@ -110,6 +110,7 @@ SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "68fb0b8d73bbb336ffa4a47bc70ec1eab
>  SRCREV_machine_pn-linux-yocto_beagleboard ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
>  SRCREV_machine_pn-linux-yocto ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
>  SRCREV_meta_pn-linux-yocto ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
> +SRCREV_machine_pn-linux-yocto ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
>  SRCREV_pn-linux-libc-headers-yocto ??= "343c06b25b221aa7f7019aee83b2d976041fddce"
>  SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
>  SRCREV_pn-matchbox-desktop-sato ??= "76"
> diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
> index d4bee77..3c1e669 100644
> --- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb

I merged this with the exception of the second hunk above since it just
adds a duplicate line.

Cheers,

Richard


