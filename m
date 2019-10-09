Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E634AE00D8D; Wed,  9 Oct 2019 06:41:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 546 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Oct 2019 06:41:04 PDT
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D96B1E00D8B
	for <poky@yoctoproject.org>; Wed,  9 Oct 2019 06:41:04 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46pFW02KbYz4S;
	Wed,  9 Oct 2019 15:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1570627916;
	bh=bEjbpyx3YedPt4hXsGfDv0YEoKwz2uE7dXY6R6ZEALs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z76VCUHMVr0A504b4nTOD/sbbQwnGyyEHyTwRaV7YmsS0TvHI0fR7aw3zIUe3qv+O
	Muxyt3gOimwP0in9H3s9JwY9MimMvy/cEMNXFJjNmEn6E+nlynJkVzLUjPNYNlZKco
	oYV92lCeeaI2A5mlhO3ocd6nZKgaFmsvCKxxqmyUAUkwhHgB3QhIDBlZZn33gKiz3u
	rwJ3lw/0pcEKXRKAYPMsX7bIdjn1dcymeeBCiJsMDCOusY+0gpbChvZKM4gC77OZ0q
	Imm42yaDuSBKEIcEnPSMLg9dS+DmNAltjYdi14FIzc3IzmTVCd/JIuAIctxN0FofUc
	XGKqr3suCPpyVZfKsCCg+CUrUAPXzTjVd2yCUkPhWlO/2d7SGkgZW3iFR07ZmD6wiR
	c3PlHNAu1z70eWwgeezlB84nKiw65MYL5Ukd/avMBBIHHNfX9GoljmY2e8XXsGxbKC
	edOAZSLptPi49AcalE3LO3mHfNnbSoBTVSXskBsMLEavwjDpy3hBZLLUcDWAyaXIQ2
	W7p48EHykl30aWA4f6/w+x6ctsxdtWxNqvo/mA6uCqx6yCAQoJkuHV73fofuD/j5ft
	B+EdSI9tZs74vEcaJdWvXwUemeNxDjZ/1fDL78yvLc85ClakA5Rs73rMCBxpV3Esu2
	GlfObt7mVtOgufmCWBjltNK4=
Date: Wed, 9 Oct 2019 16:31:53 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Ross Burton <ross.burton@intel.com>
Message-ID: <20191009133153.GA29168@localhost>
References: <20191009130328.28520-1-ross.burton@intel.com>
MIME-Version: 1.0
In-Reply-To: <20191009130328.28520-1-ross.burton@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky: add Ubuntu 19.04 as a supported distribution
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
X-List-Received-Date: Wed, 09 Oct 2019 13:41:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Oct 09, 2019 at 02:03:28PM +0100, Ross Burton wrote:
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-poky/conf/distro/poky.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index f999992c90a..e3df6be2ac5 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -54,6 +54,7 @@ SANITY_TESTED_DISTROS ?= " \
>              poky-2.7 \n \
>              ubuntu-16.04 \n \
>              ubuntu-18.04 \n \
> +            ubuntu-19.04 \n \
>...

I am not convinced that declaring (and testing?) support for
non-LTS Ubuntu releases is a good idea.

Ubuntu 19.04 will be EOL in January, and 19.10 will be released in a week.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


