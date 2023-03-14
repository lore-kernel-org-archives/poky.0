Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.637.1678814729809496111
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Mar 2023 10:25:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lLgLttz8;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id o8so1008673lfo.0
        for <poky@lists.yoctoproject.org>; Tue, 14 Mar 2023 10:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678814728;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m1b/ue7l1cwbLNdkOIxcIWDTZVX5TpOyg0g8yNS/54I=;
        b=lLgLttz8CbC4eeSIN8jAzb8wmHh0GwD4830FXvIOBO5q8xABOltIC+TUvSNOh0juDx
         2xZc9n82sI1ZisMRtxnCZ4kBkgFl8dT5cuHh5et6dc9tKut9DNULdU8SFcD0SG6kvvz7
         5p1r/w74rlmSP4NxbkoLQeelKg0V36kifkPVgue+E/Q+kxbMrQwlVi1GJrEfiiDIRZr8
         96PsdVgGo1Gp84J5qhQk7j4FuhFDLwwCgQ9aPdWDfq8mAi685tfA+NyP7TDYnxw11CI1
         R/khb6EICvqFqVYAzPA7oNmqaP3qTrmS1OQKjODMUs4ixaVoM43k9SEnGvNqzpsjWsSS
         dTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678814728;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m1b/ue7l1cwbLNdkOIxcIWDTZVX5TpOyg0g8yNS/54I=;
        b=uLk1riUydfTJWUSSR1Zj877O4Dclf9YBoxWian/RvJeWuP3qZL7Lw45VLp2Mz7oGBb
         OBGypoMrCGCsyebjASZ+HwnpA5C5jnrPRVKb0773By6zsUmTDST8wOKbNGUxfmgg1aNi
         HyUfWldtdjpuFSD1XQ9rv6BqrtcTfALCR0OjFukhf/yRIoEChWwdByq6ovvIfpwO/h1U
         wacxtJa/hbCmP9ZTqaJgvQ6TkgGhj104aJrJZDaglSmTnXc5dsKOLPKL+GWPFZkPXPn7
         fn0W1NoRjrab/7d1GSkxpV+gnhtQiXVO/B8CtWjOGBlt+onLruCOZjQ2fN3y3E/+B7sR
         /ksQ==
X-Gm-Message-State: AO0yUKVYEDZ1spZiPPo+izJCo3xvsjQg0n7dlF7O6D1p8S85905YWp7S
	Th1RCFJZ732lGilgmpUXBlHa7LD3/JO6Gp6TJFU=
X-Google-Smtp-Source: AK7set89z1InsxQ2m0nSXS5N1QwjQZEdkzH/RMzd8+/i6H3iiWNIRs8X70w9PFuvWV/JVOSEZNOTV1I+y1bDSu0Ddh0=
X-Received: by 2002:ac2:562b:0:b0:4e8:426d:123f with SMTP id
 b11-20020ac2562b000000b004e8426d123fmr1008182lff.11.1678814727467; Tue, 14
 Mar 2023 10:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <MRZP264MB1544487A07884D37D9CFD78E93BE9@MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <MRZP264MB1544487A07884D37D9CFD78E93BE9@MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 14 Mar 2023 18:25:16 +0100
Message-ID: <CANNYZj8xUGqb-JQW7qTfzasKCK1KY68L9q3itmLgJvvxi9gcHA@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][langdale][connman] Partial integration of CVE-2022-32293 fixes
To: "VAUTRIN Emmanuel (Canal Plus Prestataire)" <Emmanuel.VAUTRIN@cpexterne.org>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007976fe05f6df839e"

--0000000000007976fe05f6df839e
Content-Type: text/plain; charset="UTF-8"

You can simply send the needed patch as a follow up yourself. Ask if
specifics of submission are unclear.

Alex

On Tue 14. Mar 2023 at 18.16, VAUTRIN Emmanuel (Canal Plus Prestataire) <
Emmanuel.VAUTRIN@cpexterne.org> wrote:

> Hello,
>
> I have noticed that 2 patches fixing CVE-2022-32293 have been backported
> on meta/recipes-connectivity/connman/connman_1.41.bb (b33cf2d113d0
> "connman: Backports for security fixes")
> Unfortunately, the last one (CVE-2022-32293_p2.patch) brings some
> regressions, which have been fixed by  e6523511d736 ("wispr: Fix context
> refcounting in wispr_portal_request_portal()"). Can you integrate this
> commit as patch?
>
>
> Best Regards,
>
> Emmanuel
> 
>
>

--0000000000007976fe05f6df839e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You can simply send the needed patch as a follow up yours=
elf. Ask if specifics of submission are unclear.</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue 14. Mar 2023 at 18.16, VAUTRIN Emm=
anuel (Canal Plus Prestataire) &lt;<a href=3D"mailto:Emmanuel.VAUTRIN@cpext=
erne.org">Emmanuel.VAUTRIN@cpexterne.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204=
,204)">Hello,<br>
<br>
I have noticed that 2 patches fixing CVE-2022-32293 have been backported on=
 meta/recipes-connectivity/connman/<a href=3D"http://connman_1.41.bb" rel=
=3D"noreferrer" target=3D"_blank">connman_1.41.bb</a> (b33cf2d113d0 &quot;c=
onnman: Backports for security fixes&quot;)<br>
Unfortunately, the last one (CVE-2022-32293_p2.patch) brings some regressio=
ns, which have been fixed by=C2=A0 e6523511d736 (&quot;wispr: Fix context r=
efcounting in wispr_portal_request_portal()&quot;). Can you integrate this =
commit as patch?<br>
<br>
<br>
Best Regards,<br>
<br>
Emmanuel<br>
<br>
<br>
</blockquote></div></div>

--0000000000007976fe05f6df839e--
