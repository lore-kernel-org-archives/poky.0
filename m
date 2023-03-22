Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.48673.1679503292212931225
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 09:41:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=COtJHOrX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id n19so1684270wms.0
        for <poky@lists.yoctoproject.org>; Wed, 22 Mar 2023 09:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1679503290;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UPKfENQQ3OEaxcPbvaP7G164TY5BbKTIvRu8iDjQze0=;
        b=COtJHOrXllBo0LxDJo/TwVeZQ+kNluGG+sZKT0Hqiv6GYUA1BgWWCMSqRsad/2wXjs
         bzsovcKJJGp9x8DN2O5Rrpjqf5hrn1E+l4VAmVO/ffKopT8QndFK5WteUpD8fHUKY2Nf
         fR41yKC864r3lkRPRGBoMBhc+rI8qa7wKxBGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679503290;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UPKfENQQ3OEaxcPbvaP7G164TY5BbKTIvRu8iDjQze0=;
        b=wCDv7jAxi1nhit3bYNUsxBZT8Rk2E19cGl3s2r/tgbfsWpZp0tgyZAjBTF7HdwsU0u
         z52c9ujEmabD0SCjCWvEjYz4tWRbiH+4WEDu+jG8Fp1+9tWKq5aKSDfCSqjkxuCghDAe
         ajWwh2h7Bwa1KBi+qMiloLqJnFnPg9DZXItWCviMVQSaO0LukqpByr1j6QlldOOnNk9J
         nt+ZIU5HURIOaqQJSRotvAH7onbUd/rrLIA4OvW3htlThw4QQPnj/AabNSrgRrcLK4zx
         D6j92BB2k87b9ISwMD3Mh1bqWRB8ce6Scg21Iky7MILhbD7Cvky+sDXjtkT7HgD3zNVg
         2jzA==
X-Gm-Message-State: AO0yUKVxsV3eXvY8lMx4LUfZD/WTXR+fHYnre3MVa50AXXFyNYCuKEdr
	ceaddRfK+vz4e/f0vi14GqajeA==
X-Google-Smtp-Source: AK7set+mSgpLA9116VUccZ6Wg+Xpw+UEFK4S1ci4UireB90gJclmNk3KhdsPBXZkoMSBSo/+MmJ1Kw==
X-Received: by 2002:a05:600c:2217:b0:3ed:b048:73f4 with SMTP id z23-20020a05600c221700b003edb04873f4mr169613wml.5.1679503290493;
        Wed, 22 Mar 2023 09:41:30 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:fb64:5f49:21ba:a392? ([2001:8b0:aba:5f3c:fb64:5f49:21ba:a392])
        by smtp.gmail.com with ESMTPSA id z9-20020a05600c0a0900b003ede04deb14sm11603709wmp.48.2023.03.22.09.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 09:41:30 -0700 (PDT)
Message-ID: <a3c3423e4a21b40e3ac05f04daace7dd1747554e.camel@linuxfoundation.org>
Subject: Re: [poky] Is the "argp" distro feature still used?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, "poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Cc: Julien Delbergue <jdelbe.foss@gmail.com>
Date: Wed, 22 Mar 2023 16:41:29 +0000
In-Reply-To: <c0eea124-5d1c-ce30-1142-8c3ef0dd8fcc@bootlin.com>
References: <c0eea124-5d1c-ce30-1142-8c3ef0dd8fcc@bootlin.com>
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2023-03-22 at 17:34 +0100, Michael Opdenacker via
lists.yoctoproject.org wrote:
> Greetings,
>=20
> Following a question on=20
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14515#c5, I'm=20
> wondering whether "argp" is still in use.
>=20
> Yes, it's still defined in Poky:
> meta/conf/distro/include/default-distrovars.inc:DISTRO_FEATURES_DEFAULT=
=20
> ?=3D "acl alsa argp bluetooth debuginfod ext2 ipv4 ipv6 largefile pcmcia=
=20
> usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 vfat seccomp"
>=20
> ... but I see no recipe and no class referring to it (if I checked=20
> correctly), neither in Poky nor in meta-oe.

It is obsolete, we can remove it.

Cheers,

Richard
