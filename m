Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.14126.1585928646480159156
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2020 08:44:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id A987440BAC;
	Fri,  3 Apr 2020 15:44:05 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2QMhHIsIoW9C; Fri,  3 Apr 2020 15:44:05 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 7190A400E8;
	Fri,  3 Apr 2020 15:44:02 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 34D091718F5; Fri,  3 Apr 2020 11:44:02 -0400 (EDT)
Date: Fri, 3 Apr 2020 11:44:02 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Cc: poky@lists.yoctoproject.org, Ross Burton <ross.burton@intel.com>
Subject: Re: [poky] [PATCH] sanity.bbclass: echo current SDK_VENDOR if it is invalid
Message-ID: <20200403154402.GV1578@denix.org>
References: <20200403153151.15242-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20200403153151.15242-1-paul.gortmaker@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Why Poky? Should this go to OE-Core?

On Fri, Apr 03, 2020 at 11:31:51AM -0400, Paul Gortmaker wrote:
> It can be frustrating if this sanity check triggers, but you
> don't know why; you haven't explicitly set any SDK vars, or
> similar.
> 
> At least echo out the offending value, so the end user has
> a bit more information to go on.
> 
> Before:
>   SDK_VENDOR should be of the form '-foosdk' with a single dash
> After:
>   SDK_VENDOR should be of the form '-foosdk' with a single dash; found '-overc-sdk'
> 
> Cc: Ross Burton <ross.burton@intel.com>
> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> 
> diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
> index 88888e814a48..c823b49c03b0 100644
> --- a/meta/classes/sanity.bbclass
> +++ b/meta/classes/sanity.bbclass
> @@ -823,7 +823,7 @@ def check_sanity_everybuild(status, d):
>      # If SDK_VENDOR looks like "-my-sdk" then the triples are badly formed so fail early
>      sdkvendor = d.getVar("SDK_VENDOR")
>      if not (sdkvendor.startswith("-") and sdkvendor.count("-") == 1):
> -        status.addresult("SDK_VENDOR should be of the form '-foosdk' with a single dash\n")
> +        status.addresult("SDK_VENDOR should be of the form '-foosdk' with a single dash; found '%s'\n" % sdkvendor)
>  
>      check_supported_distro(d)
>  
> -- 
> 2.17.1
> 

> 

