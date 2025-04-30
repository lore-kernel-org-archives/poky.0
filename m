Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680C7C3ABA9
	for <webhook@archiver.kernel.org>; Wed, 30 Apr 2025 14:58:06 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.714.1746025083002066943
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Apr 2025 07:58:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bTMik1+V;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf680d351so6139605e9.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Apr 2025 07:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1746025081; x=1746629881; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c5pn6ngsQSDaHK0x82iMcZmFCaNkyzsngXnLLwa6sSo=;
        b=bTMik1+V2r4hGpAb/KJgEOQ0qqVOO64OMEgLKDfFYIJ4MKAI91xeyRQhW0okT+DSMT
         f4rZMrgvOtieMl5f37SmzPGBZqF02GXOXwuzGIwpv2J9ZEvzxslfvbyaYjiEuxgGXSST
         h9VZMy2cnYS/SyW6wvAmepLMQmniFte8LIo0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746025081; x=1746629881;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c5pn6ngsQSDaHK0x82iMcZmFCaNkyzsngXnLLwa6sSo=;
        b=lcF7LTtbDOco1sMOEsRcYwt1KaS6UEDwUTbUqj0SVodJXQb6Qeszxw9dyHGVGoOtby
         JHCxOI0/Hel3QQ1pmDfuRVTNUO5Md7+amm84bymgrefLHZHtYKgFk2Jqxk6khy5w9W7A
         RjwtmaSWGUrRz92yAj5qmAPmZ6TdLrn+BdBR4QPqb/HW/Ezlyspeq5eNLDUciKy5VLEL
         zSmdA6iyvjf/booaT2maELi+eOmq9MrfjTsqiJg8rClui5EQhQCKIbPwVWhPdmCeF9h+
         JfJT1rBZN7vZdxPm4njcFHb6zy4dnRfnlJeNmKLGrEhoN+KE7BXm6tJGUprZdN1iHQwt
         VqdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOWEzNT2ihoN5XFK8IfJrtyMpCbB70P0DhLrKm0d5eI4VGvWbYiOkcZKCQkBS3x8V4sO8o@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyVUCLVWMe6t9K+d/qVmOToPbPQnTJ6BKZFdLtLQxtJzU84EggO
	Y8jc0jmNPHegoqlvllHXI6frZRLLnkIUmGzZrbH0Irn6yK6X48TZ3LG/1THfuHI=
X-Gm-Gg: ASbGncudTTNNszy9TDP78NP9vrqb8LsAJ1iK2RcXgFxZUMoSZN4K7sVIku5yqoxTaq3
	d3b+/rguH7csdaFhiDQGnwWq/qaJj0wH9ErkAKt4zwwUuSyCAwYe1iPHGzb3IYsMSPw1CEhXtrA
	nOR6SV2B0y5gPEm6xBs3uINpP+cSE7NUUvRH8E1AvoNxQhfNykFWJWIqWZaBfEszbEfZKToTjlP
	bGsCVZ7kaA4E6JeG4oueh/v4EUYui/IeumKV3guZZlpJytRDmWGnGvPo7guxSwaoLdiK89OPqSx
	JUrZTzSpysS+pDsb+/O43ab/PgIAwBgYT2hAMmwGHthIcsMwmMKc55mC/5BJ2E36CNCZgQj8HOu
	ic5YdV8WCHxCho9OrDtbBZ3VYS3vQEQ==
X-Google-Smtp-Source: AGHT+IGVVTBKSf/C1jaCQS+YKCP5IZoE4q/Cnk9REl9R4j6TY1NIK9ttbzMNgP2WJ4FCkjeN11g9TA==
X-Received: by 2002:a05:600c:894:b0:43d:174:2668 with SMTP id 5b1f17b1804b1-441b44c6f9bmr13765855e9.0.1746025081419;
        Wed, 30 Apr 2025 07:58:01 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:60c2:7f54:b641:d997? ([2001:8b0:aba:5f3c:60c2:7f54:b641:d997])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073c8c7a4sm17740046f8f.14.2025.04.30.07.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 07:58:00 -0700 (PDT)
Message-ID: <8f05119dfedfcee7d5adc58157514b5e8ec49b4d.camel@linuxfoundation.org>
Subject: Re: [poky] machine or vendor specific execution of a function
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: jdowd@slashdevslashnull.org, poky@lists.yoctoproject.org
Date: Wed, 30 Apr 2025 15:58:00 +0100
In-Reply-To: <Qt5c.1746024191608869388.sDVP@lists.yoctoproject.org>
References: <Qt5c.1746024191608869388.sDVP@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Apr 2025 14:58:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13610

On Wed, 2025-04-30 at 07:43 -0700, John via lists.yoctoproject.org
wrote:
> I've run into this construct a few times with my work in upgrading
> the customers older dunfell Yocto system to Scarthgap in recipes:
> =C2=A0
> do_compile:append:<some specific string specifier>(){
> ....
> }
> =C2=A0
> It appears to very problematic both in functions and variable value
> definitions. What is that string specifier? In the case I'm running
> into it is set to "qoriq" usually. But in a few examples in the
> vendor's code I see it set to "qoriq-ppc". Which is correct? From a
> high level both are correct but neither will give the desire
> approach. Since locally we are only building for one platform I can
> just remove it and this will work for my situation.
> =C2=A0
> Where is this value being set and how do I find out which one I want?
> There is no machine called "qoriq" or "qoriq-ppc". There is a MACHINE
> variable (in my case t1024rdb-64b) but setting it to that doesn't
> work either.=C2=A0
>=20

It will be a value in OVERRIDES, which contains elements from
DISTROOVERRIDES and MACHINEOVERIDES but could be added standalone too.

You can learn more about overrides in the manuals.

Cheers,

Richard

