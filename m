Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92E9CAC593
	for <webhook@archiver.kernel.org>; Mon, 15 Sep 2025 11:09:16 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.30050.1757934547381397999
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Sep 2025 04:09:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=H2H3dCtX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45f2a69d876so7839115e9.0
        for <poky@lists.yoctoproject.org>; Mon, 15 Sep 2025 04:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1757934546; x=1758539346; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjnlKHRftG+uRGtquKOtU6JDzF9iOVKCVWB5uh0ilas=;
        b=H2H3dCtX+EtiAXR9ifT8NNdeBGNj7oT8QLxxfSNbbKfIP0zhjykJyoo/zWyTiML/6r
         RKZ+zvsF9aHdiIxELmEAmMPzjIWVsCF/NQS/fSQ0MdFF0hRsB954e3KfdIL/OILqcH3g
         6q7emcVVfujOhQEOtlqno1+MJ5jbVY1f7Rx+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934546; x=1758539346;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rjnlKHRftG+uRGtquKOtU6JDzF9iOVKCVWB5uh0ilas=;
        b=jZMY1/eL876iU6HSzz15vBlR5/O90VJlW3c9Ozys6BhKkclA4In5M1up/ph1MwDS0I
         KZaAi22Sfzj/444TX/ekhusXzSn/wyQ7gRrIkUSa6kFScoT8brhS2PGIFnsxdGJ3JFzQ
         omVrtpiOlCk3cOyEdLzPMQXVySs46AD6rpFsGQNl6/+sjSgz+X2eFAc9RWoU7TuU3bzz
         TP78mY5CsAFiKFva5Vur0VtyVUaq/BFMC7KuRdhneEQAdUAO3A8t2q0uCuW2Ria4uW87
         mhNLQof9DGX0DA2x0qYHcU5XcVbzxurfvwOFW09gPrbLJhgSKL59NsQdFHcG+OVB9pNt
         OlZA==
X-Forwarded-Encrypted: i=1; AJvYcCXYG/6NXUwNw70huGnyoA7BIEznPoXc0DYohzKG4+OZk31EP+7NwqlWbOzRZ0OtDXOaJYgr@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz/ZlXsmX2NTtAld/4i6umCAOfaTfcylRK+mFB0M7RIcH/ULJ/z
	s/R73o9uJY2PY2I/A8HBU85M0mx34AEquqboDhp4v3dXAouIoVCEmJ4R/G8Ciq/zUoM=
X-Gm-Gg: ASbGncucebtxtAOZh9cWjIhDHf3/X5Ddp8kI5xMWWYxgD0a9Bzvho6TG18adS7X2kYu
	iqnFq+1c+t8K9dHk3zhoMT0r1jtZoqIiIsMAa0sIuyIuA3120CT/RAeQ4THEGBuWzk5XnO0XEsw
	k465YPYkOFcksLUaP4Oi6XlvXK0BJrgD5/w6SJUqAMvPFshChErGl3EgEQ3qPvFBMFUcxKgSeix
	tXH131wiYUjTzbP10BieljVUKWuFiSsL+OQFOnq7zCOh5EjeMVIHHuvuAiT2tQSYHSNv/IKucKY
	eU41+Nk2ruo+BHbOnkow4xVj93SVarjGnN73qraZFhOR++E6qIBOZ1NBYsJ9u3qq410C4ME6WD3
	gfUmW8wPZqANGVSUGI7AyrIy2/dNAbEIvnPQu8jdeoKxLB2A7OAylaWDOU8BDIUNjHoIfHWin4Y
	xZNV6nBFrWnXZp+bpz
X-Google-Smtp-Source: AGHT+IHZlsuOjOkI7yNAaFHdIExehYdlMq0U4To5KlomdHnkqu8l4MQpRHycFRg8j4FfYMf3T24djA==
X-Received: by 2002:a05:600c:2114:b0:45d:f7e4:8969 with SMTP id 5b1f17b1804b1-45f211cb220mr88473335e9.4.1757934545580;
        Mon, 15 Sep 2025 04:09:05 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8e90:5e16:1413:6c? ([2001:8b0:aba:5f3c:8e90:5e16:1413:6c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0187f380sm94854085e9.5.2025.09.15.04.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 04:09:04 -0700 (PDT)
Message-ID: <4d5bb7e7f2e0c33d1d5272a2dd308a0bcd390786.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] parselogs-ignores-genericarm64.txt: ignore more
 KV260 warnings
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Date: Mon, 15 Sep 2025 12:09:03 +0100
In-Reply-To: <20250826081650.1940369-1-mikko.rapeli@linaro.org>
References: <20250826081650.1940369-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 15 Sep 2025 11:09:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13745

On Tue, 2025-08-26 at 11:16 +0300, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> AMD KV260 shows more non-fatal error messages with sato image.
> Power management, pin control and X11 errors can be ignored in
> testing.
>=20
> https://ledge.validation.linaro.org/scheduler/job/118932
>=20
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
> =C2=A0.../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt=C2=A0 | 7=
 +++++++
> =C2=A01 file changed, 7 insertions(+)
>=20
> diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-gene=
ricarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-gene=
ricarm64.txt
> index 1e8b1f4b7d1b..3e96a172da6d 100644
> --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm6=
4.txt
> +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm6=
4.txt
> @@ -1,4 +1,11 @@
> =C2=A0# safe to ignore minor firmware issue
> =C2=A0zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
> +zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: set mux failed for pin
> +request failed for node
> +error -EACCES: failed to add to PM domain domain
> +probe with driver sdhci-arasan failed with error
> +Error applying setting, reverse things back
> =C2=A0# safe to ignore initrd warning
> =C2=A0Can't lookup blockdev
> +# X11 fails to start without connected display
> +modeset(0): failed to set mode: Invalid argument

The reason this has sat for a while is I really wanted to find time to
dig into some of these a bit more. It is really easy to hide all this
and ignore it but in some cases here, I think there probably should be
some gentle pressure on the kernel or firmware people to clean up the
"errors" which really aren't errors.

The trouble is, that kind of work is "hard" and it is much easier just
to ignore these.

I suspect we probably need to merge it but I'm not particularly happy
about doing so as it feels like the wrong fix.

Cheers,

Richard


