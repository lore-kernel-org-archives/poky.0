Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.34685.1595240131234731480
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 03:15:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=EN8XG34r;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.128.49, mailfrom: ashishm@mvista.com)
Received: by mail-wm1-f49.google.com with SMTP id g10so11579877wmc.1
        for <poky@lists.yoctoproject.org>; Mon, 20 Jul 2020 03:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yAjjL+HxHAzPyRQU7HNnRjBaBy5VEo+4te0zIgDrRZ4=;
        b=EN8XG34rjJ0g80g3RwiByb0tv8K9LspVpzZLyLOEnd0ps4GGSa0Wn/JfZjxknDvWmA
         YONLg3EWCdNkfQqwor9SCMyk6r4svs3mCnR3ABXnHojGcAiR2iY3sQrXQjE//HTOeTsZ
         KQuVTo6C4wRF7KaGfQeddZOabL/vrmg/Zrh4TpM0XC3Mls4MfYzUCUr/NvyBa12VQwFD
         l2JfBofdjXP9tNJzoXOVLiXKUUDhW81be6h96IWmhYLdWPExN525vd0zZredjE9KQyLh
         lgNs8ZXywr5TiWTcufFv6eCPzATbxgEhUo6N6vZG1Os6k1dZNKjFGhmKzFBFRRag3a5X
         UZ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yAjjL+HxHAzPyRQU7HNnRjBaBy5VEo+4te0zIgDrRZ4=;
        b=tC5I2EHB1NvNfnmDkWFF8OH1G4KCLnl73gWYoXs0CuZ9dr+gQ915ME1P41Ac1mlEd2
         C4aL/Cg3L71lkzAYo4+CotQLNEnrC62dI+2WtxXdRkcJtUUSLND/Fu7v32+0pgkPPQqZ
         Xq2p5UlAxpSHVR77hmhkdcpPZGXwcoF/YfxJxBurKyTdyPLA1owNUZhFnRgGHjUX7w8d
         0GnTIn1VJWXHLN8QdWAbPGFmCZRNrs/1prTEEgM1e5GL5zTn94drWPlxG/z38ebRKz1u
         LlWneBdyO3IGCk0W7QPyWth1LCup5jOoeXJvMWUkWp4lLd+MvEXGS9IjOOSQCPGQ1hpt
         OPwA==
X-Gm-Message-State: AOAM533yYr4bKG1/UE44EUMm/J8b1fdr0H9jhMYouPDFqKY6fuK2gP/d
	qwzAi0vm/PzESyczuiBm39i36OY49Mt+1A1rtomckg==
X-Google-Smtp-Source: ABdhPJyMyt5Rh9O0HB7npUPohsbRGExfkjMAQ4vpX7aGTDzEmEat+TfxFldb698CXNRJ+ilRSGbSTabR84PlaZ9js7U=
X-Received: by 2002:a1c:3245:: with SMTP id y66mr19798962wmy.64.1595240129691;
 Mon, 20 Jul 2020 03:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <LMzk.1595145312278580104.QGYU@lists.yoctoproject.org>
 <2d1228d9f3c582a0aa958df7130b1c14a3bc11ec.camel@linuxfoundation.org>
 <CAP2OjcjzERYy_yaJN_DX8nECZGfv=8nxV76JH7-vsU5JOHLWGQ@mail.gmail.com> <c668d9ca3932e86a9b0d33bf762e9295a4690932.camel@linuxfoundation.org>
In-Reply-To: <c668d9ca3932e86a9b0d33bf762e9295a4690932.camel@linuxfoundation.org>
From: "Ashish" <ashishm@mvista.com>
Date: Mon, 20 Jul 2020 15:45:15 +0530
Message-ID: <CAP2OjciOpzC9h6db5SMr7kYaPEPAgpFit1omXjoGoe0dSpOYwg@mail.gmail.com>
Subject: Re: [poky] How to add python debugger "epdb" module in recipe
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000043198d05aadcc93d"

--00000000000043198d05aadcc93d
Content-Type: text/plain; charset="UTF-8"

Hi Richard ,

