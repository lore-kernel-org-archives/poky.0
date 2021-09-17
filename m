Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web08.723.1631913611908019997
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 14:20:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kFheCzjB;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: jaskij@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id z24so11927407lfu.13
        for <poky@lists.yoctoproject.org>; Fri, 17 Sep 2021 14:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=aY4pnT/9KPlhsSvC0GGU2BRFgEzrnzYOazgfORW2Evc=;
        b=kFheCzjBYjInS45kNmXQZ5z9AV1SSC26vNgUrqEKGrBbfzJDgDsDtLxqFpnuSmBQai
         UmdcDYb10w6QEm9+Q7Ox682CRo8OdRjAbUyXVKREy9vcEgI6ejrZa+dGeH56Qhi6iN81
         R7oOauJiNMEwjVjb/nQCF0x1FQ01+mV6Lbodu8wY9ZBIY2+JRBhVr7mcQbw4LxhIdq04
         2uf0et0BjyCYW8UVHlchZtA1wdFIexK36RLrUyobGo6/Cz2Wjjd0/6irguJPcjHUpglg
         BUt1c9D/ljLClbtsfvG+ZeB1cUxsYo7Z4iJHGnZ4Qa6YSkKrwZBvDrFNLwPbbc78PXfp
         jtPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aY4pnT/9KPlhsSvC0GGU2BRFgEzrnzYOazgfORW2Evc=;
        b=hMu1zDegdFMzlsnzcnOBmUsZpaA3mQguCicEX3Qtl+mUqlZzj1SEwvM3QdlAAFw62w
         fAAOzRYGXFjXN5xHn19piyxhmWi7ZV5TyNlvTDazj2KhSuTFC+ZXydIa+KnUfBH5v24Z
         cSx97QJQlejCNpttEo9UV/XrgMAtjkfdxkRuzoPKZsfXC2+JmKAPnelm0BjQEHVFfufW
         ztwUmYEtgewxIpscyJcWgmwZP/UA8HPcZWOvWMl9blDhH1sGjNPyUjXOOhlNV8+/i+i4
         F7U+RkSUl9OWM0FGMsNtRdS4j4KmIv+CZBblMkaGIwzjUdkVH4KiZRpax0kBWaMseu6M
         JCtg==
X-Gm-Message-State: AOAM533zEsogoAkbiVjPODQNl3Rmv9M5yLuu2miHWlzM2ZJPwAYIUpZ6
	bg/3vXfm6D//Cww/x6tnQ8PZjU/4VSOuHqiMuptORC4SElk=
X-Google-Smtp-Source: ABdhPJzYWzz2GDrhVwqLYHWEah7A2FPFzAJePdum+1kDC+atZiyS+trUWp23GhQDeHYPhM/EhhCNmV0CbfFrAkPrw/U=
X-Received: by 2002:a2e:6f05:: with SMTP id k5mr3757918ljc.17.1631913609402;
 Fri, 17 Sep 2021 14:20:09 -0700 (PDT)
MIME-Version: 1.0
From: jaskij@gmail.com
Date: Fri, 17 Sep 2021 23:19:58 +0200
Message-ID: <CAGRymWVmn2ad+kUqJKpcx=O39UGJ7809bDikC__WMrLjw52TVw@mail.gmail.com>
Subject: Hard to read error for multiconfig starting with a number
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fe1def05cc377e1d"

--000000000000fe1def05cc377e1d
Content-Type: text/plain; charset="UTF-8"

When moving from Dunfell to Hardknott, I got a somewhat cryptic error
message:

```
ERROR: Unable to register event handler
'504sstate_eventhandler_stalesstate':
Traceback (most recent call last):
  File "/home/jaskij/yocto/layers/poky/meta/classes/sstate.bbclass", line 1
    def 504sstate_eventhandler_stalesstate(e):
```

As it turned out, one of my multiconfigs was named "504". Seems like
there's a function declared with a name starting with my multiconfig name.
After consulting on Matrix, RP pointed out this patch as the source:
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=8b792d4f75b451f9e08fdb13464a0b66c11bc075

Preferred behavior would probably be adding a check and returning a
human-readable error earlier in the process.

Jan

-- 
Jan Dorniak
e-mail:jaskij@gmail.com

--000000000000fe1def05cc377e1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>When moving from Dunfell to Hardknott, I got a somewh=
at cryptic error message:</div><div><br></div><div>```</div><div>ERROR: Una=
ble to register event handler &#39;504sstate_eventhandler_stalesstate&#39;:=
<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/jaskij/yo=
cto/layers/poky/meta/classes/sstate.bbclass&quot;, line 1<br>=C2=A0 =C2=A0 =
def 504sstate_eventhandler_stalesstate(e):</div><div>```</div><div><br></di=
v><div>As it turned out, one of my multiconfigs was named &quot;504&quot;. =
Seems like there&#39;s a function declared with a name starting with my mul=
ticonfig name.</div><div>After consulting on Matrix, RP pointed out this pa=
tch as the source: <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/com=
mit/?id=3D8b792d4f75b451f9e08fdb13464a0b66c11bc075">http://git.yoctoproject=
.org/cgit.cgi/poky/commit/?id=3D8b792d4f75b451f9e08fdb13464a0b66c11bc075</a=
></div><div><br></div><div>Preferred behavior would probably be adding a ch=
eck and returning a human-readable error earlier in the process.<br></div><=
div><br></div><div>Jan<br></div><div><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span s=
tyle=3D"color:rgb(102,102,102)">Jan Dorniak</span><br style=3D"color:rgb(10=
2,102,102)"><a style=3D"color:rgb(102,102,102)" href=3D"mailto:e-mail%3Ajas=
kij@gmail.com" target=3D"_blank">e-mail:jaskij@gmail.com</a><font color=3D"=
#666666"><br></font><br><div></div></div></div></div></div>

--000000000000fe1def05cc377e1d--
