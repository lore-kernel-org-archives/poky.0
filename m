Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07D7CC531C7
	for <webhook@archiver.kernel.org>; Thu, 23 Jul 2026 09:24:17 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19502.1784798647489338638
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jul 2026 02:24:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Wjv4MKqC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4720f3bf164so163746f8f.1
        for <poky@lists.yoctoproject.org>; Thu, 23 Jul 2026 02:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1784798645; x=1785403445; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=qtlkOmMx3rjxIklp1+N4OafhlGGsn8u8QynqGS/3pzA=;
        b=Wjv4MKqCAE1DOPYgSWWJoq2794a4s6zEa34ramN81hnOkEQD2cx4ZRmklSP5EkkfYU
         VoLARQuDLmQMtF1QqQBjtQ+kv03ASPozvai6qBDOrLxwJpMul2wM39qyQaoYq/sOFPIY
         abkOll9K4N462A+IDgF4sPos429QDZfnV37uM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784798645; x=1785403445;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qtlkOmMx3rjxIklp1+N4OafhlGGsn8u8QynqGS/3pzA=;
        b=sQ7yNAdEad+6On1jAtKvIwuk9KXFEFw/bfz6z9HJu9wYdTLYQez69NIvCm0Vyaxi95
         ZPReaYFa5qRNTS8aikaf3fnyjx5eAVmNBRHVZOKrM1m+l4OWX9EewSbnQaKIkVW3rjIa
         dnPifGNBWx4FH1vbb3KlfxATKDTuWsabQoEf6IGUaq9DF/g8XwM6R6ezYg+b8vXoputC
         /l0dXpwPsJrM2exFAiYKMIMnJYMgA/psnAbfW3g3Dt4JhlIYQy9QyltewkgCrRk61f5i
         VOvUGnZV+O3+hJO+MkWCljfuJiZ3n/HXhJVcOVNkryu/Z8kSj+1aeYGO446XJ3wgeEA4
         WG7Q==
X-Forwarded-Encrypted: i=1; AHgh+Rpamtmz8Dh7UxvcdBKpqe/9LJf73xbMAqaodGjsgmIXpUbjzl/06ak5GijN+rYvJnrNqhT8@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz6n5rRC7plkQhg1XiShsYgoBlnsO+cO/pO6v7hxiSYCV1JxUo/
	b5e03ESWFC2D87y2743EKQ1ZniRDEGh548GHL3RGa3EgnRBjhMB1/70UIDSUO9xsbDg=
X-Gm-Gg: AR+sD11vXJAKRp2XiZSJQNbGnJBzzp89zm502drQE1XVzk1tM60uOBv7vN0gceytMIg
	dMlO3Q5HG3DDIdWKiIwuGFOswn1mEQ7Fn22huHbfbbG+6LQg/j3Yp1kbkbvJRD32rrVjGd6ph2H
	+iG31h0xmov9CSpZowcj8p5rJomWteZWgyJ1sT482xRDqhzIfpOpTp5ZzOBsSwSX49tT698jhCV
	7ycU0NqnAR0IPT6Oatu0EK7lD4FcZ5Qde4wvaJz90VxVkhe92diWGAxVoqwJOIe+NGzSznApBEz
	JcOw8kGO09YKJd6bu/PcrmqovmU7CGSCLqo3BeVbCgYQwLj3fpuvusr+A0mh2I+yIqlO6MZD2XM
	Wx2R5CkDWnnNA0Umit/w6Omfq22uk4wsIXhefrKfDibG/R4kdlbTjLXps/kKX029YHuBTBx0s/R
	eA9iaHL+0OwUy1Afm6ljMAfkDyjJRvlv4nZHOsL9XfamUnbyy75yL5AU7G+c077U26Y4Q=
X-Received: by 2002:a5d:6f06:0:b0:47d:f508:3364 with SMTP id ffacd0b85a97d-47f902605c8mr2390452f8f.15.1784798645487;
        Thu, 23 Jul 2026 02:24:05 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2205:d253:2df6:b9d5? ([2001:8b0:aba:5f3c:2205:d253:2df6:b9d5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85b9a64dsm14679391f8f.1.2026.07.23.02.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 02:24:04 -0700 (PDT)
Message-ID: <8492f386f53885c1ceda197e034241b9c9ffab57.camel@linuxfoundation.org>
Subject: Re: [poky] [RFC PATCH] distro/poky: enable minidebuginfo
 DISTRO_FEATURE
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: ross.burton@arm.com, poky@lists.yoctoproject.org
Cc: openembedded-core@lists.openembedded.org
Date: Thu, 23 Jul 2026 10:24:03 +0100
In-Reply-To: <20260715162410.639632-1-ross.burton@arm.com>
References: <20260715162410.639632-1-ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 23 Jul 2026 09:24:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13948

On Wed, 2026-07-15 at 17:24 +0100, Ross Burton via lists.yoctoproject.org w=
rote:
> Enable the "minidebuginfo" DISTRO_FEATURE in poky builds, so that all
> binaries have just enough debuginfo in them to get a useful stack trace.
>=20
> This aids with debugging occasional failures that hit the autobuilder,
> at minimal cost.=C2=A0 For example, core-image-sato with systemd:
>=20
> =C2=A0 core-image-sato: IMAGESIZE changed from 481532 to 486044 (+1%)
> =C2=A0 glibc: PKGSIZE changed from 3715743 to 3805871 (+2%)
> =C2=A0 sqlite3: PKGSIZE changed from 462840 to 469056 (+1%)
>=20
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
> =C2=A0meta-poky/conf/distro/poky.conf | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index 2ba98f4ba2..86576e48a0 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -13,7 +13,7 @@ TARGET_VENDOR =3D "-poky"
> =C2=A0LOCALCONF_VERSION =3D "2"
> =C2=A0
> =C2=A0# Override these in poky based distros
> -POKY_DEFAULT_DISTRO_FEATURES =3D ""
> +POKY_DEFAULT_DISTRO_FEATURES =3D "minidebuginfo"
> =C2=A0POKY_DEFAULT_EXTRA_RDEPENDS =3D "packagegroup-core-boot"
> =C2=A0POKY_DEFAULT_EXTRA_RRECOMMENDS =3D "kernel-module-af-packet"

Thinking about this, I think we should do this in core by default,
which will help sstate reuse generally as well.

Cheers,

Richard

