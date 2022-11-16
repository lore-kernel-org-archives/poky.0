Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.36.1668618519632959534
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Nov 2022 09:08:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=USt3kc3l;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id k8so30987412wrh.1
        for <poky@lists.yoctoproject.org>; Wed, 16 Nov 2022 09:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pHgcSXxBPOujAqGAdN9FdxC/6bRHoP5NWODWGDISRcI=;
        b=USt3kc3lNQUKbGe8niKWH/V5AN1lGNKzBIaG48Gt+nyBMo+cLDfI5vwtc7wKgfXEnq
         Yy2VCOS2zmCAP13Y/hL3bYIZKM5AVIEQBXk+RE04SIEq9qW4JSxzWsUbRJp4BSEBAJ6u
         UtdPzu/VTT2NhlGF8tVPxo81yqH8abmLiuzJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pHgcSXxBPOujAqGAdN9FdxC/6bRHoP5NWODWGDISRcI=;
        b=ixsfrX7AnpO+X4zoQDZ1KjOjnvmiNT7St1V9F8P20OQSUASSMFzsxEtNVW+PMPZexN
         MbEB2IICn/vwxa9/4dqO0pR8GeA5W1v3OaiFdMSjQ3TS6H5Q6WfaI/PQEwtB5rbn58sZ
         MjmjetVUR1ekT0pCFxSTeqLtWe34nL6v9M+uPWss5AabJ7gfePBcQ6EpDGB9+KmPkuTY
         GgmQiOjZVwfRR3PSbPiUaNKfU23EPU6Q/v1ZoBX6yGVh9/94v71WjVjjyehO+pvMZugd
         SzhQg6q7No3os4oLiP6XTa25WaxhjGZed84VV2B1SiL93Hmo70nNtePQVkS4QAwRzxn3
         bEng==
X-Gm-Message-State: ANoB5pludzF1ZEhA9t9G9N0hwC3M60TeyU1H2FfwTSdIi3SzCGDaQsgI
	eyxDxxdwrC6nrXqDxaqhrfJ1GA==
X-Google-Smtp-Source: AA0mqf7nJKPzCwQG8ILhcSUM6Ss1NUCiz/NPTjxNfm2znCTEwBCtXiTKovgl7Qrb57ogm7aqe6l4Ew==
X-Received: by 2002:adf:f64e:0:b0:236:76ab:3e01 with SMTP id x14-20020adff64e000000b0023676ab3e01mr13589673wrp.107.1668618517995;
        Wed, 16 Nov 2022 09:08:37 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:6779:84d:e47:6803? ([2001:8b0:aba:5f3c:6779:84d:e47:6803])
        by smtp.gmail.com with ESMTPSA id e5-20020a05600c13c500b003cfb7c02542sm2436916wmg.11.2022.11.16.09.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 09:08:37 -0800 (PST)
Message-ID: <4f229954ab406f98ef0589105779539ba562295f.camel@linuxfoundation.org>
Subject: Re: [poky] Replace a (not working) download by adding a local file as mirror?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve <star@gmx.li>, poky@lists.yoctoproject.org
Date: Wed, 16 Nov 2022 17:08:35 +0000
In-Reply-To: <61e5b4c7-9f15-1ea2-49d6-8b484bc9a461@gmx.li>
References: 
	<CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
	 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
	 <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
	 <61e5b4c7-9f15-1ea2-49d6-8b484bc9a461@gmx.li>
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2022-11-16 at 17:39 +0100, Steve wrote:
> Hi, maybe someone can help, although my problem occurs outside poky but
> in Yocto general. But I think solution might be same.
> I do have a problem with a download (see below the exact failure). I am
> messing around with that for quite a while and couldn't find a solution.
> I am wondering if I can put this file in a recipe as a local file:
>=20
> FILESEXTRAPATH:prepend :=3D "${THISDIR}/files/:"
>=20
> after download that file externally in browser (that works)
> Not sure will that work or do I have to add a real local mirror?
>=20
>=20
> That happens while building tensorflow:
> I don't find a solution to fix. No problem to download that file:
> https://mirror.bazel.build/openjdk/azul-zulu11.50.19-ca-jdk11.0.12/zulu11=
.50.19-ca-jdk11.0.12-linux_x64.tar.gz
> in my browser.
> I found some hints to the certification error but nothing helped.
> I am running a VM Ubuntu 20.04.
>=20

Normally you'd place the file into DL_DIR and it should then work from
there?

Cheers,

Richard

