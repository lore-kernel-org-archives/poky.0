Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47DC3E00CF1; Sun, 17 Apr 2016 21:29:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5471E0077F
	for <poky@yoctoproject.org>; Sun, 17 Apr 2016 21:29:47 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 17 Apr 2016 21:29:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,500,1455004800"; d="scan'208";a="86940911"
Received: from mbmatesa-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.172.151])
	by fmsmga004.fm.intel.com with ESMTP; 17 Apr 2016 21:29:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Date: Mon, 18 Apr 2016 16:29:42 +1200
Message-ID: <4581872.RtyZcNDIEC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.6-301.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <1460587107-27927-1-git-send-email-alejandro.hernandez@linux.intel.com>
References: <1460587107-27927-1-git-send-email-alejandro.hernandez@linux.intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] maintainers: Became maintainer of upm and mraa
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
X-List-Received-Date: Mon, 18 Apr 2016 04:29:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alejandro,

On Wed, 13 Apr 2016 22:38:27 Alejandro Hernandez wrote:
> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
> ---
>  meta-poky/conf/distro/include/maintainers.inc | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/meta-poky/conf/distro/include/maintainers.inc
> b/meta-poky/conf/distro/include/maintainers.inc index 62b1e48..913c3b3
> 100644
> --- a/meta-poky/conf/distro/include/maintainers.inc
> +++ b/meta-poky/conf/distro/include/maintainers.inc
> @@ -460,6 +460,7 @@ RECIPE_MAINTAINER_pn-mobile-broadband-provider-info =
> "Alexander Kanavin <alexan RECIPE_MAINTAINER_pn-modutils-initscripts =
> "Robert Yang <liezhi.yang@windriver.com>" RECIPE_MAINTAINER_pn-mpeg2dec =
> "Alexander Kanavin <alexander.kanavin@intel.com>" RECIPE_MAINTAINER_pn-mpfr
> = "Richard Purdie <richard.purdie@linuxfoundation.org>"
> +RECIPE_MAINTAINER_pn-mraa = "Alejandro Hernandez
> <alejandro.hernandez@linux.intel.com>" RECIPE_MAINTAINER_pn-msmtp =
> "Alexander Kanavin <alexander.kanavin@intel.com>"
> RECIPE_MAINTAINER_pn-mtd-utils = "Alexander Kanavin
> <alexander.kanavin@intel.com>" RECIPE_MAINTAINER_pn-mtdev = "Jussi Kukkonen
> <jussi.kukkonen@intel.com>" @@ -665,6 +666,7 @@ RECIPE_MAINTAINER_pn-unfs3
> = "Randy Witt <randy.e.witt@linux.intel.com>" RECIPE_MAINTAINER_pn-unifdef
> = "Ross Burton <ross.burton@intel.com>" RECIPE_MAINTAINER_pn-unzip =
> "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
> RECIPE_MAINTAINER_pn-update-rc.d = "Ross Burton <ross.burton@intel.com>"
> +RECIPE_MAINTAINER_pn-upm = "Alejandro Hernandez
> <alejandro.hernandez@linux.intel.com>" RECIPE_MAINTAINER_pn-usbinit =
> "Alexander Kanavin <alexander.kanavin@intel.com>"
> RECIPE_MAINTAINER_pn-usbutils = "Alexander Kanavin
> <alexander.kanavin@intel.com>" RECIPE_MAINTAINER_pn-util-linux = "Chen Qi
> <Qi.Chen@windriver.com>"

We don't carry these recipes in OE-Core and thus this wouldn't be the right 
place to track this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

