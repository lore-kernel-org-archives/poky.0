Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BA14C19F32
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 02:42:02 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web10.44680.1740969717889153121
 for <poky@lists.yoctoproject.org>;
 Sun, 02 Mar 2025 18:41:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c2wrzjml;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2b199bb8af9so3374883fac.1
        for <poky@lists.yoctoproject.org>; Sun, 02 Mar 2025 18:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740969717; x=1741574517; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p2BJO5S25/H93UavBZOpMBVs/R6XLz8M16ryLv0rkRI=;
        b=c2wrzjmlstOx8CIwgy+rS/xt9vcECcJjK2evIIP9ZdZhDp1kvfjt6QJec85dXBqVdD
         WB5i0vSbaf7qSPDiYL0eBIMJFu8E1Q1odiXHYsYys/U/QAN2vYYbZfLf56+gxVSIpkfz
         8ZwiUHu5RqwMvotflWg1SDg0rbkjayL+1pLwI7y2VRHZ88Pxr95Si6ORRUSFdnlZM8D9
         TEwDDvbIzpNoSjDVwm1KxdlX1uaYTN4iE0FUlWYSR6AW7+OBueW0A6GMXaSprMMZ4Awt
         BMQKSI1wVHKv7InTygte9pYuQ0fn5MH1t8Uii3LIaGVuLJDlF9nW3/h17xC6Y7c7xJVD
         L9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740969717; x=1741574517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p2BJO5S25/H93UavBZOpMBVs/R6XLz8M16ryLv0rkRI=;
        b=MfVhZZbkhZmrA92khDp4/aUfX/F5jTyftzPyLRJ+U08fl6DDHEeXULKOOUF99mcG9p
         plvNEqzQFAel+a6F/ze6RnTEzQU1bnQ4tPMG9mjs06nIJ14JCDlsPyW0pCKY8tmGMtZ7
         4NW2uP1QuJqGXp3NZdZ/KhDKBhB0Kq3WGkrML/CjUVsFumUeXs0jCpgc+hdy4bDCL3Jl
         TF6AhL05PqIKauaxWNw2fhHI5gA/IVbyb4MzGsl+/kjLzFuPm5/SqnLXY9w4kPhQdUIh
         XILJPTIYPXr9OPFgqFuDKQphciwaBZLcPDKQUsbuK5iwCWiOaOnQ5F8ucCZtx/dSZxjY
         X3Lw==
X-Gm-Message-State: AOJu0YwXcCPQ3zWwoRfp/Id7agUuavQ7eQdK/iSv0A/N7g1ztHoUL2Hb
	1+oMZLMNYz5dwjpSPzs9ojpQm5nsLpZZnxt7jrk251+8XAM0enG3l+QN3FQ7kyiRNfdk5W/qbLo
	ZbKem/3lIjx0Zzuk1Ik+m+IY56gM=
X-Gm-Gg: ASbGnctSTmWeOrIBbGBlO7XqFynWoKMxtbWgSZade9sB12YoFtBC9XQy/r9RZtDEdHS
	c1yFst255GMR6RvkKjauXvyjC1BdhVY/g4rgIu+2DsOgVRTMkOZS+d87MXAwg/wvj7+Le5AnipC
	O++VjaKIhslkRpDhczDoCYZCzxwU7dPimq1nGXCGET
X-Google-Smtp-Source: AGHT+IH2nxjkepa1ZouwT0xXSFw2BLXCaQn3mp76ZKpI4RzHiHc82nUvzF1gp0c0N2Z4dFzPkjIKCHOoxKjq4DRlbmQ=
X-Received: by 2002:a05:6870:6c1a:b0:2b8:6e0d:6d83 with SMTP id
 586e51a60fabf-2c1557f01a3mr10077268fac.16.1740969717101; Sun, 02 Mar 2025
 18:41:57 -0800 (PST)
MIME-Version: 1.0
References: <GV1P121MB010305E634671FD55A8CFA3BF5CE2@GV1P121MB0103.EURP121.PROD.OUTLOOK.COM>
In-Reply-To: <GV1P121MB010305E634671FD55A8CFA3BF5CE2@GV1P121MB0103.EURP121.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 2 Mar 2025 18:41:31 -0800
X-Gm-Features: AQ5f1Jq-LscPWvmN1dNnNHz__uHNEbwDF2gCGz1fLKl0eqX-04k_btoHgycGWeI
Message-ID: <CAMKF1srVsHecffS9gkyk_PzvqiZXQNzQ1iXOcsXFDWe6gVDL1g@mail.gmail.com>
Subject: Re: [poky] Opt out of email list
To: suneel.mekala@signify.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 03 Mar 2025 02:42:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13550

you can do it by login into https://lists.yoctoproject.org/groups
and choose the mailing lists you want to unsubscribe and then Use the
'Action' button to choose unsubscribe.

On Sat, Mar 1, 2025 at 11:04=E2=80=AFPM Suneel Kumar Mekala via
lists.yoctoproject.org
<suneel.mekala=3Dsignify.com@lists.yoctoproject.org> wrote:
>
> Classified
>
>
> Hi ,
>
> I am no longer interested in the emails and would like to opt out of it.
>
> Please do the needful.
>
> Regards,
> Suneel.
>
> ________________________________
> The information contained in this email may be confidential and/or legall=
y protected under applicable law. The message is intended solely for the ad=
dressee(s). If you are not the intended recipient, you are hereby notified =
that any use, forwarding, dissemination, or reproduction of this email is s=
trictly prohibited and may be unlawful. If you are not the intended recipie=
nt, please contact the sender by return e-mail and destroy all copies of th=
e original email.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13549): https://lists.yoctoproject.org/g/poky/message=
/13549
> Mute This Topic: https://lists.yoctoproject.org/mt/111466508/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

