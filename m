Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C55CCAC5BB
	for <webhook@archiver.kernel.org>; Wed,  8 Oct 2025 14:18:16 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.17304.1759933088119799193
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Oct 2025 07:18:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UN8ELoOc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46e33b260b9so72161815e9.2
        for <poky@lists.yoctoproject.org>; Wed, 08 Oct 2025 07:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1759933086; x=1760537886; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NZ3Aeel2HQBM8DldLG/x3t7coc/uOc1daBNVMHa4tFs=;
        b=UN8ELoOc/a6c0QDWItFE/Gk6ntkVhYrE2b/zPQxkhexmAxV1Jb6fujuNJnlvZVQr4e
         4z+5NbadjtZQarRda5F0V7WLKI4EoUXv24hQ9nt3HSO9O40GxTMi88vLKAn51049HOLE
         cp5EvDIwmsHQYDVzb3URGqwEfS/0GUWhoL2k8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759933086; x=1760537886;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NZ3Aeel2HQBM8DldLG/x3t7coc/uOc1daBNVMHa4tFs=;
        b=Qe+ob2vgmXwbdcFe5DcDx6hDHkUdS02rcrgOEq9nxc4XqJQeAYe3PR2EnL6uCFFE71
         1T3zvAkEX4YonLztgJ1NZI5bwlUQfdHJBPKxSXQxOXqsYvKajROp0bAoo1xM7fghTtYL
         07bpuJW979p5dM8/9dIbtY0EFNDU5T61ynl5uSpHi+JXKZ1q4Xn+Qk4JHQCsGA0GppWo
         jkXVa9ol1LlVPQRrQK2MSK342rDfGmI0Tw9U2YjYFJywxhsRElVJAiMomNLDVxDxaPgt
         JbURGVOWKtRXZ9M74pSXVHt58I9hlt7Z3qDO/GrGA2AeBhEbLzsW3FxW/VHT9tanRQAR
         zY7g==
X-Forwarded-Encrypted: i=1; AJvYcCV0D0u208McnBLPPUruCr3KjjjunoUcTXNvsuXas5yz/+TP60+RDI/dSvebTn9ianRdPbUb@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxjXnKg9n3EDOz5ctbCcEeB7ACkpLdCj3RKkFp4NpF5Mghay8S/
	T/inDrcyPSEMSKx9GGW7f1FUg0UNUJaeH8Ez0qzECle0u0HmCIWZtH5+w6z92vD/GYM=
X-Gm-Gg: ASbGncsxWVJPTM3a+Cjt778uCJJpqFrsbmWehao+yXFyUp1wgiobPwNQ8K+8VTljsJb
	ZpQlnFPIguBMCGQ8cy6KBnNkeITk+g0d0JFMKMmBAo+ADqHeeNcrxxd8AsX6dUDmO3vOSN0kDXt
	vAov8mggluUqYQ6OuSP/XjpRMXRuRRvoDgDSj1VgsPha/M5cJmf5MPB1Gqb0dULAuMmSPP3tRAt
	9uRMUh6vNCzmVGcaIxAb4GBv+YVowath94G2SEVlNiMLbDRj7nS/1HycZD+zim+adR2ZfpuVSMC
	nAqW/kRRKFlfamgEkcXIqFd3ARj5KD3SwEDom26spZ+0Eulkh0NCZyN9Wjqp0UGhxI3MdT/c71k
	de4EY/p3P9Fa50F6WyIp6Q2jLkzx2U1tsO/QstLmcZGa1THXPTUZDM6EDNfs9uA8bJ1fO+jU4jO
	V3h7vu90925LnixCe3RQV+CkGhNpk/FMaa
X-Google-Smtp-Source: AGHT+IEpyH1m8dEuIucAArf6isqqy8dny3P0MQHBcMZih8OAQ6i1QgIenQVcwCGpFUQ7MCv+NGbWbA==
X-Received: by 2002:a05:600c:a085:b0:45b:7b00:c129 with SMTP id 5b1f17b1804b1-46fa9b1866emr26760155e9.35.1759933086431;
        Wed, 08 Oct 2025 07:18:06 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:c525:4328:d09:a5d4? ([2001:8b0:aba:5f3c:c525:4328:d09:a5d4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fa9d7f91esm39841845e9.20.2025.10.08.07.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 07:18:05 -0700 (PDT)
Message-ID: <032b5d106d0cbe940213f9721fb685da0cb550c6.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] parselogs-ignores-genericarm64.txt: add error
 messages from rockpi4b
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Date: Wed, 08 Oct 2025 15:18:04 +0100
In-Reply-To: <aOZm94yAap52fV8i@nuoska>
References: <20250918121230.3264352-1-mikko.rapeli@linaro.org>
	 <aOZm94yAap52fV8i@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 08 Oct 2025 14:18:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13763

On Wed, 2025-10-08 at 16:28 +0300, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> Hi,
>=20
> On Thu, Sep 18, 2025 at 03:12:30PM +0300, Mikko Rapeli wrote:
> > Rockchip rk3399 based rockpi4b with open source firmware from
> > meta-ts https://gitlab.com/Linaro/trustedsubstrate/meta-ts
> > triggers some non-fatal errors from various drivers.
> > Ignore them for now since all other oeqa runtime tests pass.
> >=20
> > https://ledge.validation.linaro.org/scheduler/job/119422
>=20
> Any possibility to get this merged? In these tests
> I don't control what firmware the devices have and thus
> there can be errors like this. If I would also build the
> u-boot firmware with genericarm64 then I could possibly
> fix these issues, but that's not in the plans.
>=20
> I would like to submit similar workarounds for AMD zcu102,
> TI am62p5, Broadcom rpi4, NXP imx8mp and Qualcomm rb3gen2.
>=20
> Cheers,
>=20
> -Mikko
>=20
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> > =C2=A0.../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt=C2=A0=
=C2=A0 | 6 ++++++
> > =C2=A01 file changed, 6 insertions(+)
> >=20
> > diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-ge=
nericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-ge=
nericarm64.txt
> > index 3e96a172da..7d360bdbda 100644
> > --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericar=
m64.txt
> > +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericar=
m64.txt
> > @@ -9,3 +9,9 @@ Error applying setting, reverse things back
> > =C2=A0Can't lookup blockdev
> > =C2=A0# X11 fails to start without connected display
> > =C2=A0modeset(0): failed to set mode: Invalid argument
> > +memory-controller: probe with driver rk3399-dmc-freq failed with error
> > +probe with driver rockchip-pcie failed with error
> > +platform hdmi-sound: deferred probe pending: asoc-simple-card: parse e=
rror
> > +deferred probe pending: rockchip-spi: Failed to request optional TX DM=
A channel
> > +platform sound: deferred probe pending: asoc-audio-graph-card: parse e=
rror
> > +platform sound-dit: deferred probe pending: asoc-audio-graph-card: par=
se error

Perhaps resend adding a comment documenting which boards/firmwares
these are from and then I'll agree to merge?

Cheers,

Richard

