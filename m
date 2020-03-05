Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com [209.85.222.65])
 by mx.groups.io with SMTP id smtpd.web12.13505.1583419056419140743
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 06:37:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IOHhGXK+;
 spf=pass (domain: gmail.com, ip: 209.85.222.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f65.google.com with SMTP id z26so2133775uap.6
        for <poky@lists.yoctoproject.org>; Thu, 05 Mar 2020 06:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HE51OChlY+nubibmtcYBSdfqcyEGooTVxfyoLKX0vPo=;
        b=IOHhGXK+0F8LMLHAe10bHpnZPxstRjEuZrEnJSNcFcBpc2WO5mpphRH3TINKESJpvY
         kRpCB4SSy0rBWg/Au3tCQ1ENx4lARfD0KypKClEDi496rmUB1HnJpcHuPUGVHybimJfA
         n7VEY79dzFgyjO+bp9cYCJoO1BGE+6BJoVpXIxrUZ3X/XwRXvE8J7dd1RXeDAdOEXXd9
         x2o5Zde6E4GWPepRc/F0qFwntg3B+nE8OuFvbY/2OaEMdzJOgmr0RtoEUkQluX+ulSNp
         rURz7epDuDYW3CvG3dOqEwrwGNH3+3iDAR8enx2gRlajR1YE7L0quiH7lH6OhLCFgVXt
         yeVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HE51OChlY+nubibmtcYBSdfqcyEGooTVxfyoLKX0vPo=;
        b=Vlz+DYjvt7CVczz9d7CNKiNZkZ5sus4nGl4yakEWIjkUR6hOosUGZH7yGtyOcwWBH9
         43AW/7JhW9qPoGt1iI6u919ZCPBD7HoicT/8Oq3lp8EfZ5xUznn9+89FGNQ0PmK1OD0Q
         rCPmOsnYIopxaAPINScWiHpZRBRoLnR2rT4fRtzgyRrUYhPjMM6/zI4YQFE4vU63zQK1
         Lzs+SWA1g5KU/PA+JfQ9J1MNrCKjUPTqTZrakjsTERrO0dbtDMlpO61HhB80Dhrb90Mk
         VZVe81abo6OpzYp2msoTyvCtfnKOW1ef8bjRYGulunUkjiRy4dj02l8+RPAeDkmW1kVf
         RFJw==
X-Gm-Message-State: ANhLgQ2OcgO5pAzOIBeknJHd/ye39VfaBgC3Qx2vPM6CY1APwE4CwIrc
	RxdNj8KK0gMHiy8OA6RkDp+vT5Iuzt1Z0WvAbJCpc42J
X-Google-Smtp-Source: ADFU+vvH1cHWLFtBoBQ+S595xVQGttWyuuyT5Fc5rQxgHPbzAgEMbV5Ch01f6eT3qxDkP/JrRpHQ6XDTA+jURz0+Yxw=
X-Received: by 2002:a9f:244c:: with SMTP id 70mr1388496uaq.22.1583419055535;
 Thu, 05 Mar 2020 06:37:35 -0800 (PST)
MIME-Version: 1.0
References: <9BF44414-52D8-4025-BCC2-A797002C99F2@berg-solutions.de> <F09F2AFF-8B49-4842-A241-305538DFAA66@berg-solutions.de>
In-Reply-To: <F09F2AFF-8B49-4842-A241-305538DFAA66@berg-solutions.de>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 5 Mar 2020 15:37:24 +0100
Message-ID: <CANNYZj9DWd+sqT2kFAZf35dkYtFdKY4=AODTzcdtxSzZ78bfHw@mail.gmail.com>
Subject: Re: [poky] How to see the parameters of a shell command execution (do_rootfs, qemu, update_font_cache) ?
To: Roelof <rberg@berg-solutions.de>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000055f9e005a01c7af7"

--00000000000055f9e005a01c7af7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"  WARNING: The postinstall intercept hook =E2=80=9Aupdate_font_cache=E2=80=
=
=98 failed,
details in log.do_rootfs"

So what does log.do_rootfs say?

Alex



On Thu, 5 Mar 2020 at 14:46, Roelof <rberg@berg-solutions.de> wrote:

>
> =3D=3D=3D QUESTION =3D=3D=3D
>
> A shell command (qemu) fails in my build in the poky build step do_rootf=
s.
> How can I find out which shell command and parameters exactly were calle=
d ?
>
> =3D=3D=3D CONTEXT =3D=3D=3D
>
> I=E2=80=99m building a Yocto image (derived from Phytec Yoghurt, which i=
s derived
> from Poky) for a custom i.mx6 PCB that runs a QT gui that should display
> text. I don=E2=80=99t see any text, maybe the fonts are missing.
>
> =3D=3D=3D TRACKING DOWN =3D=3D=3D
>
> My bitbake build generates warnings:
>   WARNING: The postinstall intercept hook =E2=80=9Aupdate_font_cache=E2=
=80=98 failed,
> details in log.do_rootfs
> (Same warning for =E2=80=9Aupdate_icon_cache=E2=80=98 and 'update_pixbuf=
_cache=E2=80=99)
>
> (Note: I added DEPENDS =3D =E2=80=9Eqemuwrapper-cross=E2=80=9C to my mai=
n image .bb script.
> And I set FC_DEBUG to 16 in fontcache.bbclass.)
>
> When I track this warning down I see that the execution of qemu fails
> during update_font_cache. Now I=E2=80=99d like to see the command line o=
f the
> failing qemu-call. Is this possible ?
>
> Log:
>
> =3D Schnipp =3D=3D=3D=3D=3D
> NOTE: Exit code 1. Output:
> usage: qemu-arm [options] program [arguments]
> Linux CPU emulator (compiled for arm emulation)
>
> Options and associated environment variables:
>
> Argument      Env-variable      Description
> -h                        prints this help
>
> ...
>
> =3D Schnapp =3D=3D=3D=3D=3D
>
> =3D=3D=3D ATTEMPTS SO FAR =3D=3D=3D=3D=3D=3D
>
> In my attempts I came to a python script
> postinsts-intercept/update_font_cache:
>
> PSEUDO_UNLOAD=3D1 qemuwrapper -L $D -E
> LD_LIBRARY_PATH=3D$D/${libdir}:$D/${base_libdir} \
>                                         -E ${fontconfigcacheenv}
> $D${bindir}/fc-cache --sysroot=3D$D --system-only ${fontconfigcacheparam=
s}
> chown -R root:root $D${fontconfigcachedir}
>
> My next step would be to add debug output to this file (via Yocto means)=
,
> but I don=E2=80=99t even find =E2=80=9Efontconfig=E2=80=9C when I grep t=
hrough all *.bb, *,conf,
> *.bbapend and *.bbclass and don=E2=80=99t find the place where to add de=
bug
> commands inside meta-layers that end up in this update_font_cache file.
>
> I also looked at the python code of do_rootfs and it=E2=80=99s very gene=
ric,
> executing a list with all sorts of jobs, and I didn=E2=80=99t see a plac=
e where I
> could add debug output there as well.
>
> =3D=3D=3D QUESTION AGAIN =3D=3D=3D=3D=3D=3D
>
> How can I find out which shell command and parameters exactly were calle=
d
> that led to the log SchnippSchnapp above ?
>
> Thank you very very much,
> Roelof
>
>
>=20
>

--00000000000055f9e005a01c7af7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&quot;=C2=A0 WARNING: The postinstall intercept hook =
=
=E2=80=9Aupdate_font_cache=E2=80=98 failed, details in log.do_rootfs&quot;=
</div><div><br></div><div>So what does log.do_rootfs say?</div><div><br></d=
iv><div>Alex<br></div><div><br></div><div><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 5 Mar 2020 at 1=
4:46, Roelof &lt;<a href=3D"mailto:rberg@berg-solutions.de">rberg@berg-solu=
tions.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div style=3D"overflow-wrap: break-word;"><div><br><blockquote type=
=
=3D"cite"><div><div style=3D"overflow-wrap: break-word;"><div>=3D=3D=3D QU=
ESTION =3D=3D=3D</div><div><br></div><div><span>A shell command (qemu) fail=
s in my build in the poky build step do_rootfs. How can I find out which sh=
ell command and parameters exactly were called ?</span></div><div><br></div=
><div>=3D=3D=3D CONTEXT =3D=3D=3D</div><div><br></div><div>I=E2=80=99m buil=
ding a Yocto image (derived from Phytec Yoghurt, which is derived from Poky=
) for a custom i.mx6 PCB that runs a QT gui that should display text. I don=
=
=E2=80=99t see any text, maybe the fonts are missing.</div><div><br></div>=
<div>=3D=3D=3D TRACKING DOWN =3D=3D=3D</div><div><br></div>My bitbake build=
 generates warnings:<div>=C2=A0 WARNING: The postinstall intercept hook =E2=
=
=80=9Aupdate_font_cache=E2=80=98 failed, details in log.do_rootfs</div><di=
v>(Same warning for =E2=80=9Aupdate_icon_cache=E2=80=98 and &#39;update_pix=
buf_cache=E2=80=99)</div><div><br></div><div><font>(Note: I added DEPENDS =
=3D=C2=A0=E2=80=9Eqemuwrapper-cross=E2=80=9C to my main image .bb script. =
And I set FC_DEBUG to 16 in fontcache.bbclass.)</font></div><div><span><br>=
</span></div><div>When I track this warning down I see that the execution o=
f qemu fails during update_font_cache. Now I=E2=80=99d like to see the comm=
and line of the failing qemu-call. Is this possible ?<br><div><div><br></di=
v><div>Log:</div><div><br></div><div>=3D Schnipp =3D=3D=3D=3D=3D</div><div>=
NOTE: Exit code 1. Output:</div><div>usage: qemu-arm [options] program [arg=
uments]</div><div>Linux CPU emulator (compiled for arm emulation)</div><div=
><br></div><div>Options and associated environment variables:</div><div><br=
></div><div>Argument =C2=A0 =C2=A0 =C2=A0Env-variable =C2=A0 =C2=A0 =C2=A0D=
escription</div><div>-h =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prints this help</div><div><br></div><di=
v>...</div><div><br></div></div></div><div>=3D Schnapp =3D=3D=3D=3D=3D</div=
><div><br></div><div>=3D=3D=3D ATTEMPTS SO FAR =3D=3D=3D=3D=3D=3D</div><div=
><br></div><div>In my attempts I came to=C2=A0<span>a python script postins=
ts-intercept/update_font_cache:</span></div><div><span><br></span></div><di=
v><span><div>PSEUDO_UNLOAD=3D1 qemuwrapper -L $D -E LD_LIBRARY_PATH=3D$D/${=
libdir}:$D/${base_libdir} \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -E ${fontconfigcacheenv} $D${bindir}/fc-ca=
che --sysroot=3D$D --system-only ${fontconfigcacheparams}</div><div>chown -=
R root:root $D${fontconfigcachedir}</div><div><br></div><div>My next step w=
ould be to add debug output to this file (via Yocto means), but I don=E2=80=
=
=99t even find =E2=80=9Efontconfig=E2=80=9C when I grep through all *.bb, =
*,conf, *.bbapend and *.bbclass and don=E2=80=99t find the place where to a=
dd debug commands inside meta-layers that end up in this update_font_cache =
file.</div><div><br></div><div>I also looked at the python code of do_rootf=
s and it=E2=80=99s very generic, executing a list with all sorts of jobs, a=
nd I didn=E2=80=99t see a place where I could add debug output there as wel=
l.</div></span></div><div><br></div><div><div>=3D=3D=3D QUESTION AGAIN =3D=
=3D=3D=3D=3D=3D</div></div><div><br></div><div><span>How can I find out wh=
ich shell command and parameters exactly were called that led to the log Sc=
hnippSchnapp above ?=C2=A0</span></div><div><br></div><div>Thank you very v=
ery much,</div><div>Roelof</div><div><br></div></div></div></blockquote></d=
iv><br></div><br>
</blockquote></div>

--00000000000055f9e005a01c7af7--
