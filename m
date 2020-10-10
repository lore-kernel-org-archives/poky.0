Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web12.4886.1602329916510088174
 for <poky@lists.yoctoproject.org>;
 Sat, 10 Oct 2020 04:38:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VcIr4kzN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id x7so4334055wrl.3
        for <poky@lists.yoctoproject.org>; Sat, 10 Oct 2020 04:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=D559O4pQLj3djxJ8TpDWDfZK/051/2ILCCVmZaEASzs=;
        b=VcIr4kzNenbLSSVtf8L29QYnu9AaJUjATtMs0tCQI4O6rR4gLhJOGgur0orj/KTJof
         mGVQDSecmOan0s2PdqSP9kT7AZFzm+zRvBpR8ibnfAHJPgGejE4ZTB3kvlBPKXeSUS3m
         6m+9/vqpF2XSuB+9pNuiG2Pdm3qAkSJ6+kEpg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=D559O4pQLj3djxJ8TpDWDfZK/051/2ILCCVmZaEASzs=;
        b=pYsKPhtAcrfK/THyN6U+7Qa3hf2G7AvzQx6AYiKJevDaFdxd1r4LKw9iSgZ4xftwMx
         7n3LmMWd4z+msGw/Xqllwi0F/z5MSI6C56ajdNrCoY78c7HgpPf7etVlaodsaIRhjFlE
         nKwuswEG73/AdnA4N4VxUxsflWqZ+BKDqSFHPucwZ6cjQ9FyfMzqdFWik1j3SUmUpDTg
         x1Io4frPk/e17tL7WtCy4bVZ9HY8tGgLFx7nVFPl9re1Nce22wek4gBNNpvxrLIhynbL
         HE/051QwRKEBHS3fp/S/8VL5tpgfQV5re2asdApVdk0R5t2UliNbN6SZiVk3ZQw+XC6V
         rAOQ==
X-Gm-Message-State: AOAM532hRnew2ql5CGFqrkGz8FgIRy5r0kBYoqu+9zVGV1oCs9vNNoJh
	24M+WcHdGqlLmElLRYhqGvd9Cg==
X-Google-Smtp-Source: ABdhPJzUhJXkhVIWzuIRH6/UUO3tAlmvpUh6QRf+nKE5SnzkWmOpAHldG3z0GLtv+BQXBMH6dtKmXg==
X-Received: by 2002:adf:9043:: with SMTP id h61mr20367676wrh.237.1602329914783;
        Sat, 10 Oct 2020 04:38:34 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 0.6.6.4.7.a.b.4.4.1.e.0.e.3.c.2.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (0.6.6.4.7.a.b.4.4.1.e.0.e.3.c.2.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:2c3e:e14:4ba7:4660])
        by smtp.gmail.com with ESMTPSA id m1sm14936277wmm.34.2020.10.10.04.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2020 04:38:34 -0700 (PDT)
Message-ID: <e5d0eb2cc4cb3af4380f30f01b4f92ae3cf28a42.camel@linuxfoundation.org>
Subject: Re: [poky] [meta-poky][PATCH] Update license files to match current SPDX names and license contents
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>, poky@lists.yoctoproject.org
Date: Sat, 10 Oct 2020 12:38:31 +0100
In-Reply-To: <20201010111602.7785-1-idadelm@gmail.com>
References: <20201010111602.7785-1-idadelm@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

Thanks for this patch, it looks like a good start!

Firstly, this change needs to be sent to the openembedded-core mailing
list rather than the poky one. There is also a small additional piece
needed below.

In the subject/short log, you mention "license contents". You haven't
changed any license contents so that should probably not be there.

On Sat, 2020-10-10 at 12:16 +0100, Meh Mbeh Ida Delphine wrote:
> Updated mappings of license fields of meta/conf/licenses.conf to
> match latest SPDX naming.
> 
> Fixes: [YOCTO #13320]
> 
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
>  meta/conf/licenses.conf | 34 +++++++++++++++++-----------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
> index 5b309eb385..9b4d0e7c7b 100644
> --- a/meta/conf/licenses.conf
> +++ b/meta/conf/licenses.conf
> @@ -10,27 +10,27 @@
>  # Any mapping to MPL/LGPL/GPL should be fixed
>  
>  # AGPL variations
> -SPDXLICENSEMAP[AGPL-3] = "AGPL-3.0"
> -SPDXLICENSEMAP[AGPLv3] = "AGPL-3.0"
> -SPDXLICENSEMAP[AGPLv3.0] = "AGPL-3.0"
> +SPDXLICENSEMAP[AGPL-3] = "AGPL-3.0-only"
> +SPDXLICENSEMAP[AGPLv3] = "AGPL-3.0-only"
> +SPDXLICENSEMAP[AGPLv3.0] = "AGPL-3.0-only"
>  
>  # GPL variations
> -SPDXLICENSEMAP[GPL-1] = "GPL-1.0"
> -SPDXLICENSEMAP[GPLv1] = "GPL-1.0"
> -SPDXLICENSEMAP[GPLv1.0] = "GPL-1.0"
> -SPDXLICENSEMAP[GPL-2] = "GPL-2.0"
> -SPDXLICENSEMAP[GPLv2] = "GPL-2.0"
> -SPDXLICENSEMAP[GPLv2.0] = "GPL-2.0"
> -SPDXLICENSEMAP[GPL-3] = "GPL-3.0"
> -SPDXLICENSEMAP[GPLv3] = "GPL-3.0"
> -SPDXLICENSEMAP[GPLv3.0] = "GPL-3.0"
> +SPDXLICENSEMAP[GPL-1] = "GPL-1.0-only"
> +SPDXLICENSEMAP[GPLv1] = "GPL-1.0-only"
> +SPDXLICENSEMAP[GPLv1.0] = "GPL-1.0-only"
> +SPDXLICENSEMAP[GPL-2] = "GPL-2.0-only"
> +SPDXLICENSEMAP[GPLv2] = "GPL-2.0-only"
> +SPDXLICENSEMAP[GPLv2.0] = "GPL-2.0-only"
> +SPDXLICENSEMAP[GPL-3] = "GPL-3.0-only"
> +SPDXLICENSEMAP[GPLv3] = "GPL-3.0-only"
> +SPDXLICENSEMAP[GPLv3.0] = "GPL-3.0-only"

Where we have something existing like "GPL-2.0" in the original list,
we need to create a new mapping for GPL-2.0 -> GPL-2.0-only, so in that
case we'd need to add:

SPDXLICENSEMAP[GPL-2.0] = "GPL-2.0-only"

Could you add these missing mappings and resend to the openembedded-
core list please?

Otherwise looks good!

Cheers,

Richard

