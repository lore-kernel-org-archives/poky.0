Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E538C4345F
	for <webhook@archiver.kernel.org>; Wed,  1 May 2024 03:20:57 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web11.4429.1714533648253488913
 for <poky@lists.yoctoproject.org>;
 Tue, 30 Apr 2024 20:20:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dZQwBsvz;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-23d4a841361so368202fac.2
        for <poky@lists.yoctoproject.org>; Tue, 30 Apr 2024 20:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714533647; x=1715138447; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BvZ9J4iNYcrEc/aATtPGGuJDiqL7e5hei5djhfheX4E=;
        b=dZQwBsvz1QAkXNswaK3LxRWsbOORAfgY8bHGygCzWCKf5dVfhZeCP7yz98mjvEjjGN
         /OR4h71o4EZP7nwWLko8HhmxPI52l0LBpd+VqZ9pkvavjJKUnqO8yh9OFzC3FZEyjk9q
         StDoEwDoIdb9bsAOBdOG10nl5+THquQt8e2DfcxmGv3uI3GNHNQFStOWy9kEkWJvrxcM
         cso/n/pB5lysYCmX09cHGckrzCJnqjeTXt0ztIo9vE/rU/Ef6el2/U29Fmbn89jd3J5D
         pxxOX16NcBhqGjbqovFeJzo8xePRufjElMnssvbVzGtoxMDVmVr6qBzvVnZb3lWocRLy
         fjrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714533647; x=1715138447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BvZ9J4iNYcrEc/aATtPGGuJDiqL7e5hei5djhfheX4E=;
        b=VelV2XN771aj7DlMM0QVQ7vM6eIyTlR5xIoEOfbvE1uI2XOdGp4/PSavowZKBAMtd4
         nWtlEkV5rCZsimVdpDwvKWYDKvLcze/E6oXnCYV50GhxbtY6ZX+1/vTDtTxvLuDeyp3h
         sZ+eWz89QpdFBiCJ340TxF0xyV4vzLZUOfJgTEKqXRr5HS9ThdQ95pzpdi9WOwfCcVMC
         Xp/zgitOTcgWYKsUMnV0GYqrPZYhKzNhQ/8V1XALnx+RM/CYL59wa71SZDHuBpPdoMVu
         /wBpph0dMXgdmfCX9yb3MdBmQ9iaNWWZOyGaAM0sPBWHteTM+O1aOTMnjfCQoJNaGFVO
         uGow==
X-Gm-Message-State: AOJu0YwFhfLNtj6Z1OymEIlN3oIHPse7kh7g4jheaqPPBLM/q6qxrTMJ
	O14K1wy2YW0VvffqpnXdZ+nU9BKr5H9AzJBzol/STbkw4ezRhwfe5nI0iMGVMZunj91IeAIAGUb
	Mrr+sX67N0SwJOMpJahP9IUCsLXw=
X-Google-Smtp-Source: AGHT+IE2KnjfV6ARShSRZXnxvUC7c85RbNilNchN88XEJoXn8NUDz/4TBm0dsiJGnuqXEbSb7Wmf6z6M3FUeG8aDhVU=
X-Received: by 2002:a05:6870:c6a1:b0:22e:13d7:53dc with SMTP id
 cv33-20020a056870c6a100b0022e13d753dcmr1514544oab.13.1714533647459; Tue, 30
 Apr 2024 20:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <3ddbb9d89bfe40648aa48ffd376c4f0a@boeing.com> <SL2P216MB127765CAD0578E6FEFE0D5D399192@SL2P216MB1277.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <SL2P216MB127765CAD0578E6FEFE0D5D399192@SL2P216MB1277.KORP216.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 Apr 2024 20:20:21 -0700
Message-ID: <CAMKF1srRpD26yy3iZpWJZrQUQ+zqeNYKUoKHkxL2tkx7Qoz1bw@mail.gmail.com>
Subject: Re: [poky][kirkstone][clang] Poky Clang Toolchain with Code Coverage Flags
To: hope.sneddon@outlook.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 01 May 2024 03:20:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13334

Not really clear what you are expecting here. usually layers are inert
so when you remove them the defaults from poky are picked up and the
options above become nops since they dont make much sense for setups
which do not use meta-clang, therefore successful builds without
meta-clang is not surprising.

I sense that you are trying to report that when you use meta-clang,
then the setup is not using clang compiler and the needed flags are
also not propagated. If thats the case, then I am hoping that
meta-clang is added to conf/bblayers.conf as well, otherwise bitbake
does not see the layer when parsing metadata and does not consider it
as part of the build.

On Tue, Apr 30, 2024 at 7:11=E2=80=AFPM Hope Sneddon via
lists.yoctoproject.org
<hope.sneddon=3Doutlook.com@lists.yoctoproject.org> wrote:
>
> Hi Poky Community,
>
> This is a separate issue as another issue uncovered from discussion item =
originally prompted by submission #13328 (Compiling Poky with Clang and Cla=
ng Coverage Flags).
>
> The issue is, when poky builds are intended to be compiled using the clan=
g/ LLVM toolchain with full code coverage via setting the following in loca=
l.conf (and including the meta-clang layer):
>
> TOOLCHAIN =3D "clang"
>
> TARGET_CPPFLAGS:prepend:class-target:toolchain-clang =3D "-fprofile-instr=
-generate -fcoverage-mapping "
>
> RUNTIME =3D "llvm"
>
> CLANGSDK =3D "1"
>
>
>
> While these scoped coverage compiler flags are required to ensure that an=
y packages that are non-clangable can fall back to compiling with GCC, buil=
ding either a single package (bash using command bitbake bash) or an image =
(using bitbake core-image-minimal) results in everything being successfully=
 compiled using GCC (i.e. clang never being deemed appropriate used as the =
compiler).
>
> More concerningly, bitbaking this example package/ image with the meta-cl=
ang layer completely deleted from the poky repo does not result in a failur=
e to build either item (seeming to suggest there is no dependency on meta-c=
lang content from the clang compiler/ toolchain).
>
> Please note all of the above has been done on the Poky Kirkstone distribu=
tion as Scarthgap was not officially released at the time of this testing (=
conducted April 26th-30th) and this was also to mitigate any possible patch=
 lag in meta-clang to align it with the Scarthgap release.
>
> Any guidance on rectifying this setup to ensure all possible packages are=
 successfully built as full code-coverage instrumented clang outputs would =
be much appreciated.
>
>
>
> Thank you,
>
> Hope
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13333): https://lists.yoctoproject.org/g/poky/message=
/13333
> Mute This Topic: https://lists.yoctoproject.org/mt/105834320/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

