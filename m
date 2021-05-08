Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web12.4970.1620469617185626442
 for <poky@lists.yoctoproject.org>;
 Sat, 08 May 2021 03:26:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dR6X2ITm;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id g24so3636665uak.11
        for <poky@lists.yoctoproject.org>; Sat, 08 May 2021 03:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Gc2hkURERxS5gRDXJJpnd0JF2YCj1lw5Bs8nmIyu1aY=;
        b=dR6X2ITm+vvPWZX/IA8Wk150Nav3C0019DeUGPb2YjN40dj7LQlOV34qaCaCfbA10n
         aqyrtTwrDr/ZUM7g5gfCcXsCwOPLzoKGTOr/bfdBja/t8Ng+AUVvycRL/Q5fIwOUPl2H
         I5hMd6oghSSyC5n59zNRe0K9ixyKLd2+eWlYPjAz2ejBHqfomzY5dn9KfmhxxDs6Bpwt
         mV/vXGCPTZqXkUJGMRpgCltjJPLgCsTSHWZDF35pqj3qkbmWy7RsWPaZX5V13LBguady
         DrVVg5tz+TP5HpErgO/jTcIqU+UGz8qJWuI6opipftKHIGesnLyYfkobyo05K1ZuVxYe
         yv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Gc2hkURERxS5gRDXJJpnd0JF2YCj1lw5Bs8nmIyu1aY=;
        b=M7JRAu+KQHce//wPN97K1/ow9O5Ufab45nECYJ4di0tlfsblf68oXnG/Hw/9xqot++
         Gp5AWBRXRGKNrJPQQdF5au90HP/VpIobtz5RQyQgtZXp3XeFTF8feZg/gacDJUradhoF
         Nr/DF42xeXHr4huuoVJ5QsPC+D670LUtTz9lFAGTvolrn7PSQLTmckot787ent4LXY+E
         +Xw5Q5tak28aoNDmiBokShNQgoPgmusQRivBZMKjjg7foV3j6jduKAm0mXB+H5ZHK+vb
         k3lhuTsNvAQLlrfUNeOIlWVMcrgYXwh5GoVelg607QwI+DRQ6ECmVT0n5Tl6yH7FVyuJ
         2NCQ==
X-Gm-Message-State: AOAM530cXki5CkfVxoNmJ/8cf2VxeXPTCpHwQt/rYkdas1GzUQywZiz9
	r6Vq1rXREBW0g6HPGorflJztrRU+7r39+mgXtP8=
X-Google-Smtp-Source: ABdhPJyiNUKKDApZ9IJ+Ay30N/e74Ps+2VuFZhwlIRY8nhvLVXUDIzRvkoPlawy9rAzp6a9+wK+xm5ACgMmN/WlHbgA=
X-Received: by 2002:ab0:6cb3:: with SMTP id j19mr2146438uaa.71.1620469616255;
 Sat, 08 May 2021 03:26:56 -0700 (PDT)
MIME-Version: 1.0
References: <xhBQ.1620428935778891624.YkUE@lists.yoctoproject.org>
 <CANNYZj8ySD-VwVWoq_1M-g6B8QHsg5Qd6GeVK6KBu7srfo_GUA@mail.gmail.com> <CAKGn-5-xDXCjb35NNvD65QaUo+id-x_cGhg+Owb_+AtgHx9WxQ@mail.gmail.com>
In-Reply-To: <CAKGn-5-xDXCjb35NNvD65QaUo+id-x_cGhg+Owb_+AtgHx9WxQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 8 May 2021 12:26:45 +0200
Message-ID: <CANNYZj-SDRZ01mDZ+uOF=qEZez3fMLB5Xqsof8ZBkWYpU-JG2Q@mail.gmail.com>
Subject: Re: [poky] Building core-image-minimal fails
To: Gregg Nemas <gnemas@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d8a61505c1cefbe7"

--000000000000d8a61505c1cefbe7
Content-Type: text/plain; charset="UTF-8"

Exception: OSError: [Errno 26] Text file busy:
'/data/poky/build/tmp/work/core2-64-poky-linux/dbus/1.12.20-r0/recipe-sysroot/usr/bin/postinst-useradd-dbus'

This path looks odd. Which user are you running as, and why /data ? Is that
a special partition and how is it mounted?

Alex

On Sat, 8 May 2021 at 06:41, Gregg Nemas <gnemas@gmail.com> wrote:

