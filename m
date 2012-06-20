Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07717E01423
	for <poky@yoctoproject.org>; Tue, 19 Jun 2012 22:48:01 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2836529eek.35
	for <poky@yoctoproject.org>; Tue, 19 Jun 2012 22:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=PAvYJo0c38gVDUS1Rbb6u9PUOI6iT5Gt5fUcTCP7eCo=;
	b=JYqk3Cno107z5gE83uNjbj/yswLe6wHS+hW4bjxkr3v99G795KYfHxvW64CMrb0PWF
	7wMgi++uVqUJRMbZqfoMfpb3EdieMY0u5Rw+IpCqd8nJI5pU5eoHoRkFw/AKpqV8hKEQ
	qy9DHTM2D0QiI1WKXk7jnMSuWvlf3RO92aCM2fdN+zFj5icvH+FjW3zoYT0yXBNMO+W7
	X7PUzAnTDjcCrxBlgZcP6aKy7HSSIuqJ1WaujQnw6vIbEc1NS0CgJe4UA0S784fENEhj
	XXNlL6BlC/O4m24tE5+wCevmRkiHoz3c039sk5BCu7Or61xhQv/Xg+Q3A8e4DLomBWvg
	Kyew==
Received: by 10.14.37.76 with SMTP id x52mr5017183eea.102.1340171280343; Tue,
	19 Jun 2012 22:48:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Tue, 19 Jun 2012 22:47:29 -0700 (PDT)
In-Reply-To: <9F0B1281-3CC3-4D4B-847E-F1ABF5B32E8A@gmail.com>
References: <9F0B1281-3CC3-4D4B-847E-F1ABF5B32E8A@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Jun 2012 22:47:29 -0700
Message-ID: <CAMKF1somko6ZpxQB5uTCryhYgGmvDHQgPFFbXQm9nfMRqe_=PA@mail.gmail.com>
To: jojo <rjiejie@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Help with configuring Yocto with an external toolchain except "csl"
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jun 2012 05:48:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 19, 2012 at 2:06 AM, jojo <rjiejie@gmail.com> wrote:
> @all,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0I google some information about this topic and=
 then,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0i found the case is that jut support "CodeSour=
cery labs" toolchain.
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0I think my external toolchain is not standard =
of directory like "tcmode-externl-csl".
> =C2=A0 =C2=A0 =C2=A0 =C2=A0I can use "buildroot" to use this toolchian th=
at just use three variables following :
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BR2_TOOLCHAIN_EXTE=
RNAL_PREFIX
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BR2_TOOLCHAIN_EXTE=
RNAL_PATH
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BR2_TOOLCHAIN_EXTE=
RNAL_SYSROOT_PATH
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0so there are some solution in poky ? thanks fo=
r you attention :)

use TCMODE=3D"external-sourcery"
and mention csl binary toolchain install tree using EXTERNAL_TOOLCHAIN

in your local.conf


>> B.R.
> -- jojo
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

