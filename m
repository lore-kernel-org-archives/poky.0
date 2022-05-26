Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.17648.1653557560175764918
 for <poky@lists.yoctoproject.org>;
 Thu, 26 May 2022 02:32:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=M9Fs84jF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 67-20020a1c1946000000b00397382b44f4so751057wmz.2
        for <poky@lists.yoctoproject.org>; Thu, 26 May 2022 02:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=xTZ4Gq+0qHUOnYYVX/vuDC+okhRSyok4hxLLejVA1yI=;
        b=M9Fs84jFD6p7e4X9RM5IQ4VAFKDEOD25W3iPni6dRU9LmYvmJBPiu2no+MOq4j6NfJ
         qw+6OZLIQyyOVbd8VhXD8NS/QFyDU4QrX5ynGbqI4PXWf55SvEV1CrKI8vA+9wKt4hSJ
         0soxV58mX/1lnmuQmf7cUb92v8m6jGKtD4Ruw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=xTZ4Gq+0qHUOnYYVX/vuDC+okhRSyok4hxLLejVA1yI=;
        b=J2tExf7YkM0tg+ZabkIRqtAnsS5ZMx7zHJW4WOS87hrvp6zQPsH7XlCTBZgaXbL0NQ
         ZH2c0sCu80LkV0/xgml1KdHmcbX6cTRFmOyL0mEUD6BmMeI6pjKNAretCDx7tg7+fCxX
         sf6i7dY8xZZBAgF/9Vy6wBP8k6bN+jZdSSMWquDj8EIftPm+dV0MJhWrU20BlvYiJejx
         wrUTaAo2dvNbGc37Kx8JJwCiXyOWTQK3dC27t1SCBbzd+30ElL42ou6mFEBIRcDf4p7R
         Aq1Qx15VJ6gH+DxnSJnMuJUtIx+pE17mmAIVz95vC9XOnZrq8fNDZnT/zOcOYmQECU6y
         agyw==
X-Gm-Message-State: AOAM5336q5j7emDIlNrbScRI2P1EGNLlXwnYQLX62gszI8PegMRdmRsW
	yl4BOQ0axdWYLGv9vQPJOAkcUg==
X-Google-Smtp-Source: ABdhPJxHmwiD3kgFVI4aHaxJYBMwNgYLdfXLOzp5lp9SaYamwITVx6VOIgE/1T1nfQHn40TLCHbyGg==
X-Received: by 2002:a05:600c:1e04:b0:397:80cf:8109 with SMTP id ay4-20020a05600c1e0400b0039780cf8109mr742694wmb.176.1653557558457;
        Thu, 26 May 2022 02:32:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f4a4:7b51:db3c:e8cb? ([2001:8b0:aba:5f3c:f4a4:7b51:db3c:e8cb])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c4ec900b0039747cf8354sm1354771wmq.39.2022.05.26.02.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 02:32:37 -0700 (PDT)
Message-ID: <53da9da55a7b0e4c09684fc0b5e13b54a6459d7c.camel@linuxfoundation.org>
Subject: Re: [poky] grub config does not match kernel image name after apt upgrade
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Daniel Squires <dan@engineeredarts.co.uk>, poky@lists.yoctoproject.org
Date: Thu, 26 May 2022 10:32:36 +0100
In-Reply-To: <J0hn.1653555042033123311.4KcT@lists.yoctoproject.org>
References: <J0hn.1653555042033123311.4KcT@lists.yoctoproject.org>
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2022-05-26 at 01:50 -0700, Daniel Squires wrote:
> In our custom x86 image, it runs fine after initial deploy, but if we
> then apt update && apt upgrade and receive a new kernel the installed
> kernel name does not match that in the grub configuration and thus
> boot fails if not manually corrected. I don't know if this is a mis-
> configuration in our build or a bug upstream. any ideas?
>=20
> yocto:~$ cat /boot/EFI/BOOT/grub.cfg =C2=A0
> serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1=
=20
> default=3Dboot=20
> timeout=3D5=20
> menuentry 'boot'{=20
> linux /bzImage root=3DPARTUUID=3D52cb2dd8-ef93-4f4a-8135-1e3326f181ac
> rootwait rootfstype=3Dext4 console=3DttyS0,115200 console=3Dtty0=20
> }
>=20
> yocto:/boot$ ls -lht=20
> -rwxr-xr-x =C2=A0=C2=A0=C2=A01 root =C2=A0=C2=A0=C2=A0=C2=A0root =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A09.1M Apr 28 13:26 bzImage-
> 5.15.36-yocto-standard=20
> -rwxr-xr-x =C2=A0=C2=A0=C2=A01 root =C2=A0=C2=A0=C2=A0=C2=A0root =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A09.1M Feb 15 14:19 bzImage-
> 5.15.22-yocto-standard=20
> drwxr-xr-x =C2=A0=C2=A0=C2=A03 root =C2=A0=C2=A0=C2=A0=C2=A0root =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A02.0K Apr =C2=A05 =C2=A02011 EFI

On target package upgrades are a best effort sitution and not something
we directly test. THe kernel in particular is tricky as everyone
configured and uses it differently, it varies even by image type. It
sounds like you don't have any configuration in the kernel packages to
adapt to your boot situation and allow them to upgrade grub so that is
the piece you'd need to add. We'd welcome contributions back if it can
be done in a generic way.

Cheers,

Richard
