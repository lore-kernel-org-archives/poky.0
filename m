Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EFEF01831
	for <webhook@archiver.kernel.org>; Fri,  6 Mar 2026 12:17:37 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.67763.1772799455720822950
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2026 04:17:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EBVGyMFH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48371bb515eso136204225e9.1
        for <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 04:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1772799454; x=1773404254; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYiJYxiZS/5/R89PrKQG0FTTPRQpyuYIrBjmDj1TrZI=;
        b=EBVGyMFHpxfQcrBh2HwvrA/zIdZdD/6yUSvVXzjwsa333iFryIzQdQseF5+Gb8p4ct
         OtYVnPzT2onJMxnL+LJePiTkYvq5QJP1Ug+mue6apuFmOi0wCmdkbTb8oCqtaoIKZOb/
         n6wbWpXNQdH6PfziLm7QKvl+eDGeuP357uxMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799454; x=1773404254;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fYiJYxiZS/5/R89PrKQG0FTTPRQpyuYIrBjmDj1TrZI=;
        b=gR7WzQRhYqMxTkYFPpRNNr6tw9K1OGet+0DyW9Z3CmGlwlnfesQrmmS/fJEqNruXwe
         sNiJcST7Y+u0yNHzAWR1SaYV9ZEQ/iL/2+wl5hpQKl+T6RQZyFwPCpLdsmoyFQQuU2DL
         ZYUyf4bEPn6OUP33UKpcbljZ+v9BjP6JxJAiaVJoZ3QNcINR/b/eFGGVQ/7V6MZ2JZTy
         1OHvaUtL9PRjlX+TxTiCw+YRQFEF4OYxfFd8oJl2EB8z5QOi8L3N4bL2SESRTdwqGdmk
         QFIZdYSfdwMGUoThJ3WyEGEpYvc2JZv3xTpnKS3oXQXOek7aECYM7Qv22zaK9eUuu30f
         1Aqw==
X-Forwarded-Encrypted: i=1; AJvYcCX/x/aFEiZmf6XwCvVZD4Bc6cNZPTDuEHp17RAb+J55O+dU8cSAYL+SEVn72GAmvVWmmTwX@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw4gx8jXbsI+qJnHH0y/aOG5nXherdNY6Su8hgcTfBHGkQmVfmf
	v+BMFxPcq4dVahT+k9VxNYnRuxrtubIbi1t47KCFxukl+dGIGBHYApuqylNXUgCPl2c=
X-Gm-Gg: ATEYQzxHlFlDkLBPXBPlOKo34pVkwZz20Bf6DGREpmWJ7un2tAMOCgWaNJ2ZO5JKJXB
	wglM8Kan1K1NlCkZ12o8UItledq5YmEDWdR2ngzYBfKatD+PrOdJSkq6HmSbVe8qOjxrRGfVa9n
	89ZmmxtrRj2XJwJdidTGJa2chuykwpH04G1CyZppxm4L+kn6fNuAH59XyLQfG9dcmISTMmlol9I
	yl0xHiBFsNZFWcUHBrs4qwPkrCW3o8LXFknlkGPZTL40fWSttqDd/+DGCtJrPmbBRxKEWMuQmJD
	OsNl1a7eeFsl12TkaTly2LMXNp7HbxB35keMUlwb8K5+ChRji6TaU2FQSWriVZkFVaJR2Y6BCyl
	L/GJ+sCkhngupPsl2CXi8DWmUzjVOj+5YRaobmxK0Om1SA+3+TPtmOT/AiXbxBTtBdxkeWCpQAV
	rNzg0JaHBO9QHe6xG3fLKGskFpOWpvYZMsgKc+6clfpaFVsREqcJULTBKCa0aUBLRIAQVkYOxeJ
	R3z2YSdQwhJu+HdE2A9Ywhfdg==
X-Received: by 2002:a05:600c:3488:b0:483:498f:7963 with SMTP id 5b1f17b1804b1-485269669a0mr30414725e9.26.1772799454020;
        Fri, 06 Mar 2026 04:17:34 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:dc4e:977d:644d:618a? ([2001:8b0:aba:5f3c:dc4e:977d:644d:618a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fb4257csm177898255e9.15.2026.03.06.04.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:17:33 -0800 (PST)
Message-ID: <f0efec2c7ec34b40379153e3d871d76044bd4243.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v2 2/2] oeqa runtime parselogs: ignore KV260 USB
 error on genericarm64
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Date: Fri, 06 Mar 2026 12:17:32 +0000
In-Reply-To: <20260306093316.7018-3-mikko.rapeli@linaro.org>
References: <20260306093316.7018-1-mikko.rapeli@linaro.org>
	 <20260306093316.7018-3-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 12:17:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13851

On Fri, 2026-03-06 at 11:33 +0200, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> On AMD KV260 the USB 1-1 driver sometimes throws this new warning at boot=
 but
> continues and USB stack works so ignore the error:
>=20
> usb 1-1: device descriptor read/64, error -71
> hub 1-1:1.0: USB hub found
> hub 1-1:1.0: 5 ports detected
> usb 2-1: new SuperSpeed USB device number 2 using xhci-hcd
> hub 2-1:1.0: USB hub found
> hub 2-1:1.0: 4 ports detected
>=20
> https://lists.yoctoproject.org/g/automated-testing/message/1525
>=20
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>

I'm sure people will tell me I should just merge these and we move on.

Before I do that, I want to be really clear that this approach really
isn't great. It amounts to "oh, we have errors we don't even understand
but we'll just ignore them and hope for the best". Should we even
bother with the test if we're just going to ignore anything it shows
up?

I appreciate Mikko can't go and fight the world on issues like this and
this isn't directed at him, it is just a general frustration with the
"quality" of where software seems to be going.

Where do we draw the line if we're just going to ignore any error?

Cheers,

Richard

