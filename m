Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web11.43207.1605566646189351704
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 14:44:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VqNlw+Ka;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id p19so810928wmg.0
        for <poky@lists.yoctoproject.org>; Mon, 16 Nov 2020 14:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=kJ0aPXsrtuPKNWYzny6MgKlJR/p5aQk2vJbRLJAyLRs=;
        b=VqNlw+Ka8wqLWq2/KJr64MoZ4aQO3IZv7z5r85503ICOD2Y2SbCDmFKihShIL1rSn/
         a+yzZo6lyomNRq8wZFEc9Ei8QTD8QZMiejG0IqA+1u4zcA+DYiVQkIQjYgbC9zQwUasq
         TNiqcfA012fBDskqEeNLNKtSTly/LQoV9LYtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=kJ0aPXsrtuPKNWYzny6MgKlJR/p5aQk2vJbRLJAyLRs=;
        b=odYwW7regc6tUj3N31pKf394Uki1HWYIxDj7ai9aR/1kLWfQ1MHhOuHiIrPQhjG2aK
         Envz2QJNs7elfdnBJ3xUrYc/N4m5c8Atu3nCxaVI6YzQZC6NS3IMQhG7iwP6Lm/7pIxw
         5RV3UOv8tIGSvS2QQdo40DD5kr5qQ2Gi0LDhvDYrgW1gRAjZDPFwaFOW557NABPF20cn
         opJ5O5zehNXHQR9qx+qoTXeRtzzZGJN1CHRFpgSLIMvEkeamxdn59hBm9JNrsoYr+G8d
         WE2cLfSZApKMoEBZOfUTOEjSpTYZIyJZeOkhhrhpcWeXkYbm2lWU+7P6SPw+2epiFCwA
         oqZw==
X-Gm-Message-State: AOAM532Yiym1lXFxQcjov7FvhBKuMbFhj9ymgw7MAKSgiXApp5fIOpnG
	DsaijQjnq6M7FAd7K5IzfD7nmw==
X-Google-Smtp-Source: ABdhPJxiKz2YqShxCJPzJ7EZxN4cXljZ/3wEK8bNUvPb6H6cG1K0FyjwBeNOeZkqNATvxOqvzU9G+Q==
X-Received: by 2002:a1c:4ca:: with SMTP id 193mr1080436wme.137.1605566644866;
        Mon, 16 Nov 2020 14:44:04 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 2.2.2.0.7.3.f.1.3.6.f.f.7.9.4.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (2.2.2.0.7.3.f.1.3.6.f.f.7.9.4.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:9497:ff63:1f37:222])
        by smtp.gmail.com with ESMTPSA id p12sm24278600wrw.28.2020.11.16.14.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 14:44:04 -0800 (PST)
Message-ID: <481b92778f640c301e8b1df4f485c171087b4501.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v7] poky-tiny: enable section removal
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
Date: Mon, 16 Nov 2020 22:44:03 +0000
In-Reply-To: <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
References: <1647D622A62A0183.6873@lists.yoctoproject.org>
	 <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-11-16 at 14:30 -0500, Sinan Kaya wrote:
> Richard,
> 
> On 11/15/2020 7:40 PM, Sinan Kaya wrote:
> > Use GCC sections flags so that unused sections can be garbage
> > collected at link time.
> > 
> > Signed-off-by: Sinan Kaya <okaya@kernel.org>
> > ---
> >  meta-poky/conf/distro/include/gcsections.inc | 22
> > ++++++++++++++++++++
> >  meta-poky/conf/distro/poky-tiny.conf         |  2 ++
> >  2 files changed, 24 insertions(+)
> >  create mode 100644 meta-poky/conf/distro/include/gcsections.inc
> 
> How is v7 looking?
> 
> It built for me yesterday.

Sorry, I've not got around to testing it yet...

Cheers,

Richard

