Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29021C64E96
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 20:32:18 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.4309.1692304329982058129
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 13:32:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Xhh4aXO7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-3fe45481edfso2553445e9.1
        for <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 13:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1692304328; x=1692909128;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gHbMVmKgCkkCrcSr1U+Nb/xb31f74Jmx/ZI81wL3Mkk=;
        b=Xhh4aXO7/pwU9GVGY3/usBHhh1uGEnejkn01dRQKPit8NbDc/Li13zJXDBLvYlUh1j
         /7G+Gapager5JbMBWR4fwnLuF81tLbjr7FTVCtL1/cjbRt2DVi8b7VJh++xiarlPU5U+
         d4mIItMKv+jBMPpMMGVFlE8X1uMaGABuxp/JA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692304328; x=1692909128;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gHbMVmKgCkkCrcSr1U+Nb/xb31f74Jmx/ZI81wL3Mkk=;
        b=NS8G+8iBOzX3Ilfd4LT2zi354etLzECN1JF56rE61yuVlp1hsxgm1YkVB6XQPmshuD
         xsW0L63hZWq7B0GOUCMHrTiqA4UpA5nEAvFwIc/jo03aJXn1BfFr8kKe8frI+7qxjDBG
         nyRL3mXjtlUafxqQZhgojnWEzN5d/wRof5vRScnnTthdz80U3DIJKUznMeNlwoSE31p7
         hlsaMcbxitIgKF8KfDyewRTtzjrSyS0xfuUjXckbdWgoEy2TbF4a80ZE/dOR5NmhXBy1
         pit04vf3ksXXsfeHSB2QhafVDEhk094K1T3PM1z5Ax1EXTvkk43/CZBwiApADmit7dl5
         UfSA==
X-Gm-Message-State: AOJu0YwekpfXfKK4OGcUBGYncW1WmEUgSlqHm71tZE0Lz/8Pc4OH/Pmy
	mkP4akKEXE5jhqZuKYMifepeiA==
X-Google-Smtp-Source: AGHT+IFpHfAWOsr4Aj/tWfWbrIhK6/GmyLsDxMUeaXvSYRmQWK3gLLSHkg0x++MPxPYtp/oKUCa/lg==
X-Received: by 2002:a5d:526f:0:b0:318:7d5:67bf with SMTP id l15-20020a5d526f000000b0031807d567bfmr386688wrc.49.1692304328187;
        Thu, 17 Aug 2023 13:32:08 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b8a:199f:e210:2fe8? ([2001:8b0:aba:5f3c:b8a:199f:e210:2fe8])
        by smtp.gmail.com with ESMTPSA id n15-20020a5d484f000000b003197869bcd7sm326119wrs.13.2023.08.17.13.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 13:32:07 -0700 (PDT)
Message-ID: <21de0cb6ea8e2ec6da9f3c158e34de312ef8c037.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] scripts: use the monotonic clock to compute time
 elapsed
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joseph Tilahun <jtilahun@astranis.com>
Cc: michael.opdenacker@bootlin.com, poky@lists.yoctoproject.org
Date: Thu, 17 Aug 2023 21:32:07 +0100
In-Reply-To: <CANhvTw4wAq9tD-xa9UCWAcv7CV_GJ3xd0DvtsFBH6QjF57mbPA@mail.gmail.com>
References: <20230817045433.495995-1-jtilahun@astranis.com>
	 <d0d0a045-666b-47ea-9759-4d05f439fe36@bootlin.com>
	 <b05667d60595cb9e96b2d1040d6bdc621a756399.camel@linuxfoundation.org>
	 <CANhvTw4wAq9tD-xa9UCWAcv7CV_GJ3xd0DvtsFBH6QjF57mbPA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 20:32:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13133

On Thu, 2023-08-17 at 13:28 -0700, Joseph Tilahun wrote:
> Thank you for the background Michael. I sent this patch to
> openembedded-core@lists.openembedded.org per your message.
>=20
> Richard, I understand the point you cite from the Python manual page.
> Regarding this patch specifically, only the difference between the
> results of two calls is used. So the concern you raise is not
> applicable to this patch specifically. Given that, I'd appreciate it
> if you could take a look.

Alex's point stands though and relates to my concern. If we use
time.time() everywhere we're consistent and less likely to confuse the
two and get interesting results.

Is there a real world problem this change is solving? Did you have a
build machine where you changed the time part way through a build?

I'm leaning towards being consistent as this time change would seem to
be something very rare compared to the risks of people copy and pasting
and confusing the usage.

Cheers,

Richard

