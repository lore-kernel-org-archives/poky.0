Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web09.12617.1635257504556623523
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:11:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=e2/3cYD2;
 spf=pass (domain: mvista.com, ip: 209.85.221.46, mailfrom: ashishm@mvista.com)
Received: by mail-wr1-f46.google.com with SMTP id o14so2255658wra.12
        for <poky@lists.yoctoproject.org>; Tue, 26 Oct 2021 07:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=/gxMYpFuCcBJPc6fcz2VBg9+VxfqotpD1b7BlU6/twc=;
        b=e2/3cYD2h66Y3SaA9ZqMqp4sqbBVZvhHxkKvzUHqS15cBjz5vIl+vr+pt9p2Vn0tVs
         Y+ogo0ePTO5nWprPbFRJZ2q4Bt3wm9orncbhlb4RiVw7I3LKKy9c9NEjoSUADU9h6sz7
         ZGk8631atR0wOh4OxUVy65epwQ53bgalSvVOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/gxMYpFuCcBJPc6fcz2VBg9+VxfqotpD1b7BlU6/twc=;
        b=FXTNyjbM9Y8kynu35HLGTptRXepdL2FEXsaiYo83HGTrWFY6x+BWP9vpYQXcJzri1B
         PbrTmQ0Ph42CvFN0dQfjctKh47nTtJNxT6gV5r0Ob+kqbM/8IkCy4prdgvN70eDpYreq
         MX6syhcA9hCjVMBB8b0EUjb8EAqYBtCnLQI23dSwS6gRbJCoNxmeyW1qTohgOEAkTsEz
         +yZsaaFAe/lmFfyf1YmQiLmmHbkHGvjQANBudmT/E6lMnXcqGL069dn2xLY4ElIgzUV7
         F2F4CHO6Bvtf6V6O5JcRxZ7mZEjTCPhJmj3ewg1/5D1Ivk4pAt+/Xp0xTBCg1emdxWhA
         IUVQ==
X-Gm-Message-State: AOAM531iaMFObj/eFmeMSWrwtoJ4jcZIgg5P2uYtta2kwzFQL0/WHJ14
	0gn8GA5OgpjYYcb0mHTRndDpI++nXb0XEg7bBVd5gin8fo0Myw==
X-Google-Smtp-Source: ABdhPJzSn/4Bu0i7gn2tNvRJtuj4/n+YljyiswjooAcHm0Shh7DRGK+zqRiAwhTH5leJbuk2tdStc8xgZQhKAU77+54=
X-Received: by 2002:a5d:5649:: with SMTP id j9mr14820065wrw.207.1635257501814;
 Tue, 26 Oct 2021 07:11:41 -0700 (PDT)
MIME-Version: 1.0
From: "Ashish" <ashishm@mvista.com>
Date: Tue, 26 Oct 2021 19:42:08 +0530
Message-ID: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
Subject: bitbake core-image-minimal struck at [ Initialising tasks: 44% ]
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000083276605cf420e18"

--00000000000083276605cf420e18
Content-Type: text/plain; charset="UTF-8"

Hi All ,
I am trying to get an basic yocto build for qemuarm.
But the build is struck at message INITIALIZING TASK : 44%

I tried with some other machine name , removing the cache folder etc but
the behaviour remians same .

Any pointers to debug will be helpful .

Thanks ,
Ashish


[LAP] ~/yocto-build/build-folder : bitbake core-image-minimal
Parsing recipes: 100%
|##########################################################################################|
Time: 0:00:57
Parsing of 774 .bb files complete (0 cached, 774 parsed). 1326 targets, 56
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.46.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "aarch64-poky-linux"
MACHINE              = "qemuarm64"
DISTRO               = "poky"
DISTRO_VERSION       = "3.1.11"
TUNE_FEATURES        = "aarch64 armv8a crc"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "dunfell:78fe96f3edf981285cb9b6a0286e45f44d8b4b21"

Initialising tasks:  44% |######################################

--00000000000083276605cf420e18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All ,=C2=A0<div>I am trying to get an basic yocto build=
 for qemuarm.</div><div>But the build is struck at message INITIALIZING=C2=
=A0TASK : 44%=C2=A0</div><div><br></div><div>I tried with some other machin=
e name , removing the cache folder etc but the behaviour remians same .=C2=
=A0</div><div><br>Any pointers to debug will be helpful .=C2=A0</div><div><=
br></div><div>Thanks ,</div><div>Ashish=C2=A0</div><div><br></div><div><br>=
</div><div>[LAP] ~/yocto-build/build-folder : bitbake core-image-minimal <b=
r>Parsing recipes: 100% |##################################################=
########################################| Time: 0:00:57<br>Parsing of 774 .=
bb files complete (0 cached, 774 parsed). 1326 targets, 56 skipped, 0 maske=
d, 0 errors.<br>NOTE: Resolving any missing task queue dependencies<br><br>=
Build Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;1.46.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 &quot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;=
universal&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
aarch64-poky-linux&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;qemuarm64&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;3.1.11&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;aarch64 armv8a crc&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 <br>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<b=
r>meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;dunfell:78fe96f3edf981285cb=
9b6a0286e45f44d8b4b21&quot;<br><br>Initialising tasks: =C2=A044% |#########=
#############################=C2=A0=C2=A0<br></div></div>
<br>-- <br>Thanks ,<br />Ashish .

--00000000000083276605cf420e18--
