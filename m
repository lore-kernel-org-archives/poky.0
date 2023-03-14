Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.646.1678814750915517352
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Mar 2023 10:25:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=6596oWPz;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.54, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f54.google.com with SMTP id da10so65186712edb.3
        for <poky@lists.yoctoproject.org>; Tue, 14 Mar 2023 10:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112; t=1678814749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S2Se3lTL2Xq4KV2QOM0Y+r479WwxyKqGqSgE+FdsM6A=;
        b=6596oWPzZQoVB1j7mZ/6tB0OEtluln1KPtcEjF6qicGpPTrqrBSdSOz2PtZHAaFpwj
         udWOobI7/CvFi7RIlLECJKZEqL4bFqRaxhECJG04vx54xF9uPLZiTMTl9bQczCk4VLWx
         wrRCcWTtd9xMnke3CQqlMqr9qJqP/IGVw91oSfyEnysHiY4+jMYDIoE3wg85qm87YHYx
         O1hO+LfpRIcpmAFBlAwiP41VJgqZNiTr+Aa7nbIT7C/KGFq5HFa9Vt2WXG/FVyMocAWf
         N+mod+YSGaqUSqKwtC2dubJVFVmdpV429jexcwhC90Llti+pxH70q0Zdlc7bp0dVod+k
         amCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678814749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S2Se3lTL2Xq4KV2QOM0Y+r479WwxyKqGqSgE+FdsM6A=;
        b=F1QKUrlXrEpFCvHVthJD4Nsx3LFEHeFyxcwU04GziUmrg6hFDEZuDaAtsdIENJx2zE
         vlWPmDucjISJUbvf4nMW8w0vOHyAhdsJ1BINqrocvrUjN94/E4LHltHigmpuhGc+PS8o
         Py8kwI6/kiBscvD82W5RVg2HuybpodyuKk2yJSwa33D1XLuMrKeOLa3y/c6OYIWMnTkl
         64AKGqHlPgE3lxY16DjF0CVVOo7KtIJq4RNDY029lFuEVePJyWfDlT2qD+n1BK9FJU17
         EOOS/YpbijsV10GMxY2S4RZfzmSvdbMtXZPJly7SHcuWxafVFgBH6DfBR9WjngPCDK2K
         4imA==
X-Gm-Message-State: AO0yUKV6PeFcS68iDbBjiR1F9T4IQFmrsosnyyeWzEjNc5mUDSNQdcz6
	ZvmnCVpF/253eMH3zgckhGrPqM6L8l86V9jbtHZcNQ==
X-Google-Smtp-Source: AK7set880KmQEzt7q5onPsqTwWIeW4IjhhzZTxkNA35XeH0U0WpO0DANfMgQ11c4dLNuW9e2ajq17yd8pHuLdpuaKOM=
X-Received: by 2002:a50:8704:0:b0:4fa:794a:c0cc with SMTP id
 i4-20020a508704000000b004fa794ac0ccmr5778636edb.2.1678814749125; Tue, 14 Mar
 2023 10:25:49 -0700 (PDT)
MIME-Version: 1.0
References: <MRZP264MB1544487A07884D37D9CFD78E93BE9@MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <MRZP264MB1544487A07884D37D9CFD78E93BE9@MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Tue, 14 Mar 2023 07:25:38 -1000
Message-ID: <CAOSpxdam2mGY6BgHwdSMOdPQVfMWJfD7i3zd3uhUUKMraFKUKw@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][langdale][connman] Partial integration of CVE-2022-32293 fixes
To: "VAUTRIN Emmanuel (Canal Plus Prestataire)" <Emmanuel.VAUTRIN@cpexterne.org>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, Khem Raj <raj.khem@gmail.com>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 14, 2023 at 7:16=E2=80=AFAM VAUTRIN Emmanuel (Canal Plus
Prestataire) <Emmanuel.VAUTRIN@cpexterne.org> wrote:

> I have noticed that 2 patches fixing CVE-2022-32293 have been backported =
on meta/recipes-connectivity/connman/connman_1.41.bb (b33cf2d113d0 "connman=
: Backports for security fixes")
> Unfortunately, the last one (CVE-2022-32293_p2.patch) brings some regress=
ions, which have been fixed by  e6523511d736 ("wispr: Fix context refcounti=
ng in wispr_portal_request_portal()"). Can you integrate this commit as pat=
ch?

Hi Emmanuel,

Thanks for bringing this to my attention.

In the future please send this sort of thing to the openembedded-core
mailing list.  It would also be good to copy the author of the patch
you are commenting on. (I've cc'd  the openembedded-core list as wel
as Khem)

Would you be willing to send a patch to the openembedded-core list
that implements this regression fix?

Thanks!

Steve