1) Is epdb installed for your host's python3?
     Yes , i installed manually on host using pip3
     I tested by adding "import epdb" in sample python code.
     And i ran on host below command  ( no error of missing module here )
     # pthon3 test-code.py


2) Is that the same python3 you're using for bitbake (no buildtools tarball
or anything)?
     This i think is using python available from Yocto build.
      I haven't specifically passed any parameter here.
      Steps i followed :
      a) Added " import epdb" in recipe ( any yocto recipe)
      b) Ran " bitbake recipe-name "
           Expected was the recipe will find the epdb module.


3) If required i can share detailed steps .


Thanks
Ashish.

--00000000000043198d05aadcc93d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Richard ,</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto"><span style=3D"font-family:sans-serif">1) Is epdb installed for=
 your host&#39;s python3?</span></div><div dir=3D"auto"><span style=3D"font=
-family:sans-serif">=C2=A0 =C2=A0 =C2=A0Yes , i installed manually on host =
using pip3</span></div><div dir=3D"auto"><span style=3D"font-family:sans-se=
rif">=C2=A0 =C2=A0 =C2=A0I tested by adding &quot;import epdb&quot; in samp=
le python code.</span></div><div dir=3D"auto"><span style=3D"font-family:sa=
ns-serif">=C2=A0 =C2=A0 =C2=A0And i ran on host below command=C2=A0 ( no er=
ror of missing module here )</span></div><div dir=3D"auto"><span style=3D"f=
ont-family:sans-serif">=C2=A0 =C2=A0 =C2=A0# pthon3 test-code.py</span></di=
v><div dir=3D"auto"><span style=3D"font-family:sans-serif">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</span></div><div dir=3D"auto"><span style=3D"font-fam=
ily:sans-serif"><br></span></div><div dir=3D"auto"><span style=3D"font-fami=
ly:sans-serif">2)=C2=A0</span><span style=3D"font-family:sans-serif">Is tha=
t the same python3 you&#39;re</span><span style=3D"font-family:sans-serif">=
=
=C2=A0using for bitbake (no buildtools tarball or anything)?</span></div><=
div dir=3D"auto"><span style=3D"font-family:sans-serif">=C2=A0 =C2=A0 =C2=
=A0This i think is using python available from Yocto build.</span></div><d=
iv dir=3D"auto"><span style=3D"font-family:sans-serif">=C2=A0 =C2=A0 =C2=A0=
 I haven&#39;t specifically passed any parameter here.</span></div><div dir=
=
=3D"auto"><span style=3D"font-family:sans-serif">=C2=A0 =C2=A0 =C2=A0 Step=
s i followed :</span></div><div dir=3D"auto"><span style=3D"font-family:san=
s-serif">=C2=A0 =C2=A0 =C2=A0 a) Added &quot; import epdb&quot; in recipe (=
 any yocto recipe)</span></div><div dir=3D"auto"><span style=3D"font-family=
:sans-serif">=C2=A0 =C2=A0 =C2=A0 b) Ran &quot; bitbake recipe-name &quot;<=
/span></div><div dir=3D"auto"><span style=3D"font-family:sans-serif">=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Expected was the recipe will find the ep=
db module.</span></div><div dir=3D"auto"><span style=3D"font-family:sans-se=
rif"><br></span></div><div dir=3D"auto"><span style=3D"font-family:sans-ser=
if"><br></span></div><div dir=3D"auto"><span style=3D"font-family:sans-seri=
f">3) If required i can share detailed steps .</span></div><div dir=3D"auto=
"><span style=3D"font-family:sans-serif">=C2=A0 =C2=A0 =C2=A0</span></div><=
div dir=3D"auto"><span style=3D"font-family:sans-serif"><br></span></div><d=
iv dir=3D"auto"><span style=3D"font-family:sans-serif">Thanks=C2=A0</span><=
/div><div dir=3D"auto"><span style=3D"font-family:sans-serif">Ashish.</span=
></div><div dir=3D"auto"><span style=3D"font-family:sans-serif"><br></span>=
</div><div dir=3D"auto"><span style=3D"font-family:sans-serif"><br></span><=
/div></div>
<br>-- <br>Thanks ,<br />Ashish .

--00000000000043198d05aadcc93d--
