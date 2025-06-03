Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41659C5AD49
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 19:45:06 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.4223.1748979897909998050
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 12:44:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Mlvp3dqb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a507e88b0aso2555061f8f.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 12:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1748979896; x=1749584696; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TGVhK/XoYqM6XPhGuy1MgFw+dejsC13I0jumD2QFDmc=;
        b=Mlvp3dqbK24bruaNChylZ6HKBM6SGojOpApWToXxlS8Nl4mJxFKIiVr0qCAdcVa6WF
         vh2q9gPCsGJg2dXM/0DPXqCm09q7H8D+9VrJUPGwLU0eVCgPVXwUdjtcY3lpwUFHrEl3
         W5Cdgcm2z4M1te7TdHhh9JHZ35pGuxHuOhCWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979896; x=1749584696;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TGVhK/XoYqM6XPhGuy1MgFw+dejsC13I0jumD2QFDmc=;
        b=MfM2WQpyKfHIkfWJv7e6GWJOew1FqjgyrmERwf6fhEXe7XFLPpWoxuAU4amzJILfpC
         sAjx3CJC4S3Eo53DB8AJOUNuQkvWaw36g3VlmQ47DRjzkOMZuuzOkg5ewGgZjWAEYAae
         GMiWWMKuBdATpo6y87zpoensucQmx8ldqo5xktmsAbDIiM9e6VD8v2d6rlSV7mMstXQX
         OWGGOcrtGTz0BfFQlu0cfjnSwB7biqjpEzqHe8IVKAXkMaM71RFYR5S7aFcd0+z6hE7M
         XVMX9JWdlltQ3estxj2NlBK1nNxjA+8QPwVQ9guJPVg4EqrugjI5r/yAGhcyegSc/87T
         XB/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXkqmD1gO2LshrqGHT3qiRwem3+dTYYOOkfkviObK3DIgxoZig6VzEZOl+wJ0hDIS5wSvV7@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YydJ4PnvnWQ37Di5eYebREIHBtkBzu5y/opjeeljEFutYnJ1M/D
	LIFdbj8jmlDQr9wLhGSfFWcbYq8KfZM9o125NzSq+vSNoxIGOkjp9etCinAwaijIZio=
X-Gm-Gg: ASbGncta50hEFcnHfNqEdn096TBG2IXIrn6/J0iab45GZvouaPw1aal4I8fWhtJPCnI
	FbfGpgfDJlgE3M+Ef8YqYQnTW9dXPQLCUMiLc8TBVFzPSFhaK9DIENlhC+sDB0FvvmqJ37U7bB4
	4qMfquZrjgP5wPWcz/ANoWyOl2opvBGqEuIko9qq4txEXRKyA9mkVKfOJ/LMa7FmytudY4zmvl9
	NU6vYxG+H5YTav335m8qy4DJ1S39DWP4EI2dC8+lKuvFqtCTtMDQEUa/VC/4Wi/jeVUuj4zOyoP
	UhQB7kVpYXKDcDSrAwpVxEhO4aD94Crm9mCFGyz6ThYIB0LEjTJ9c4N8Oi2FdPHe9213tnR1GhM
	XBODURSrEMnmQU1ZB3MyL2A1+EtDU58w657aNfYxE
X-Google-Smtp-Source: AGHT+IFb9WaB31WXZPW7anD/J95kudEZi/RfQOwhXwiFJPFBqNmdaWfG6X23qNj3wMt6FtDMVOTChw==
X-Received: by 2002:a05:6000:24c8:b0:3a4:eeb5:21cb with SMTP id ffacd0b85a97d-3a51d92e262mr58404f8f.26.1748979896246;
        Tue, 03 Jun 2025 12:44:56 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b15a:63cd:1104:eed0? ([2001:8b0:aba:5f3c:b15a:63cd:1104:eed0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4f009fdbasm18836184f8f.85.2025.06.03.12.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:44:55 -0700 (PDT)
Message-ID: <1f7282940782670021af9610eeac664737b07f14.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 4/4] fragments/qemu: add support for enabling sdl
 in qemu
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Tue, 03 Jun 2025 20:44:53 +0100
In-Reply-To: <20250603113558.3104618-4-alex.kanavin@gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
	 <20250603113558.3104618-4-alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 19:45:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13639

On Tue, 2025-06-03 at 13:35 +0200, Alexander Kanavin via lists.yoctoproject=
.org wrote:
> From: Alexander Kanavin <alex@linutronix.de>
>=20
> This has been the default in poky's local.conf template for
> a long time, but it's not enabled directly in poky distro.
> To allow better sstate reuse and a better user experience
> on a typical laptop (qemu will pop up a graphical window directly),
> let's add this fragment and enable it in official bitbake-setup
> configurations.
>=20
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
> =C2=A0meta/conf/fragments/qemu/enable-native-sdl.conf | 8 ++++++++
> =C2=A01 file changed, 8 insertions(+)
> =C2=A0create mode 100644 meta/conf/fragments/qemu/enable-native-sdl.conf
>=20
> diff --git a/meta/conf/fragments/qemu/enable-native-sdl.conf b/meta/conf/=
fragments/qemu/enable-native-sdl.conf
> new file mode 100644
> index 00000000000..21c1298171e
> --- /dev/null
> +++ b/meta/conf/fragments/qemu/enable-native-sdl.conf
> @@ -0,0 +1,8 @@
> +BB_CONF_FRAGMENT_SUMMARY =3D "Enable SDL support for direct graphical ou=
tput on the build host."
> +BB_CONF_FRAGMENT_DESCRIPTION =3D "By default qemu is built with a intern=
al VNC server \
> +support. To see graphical output from the guest system, one can use a VN=
C client to \
> +connect to it. This fragment enables Simple Directmedia Layer support, w=
hich allows \
> +seeing the graphical output from guest directly in a X/Wayland session o=
n the build host machine. \
> +"
> +
> +PACKAGECONFIG:append:pn-qemu-system-native =3D " sdl"

I have to wonder whether rather than making this a fragment, we should just=
 change the default...

Cheers,

Richard

