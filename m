Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28C04E009A0; Tue,  2 Aug 2016 13:00:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E223BE00972
	for <poky@yoctoproject.org>; Tue,  2 Aug 2016 12:59:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 02 Aug 2016 12:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,462,1464678000"; d="scan'208";a="1018473950"
Received: from eoh2-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.175.78])
	by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2016 12:59:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 03 Aug 2016 07:59:51 +1200
Message-ID: <2802570.EZ4bYpm4Up@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.4-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1470143175-16752-1-git-send-email-ross.burton@intel.com>
References: <1470143175-16752-1-git-send-email-ross.burton@intel.com>
MIME-Version: 1.0
Subject: Re: [PATCH] maintainers.inc: remove augeas
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
X-List-Received-Date: Tue, 02 Aug 2016 20:00:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ross,

On Tue, 02 Aug 2016 14:06:15 Ross Burton wrote:
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-poky/conf/distro/include/maintainers.inc | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/meta-poky/conf/distro/include/maintainers.inc
> b/meta-poky/conf/distro/include/maintainers.inc index ac11501..f264440
> 100644
> --- a/meta-poky/conf/distro/include/maintainers.inc
> +++ b/meta-poky/conf/distro/include/maintainers.inc
> @@ -48,7 +48,6 @@ RECIPE_MAINTAINER_pn-at-spi2-atk = "Jussi Kukkonen
> <jussi.kukkonen@intel.com>" RECIPE_MAINTAINER_pn-at-spi2-core = "Jussi
> Kukkonen <jussi.kukkonen@intel.com>" RECIPE_MAINTAINER_pn-atk = "Jussi
> Kukkonen <jussi.kukkonen@intel.com>" RECIPE_MAINTAINER_pn-attr = "Chen Qi
> <Qi.Chen@windriver.com>"
> -RECIPE_MAINTAINER_pn-augeas = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
>  RECIPE_MAINTAINER_pn-autoconf = "Robert Yang <liezhi.yang@windriver.com>"
>  RECIPE_MAINTAINER_pn-autogen-native = "Robert Yang
> <liezhi.yang@windriver.com>" RECIPE_MAINTAINER_pn-automake = "Robert Yang
> <liezhi.yang@windriver.com>"

Missing commit message - every commit needs an explanation, even if it's a 
short one.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

