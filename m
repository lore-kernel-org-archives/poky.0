Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.5578.1670602422398821607
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Dec 2022 08:13:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cUM/JNKy;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id n1so5392627ljg.3
        for <poky@lists.yoctoproject.org>; Fri, 09 Dec 2022 08:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7vHGAIkzlW/u2NhIPhMtycFRwuln5vkbym3gh1qdyHs=;
        b=cUM/JNKyfbMpktjuDzrO4nUgLkpuUFTrIix5VmXeBsKgBNUIh+kWVoWFTzIl2YRs7H
         Dxf8gR74n5nxgS/gNtZC+xNedTDRB3FsHz6q6Xb3fvg5NXl7v5nYl11wiL48+XXy5I0K
         T/Fc4Cc+8zqrqWlacWSCGwu86eDt6zWdIWMsNwwl+wsJbzWxaIRreLyvGaHeDzUGHK3n
         Ol3W4KQr8GeZ666FMrI8xXAkjepiXiK5tqdp2yfDPYWr8SPFRzZgyCLftB+tKdTYGE1Q
         ULHLiwkenJyjQY0r1CXADKEM9BJSwiQJ3fNIPQjJwgCqBjs4NIAzEwEjCv252J+zkMPd
         /JdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7vHGAIkzlW/u2NhIPhMtycFRwuln5vkbym3gh1qdyHs=;
        b=FSNzyylqjV+HkEb3fMZ1H+FS8yTDqkABn0UtbfQTAx/kr3skufz0aw1OePnNsMgbIL
         RUKwIEQqajqkux3FdrJZOIdpo+NK8o1dSkRP8oha6pwMI9jPl02bF1Z7K0cx7BkoFCLX
         74vJN3Vb9+Lmn3tz3sljpLrQdY5mVXFv8L6vi14ZOMHG1WRouUbNnClWxQctL6IacXV1
         CyGSnC88cMwwX/l/Yjp32EHbesj2g9Ua60dWwX71sTpnVxRkYmIB4sQhiGFh7ectLjiF
         JkY5XkI1RZXnB6Z+UUfTHFdocDH+nde2lsXBJXdirR6iUHeVLPACOWcMonK4BYqBUaA6
         clww==
X-Gm-Message-State: ANoB5pnU2381GXdE5wzWLzE81W6z6ySu+4WPNaQ1kMZQMFR4MiEaAD6h
	kGIC/fZHZK5e+SwSfmGi6Y/nROxM0UU4URWoV3k=
X-Google-Smtp-Source: AA0mqf56MwO+T4+OUOkNNU2KdSamGBOeHXR/j5LhSjECry3o8shlCvulJC5XCIK58fuZ0+bHp5KlshXKVOJYYhz6MSo=
X-Received: by 2002:a2e:a174:0:b0:279:75a0:c063 with SMTP id
 u20-20020a2ea174000000b0027975a0c063mr24086733ljl.45.1670602415631; Fri, 09
 Dec 2022 08:13:35 -0800 (PST)
MIME-Version: 1.0
References: <CAC+ji7EOT6D35madOZvx6tS8Nj43Tiq-cg06WYO8xue8MnBhiQ@mail.gmail.com>
In-Reply-To: <CAC+ji7EOT6D35madOZvx6tS8Nj43Tiq-cg06WYO8xue8MnBhiQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 9 Dec 2022 17:13:24 +0100
Message-ID: <CANNYZj_bEZ_EVdXjrFWaGtAoDfsX_4jieSrm+Vg5t2wC8dZXHQ@mail.gmail.com>
Subject: Re: [poky] Unexpected package version going backwards warnings.
To: Daniel Squires <dan@engineeredarts.co.uk>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008b6ff705ef676f99"

--0000000000008b6ff705ef676f99
Content-Type: text/plain; charset="UTF-8"

If you do not care about updating packages on target with a package
manager, then you can drop SRCPV from your recipe versions.
Otherwise, you probably need to use a prserv, as described here:
https://docs.yoctoproject.org/dev-manual/common-tasks.html#incrementing-a-package-version
which will ensure package versions would never go backwards.

Alex

On Fri, 9 Dec 2022 at 17:02, Daniel Squires <dan@engineeredarts.co.uk>
wrote:

