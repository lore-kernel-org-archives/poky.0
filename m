Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.655.1588772973139367415
 for <poky@lists.yoctoproject.org>;
 Wed, 06 May 2020 06:49:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WSLyqDCd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id z6so2759323wml.2
        for <poky@lists.yoctoproject.org>; Wed, 06 May 2020 06:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=0CDnot908imwT93dKRES9g26yRNmY1pq8spgTiq7t/M=;
        b=WSLyqDCd3mwpl8ga0ilpYv6W26aFhn66+IgNJT8MqH8NP/JaDImNKm4+yf+7ava/oT
         Xr+9wPM5v+nFTpgvsZvEPl2cyZ9Mm2o6vcG42PHiSFm5n43vc4Y2pGnjnmj1Z2RGfuX4
         ceSo3CyxiXzu604ntS2DJwPPlWZ/a7cPd+fRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0CDnot908imwT93dKRES9g26yRNmY1pq8spgTiq7t/M=;
        b=FeAJI/MbG7pHJbyrgSgvF+oxI0+O98u4Tc1PS4/iXsd25iNmIhJzJVzZ4v1CYzAtS1
         xmUD+rXW4iY1UroW8qYtU5iPjAKTwPRywfnS3hnzNqiZcwcMKDTj5qvTfE64OSOS2wBA
         YMxCrAdqKvZanM0zxtU8dVdpQ6enIDUQ5C0M+IxoB5AhUvgZXyW/45pYhWRbWG4ERwl8
         0Tj38sdBzsxLFOn4adJ/cacf0O2qNO/hvtXBVLOqtADk+4n+2sKi3IBOyeZjlDbZ88EY
         EMOt9vJHENpiRM0RLoPBcFm+8OFb8m6IiqwUfLy/wJ3Hi81VzywfS3h1jhIN8lICPx5J
         NsgQ==
X-Gm-Message-State: AGi0Pubh8vsGwIiNS5TZiknBzqdlGtA/XrqWcH+yjwHKojIpUysX52wW
	upLZS+nvUxYubDwxgQIYfDj5i93KzH8=
X-Google-Smtp-Source: APiQypJ4xuhQVk5Ub0RNN/mU6v5hTypRPnrwbJSPlmtXGx6andanvvBiXwz9786ACWMrqFIeiMPkqA==
X-Received: by 2002:a05:600c:2284:: with SMTP id 4mr4325096wmf.97.1588772971192;
        Wed, 06 May 2020 06:49:31 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g74sm3099665wme.44.2020.05.06.06.49.30
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 06:49:30 -0700 (PDT)
Message-ID: <4d94832cb83c1801cd6574c68c63e1b8ff0cc33f.camel@linuxfoundation.org>
Subject: Re: [poky][PATCH][scripts] Allowing to work ksize also with built-in.a
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Wed, 06 May 2020 14:49:29 +0100
In-Reply-To: <CABF_=yiD+dm2E2ZfWLiz3hqVVrUo+ht00F4agh5z1eyX504BTw@mail.gmail.com>
References: 
	<CABF_=yiD+dm2E2ZfWLiz3hqVVrUo+ht00F4agh5z1eyX504BTw@mail.gmail.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-05-06 at 14:26 +0200, jan wrote:
> From b128294905083f8efe1acffac4ad9ac41f950526 Mon Sep 17 00:00:00
> 2001
> From: Jan Vermaete <jan.vermaete@gmail.com>
> Date: Wed, 6 May 2020 14:07:17 +0200
> Subject: [PATCH 1/1] Newer Linux kernels are producing built-in.a
> files.
> 
> In the past the file was named 'built-in.o'.
> Nowadays it is 'built-in.a'.
> 
> The script is modified to work with both.  I expect
> it will not happen that there are built-in.a and built-in.o
> files in the same kernel.
> 
> Signed-off-by: Jan Vermaete <jan.vermaete@gmail.com>
> ---
>  scripts/tiny/ksize.py | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Thanks for the patch!

This has come through line wrapped which means tit fails to apply. It
also needs to be sent to the openembedded-core list please!

Cheers,

Richard

