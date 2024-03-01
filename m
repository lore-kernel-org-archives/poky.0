Return-Path: <trini@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C34FC5475B
	for <webhook@archiver.kernel.org>; Fri,  1 Mar 2024 19:41:16 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.33478.1709322073723841838
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Mar 2024 11:41:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Gi4/Ikla;
 spf=pass (domain: konsulko.com, ip: 209.85.128.182, mailfrom: trini@konsulko.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-60989ecd10fso5693617b3.2
        for <poky@lists.yoctoproject.org>; Fri, 01 Mar 2024 11:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1709322073; x=1709926873; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CDdrXDZmG3fpjq7PmzQgJYFtw5NpzdbEM4KIkYhxqHE=;
        b=Gi4/IklaeNZG0GKVVutjj6igLKot0hv7gGfrUzNISvNmSZOfQueNmhEF7Xyr8t5cri
         DZBgqh8tVoB7PGAUz1sCpw8Z/UPH4Y1j/jCZMXWCphqxtfjMiCRg2PCevPqJU4qvyU4u
         rFVXXB8/jZXDV5vkb62XobLSAYlzeJf5/T4sQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709322073; x=1709926873;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDdrXDZmG3fpjq7PmzQgJYFtw5NpzdbEM4KIkYhxqHE=;
        b=j/ytCfiOZg6wPqns44/l68M5k5VsPmtoi8tuLVHPQXhWBZobzcZGj1gQOuHQu/AdwK
         jjNJfpF8QdT0wsp1qrx7sd5oVyZ179s1KoHJSM4sIoJsbeRbE8WNY9g72X+T9M0JTtbS
         ATk/WJtJncxPLjhbn4jDgDBxnvCxyvy1QY+L8H4BKhFEQfQ5Dsw1EB8kavQ/2G13YbJl
         1pAH8U8/hRmS4W+5FIkrS7l11P6RDR0oncsGJ3OhyIlrFdLkH3lFccYDVIxvIjFQDTcQ
         QUry+X3MykfcsG/a9giCq/udvv4RI5rnTidOFFyerIEQUGA4Un33Zv3NTivoqNgK7m4m
         Pg2A==
X-Gm-Message-State: AOJu0YwMsWBKlgWjwF1dGC1EYwiyXC2JD0LMKodl5FppuB0y/9YkkPZQ
	VuS3jFYQMxoTyG1vXL9A2ZOBIJYyP/dE3stoLYWw4Cv9UsvEbQkQNm2XRsp4WYk=
X-Google-Smtp-Source: AGHT+IEQ9KoeDTMUHne1WeQy/9D7MGHUBHs0HP/Lk8uOxgq/UN+lpbZN3YCIMGYcf+40Zhi/qdeyKw==
X-Received: by 2002:a81:8a82:0:b0:609:8d15:f1 with SMTP id a124-20020a818a82000000b006098d1500f1mr997281ywg.26.1709322072980;
        Fri, 01 Mar 2024 11:41:12 -0800 (PST)
Received: from bill-the-cat (065-184-194-195.res.spectrum.com. [65.184.194.195])
        by smtp.gmail.com with ESMTPSA id u144-20020a817996000000b0060782330736sm1110535ywc.113.2024.03.01.11.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 11:41:12 -0800 (PST)
Date: Fri, 1 Mar 2024 14:41:10 -0500
From: Tom Rini <trini@konsulko.com>
To: ross.burton@arm.com
Cc: poky@lists.yoctoproject.org
Subject: Re: [PATCH v4] Add genericarm64 MACHINE
Message-ID: <20240301194110.GH3040305@bill-the-cat>
References: <20240229162440.4039352-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240229162440.4039352-1-ross.burton@arm.com>
X-Clacks-Overhead: GNU Terry Pratchett
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 01 Mar 2024 19:41:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13293

On Thu, Feb 29, 2024 at 04:24:40PM +0000, ross.burton@arm.com wrote:

> From: Ross Burton <ross.burton@arm.com>
> 
> This is a new 64-bit "generic" Arm machine, that expects the hardware to
> be SystemReady compatible.
> 
> Signed-off-by: Ross Burton <ross.burton@arm.com>

Looking good, just a few consistency things:

[snip]
> +The genericarm64 MACHINE is designed to work on standard SystemReady IR/SR
[snip]
> +#@DESCRIPTION: Generic Arm64 machine for typical SystemReady IR/ES platforms, which

Probably should just say IR/ES/SR in both cases?

-- 
Tom