> Hi!
> We're using kirkstone, though not the very latest at present.
> Every now and then a a number of packages will unexpectedly give the error
> re package versions going backwards and teh version may have done something
> like go from git5-######-r0.1 to git3-#######-r0.0.
> We always see this if we've been using devtool for a given recipe and then
> do a devtool reset, it complains about going back from git999 to e.g. git5
> but this makes sense and we just run the build again and forget about it.
> However sometimes this just seems to happen randomly for a given recipe
> when it picks up a new commit from our repos and the git autoinc number
> will have gone back a few.
> Does anybody know why and if it is a bug or an be fixed?
>
>
> --
> *Dan Squires*
> Senior Roboticist
> www.engineeredarts.co.uk
>
> [image: EA Phone Number]+44 (0)1326 378129
>
> [image: RoboThespian FB] <https://www.facebook.com/RobotThespian> [image:
> RoboThespian Twitter] <https://twitter.com/robothespian> [image: EA
> YouTube] <http://youtube.com/EngineeredArts>
> [image: Engineered Arts Logo] <https://www.engineeredarts.co.uk/>
>
>
> * Engineered Arts Ltd *
> E1-E3 Church View Business Park,
> Bickland Water Road,
> Falmouth Cornwall,
> TR11 4FZ
> United Kingdom
>
> [image: Subscribe to Mailing List]
> <https://www.engineeredarts.co.uk/mailing-list/>
>
>
> 
>
>

--0000000000008b6ff705ef676f99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you do not care about updating packages on target =
with a package manager, then you can drop SRCPV from your recipe versions.<=
/div><div>Otherwise, you probably need to use a prserv, as described here:<=
/div><div><a href=3D"https://docs.yoctoproject.org/dev-manual/common-tasks.=
html#incrementing-a-package-version">https://docs.yoctoproject.org/dev-manu=
al/common-tasks.html#incrementing-a-package-version</a></div><div>which wil=
l ensure package versions would never go backwards.</div><div><br></div><di=
v>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 9 Dec 2022 at 17:02, Daniel Squires &lt;<a href=3D"=
mailto:dan@engineeredarts.co.uk">dan@engineeredarts.co.uk</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi!<br></div>=
<div>We&#39;re using kirkstone, though not the very latest at present.=C2=
=A0</div><div>Every now and then a a number of packages will unexpectedly g=
ive the error re package versions going backwards and teh version may have =
done something like go from git5-######-r0.1 to git3-#######-r0.0.</div><di=
v>We always see this if we&#39;ve been using devtool for a given recipe and=
 then do a devtool reset, it complains about going back from git999 to e.g.=
 git5 but this makes sense and we just run the build again and forget about=
 it. However sometimes this just seems to happen randomly for a given recip=
e when it picks up a new commit from our repos and the git autoinc number w=
ill have gone back a few.</div><div>Does anybody know why and if it is a bu=
g or an be fixed?</div><br><br>-- <br><div dir=3D"ltr"><font face=3D"Helvet=
ica, Arial, sans-serif"><b>Dan Squires</b></font><br>
<font size=3D"-1" color=3D"#666666">Senior Roboticist</font><a href=3D"http=
s://www.engineeredarts.co.uk/" target=3D"_blank"><font size=3D"-2" color=3D=
"#509ed2"><br>
    <font color=3D"#000000">www.engineeredarts.co.uk</font></font></a><font=
 size=3D"-2"><br>
  <br>
</font><font size=3D"-2"><img src=3D"https://www.engineeredarts.co.uk/wp-co=
ntent/uploads/2018/05/Phone.png" alt=3D"EA Phone Number" width=3D"23" heigh=
t=3D"23" align=3D"left"></font><font size=3D"-2">+44 (0)1326 378129</font><=
br>
<br>
<a href=3D"https://www.facebook.com/RobotThespian" target=3D"_blank"><img s=
rc=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/facebook.=
png" alt=3D"RoboThespian FB" width=3D"11" height=3D"17" border=3D"0" align=
=3D"top"></a>
<a href=3D"https://twitter.com/robothespian" target=3D"_blank"><img src=3D"=
https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/twitter.png" al=
t=3D"RoboThespian Twitter" width=3D"19" height=3D"16" border=3D"0"></a>  <a=
 href=3D"http://youtube.com/EngineeredArts" target=3D"_blank"><img src=3D"h=
ttps://www.engineeredarts.co.uk/wp-content/uploads/2018/05/youtube.png" alt=
=3D"EA YouTube" width=3D"21" height=3D"14" border=3D"0"></a><br>
<a href=3D"https://www.engineeredarts.co.uk/" target=3D"_blank"><font size=
=3D"-2"><img src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/201=
8/05/EngArts-Logo.png" alt=3D"Engineered Arts Logo" width=3D"131" height=3D=
"39" border=3D"0" align=3D"left"></font></a><br>
<font size=3D"-2"><b><br>
    <font color=3D"#666666"><br>
      Engineered Arts Ltd </font></b><font color=3D"#666666"><br>
  E1-E3 Church View Business Park, <br>
  Bickland Water Road,<br> Falmouth Cornwall,<br> TR11 4FZ <br>
</font><font size=3D"-2" color=3D"#666666">United Kingdom<br>
  <br>
  <a href=3D"https://www.engineeredarts.co.uk/mailing-list/" target=3D"_bla=
nk"><img src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05=
/EA_Subcribe.jpg" alt=3D"Subscribe to Mailing List" width=3D"366" height=3D=
"68" border=3D"0"></a></font></font><br></div><br>
<br>
<br>
<br>
</blockquote></div>

--0000000000008b6ff705ef676f99--
