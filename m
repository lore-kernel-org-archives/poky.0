Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.22849.1662371429701924645
 for <poky@lists.yoctoproject.org>;
 Mon, 05 Sep 2022 02:50:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BGTY6ptB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id k6-20020a05600c1c8600b003a54ecc62f6so5350286wms.5
        for <poky@lists.yoctoproject.org>; Mon, 05 Sep 2022 02:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date;
        bh=qBvMTlFBNy+5jem2UcumW9gLJ7VdlCqhaBtXXvdz4zk=;
        b=BGTY6ptBlQU9FCtP5JRQsfd78C/bSyLj3IfqAZKn2XgDUQLW8RaqjZDSFCoWneNU8i
         iQyrKOmJgv+u24+GQCWDTWwcJVpxVcGRpTf0xTJPUuM/tA4kgAlghqR8tHgX6R4E2TMw
         7SbtjXQhtqmjFWGYGCxADx3uz/d+F9oe+mkKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date;
        bh=qBvMTlFBNy+5jem2UcumW9gLJ7VdlCqhaBtXXvdz4zk=;
        b=q2ARY/d3zeGIG58nr8Betq96/ZkMRav4bJIiKPI1UwTRaA8fKYaKgaTLBeTdJaqfND
         AnwcZppN/L5RdJjtxItVS76uoo+DKVYHxUQ/V/vKhuGBxxPdAQ4mLF1/46A3BJKANKZk
         G16aXXTIIMEus1SvmlgguzvBCpLSjAZj6sJ7eVoOVg7X5q+CeBVUwjE/IwGiHIccAnf2
         PNfOuykUCKDvgVraH2CjTjwi2SW/9rHIS2cl5g/1V4K4nIyJyetS0aCh88mNrlzzyDLL
         P7mwqxRbPimih3zQCX1XYZZ35+KIkZv1DMUYw40rHLJOiqlkDuKStJYlgWk7AXNiJAeg
         CQHQ==
X-Gm-Message-State: ACgBeo2p5brClL/YSgywbJomnugxVTyKTTr7LVbUSqOfav89KFhkQ9j+
	BXH1WRVzi39C1u1cPS+XcG9ciA==
X-Google-Smtp-Source: AA6agR7mei5Jys2/EK5Bay717KCaC6yeVjDni3pv1gls/UGT/JDhq398zRqWTzWMAfCueJo3J7uOQg==
X-Received: by 2002:a05:600c:3508:b0:3a6:10a9:8115 with SMTP id h8-20020a05600c350800b003a610a98115mr10644745wmq.164.1662371427938;
        Mon, 05 Sep 2022 02:50:27 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:9134:78de:7ad:e0e5? ([2001:8b0:aba:5f3c:9134:78de:7ad:e0e5])
        by smtp.gmail.com with ESMTPSA id z14-20020a5d4c8e000000b0021e4829d359sm8473498wrs.39.2022.09.05.02.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 02:50:26 -0700 (PDT)
Message-ID: <73881ce034592324fe3dc387fa4bbaad9849dccf.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] gcc sanitizers also build statically for dunfell
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: a.thoma@rational-online.com, "poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Date: Mon, 05 Sep 2022 10:50:24 +0100
In-Reply-To: <DB4PR10MB626484D5E6016A888599727AA57F9@DB4PR10MB6264.EURPRD10.PROD.OUTLOOK.COM>
References: 
	<DB4PR10MB626484D5E6016A888599727AA57F9@DB4PR10MB6264.EURPRD10.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2022-09-05 at 09:21 +0000, Thoma, Alexander via lists.yoctoproject.=
org wrote:
> From ba6cdecb93c09e1f218542a3cfbeb63d9141e069 Mon Sep 17 00:00:00 2001
> From: Alexander Thoma a.thoma@rational-online.com
> Date: Fri, 5 Aug 2022 08:41:09 +0200
> Subject: [PATCH] gcc-sanitizers: modify to also build static libs
> =C2=A0
> gcc-sanitizers static-dev can be build for static and dynamic linking. Be=
fore static-dev package was always empty since static build was not enabled=
.
> Package-dependencies needs to be rearranged since both dev and static-dev=
 need the obj-files.
> =C2=A0
> Signed-off-by: Alexander Thoma a.thoma@rational-online.com
> Signed-off-by: Florian Wuehr f.wuehr@rational-online.com
> ---
> =C2=A0meta/recipes-devtools/gcc/gcc-sanitizers.inc | 43 +++++++++++++++--=
---
> =C2=A01 file changed, 32 insertions(+), 11 deletions(-)
>=20

This needs to go to the OE-Core list. Also, which release is this
against? It looks like it is against something older like dunfell and
wouldn't work with master.

Cheers,

Richard



