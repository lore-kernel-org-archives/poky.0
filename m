Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web09.11063.1631725712415700632
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 10:08:32 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 91AF340C1C;
	Wed, 15 Sep 2021 17:08:31 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X6GBBDhxInYJ; Wed, 15 Sep 2021 17:08:31 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 7449140A46;
	Wed, 15 Sep 2021 17:08:30 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id CD03B174675; Wed, 15 Sep 2021 13:08:29 -0400 (EDT)
Date: Wed, 15 Sep 2021 13:08:29 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] poky: Use SDKPATHINSTALL instead of SDKPATH
Message-ID: <20210915170829.GG1528@denix.org>
References: <20210730155049.3368068-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <20210730155049.3368068-1-richard.purdie@linuxfoundation.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Can we get this change backported to Dunfell? Since corresponding OE-Core 
change got picked up for Dunfell separately and now the default SDK path is 
different from couple weeks ago...
https://git.openembedded.org/openembedded-core/commit/?h=dunfell&id=33a5714592bf41a26fcd7e8ff595b45538082431


On Fri, Jul 30, 2021 at 04:50:49PM +0100, Richard Purdie wrote:
> SDKPATHINSTALL is the default installation path used for the SDK but is not
> the path encoded into every SDK binary as the default path. This change
> allows it to contain things like dates without requiring every nativesdk
> recipe to rebuild.
> 
> Partially fixes [YOCTO #14100]
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 8ffd805945f..c7c46cd226f 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -23,7 +23,7 @@ PREFERRED_VERSION_linux-yocto ?= "5.10%"
>  PREFERRED_VERSION_linux-yocto-rt ?= "5.10%"
>  
>  SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
> -SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
> +SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
>  
>  DISTRO_EXTRA_RDEPENDS += "${POKY_DEFAULT_EXTRA_RDEPENDS}"
>  DISTRO_EXTRA_RRECOMMENDS += "${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
> -- 
> 2.30.2
> 

-- 
Regards,
Denys Dmytriyenko <denis@denix.org>
PGP: 0x420902729A92C964 - https://denix.org/0x420902729A92C964
Fingerprint: 25FC E4A5 8A72 2F69 1186  6D76 4209 0272 9A92 C964
