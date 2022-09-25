Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web12.19001.1664124253488860828
 for <poky@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 09:44:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JAkvMrJn;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id w8so7426911lft.12
        for <poky@lists.yoctoproject.org>; Sun, 25 Sep 2022 09:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=7MOyNWYYi2khlbSRh7DwbGvQQUPG90hbejhStKnOw8I=;
        b=JAkvMrJn2UEodoP3eHTFDLKPfAQnYcRR4zlORvd15vnCxtw612yOsrReOA9Rynu65F
         2ebozOYs5MAnylDnIRaiYXYSXYs3hbXVLDVCwjyAV8n5gjeXPbrpvicuE5eklAkSdntP
         YAvHx+04ioZGhp2SzmcIArABHMuwSvPZyDbukoROgM48Z4TXq0/HuZ+f9DjcAhqWdlUn
         OSYWXxsw/Dc2JsAPIS46dFCIJwGYmnmBocUnY5OvjqSjXsU2MaLeQgn9lh6mJFko5nut
         6BWA1WTmUgorXOS40lXOIqTMrpbZkD1csvh+SFl5aOr5e5FyDvzRpx/SuRPzdGa+pguW
         8E/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=7MOyNWYYi2khlbSRh7DwbGvQQUPG90hbejhStKnOw8I=;
        b=mv1rFEZ0Est4K1pUJeUQ808+GaSOXmLJkTceWisJm8RBxNbPjqhLBu7XJviBoBum6h
         VyT3ra1znDFrdTC6knHNKLMtDIzvlHP55xWCw2Ww/KXrY2qAXAdcyljeH4sGQOEnAcPx
         LhlU7vjB1gnFgc0bYpG2IBH7jcGQb9DAY96aO91/nLfLziJ7xTXRLDrnxqRXw40fGcWv
         2UFsNsMxiDqd/cNFbaiTQKPb85jkhUkSmhAtnp2fTZBxnulHtgVfHO2rC4+c8mBgJy5c
         5R40NdoIKxfEqIdYlK3F/CfOkfzbLRoLxkwhHL/hWRXwJ0xvx4Pk41hBmfHiJSY3WjOL
         Wzxg==
X-Gm-Message-State: ACrzQf1DO+blvxrWbArJXgMwu4ZD/xm6gCJ73oeP8KjZR6R+O7pAni/4
	XUS5qnmyneghyn6CEaVxGj6IxE3cxFTJPocfyUs=
X-Google-Smtp-Source: AMsMyM7L4DRc9+d44LitjkZnaZy8JgmBEbbUOjjtfLkvq5vKO6f0Zq9TlX8KbGpD4C+8THalP2L4xFPPZOc8cfkapZQ=
X-Received: by 2002:a05:6512:1283:b0:499:d0a3:3ca8 with SMTP id
 u3-20020a056512128300b00499d0a33ca8mr6963405lfs.665.1664124251702; Sun, 25
 Sep 2022 09:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <1714FEA7DD011F1F.28744@lists.yoctoproject.org>
In-Reply-To: <1714FEA7DD011F1F.28744@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 25 Sep 2022 18:44:00 +0200
Message-ID: <CANNYZj8GM+JZVnr0hwEmuC6chc7M84r1z0snL97k6kFzxz8aXg@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: correct the location of public hashserv
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

Has this patch reached you? I'm not sure why it's not appearing in
test branches after several weeks.

Alex

On Thu, 15 Sept 2022 at 11:29, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  meta-poky/conf/templates/default/local.conf.sample | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
> index b96dc908f4..7be423ffed 100644
> --- a/meta-poky/conf/templates/default/local.conf.sample
> +++ b/meta-poky/conf/templates/default/local.conf.sample
> @@ -234,7 +234,7 @@ BB_DISKMON_DIRS ??= "\
>  # which will depend on your network.
>  # Note: For this to work you also need hash-equivalence passthrough to the matching server
>  #
> -#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
> +#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
>  #SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
>
>  #
> --
> 2.30.2
>
>
> 
>
