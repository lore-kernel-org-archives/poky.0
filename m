Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC1E6C3600C
	for <webhook@archiver.kernel.org>; Mon, 31 Mar 2025 08:30:29 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.47314.1743409821492537713
 for <poky@lists.yoctoproject.org>;
 Mon, 31 Mar 2025 01:30:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=agwQEyhK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39c1efbefc6so108339f8f.1
        for <poky@lists.yoctoproject.org>; Mon, 31 Mar 2025 01:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1743409820; x=1744014620; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FLH5fcZChPClSSsz/FsuqxkCImO1pwXeXSXZrlFbZt8=;
        b=agwQEyhKTETs8ud4Ybdult0uqZ6bTKl3FQbSiURGXTttULoL5fp/qXABFoRMQtPSp4
         JEELHtn95JL28zPFVBB7K/s2DeG4G+xI/e/VfrqnYKy8QE66Grb/ZwwrFF/oJryGyARc
         Bb2BshdBFQ0TFpMbVv5+IceV7+UtJ9j6d5Tmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743409820; x=1744014620;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FLH5fcZChPClSSsz/FsuqxkCImO1pwXeXSXZrlFbZt8=;
        b=AnxaXx0VHSM27Ob/rFIKEAAMQbHI+vY+ND0HwNC26s+zpClgccnEt24H3cKMOXOr65
         Uqk9II+uM4Lsqj+kCmE5p1Mrutg+ZmwKlmlwtKdCXRWRHd4gNPw1CZ4lThe73WnUu8E+
         aoz+6NEvb3NUGSjiTo63w+rGSQZbJBDHJOStB+OFFdE0+/paIZa+k40vUmCx3OM3gYV4
         n+fTCeSwR4N36NVJwjmsZAZTWBA/jdVK5XdshykMFR8m8x71VO0cLfQvZTSipGOCsc6W
         HrYD78xS1JxqWkvOLryr/aZ4Sgu/IxEOvZTeeW3uHFYL04+bwEzJrOfJJ0ltmOhtwuFY
         B4+Q==
X-Gm-Message-State: AOJu0YwDFyC0rRntrBDSXtcqNJs07xdRgl0KnmEzoGLzaTrgEm9qpUFB
	Rkh7y0bNB4MCG3KcHlQfNg1S85/mAAQurqtg9gFRKyc3PJIPoLI4qQV+EzEP2LU=
X-Gm-Gg: ASbGncvRBSWA8B/euR0G4nu9DsAotXeqimMJeMeVuTI2lDUs6Ho2TtmEWUHEBl7GZ/c
	1VJOhaet5t3QXz/BIHdheWnNwobeRgc4F/MFcBlzmpxS0ZN3QB3QNywZ3LQv1EUB3uAetaHdLJZ
	KOLZXCCTptI4XoykDK54KbsXTehZbdurMGNA9KNEWW3VQ1ZQpWvE2s2gBcFAodTJhg16oWIYP4j
	OIyVnvBhgOjiXotPx+ZeZXhntZ4bK2F65bPP/96/USkj6p5vz7wpidrfCg3vsrmuGSqAv0SMAot
	Vo+H66JUcZ3BNonAi7C21c8zJNjlUqRq9uQLKYmE7bTbtDCXprGHwg3beC7ZAEgwzyeNvek+ZQn
	xZ4uOR2WTTtTMv+f/Rk25P1mhI2iQwGcmkw==
X-Google-Smtp-Source: AGHT+IHpNqAbFLUAzU4IZazbAqGuyU2ePeqHiD9y8HovPChRIxSK28qznarOWGcTYs0iHxBR60Flpw==
X-Received: by 2002:a5d:64c9:0:b0:39c:119f:27c4 with SMTP id ffacd0b85a97d-39c120e3b98mr4903812f8f.30.1743409819748;
        Mon, 31 Mar 2025 01:30:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2f01:de37:feeb:500c? ([2001:8b0:aba:5f3c:2f01:de37:feeb:500c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b66b015sm10952236f8f.54.2025.03.31.01.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 01:30:18 -0700 (PDT)
Message-ID: <d804dd58cc09c11205508d6a335df5f835bc14cb.camel@linuxfoundation.org>
Subject: Re: [poky][PATCH] poky-tiny: correct override syntax in
 poky-tiny.conf
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: raj.khem@gmail.com, peter.marko@siemens.com
Cc: poky@lists.yoctoproject.org
Date: Mon, 31 Mar 2025 09:30:18 +0100
In-Reply-To: <CAMKF1srBGW11rYvEyZDmHbG=VQJ-X4xmA3KpBBNY9LBea_+cuw@mail.gmail.com>
References: <20250328193233.21309-1-peter.marko@siemens.com>
	 <CAMKF1srBGW11rYvEyZDmHbG=VQJ-X4xmA3KpBBNY9LBea_+cuw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 31 Mar 2025 08:30:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13585

On Fri, 2025-03-28 at 13:55 -0700, Khem Raj via lists.yoctoproject.org
wrote:
> On Fri, Mar 28, 2025 at 12:33=E2=80=AFPM Peter Marko via
> lists.yoctoproject.org
> <peter.marko=3Dsiemens.com@lists.yoctoproject.org> wrote:
> >=20
> > From: Peter Marko <peter.marko@siemens.com>
> >=20
> > it's a comment but should be anyway migrated to new override syntax
> >=20
> > Signed-off-by: Peter Marko <peter.marko@siemens.com>
> > ---
> > =C2=A0meta-poky/conf/distro/poky-tiny.conf | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-
> > poky/conf/distro/poky-tiny.conf
> > index 20c13e6f60..075702a32c 100644
> > --- a/meta-poky/conf/distro/poky-tiny.conf
> > +++ b/meta-poky/conf/distro/poky-tiny.conf
> > @@ -39,7 +39,7 @@ TCLIBC =3D "musl"
> > =C2=A0FULL_OPTIMIZATION =3D "-Os"
> >=20
> > =C2=A0# FIXME: consider adding a new "tiny" feature
>=20
> Is this comment still valid, I wonder. I know its in there from day 1
> of this file.

I merged a different version of this which just removes the line and
the comment.

Cheers,

Richard

