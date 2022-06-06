Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web08.33181.1654527878986041583
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Jun 2022 08:04:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=R4JSBxTk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id u3so20272777wrg.3
        for <poky@lists.yoctoproject.org>; Mon, 06 Jun 2022 08:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=xbS1hyqR2CKYelsQxj+dSIT4fIHeBGG3a1DhHc3wwHQ=;
        b=R4JSBxTkTNsKsCoJvbnO9RI2P+lNGXYumfK19K+7DEjJuc+YU0nYXLpxPzxI2icKIq
         ln4gPnUtWWurVarRk4NIiOIxHj8UGgIgZdS/f1Dj/mcE6nLSVPihD7X3VNY/xoaM1yTG
         LoAJfSAd8HoSxokSK2a7kFpclsa9hmjUnxe7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=xbS1hyqR2CKYelsQxj+dSIT4fIHeBGG3a1DhHc3wwHQ=;
        b=HUl36SgJqigLdM1Nkd30UYsKZhOKJgvAQEXyqxPwU4u9QMX+/cElXwsjIlWUb5AbTA
         AXCHgYe4zaz7MgIU16PQLKCzsAfYBuTNJXnKADbVtJDDanA1cp4HUCusppTl8gzdy8KH
         w1S8tjlmedLfEHfX7ZFHAY0t6ePYx/IWPU5MGKBv0uwTVlccXBOE0xE886p8VYJBxdK8
         QOPQwdtekNPyJ4lO3Y2sdIPybBL0QWR9bJG8BboHCBZoLPCO+qoYosnuE1MtOIqbpoWr
         3YGAd+KvGg4Ymg1sBx2SNaDdPIIwYjO98on6bYBtQDBCJoA6j1tJJ/Y2c8vwa5sMrYML
         Evsw==
X-Gm-Message-State: AOAM5337Euutq2WWeaGzD0d43qGkavv0nR8ALO2lbbRxUUFdvzCCtFAc
	wov/nFq6HhfFCJ536xZ0ZkvtVA==
X-Google-Smtp-Source: ABdhPJz3kR+/mGG+yHcSdD4KILt7KI9JgG4AxR+t2P4WZrNfrL1rROmhuUp6t4AP8wIV/b/lgIfvlw==
X-Received: by 2002:a05:6000:1a8c:b0:20c:bd6b:ecaf with SMTP id f12-20020a0560001a8c00b0020cbd6becafmr21536674wry.341.1654527877416;
        Mon, 06 Jun 2022 08:04:37 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:22ca:1a07:c46c:a885? ([2001:8b0:aba:5f3c:22ca:1a07:c46c:a885])
        by smtp.gmail.com with ESMTPSA id g12-20020a5d46cc000000b0020fff0ea0a3sm15047036wrs.116.2022.06.06.08.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 08:04:36 -0700 (PDT)
Message-ID: <956b207bd0ebe84c2a74a6c729622082c6993374.camel@linuxfoundation.org>
Subject: Re: [poky] Suggestion on custom Package group implementation.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Rahul Chauhan <rahulchauhankitps@gmail.com>, poky@lists.yoctoproject.org
Date: Mon, 06 Jun 2022 16:04:36 +0100
In-Reply-To: <s8Y5.1654322530168412976.66S7@lists.yoctoproject.org>
References: <s8Y5.1654322530168412976.66S7@lists.yoctoproject.org>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2022-06-03 at 23:02 -0700, Rahul Chauhan wrote:
> Hi Team=C2=A0
>=20
> I need your suggestion on below implementation.
>=20
> packagegroup-protocol-base.bb
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> RDEPENDS_${PN}-protocol-base =3D "\
> package1 \
> package2 \
> "
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =C2=A0
> packagegroup-custom-base.bb
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> DESCRIPTION =3D "Custom base package group"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D
> "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0aaabfe698e0bcf8506ecda2f7b4f30
> 2"
> =C2=A0
> PR =3D "r0"
> =C2=A0
> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> =C2=A0
> inherit packagegroup
> =C2=A0
> PROVIDES =3D "${PACKAGES}"
> =C2=A0
> =C2=A0
> PACKAGES +=3D " \
> =C2=A0 =C2=A0 ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-
> protocolA", "${PN}-protocolA", "", d)} \
> =C2=A0 =C2=A0 ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-
> protocolB", "${PN}-protocolB", "", d)} \
> =C2=A0 =C2=A0 ....
> =C2=A0 =C2=A0 ....
> "
> =C2=A0
> RDEPENDS_${PN} =3D "\
> =C2=A0 =C2=A0 ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-
> protocolA", "${PN}-protocolA", "", d)} \
> =C2=A0 =C2=A0 ${@bb.utils.contains("DISTRO_FEATURES", "distro-feature-
> protocolB", "${PN}-protocolB", "", d)} \
> =C2=A0 =C2=A0 ....
> =C2=A0 =C2=A0 ....
> "
> =C2=A0
> RDEPENDS_${PN}-protocolA =3D "\
> packagegroup-protocol-base \
> package-3 \
> "
> =C2=A0
> RDEPENDS_${PN}-protocolB =3D "\
> packagegroup-protocol-base \
> package-4 \
> "
> =C2=A0
> .....
> .....
> =C2=A0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =C2=A0
> =C2=A0
> custom-image.bb
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =C2=A0
> ....
> ....
> =C2=A0
> IMAGE_INSTALL_append =3D " \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 packagegroup-custom-base \
> "
> ....
> ....
> =C2=A0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =C2=A0
> bitbake custom-image=C2=A0
> =C2=A0
> =C2=A0
> there is some common package which is required for both protocolA and
> ProtocolB.
> So i included packagegroup-protocol-base in both RDEPENDS.
> =C2=A0
> =C2=A0
> But suppose if a devce using both protocolA and ProtocolB.
> in that case there will be a duplication of "packagegroup-protocol-
> base" but i am not facing any build issue.
> =C2=A0
> can anyone please explain me why this behavior?
> Is it problematic during runtime on target ?
> Is there any problem during packaging ?
> Is it correct implementation or any suggestion will helpful for me.

The issue is that you could never build a package feed that could
support both configurations. Bitbake is being "clever" and swapping the
packagegroup recipe and packages between the two configurations behind
the scenes for you.

Ideally you'd not rely on that behaviour but unless you use package
feeds, it probably doesn't show a direct issue to you.

Cheers,

Richard

