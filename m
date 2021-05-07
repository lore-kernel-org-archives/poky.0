Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
 by mx.groups.io with SMTP id smtpd.web09.366.1620430104700972372
 for <poky@lists.yoctoproject.org>;
 Fri, 07 May 2021 16:28:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWXV46cM;
 spf=pass (domain: gmail.com, ip: 209.85.221.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f171.google.com with SMTP id u200so2252712vku.3
        for <poky@lists.yoctoproject.org>; Fri, 07 May 2021 16:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sLTqiMQokFZpO+B5UtK7J3AioBs/dytpODZs6ot2KEI=;
        b=gWXV46cM6M5WLxZLTtIKNyku3fHL7RH7MjQWc7chQHeqdEhxZCB4GtZ0rud4s9e3+V
         Kvivg2tPZGMiNkNWvPlH9GK8b8GgzWSXKhh81/Ct1Sh7y07v1hH0v7PpW2o+N7fBKBSB
         DvqEKXKJyfme0xn7ksJKq8L/JxJKWUqfPD9Pt4hWczljNyeGxMJ8+9xpH1w+jBk8DZUe
         vEGpmmBNAscFPk8jkZP9yk8wWX1UYRKvQPeWVgOgCwUFcGJPMt1rJik9yNs/JZ18Uo4H
         7ZIg0dxP2IdE0PbSe33IlCJY8dhTR5bLbfHRu86tSjX0FDxF1WJNbXe7Z8w53jkCDmtf
         LjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sLTqiMQokFZpO+B5UtK7J3AioBs/dytpODZs6ot2KEI=;
        b=mpkg+8FxgEfYPA6RiQtgKO43aZcp/Gsdn82Js54ceCcwy2ZI75VyQITMKeO9nyIQSu
         PgGRY0KW7L9ZNUIGV3K5E8ByyrKHwmpcRXis87cbZHC/LDIALYdIvCikd827sUqBEXTU
         9ZSPhlpWBedo1PPv+KbIfhS+E5NpRTZd/UFVJuFuiVrfBZlk5oDSHOF9wdyN3IwM3zU9
         NSUrbT33u266D5blWUJF5GCYFgOpxGr2Gs6Chv2RxTrXxNNSwps+9v/cjzMzLj4qaw97
         7HQVhL4Y7VUtCnwjycZul9sKqMju1XX2pPU8YSbvUGprVWIpUjQw5Ghj1Lm/E/bINX8x
         LWWA==
X-Gm-Message-State: AOAM533BEHsb5y3Jhl0xsml4UowPXH8gAejPCw0I6D5bAnZ2HZn0qlIA
	cZ7+hV59+Zuv6n0U3e0vC72uB3v2PcXXqdlTtrs=
X-Google-Smtp-Source: ABdhPJy/9YENYvuyo0XNnhpmbP/G/WX9RJ/JB/rvXiKSpLA2VvD923I8txipNUKOCBsPz8fldqrit5xZ/8hU3opm2jE=
X-Received: by 2002:a1f:b217:: with SMTP id b23mr10462871vkf.16.1620430103783;
 Fri, 07 May 2021 16:28:23 -0700 (PDT)
MIME-Version: 1.0
References: <xhBQ.1620428935778891624.YkUE@lists.yoctoproject.org>
In-Reply-To: <xhBQ.1620428935778891624.YkUE@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 8 May 2021 01:28:12 +0200
Message-ID: <CANNYZj8ySD-VwVWoq_1M-g6B8QHsg5Qd6GeVK6KBu7srfo_GUA@mail.gmail.com>
Subject: Re: [poky] Building core-image-minimal fails
To: gnemas@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b82cba05c1c5c85d"

--000000000000b82cba05c1c5c85d
Content-Type: text/plain; charset="UTF-8"

The build output should refer to log.do_compile, can you please attach
that, and log.do_configure from the same directory, so it's possible to see
why mesa is trying to use libsensors?

As a quick fix, can you delete the libsensors development package from your
host?

Alex

On Sat, 8 May 2021 at 01:09, <gnemas@gmail.com> wrote:

> I am new to Yocto. I thought a good way to start would be to try to build
> a stock image. The "core-image-minimal" recipe seemed loke a good choice.
> However, it did not go well. The build ends in an error (see below).
>
> Here are the steps I took.
>
>     sudo yum install <Centos 7 package list shown in Yocto Reference
> Manual>
>
>     git clone -b hardknott git://git.yoctoproject.org/poky.git
>     cd poky
>
>     # My host is a Centos 7 machine, so I installed the buildtools SDK
>     scripts/install-buildtools
>     . buildtools/environment-setup-x86_64-pokysdk-linux
>
>     . oe-init-build-env
>
>     bitbake core-image-minimal
>
> After a couple of hours, the build terminated with an error:
>
> ERROR: Task
> (virtual:native:/data/poky/meta/recipes-graphics/mesa/mesa_21.0.1.bb:do_compile)
> failed with exit code '1'
>
> Poking around in tmp I found the file
> tmp/log/cooker/qemux86-64/console-latest.log
>
> This file contained the actual compilation error that caused the build
> failure:
>
> mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: fatal
> error: sensors/sensors.h: No such file or directory
>
> How can I fix this? Should I been choosing a different recipe? I am
> surprised that what is supposed to be a minimal bootable image has a 3D
> graphics library (mesa) in it. I am also surprised that a 3D graphics
> library needs access to a sensors library.
>
> Any help appreciated.
>
> Thanks,
>
> Gregg
>
>
> 
>
>

--000000000000b82cba05c1c5c85d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The build output should refer to log.do_compile, can =
you please attach that, and log.do_configure from the same directory, so it=
&#39;s possible to see why mesa is trying to use libsensors?</div><div><br>=
</div><div>As a quick fix, can you delete the libsensors development packag=
e from your host?<br></div><div><br></div><div>Alex<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 8 May =
2021 at 01:09, &lt;<a href=3D"mailto:gnemas@gmail.com">gnemas@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
>I am new to Yocto. I thought a good way to start would be to try to build =
a stock image. The &quot;core-image-minimal&quot; recipe seemed loke a good=
 choice. However, it did not go well. The build ends in an error (see below=
).</div>
<div>=C2=A0</div>
<div>Here are the steps I took.</div>
<div>=C2=A0</div>
<div><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=A0 s=
udo yum install &lt;Centos 7 package list shown in Yocto Reference Manual&g=
t;</span></div>
<div>=C2=A0</div>
<div><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=A0 g=
it clone -b hardknott git://<a href=3D"http://git.yoctoproject.org/poky.git=
" target=3D"_blank">git.yoctoproject.org/poky.git</a></span></div>
<div><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=A0 c=
d poky</span></div>
<div><br><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=
=A0 # My host is a Centos 7 machine, so I installed the buildtools SDK</sp=
an></div>
<div><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=A0 s=
cripts/install-buildtools</span></div>
<div><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=A0 .=
 buildtools/environment-setup-x86_64-pokysdk-linux</span></div>
<div>=C2=A0</div>
<div><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=A0 .=
 oe-init-build-env</span></div>
<div>=C2=A0</div>
<div><span style=3D"font-family:&quot;lucida grande&quot;">=C2=A0 =C2=A0 b=
itbake core-image-minimal</span></div>
<div>=C2=A0</div>
<div>After a couple of hours, the build terminated with an error:</div>
<div>=C2=A0</div>
<div>ERROR: Task (virtual:native:/data/poky/meta/recipes-graphics/mesa/mes=
a_21.0.1.bb:do_compile) failed with exit code &#39;1&#39;</div>
<div>=C2=A0</div>
<div>Poking around in tmp I found the file tmp/log/cooker/qemux86-64/conso=
le-latest.log</div>
<div>=C2=A0</div>
<div>This file contained the actual compilation error that caused the buil=
d failure:</div>
<div>=C2=A0</div>
<div>mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: fatal=
 error: sensors/sensors.h: No such file or directory</div>
<div>=C2=A0</div>
<div>How can I fix this? Should I been choosing a different recipe? I am s=
urprised that what is supposed to be a minimal bootable image has a 3D grap=
hics library (mesa) in it. I am also surprised that a 3D graphics library n=
eeds access to a sensors library.</div>
<div><br>Any help appreciated.<br><br></div>
<div>Thanks,</div>
<div>=C2=A0</div>
<div>Gregg</div>
<div>=C2=A0</div>
<br>
<br>
<br>
</blockquote></div>

--000000000000b82cba05c1c5c85d--
