Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.145245.1673804569778479001
 for <poky@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 09:42:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XTf4hyfp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id bs20so25481858wrb.3
        for <poky@lists.yoctoproject.org>; Sun, 15 Jan 2023 09:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JlnrHLxJlFoT5LzNT+8LGhr5M6kZanNQVU1sVbWRNEM=;
        b=XTf4hyfp40rrEUfx5V+FiYSYfDGXchwLDm8DQP772b7a9SOM6sTr8tDwDixnruzN/i
         VpvMu7aDeQyzowZd1WgsFq4fgsZ7ONG9olCMGYTpKDIQPkypI/OuNQHe1DUGiGNOfvVM
         HZ6ReBA+bulkjixP4QGeRVTmXjm1Cs3j2O2WA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JlnrHLxJlFoT5LzNT+8LGhr5M6kZanNQVU1sVbWRNEM=;
        b=EDiOP7AZpAHzsMJd5Dk0ctPB9m7ZbALRV3HtM+H/4k15ah30Lvb1VpKdlIba9mDO+Y
         X0zcXyx9hH1ChD87gqby4zxrV8puhU+Tpndkej05BKJDY7v6y3t83wTa+nC/6WoWVqLC
         pKJD1ybgWutDTv/w8udwEfEDmeI3N0cQVFTS7YTRvWcHxoqPrIXU/VX+4SW7YKzaGl78
         7tS7Qf70sKCfQlrEPBTTEl55x3MnRO6ftM24RYo6Od9HxiFf1aoJv5zm+nv2GbHUq8Ev
         vIQEpOKpLifuCCyZm5nuyRXki3IIen5jVsqo7mrd8038O5XTEi58pI6N5gm+DGKhwDMS
         /6Bw==
X-Gm-Message-State: AFqh2kqEhbMppkX58HPJQ5zvVrQ+bMSe/yY0skKCjmXtSVJMj3Ykhlcq
	IqeYJO+z5SPjUpPsChzU7nE0Zw==
X-Google-Smtp-Source: AMrXdXvzdf+OOck7JuzUyJkWvOGVZt1Q5ZUssQlNw4juX3P2aDvlxhmGEJGFZ6cJX861XXd6NYEhQg==
X-Received: by 2002:adf:fb88:0:b0:242:1809:7e17 with SMTP id a8-20020adffb88000000b0024218097e17mr50007168wrr.6.1673804568133;
        Sun, 15 Jan 2023 09:42:48 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c753:75fb:9583:e5c6? ([2001:8b0:aba:5f3c:c753:75fb:9583:e5c6])
        by smtp.gmail.com with ESMTPSA id o13-20020a5d670d000000b002bdc19f8e8asm12360776wru.79.2023.01.15.09.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 09:42:47 -0800 (PST)
Message-ID: <b11c46c750a94e615fc04cef9312138ebb42dd8f.camel@linuxfoundation.org>
Subject: Re: [PATCH] meta-yocto-bsp: Update the default kernel to 6.1
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, poky@lists.yoctoproject.org, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Sun, 15 Jan 2023 17:42:46 +0000
In-Reply-To: <Y8LAL21LjZGEk5ii@pek-khao-d2>
References: <20230112113153.2639207-1-kexin.hao@windriver.com>
	 <CADkTA4M2nFS0v3+qB1uW6ueQDeCzO8PPJ2RM1cm=Sm4_Jgr4Pg@mail.gmail.com>
	 <ad7fbb932e7032df977927908f4e4ed90d071260.camel@linuxfoundation.org>
	 <Y8LAL21LjZGEk5ii@pek-khao-d2>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2023-01-14 at 22:46 +0800, Kevin Hao wrote:
> On Sat, Jan 14, 2023 at 02:08:28PM +0000, Richard Purdie wrote:
> > CAUTION: This email comes from a non Wind River email account!
> > Do not click links or open attachments unless you recognize the sender =
and know the content is safe.
> >=20
> > On Thu, 2023-01-12 at 09:14 -0500, Bruce Ashfield wrote:
> > > Thanks Kevin,
> > >=20
> > > This looks good to me.
> > >=20
> > > I'll start the removal of 5.19 shortly (once this merges).
> >=20
> > Thanks for the update!
> >=20
> > This did merge but afterwards, a warning seems to have cropped up:
> >=20
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/62/builds/6530
> >=20
> > WARNING: linux-yocto-6.1.3+gitAUTOINC+c56c1ed8bd_872afe79c5-r0 do_kerne=
l_configcheck: [kernel config]: This BSP contains fragments with warnings:
> > [INFO]: the following symbols were not found in the active configuratio=
n:
> >      - CONFIG_OCTEON_USB
>=20
> This is a known issue. The fix has already been merged into yocto-kernel-=
cache and the
> warning will disappear after Bruce bump the SRCREV_meta.

Great, thanks!

Cheers,

Richard
