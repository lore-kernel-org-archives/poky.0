Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2184.1793955293318494764
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Nov 2026 00:54:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=MhBJY4K+;
 spf=pass (domain: smile.fr, ip: 209.85.221.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-492f0a1b685so183309f8f.0
        for <poky@lists.yoctoproject.org>; Fri, 06 Nov 2026 00:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793955291; x=1794560091; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=q7MbHUGnmi2v2tSqTRgYKwEntCpv2wCsHSZlQcwvv28=;
        b=MhBJY4K+7pcrSae9nza06Wzp24B26KYt+DC2mW4Vxdo53idpS2dRqFNf2qzK3hQJrf
         icOt6b0a4bjQtlDz+USmHwpVPttSScRpzD/Y1bjDsbjuoZIQH0UQdGS49jaOTLoRBtyF
         KnkhWThBl8k/+Kk0TCyWzMhUvmovDINeL/Pt+Q5ZlZbOOv/22jqfhb4CT2+B/QeMnyoF
         QAj5YEKMNmG5GQ4ziD15FseU8ts3l0REqaXsfbjPoRKcXODZEy2A2dFjkIUzTOG27PuZ
         4sLqyYZIyfMZL3sBtZ9j3uWPXWA4W+KpgXsBL4ycT3WIq0Xx/9rwm9jH28HY23Syxckh
         9VOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793955291; x=1794560091;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q7MbHUGnmi2v2tSqTRgYKwEntCpv2wCsHSZlQcwvv28=;
        b=gLXDdyhjlX9L/EDJodeVM+Wq/FvkPBhseBg0Q78nnXLcYN1F6F+UC9ZtOpFF3quxNX
         XLALAz5kmE3eJNCDP2FRy+kTUirBL7RrE7pP0BcPTpeuU+Odg7OWl/ROeT70lYotXHQh
         057WEZvMQZ5vyXSkACD0pyP75W1SBe5YFAsS+2jfcqZxBRwc1GNcGPJlUOEJWELzYaFW
         9xKAE2QdPrMfgoJLLYgtO+w/4EA+6TFZb3qA9Hm8hdBIrK7iQBbS2QQ9rPN4GmyUGewB
         cMvUzevzFISktnQdNbMnXPgFtsuMrMy8GabY5S0XL4ZEN0pK27wdRL3+FoyMCEsLS+cf
         JQdA==
X-Gm-Message-State: APuU4Z+S3sGRqI1Cm8CJNGYHHfJX3dEdSbSagoBhbVOZAa/ZnKhIVLjB
	Qkjr9TDhuhnmcFVwweNc5rwZThi7h09bUcmnwnjlFoddJRlmSM0/aonxBS5k/BaIb5I=
X-Gm-Gg: AYBFou03vqfPMalcGZ+IIpn2VbshZx00gHzgB+pFn3OOjWHyeonhn6zStvhbxQLj4xU
	l2p3Nqqt9qZMwRHsC0XUEGsA43e4ouaMIiQ0d06jtI/cqhpYGIPqt8Gv4f7MEcmTPpGIUyhtgir
	4aEf34p5Wlp0b++RAZyZ3dFRGz/RHP+cOCVcrn6lUkMZo+SAaIOJHggNO4ZJl2tFaeevW0pF6HB
	JqYiVX95BObPSkQTTsoAINnqQ55M3MD4dKRO95vowh4OZ5Otdwt183LD+1/YhQhDGA1DJ2zJeRN
	57mHajFZrcymNZAm0a89b5NR/rwZ4idXPK1GOokpPW6FNXyI6s2GYDF1jeeiE8gthD7Y/msDuPm
	4rsKFJYP6G1qE5xcimn7yoT6H7Q1Po8eEm7cpGR6qHaORTRR/5ZKAC42fOdHnudx/UBcAEU0ZZE
	HsawugDEzbaX+IkZb7nm+gTht0/ZF5JWCq8LswThItOUILJuRNhlM1BkMlHuLsEcG63Hn80f0St
	/u6lcMixBj0xMrdLcOAA/v9H3i0vnhUkJXpiEB0TRZyYYECBHj6MLUVLGyPUOnOHnW9cySUfxxr
	onGoJCtHTG2GFoOdx4KP4WxbiaALrJqPP/iLRGQ+ctTJM0uQFC9Xr2+7U23mkgx9b2e5VBPu9ja
	2s5fQ4zhbmtP3SbVaLwH+6SVWq0hQ4Xqb2DtQNA==
X-Received: by 2002:adf:e185:0:b0:491:92e5:b5c2 with SMTP id ffacd0b85a97d-49275fe4e49mr3695337f8f.15.1793955291329;
        Fri, 06 Nov 2026 00:54:51 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-492d6d63b79sm2511680f8f.20.2026.11.06.00.54.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2026 00:54:50 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 06 Nov 2026 09:54:50 +0100
Message-Id: <DMO02R838NN2.QH3RUQG1ZWGS@smile.fr>
Subject: Re: [poky] [meta-yocto][blacksail 1/5] Fix LICENSE file and
 licensing
From: "Yoann Congal" <yoann.congal@smile.fr>
Cc: <poky@lists.yoctoproject.org>
To: "Mark Jonas" <toertel@gmail.com>
X-Mailer: aerc 0.20.0
References: <cover.1793868274.git.yoann.congal@smile.fr>
 <e6ab1239dabcd88cc783cb803dd4adfda804944a.1793868274.git.yoann.congal@smile.fr> <CAEE5dN1CZxFv+DXbOd3WQs3fub8Zqh3DXHeJGbSbGecoDUOZDg@mail.gmail.com>
In-Reply-To: <CAEE5dN1CZxFv+DXbOd3WQs3fub8Zqh3DXHeJGbSbGecoDUOZDg@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Fri, 06 Nov 2026 08:55:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13993

On Fri Nov 6, 2026 at 8:38 AM CET, Mark Jonas wrote:
> Hi Yoann,
>
>> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>>
>> After the split from poky, the paths no longer make sense. Simplify
>> things as meta-yocto is all MIT licensed.
>>
>> Add in the correct license file.
>>
>> Also clean up a couple of references to an invalid file, we can use
>> a license identifier instead.
>>
>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>> (cherry picked from commit 61c27a174a1feb2a9f211c0475ed6c8e413392b0)
>> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
>> ---
>>  LICENSE                                       | 14 ++---------
>>  LICENSE.MIT                                   | 25 +++++++++++++++++++
>>  .../lib/oeqa/controllers/beaglebonetarget.py  |  4 +--
>>  .../lib/oeqa/controllers/grubtarget.py        |  2 +-
>>  4 files changed, 30 insertions(+), 15 deletions(-)
>>  create mode 100644 LICENSE.MIT
>
> I think it would make sense to backport the license fix to Wrynose as
> well due to its long lifetime.

Yes, agreed. I've added it to my review branch. It should be included in
the current cycle.

Thanks!

>
> Thanks,
> Mark


--=20
Yoann Congal
Smile ECS

