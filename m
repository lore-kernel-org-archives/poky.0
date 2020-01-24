Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.16935.1579890580759854223
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 10:29:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=Uar02pfy;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BA83E0160B; Fri, 24 Jan 2020 10:29:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6482E006EC
	for <poky@yoctoproject.org>; Fri, 24 Jan 2020 10:29:37 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id p17so406307wma.1
        for <poky@yoctoproject.org>; Fri, 24 Jan 2020 10:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=DaRQxWr4Nqn3gqloOD5U+8XC1dX7ZhyvEQSV/LbBgDw=;
        b=Uar02pfyw+jdphZyx6UyAFy7TKYZ1OrTjmar9hEpir8/ZPqZza7BuJaX4+UiLxw2nq
         vGBIvZLhK4xtSZSb6sofAQAaJGDA676Sr1O6oofNa042THnQc70NAvXSsY1WzCXFtlsi
         fWVvbyJlRlLOcxqNKXGYBhko73GHnJBz865JafXNn04dOwErVU15r6lyDHRz95tO0sZa
         RXsKx7P1naT4cJZqeVPzbQ1x6eCy8nDv/xHajVnPEbv4sl3lnvYPK0YOd8V3vv7MCBNW
         1YGUeykFG8Q01dtWKTKrmw+hgPAMmzWUdWp4O1Dvofg7sffKj8UXg1YsNOrIlLqKfjce
         CK0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DaRQxWr4Nqn3gqloOD5U+8XC1dX7ZhyvEQSV/LbBgDw=;
        b=Rwm0b7YiENg+khFeMNJVYJs121/VSCuUc1cy1HY5YYWa9xlykhk0PlehXlW7QuPLAM
         pUTOZKcFsays9PN0nw0cEOp5uftB/chhA2eDD+csUULjBElIhQLo0YXi5Fq3WWR7nziT
         1D1rxRMH5DP/EPArW3qvQ7nlJxtVn6O8iOv/QT+a/cZN4qSRfu9ym73owoKBo+YpRzcx
         3+T3aMU3SOxNw9b6sTTAaUg5evYfX7ct3/ONwp7XehAFd8+23Fx+cLnZBpa2M8v40Z9Y
         rRdhr9VothoR1Nb0qRCMSDqEul7ehuSvXnnmjI1iZGhMAJmhlartOv5w8amc4+PDp072
         rYOQ==
X-Gm-Message-State: APjAAAW67mmHyb/t/8LP+5kgLiqKDGhR3s4niEgzJylMy/XWi2g9V0KL
	rDXoj22t+HYDWAl0tqq4+UWeiGfncGYelzgVqoNe4u6hKIHqUQ==
X-Google-Smtp-Source: APXvYqxjfRFBzgHtLZ1y2upoZY1AMFTFtSQ4l7O37cjUAqMzTcp8GkncswWgML9/Spx7ChYgeESxPcrD01cM0zjN7xg=
X-Received: by 2002:a1c:8095:: with SMTP id b143mr425917wmd.7.1579890576050;
 Fri, 24 Jan 2020 10:29:36 -0800 (PST)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Fri, 24 Jan 2020 13:29:25 -0500
Message-ID: <CAGNn0haqrGODXnJOWMdGxHJMKMOLo420B1_JNw3FFKq+YXaymw@mail.gmail.com>
Subject: Ann: SPM - Secure Package Manager
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000091dda7059ce6f012"

--00000000000091dda7059ce6f012
Content-Type: text/plain; charset="UTF-8"

Announcing v0.2 of :

https://github.com/RajaSrinivasan/spm.git

spm - Secure Package Manager
<https://github.com/RajaSrinivasan/spm#background>Background

Secure Package Manager (spm) evolved out of a need to distribute software
updates to connected embedded devices with no practical user interfaces. It
is derived from an actual functioning system, retaining only the features
that are of general applicability.

The goal was to be able to update the application software, distribute data
files, and change configurations; being built to support the embedded linux
platform yocto, eventually the goal incorporated the upgrade of the
Operating System itself.

This subsystem belongs in a larger context of a network distribution
infrastructure and a resilient data transfer, installation and subsequent
activation. (to follow down the road).

Best

srini

--00000000000091dda7059ce6f012
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Announc=
ing v0.2 of : =C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><a hr=
ef=3D"https://github.com/RajaSrinivasan/spm.git">https://github.com/RajaSri=
nivasan/spm.git</a></div><div dir=3D"ltr"><br><div><h1 style=3D"box-sizing:=
border-box;margin:0px 0px 16px;line-height:1.25;padding-bottom:0.3em;border=
-bottom-width:1px;border-bottom-style:solid;border-bottom-color:rgb(234,236=
,239);color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quo=
t;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&=
quot;Segoe UI Emoji&quot;">spm - Secure Package Manager</h1><h2 style=3D"bo=
x-sizing:border-box;margin-top:24px;margin-bottom:16px;line-height:1.25;pad=
ding-bottom:0.3em;border-bottom-width:1px;border-bottom-style:solid;border-=
bottom-color:rgb(234,236,239);color:rgb(36,41,46);font-family:-apple-system=
,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;A=
pple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;"><a id=3D"gmail-user-cont=
ent-background" class=3D"gmail-anchor" href=3D"https://github.com/RajaSrini=
vasan/spm#background" style=3D"box-sizing:border-box;color:rgb(3,102,214);t=
ext-decoration:none;float:left;padding-right:4px;line-height:1"></a>Backgro=
und</h2><p style=3D"font-size:16px;box-sizing:border-box;margin-top:0px;mar=
gin-bottom:16px;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSyste=
mFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emo=
ji&quot;,&quot;Segoe UI Emoji&quot;">Secure Package Manager (spm) evolved o=
ut of a need to distribute software updates to connected embedded devices w=
ith no practical user interfaces. It is derived from an actual functioning =
system, retaining only the features that are of general applicability.</p><=
p style=3D"font-size:16px;box-sizing:border-box;margin-top:0px;margin-botto=
m:16px;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&qu=
ot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,=
&quot;Segoe UI Emoji&quot;">The goal was to be able to update the applicati=
on software, distribute data files, and change configurations; being built =
to support the embedded linux platform yocto, eventually the goal incorpora=
ted the upgrade of the Operating System itself.=C2=A0</p><p style=3D"font-s=
ize:16px;box-sizing:border-box;margin-top:0px;margin-bottom:16px;color:rgb(=
36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Em=
oji&quot;">This subsystem belongs in a larger context of a network distribu=
tion infrastructure and a resilient data transfer, installation and subsequ=
ent activation. (to follow down the road).</p><p style=3D"font-size:16px;bo=
x-sizing:border-box;margin-top:0px;margin-bottom:16px;color:rgb(36,41,46);f=
ont-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,=
Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;">=
Best</p><p style=3D"font-size:16px;box-sizing:border-box;margin-top:0px;mar=
gin-bottom:16px;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSyste=
mFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emo=
ji&quot;,&quot;Segoe UI Emoji&quot;">srini</p></div></div></div></div></div=
>

--00000000000091dda7059ce6f012--
