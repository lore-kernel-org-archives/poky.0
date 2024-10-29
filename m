Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F6BD5B165
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 08:11:10 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.14285.1730189460567947855
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 01:11:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=K3iVJwMw;
 spf=pass (domain: linaro.org, ip: 209.85.167.43, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539f72c913aso6596226e87.1
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 01:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730189459; x=1730794259; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F9ZSTc33u0mDW75ZWBysWeAXGPEH6ThNZZAHqvkAlTk=;
        b=K3iVJwMw9PBDkygRgd5W2thfY3g4bWA9qezs/ACPp6SWi9NbNHaCRFdkrsioIPYQNe
         M0hBe5uV+QzsPDF7koJd3y3W3xihQ16Nj7Fz2IfGn6HpuXRbeLzF7XWNozdCEzfLiRSC
         BjQTJFSFNx4/1pVoagF8yoTx055LJAOD2PY2YG2TbPGxitfolLT1QtajmAMLglkwvzlA
         Pt3A6lqjOS84UWe8FAinKgPRWlSYQPbK3ge3XX+HaUBs6agXopU8Mk1rkf18yF7zk+bT
         xvPdCxe1EM5Nu6lg2XYq2/w3cfe47JI6FrdZB9F70TImvofQgGzlLuU0f/N5y64K/uHw
         6Zww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730189459; x=1730794259;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F9ZSTc33u0mDW75ZWBysWeAXGPEH6ThNZZAHqvkAlTk=;
        b=fE5WvC/G3LsFiRlqV/TI4/Uxwpvg0wE1Rsl8HgYByqz5U7cfMdiAp4U2xQcFC7PhlR
         CHiD9vfI6IAe/FMUV8afd4RA29WveXj27OSbHc2XflhPb8z3k1Mh+76ZHMrt4RGlhkPp
         nrhuL6abz7KSzVA7pu2LB1OYYq58i9PWrd/76hbH9Jz7C2rZv85AjBLAIYnyqKZKjBDT
         o/0wozUes4RBa74WmftgCDqab1z7AZBXZb8hW0puInd2iXgMCMzfmiHT2WIDq2W4PxyB
         VQc3LaVx66qLvIxTyQGL9vXzy4NpL+HYl41v64uo5Ug70GtPhBqerEjIoSVW3fwOw5MO
         xgTQ==
X-Gm-Message-State: AOJu0YwaVp+VIpOO2fRvvLxFHlw9sWxjMjPgpXwhjb/5pMmAXgg8Bffv
	t5eUfmCQ/pMGAxF12/iezlaTQtfhhWcR0pLvNDJPl+KN77aD4sKr7YXvM+uEjHc=
X-Google-Smtp-Source: AGHT+IGu9ZAEPL3KZXALJ0oqhko6T85emY7oB4IF5Atl9y74D5vwhsjIisGFLSfl37Y8HxlUV2KnHw==
X-Received: by 2002:a05:6512:3405:b0:539:9548:41a6 with SMTP id 2adb3069b0e04-53b34c46920mr4709593e87.61.1730189458521;
        Tue, 29 Oct 2024 01:10:58 -0700 (PDT)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a670sm1294924e87.20.2024.10.29.01.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 01:10:56 -0700 (PDT)
Date: Tue, 29 Oct 2024 10:10:53 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Cc: poky@lists.yoctoproject.org, Bill Mills <bill.mills@linaro.org>
Subject: Re: [PATCH 4/4] README.hardware.md: add myself to genericarm64
 maintainers
Message-ID: <ZyCYja5YwWa_q6cj@nuoska>
References: <20241029075222.144722-1-mikko.rapeli@linaro.org>
 <20241029075222.144722-4-mikko.rapeli@linaro.org>
 <CAC_iWjLGX-j0-54arxZC0D1v-9wmrW9QkVpZ_KPx4+s7==2SWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC_iWjLGX-j0-54arxZC0D1v-9wmrW9QkVpZ_KPx4+s7==2SWQ@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 08:11:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13464

Hi,

On Tue, Oct 29, 2024 at 10:01:03AM +0200, Ilias Apalodimas wrote:
> FWIW
> Acked-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>

Thanks Ilias.

I wasn't subscribed to poky list so server rejected my messages
but that's fixed now. Had to resend the series though.

Cheers,

_Mikko