> I uninstalled the lm_sensors-devel package from my Centos host. I then
> re-ran bitbake (I did not do it from scratch though). The build failed
> in a different way this time, with a "file busy" error. I've attached
> the configure and compile log files from the first run, and the
> "prepare" log file from the new run.
>
> On Fri, May 7, 2021 at 7:28 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> >
> > The build output should refer to log.do_compile, can you please attach
> that, and log.do_configure from the same directory, so it's possible to see
> why mesa is trying to use libsensors?
> >
> > As a quick fix, can you delete the libsensors development package from
> your host?
> >
> > Alex
> >
> > On Sat, 8 May 2021 at 01:09, <gnemas@gmail.com> wrote:
> >>
> >> I am new to Yocto. I thought a good way to start would be to try to
> build a stock image. The "core-image-minimal" recipe seemed loke a good
> choice. However, it did not go well. The build ends in an error (see below).
> >>
> >> Here are the steps I took.
> >>
> >>     sudo yum install <Centos 7 package list shown in Yocto Reference
> Manual>
> >>
> >>     git clone -b hardknott git://git.yoctoproject.org/poky.git
> >>     cd poky
> >>
> >>     # My host is a Centos 7 machine, so I installed the buildtools SDK
> >>     scripts/install-buildtools
> >>     . buildtools/environment-setup-x86_64-pokysdk-linux
> >>
> >>     . oe-init-build-env
> >>
> >>     bitbake core-image-minimal
> >>
> >> After a couple of hours, the build terminated with an error:
> >>
> >> ERROR: Task
> (virtual:native:/data/poky/meta/recipes-graphics/mesa/mesa_21.0.1.bb:do_compile)
> failed with exit code '1'
> >>
> >> Poking around in tmp I found the file
> tmp/log/cooker/qemux86-64/console-latest.log
> >>
> >> This file contained the actual compilation error that caused the build
> failure:
> >>
> >> mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: fatal
> error: sensors/sensors.h: No such file or directory
> >>
> >> How can I fix this? Should I been choosing a different recipe? I am
> surprised that what is supposed to be a minimal bootable image has a 3D
> graphics library (mesa) in it. I am also surprised that a 3D graphics
> library needs access to a sensors library.
> >>
> >> Any help appreciated.
> >>
> >> Thanks,
> >>
> >> Gregg
> >>
> >>
> >> 
> >>
>

--000000000000d8a61505c1cefbe7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Exception: OSError: [Errno 26] Text file busy: &#39;/=
data/poky/build/tmp/work/core2-64-poky-linux/dbus/1.12.20-r0/recipe-sysroot=
/usr/bin/postinst-useradd-dbus&#39;</div><div><br></div><div>This path look=
s odd. Which user are you running as, and why /data ? Is that a special par=
tition and how is it mounted?</div><div><br></div><div>Alex<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat=
, 8 May 2021 at 06:41, Gregg Nemas &lt;<a href=3D"mailto:gnemas@gmail.com">=
gnemas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">I uninstalled the lm_sensors-devel package from my Centos h=
ost. I then<br>
re-ran bitbake (I did not do it from scratch though). The build failed<br>
in a different way this time, with a &quot;file busy&quot; error. I&#39;ve=
 attached<br>
the configure and compile log files from the first run, and the<br>
&quot;prepare&quot; log file from the new run.<br>
<br>
On Fri, May 7, 2021 at 7:28 PM Alexander Kanavin &lt;<a href=3D"mailto:ale=
x.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; The build output should refer to log.do_compile, can you please attac=
h that, and log.do_configure from the same directory, so it&#39;s possible =
to see why mesa is trying to use libsensors?<br>
&gt;<br>
&gt; As a quick fix, can you delete the libsensors development package fro=
m your host?<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Sat, 8 May 2021 at 01:09, &lt;<a href=3D"mailto:gnemas@gmail.com" =
target=3D"_blank">gnemas@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I am new to Yocto. I thought a good way to start would be to try =
to build a stock image. The &quot;core-image-minimal&quot; recipe seemed lo=
ke a good choice. However, it did not go well. The build ends in an error (=
see below).<br>
&gt;&gt;<br>
&gt;&gt; Here are the steps I took.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0sudo yum install &lt;Centos 7 package list sho=
wn in Yocto Reference Manual&gt;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0git clone -b hardknott git://<a href=3D"http:/=
/git.yoctoproject.org/poky.git" rel=3D"noreferrer" target=3D"_blank">git.yo=
ctoproject.org/poky.git</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0cd poky<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0# My host is a Centos 7 machine, so I installe=
d the buildtools SDK<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0scripts/install-buildtools<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0. buildtools/environment-setup-x86_64-pokysdk-=
linux<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0. oe-init-build-env<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0bitbake core-image-minimal<br>
&gt;&gt;<br>
&gt;&gt; After a couple of hours, the build terminated with an error:<br>
&gt;&gt;<br>
&gt;&gt; ERROR: Task (virtual:native:/data/poky/meta/recipes-graphics/mesa=
/mesa_21.0.1.bb:do_compile) failed with exit code &#39;1&#39;<br>
&gt;&gt;<br>
&gt;&gt; Poking around in tmp I found the file tmp/log/cooker/qemux86-64/c=
onsole-latest.log<br>
&gt;&gt;<br>
&gt;&gt; This file contained the actual compilation error that caused the =
build failure:<br>
&gt;&gt;<br>
&gt;&gt; mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: f=
atal error: sensors/sensors.h: No such file or directory<br>
&gt;&gt;<br>
&gt;&gt; How can I fix this? Should I been choosing a different recipe? I =
am surprised that what is supposed to be a minimal bootable image has a 3D =
graphics library (mesa) in it. I am also surprised that a 3D graphics libra=
ry needs access to a sensors library.<br>
&gt;&gt;<br>
&gt;&gt; Any help appreciated.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; Gregg<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <br>
&gt;&gt;<br>
</blockquote></div>

--000000000000d8a61505c1cefbe7--
