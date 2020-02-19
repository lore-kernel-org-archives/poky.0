Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web11.13463.1582126308030881051
 for <poky@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 07:31:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bprd+jNC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id q9so1105078wmj.5
        for <poky@lists.yoctoproject.org>; Wed, 19 Feb 2020 07:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=4rSzZjqy+BEA8RFiCJ9QvnetdTBynfrujB1KGEYHYJE=;
        b=bprd+jNCmwvhSDKEF9dVyPTFrmMEgUWv+iuz7i+Rr/+J5AhGaAwfnDIqptWV890RAE
         VxiTScuxT5IOdPkfu6TorbNRF/mksMIeMado4scrNvX7Ezp2TstXN+Pkizlcx1ToVcTZ
         V0FYNkZJ7WDbXNDqDCDhjziAUNu+lMB4TfFpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=4rSzZjqy+BEA8RFiCJ9QvnetdTBynfrujB1KGEYHYJE=;
        b=iSFrnv0Fc7P961L3nhxdLjfLqi6oyDIZrFxl14fRALadw/mX5+KSdiKmLS7VUZHo+r
         KN6OU92846tX3JpYfBZjCW2MyvNo8kO5cvovG8+zZLvF8UIM6NqwgOTazuOY+EPB+MBM
         bhZQjpjis9R08CmpqqH6ltyqJsTG5eA4R3mW9oDp6+JMQjFL7R80zd4FrrzxJB8L1pDW
         CC3SSXSiXwxDbBk7AQsH3YuvzfiW33XPedPPxL7XaBHUt5nCLQpf1v3HqYwytnXbuRdc
         L0Lk5e/PNAw7pTOoWmmWeURl+REK4cvW7JwUf3lz9mboQ2C3NTUPrCJauj2zr/ojc61z
         n6BA==
X-Gm-Message-State: APjAAAXiSpVeLd3BwL02j/itv8VCjajoAarUBO8xYKAmU/Tml5EtCJM/
	vjTElIIdvjjeiTlaYrIriHzAjA==
X-Google-Smtp-Source: APXvYqwQbwPcYrBZoQsAwGpPuWQbAct7NhE4r9U/LwQ6qwedPL7lTht/9m+xOnAG6foCU3tP4AnudQ==
X-Received: by 2002:a1c:1bcd:: with SMTP id b196mr10904114wmb.54.1582126306599;
        Wed, 19 Feb 2020 07:31:46 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t12sm104728wrq.97.2020.02.19.07.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 07:31:45 -0800 (PST)
Message-ID: <646b4cf895beb106cf3a140eeae7ff0f1eec3ad4.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] meta-poky: update to new mailing lists
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mark Asselstine <mark.asselstine@windriver.com>, 
	poky@lists.yoctoproject.org
Cc: akuster@mvista.com
Date: Wed, 19 Feb 2020 15:31:44 +0000
In-Reply-To: <20200218221301.28292-1-mark.asselstine@windriver.com>
References: <20200218221301.28292-1-mark.asselstine@windriver.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-02-18 at 17:13 -0500, Mark Asselstine wrote:
> There is still some confustion around the mail list updates, as we
> have seen on the lists recently:
> https://lists.yoctoproject.org/g/yocto/message/48439
> 
> Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> ---
> 
> Armin sent this change out a while back for zeus but I don't
> see it there to cherry-pick. So cooked this up for master
> and we should cherry-pick to other branches as needed.
> 
>  meta-poky/README.poky           | 4 ++--
>  meta-poky/conf/distro/poky.conf | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/meta-poky/README.poky b/meta-poky/README.poky
> index 8cf2027..be0c6c0 100644
> --- a/meta-poky/README.poky
> +++ b/meta-poky/README.poky
> @@ -53,11 +53,11 @@ bitbake:
>  
>  documentation:
>      Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
> -    Mailing list: yocto@yoctoproject.org
> +    Mailing list: docs@lists.yoctoproject.org
>  
>  meta-poky, meta-yocto-bsp:
>      Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
> -    Mailing list: poky@yoctoproject.org
> +    Mailing list: poky@lists.yoctoproject.org
>  
>  Everything else should be sent to the OpenEmbedded Core mailing list.  If in
>  doubt, check the oe-core git repository for the content you intend to modify.
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 5c156f1..acfc1bb 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -5,7 +5,7 @@ DISTRO_CODENAME = "master"
>  SDK_VENDOR = "-pokysdk"
>  SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
>  
> -MAINTAINER = "Poky <poky@yoctoproject.org>"
> +MAINTAINER = "Poky <poky@lists.yoctoproject.org>
> 

I merged this without testing since how badly could this break.

Answer is the missing quote above.

I've fixed that in a followup commit.

Cheers,

Richard


