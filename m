Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web09.5664.1574508469921431298
 for <poky@lists.yoctoproject.org>;
 Sat, 23 Nov 2019 03:27:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=YkZO/OP4;
 spf=none, err=SPF record not found (domain: srin.me, ip: 209.85.128.41, mailfrom: s@srin.me)
Received: by mail-wm1-f41.google.com with SMTP id n5so432973wmc.0
        for <poky@lists.yoctoproject.org>; Sat, 23 Nov 2019 03:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=amtzabBmrEhr/VgD/rG6dSusID7ThJ0OfcenU6Flets=;
        b=YkZO/OP4wr2f08vcQLIEItN7DyY2fedNS+3bVaOTVR1z8NSw80pVhqApFbzVCkhokz
         QpB4RSwOOu4Cdayg5qnQiLZRwtIvCYxXz/GSRJgnU+zisCb7+nAk98EAukLuvBp1Y8H8
         oqkpgtieYkXtKxIt17mv0Cjuchog2ykv1rFB+QyhymlyRwijJEIRKO5XHerIf9aTql0P
         a++M1F5xmI2YXjigyjFILvIMn0VgLXRuss+OJ7NPQvNqdv0yw8LGLCyUD9CGum6+aCES
         kx/yEt3aXgRyQjOAk2EbilPvPkMyPF68c9Bzbp3tCEmS9UUl9iD6eWWmmArt/34VQFeY
         mRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=amtzabBmrEhr/VgD/rG6dSusID7ThJ0OfcenU6Flets=;
        b=lp+aeD8hfiUYVBDNiMJ9/tVRuGQcE1K4PSuRatDUflSirOxJ08A+Izvw1TXB6t77nU
         00nZdZ9F6suhhV77hD2ceFxKvibmFvF02Iic4GZesKM4dDmVitGXyOI12ZcUltEKECoP
         XQFXvnB8eGy64TGBpW5L2/4Uypl/ydiat50aVYKLwbF0/rbVYM9ULk4fWtY68pvlkOrK
         nN/BR0MUeLahWR4LeUnkRVlnbF1B7TsptPFDWd6n3s9Vhmtp8NNuH23WqGTxT5t7Ngq9
         l/ngCSvDoQpNgxc1D9h8KxYXbFpEEw1DNXuvs+zqETVJW5zMnvbVqUajBqBDiR/Si9fQ
         bwOQ==
X-Gm-Message-State: APjAAAW7xm7jrIbxAoWbg4HRR89doS1pCpMNDnsWzyqxncCL8DCAcWSP
	09pR2KGURkO6FYCI+SIUns9l8jxpT6FjMeBCIgaxg3nnJvxyGw==
X-Google-Smtp-Source: APXvYqwV9uW63+6Yk233nsvsP/UXMrtnfg6/qABtxE6LZN6UVhN8/aGHPVoZWXlDeY9oSElIFl63v+ueTRmHbgXAhGc=
X-Received: by 2002:a7b:c01a:: with SMTP id c26mr16525353wmb.160.1574508467792;
 Sat, 23 Nov 2019 03:27:47 -0800 (PST)
MIME-Version: 1.0
From: s@srin.me
Date: Sat, 23 Nov 2019 06:27:30 -0500
Message-ID: <CAGNn0hZ+MRB4VYxrrjiN_T4SKz+eaDC9NC7BrRavpcvuE8UzuQ@mail.gmail.com>
Subject: ANN: repotrace - a tool to gather source code repository details
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000eb429a059801d1c6"

--000000000000eb429a059801d1c6
Content-Type: text/plain; charset="UTF-8"

all

This is a tool I have used in conjunction with yocto for my projects to
gather source code repo/commit details.

https://github.com/RajaSrinivasan/repotrace.git

Hoping this will be useful for the embedded linux community:

thanks, srini

--000000000000eb429a059801d1c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><div><div class=3D"gmail-gE gmail-iv =
gmail-gt" style=3D"font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-seri=
f"><table cellpadding=3D"0" class=3D"gmail-cf gmail-gJ"><tbody><tr class=3D=
"gmail-acZ"><td class=3D"gmail-gF gmail-gK" style=3D"width:1187.53125px;dis=
play:block;max-height:20px"></td><td class=3D"gmail-gH gmail-bAk" style=3D"=
display:block;max-height:20px"><div class=3D"gmail-gK"></div></td></tr><tr =
class=3D"gmail-acZ gmail-xD"><td colspan=3D"3">all<br><br></td></tr></tbody=
></table></div><div class=3D"gmail-" style=3D"font-family:Roboto,RobotoDraf=
t,Helvetica,Arial,sans-serif"><div id=3D"gmail-:qk" class=3D"gmail-ii gmail=
-gt" style=3D"margin:8px 0px 0px;padding:0px"><div id=3D"gmail-:nz" class=
=3D"gmail-a3s gmail-aXjCH"><div dir=3D"ltr"><div dir=3D"ltr">This is a tool=
 I have used in conjunction with yocto for my projects to gather source cod=
e repo/commit details.<div><br></div><div><a href=3D"https://github.com/Raj=
aSrinivasan/repotrace.git" target=3D"_blank">https://github.com/RajaSriniva=
san/repotrace.git</a></div><div><br></div><div><span style=3D"color:rgb(0,0=
,0);font-family:-webkit-standard;font-size:medium">Hoping this will be usef=
ul for the embedded linux community:</span><br></div><div><span style=3D"co=
lor:rgb(0,0,0);font-family:-webkit-standard;font-size:medium"><br></span></=
div><div><span style=3D"color:rgb(0,0,0);font-family:-webkit-standard;font-=
size:medium">thanks, srini</span></div></div></div></div></div></div></div>=
</div></div>

--000000000000eb429a059801d1c6--
