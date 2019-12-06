Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web09.8769.1575660379982496273
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 11:26:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o+JKJ5MI;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id a10so7410149qko.9
        for <poky@lists.yoctoproject.org>; Fri, 06 Dec 2019 11:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=SdJyzM4hUTA6yakmZ0/FFtzuQAvhL6tL8yOQrjeIrkg=;
        b=o+JKJ5MIQv2aj4uDJYUAOqoYs6/fAMNSNsCsr6mp5v5DyBzY1Jd5njYoHkvKA4HWk5
         tSqWsEgxQj7WEHJ0rSuDJVQyQb53cVZZxVromCqtuhLLmitQBrgZO8gdxCfApCXUTIh1
         BAzOfNWQRmaKcj7Wt/eyPEEsOY4m99VNxylfxjbazFV9Be18Qe2UrsMJXKGiciyFXtY6
         p9F9wlHbYHl4HiELsXtE3phE1H+fKLlY+pJt2u87zbvq3xfvfvdZ/qEQ7aK2T52MUz2j
         inZN1UzOBDsWoLuovwmWyoM43UeUMF+lr80uXh+bilya0SRKqtJES3Aqwub+x/gswlhM
         C+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=SdJyzM4hUTA6yakmZ0/FFtzuQAvhL6tL8yOQrjeIrkg=;
        b=qlyMIpR3ODk4I7sp8UelhqLFqi8m78Qi0wuza++BV8dWYcpyt+kI956QNMzMRD3hNW
         59Zh7T4iYWTXsT6bFQtUrRBSOYBAIEhQA6owmJjxpUyTo8PEQ7Fh1CdNmcrP4fv9I8Gp
         HMx/cqPiScTHBzNFd7OaOI2SdwC3gmR3vZZz0/sKoAjBu17QOldMU/mqRtr/5f9xf5Jq
         SlklStomdbk63gTHDk44vbX54TbXr7PcqSx34mC1ir9vYqqn6Kxw82heHEsOkHnTFm/h
         YPi18CjCbqvwngsgbdy1hJ10N/cTHdAwpbFkJgnLQMA0xhMrnPtf0UTwX+HQzWeVGKAy
         uWIw==
X-Gm-Message-State: APjAAAWJj9WVRJibp2aiaIa5BapFD6b7QG6WAucDWXTJAfD18/hmWKgE
	XpWKt/vga0qnrhCMkAR7VXAwd8jE0aUIY2+y2CNSZ70C
X-Google-Smtp-Source: APXvYqxxHcYvOUWddQfieXG79h8cWBeC6slZoYTHO9jNsOWlQFV960BDukcqhAGDb3QSrd/Tt8zMEtrZzLbZQPSscc0=
X-Received: by 2002:ae9:ef50:: with SMTP id d77mr15299920qkg.71.1575660378582;
 Fri, 06 Dec 2019 11:26:18 -0800 (PST)
MIME-Version: 1.0
References: <20191206101849.hvhc5itxvxfxoap6@qschulz>
In-Reply-To: <20191206101849.hvhc5itxvxfxoap6@qschulz>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 6 Dec 2019 11:25:52 -0800
Message-ID: <CAMKF1srL4gGxGx6DtHVN3=6uzn7KEGAQXcyypgw+7R6OZUjgsQ@mail.gmail.com>
Subject: Re: [poky] [BUG] icecc breaks gobject-introspection do_compile on 2.7.2 and master
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: poky@lists.yoctoproject.org, andriy.danylovskyy@streamunlimited.com, 
	radek.dostal@streamunlimited.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2019 at 2:18 AM Quentin Schulz
<quentin.schulz@streamunlimited.com> wrote:
>
> Hi all,
>
> I've *sometimes* encountered a build failure on gobject-introspection in
> warrior 2.7.2.
>
> Here is how to reproduce:
>
> git clone git://git.yoctoproject.org/poky
> cd poky
> git checkout 109ef2e5c4161a2c0ac58bede3daa48c7b4881ec #for master I teste=
d or warrior-21.0.2
> source oe-init-build-env
> echo 'ICECC_PATH =3D "/usr/bin/icecc"' >> conf/local.conf
> echo 'INHERIT +=3D "icecc"' >> conf/local.conf
> while true; do (bitbake gobject-introspection -c cleansstate && bitbake g=
object-introspection -c compile) || break ; done
>
> Full log is attached, the interesting excerpt is here:
> [71/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspecti=
on/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o =
gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/wo=
rk/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --included=
ir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.=
0-r0/gobject-introspection-1.62.0/gir
> FAILED: gir/cairo-1.0.typelib
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-l=
inux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/cairo=
-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/core2-=
64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/p=
oky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobj=
ect-introspection-1.62.0/gir
> If the above error message is about missing .so libraries, then setting u=
p GIR_EXTRA_LIBS_PATH in the recipe should help.
> (typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
>

if you look into logs a bit more then most probably
qemu-user is crashing.

> This tells us pretty much nothing. It's not the only line, all next ones
> are failing with the same cryptic error message.
>
> So I replaced the ninja call in run.do_compile by that exact line above
> and ran run.do_compile manually, the outcome is:
> Error while loading /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-=
introspection/1.62.0-r0/build/tools/g-ir-compiler: No such file or director=
y
> If the above error message is about missing .so libraries, then setting u=
p GIR_EXTRA_LIBS_PATH in the recipe should help.
> (typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
> WARNING: exit code 1 from a shell command.
>
> And indeed, the file is not there and is there every time the
> compilation works.
>
> $ find /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection=
/1.62.0-r0/ -name "*g-ir-compiler*"
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/build/tools/f9d35d4@@g-ir-compiler@exe
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/build/g-ir-compiler-wrapper
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/gobject-introspection-1.62.0/docs/website/tools/g-ir-compiler.rst
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/gobject-introspection-1.62.0/docs/g-ir-compiler.1
> /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0=
-r0/recipe-sysroot-native/usr/bin/g-ir-compiler
>
> Disabling ICECC for that recipe makes it work just fine.
>
> 1) Does anyone have any idea about what's happening?
> 2) Can we have the complete error message in log.do_compile instead of
> the line "Error while loading /tmp/poky/build/tmp/work/core2-64-poky-linu=
x/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler: No such file o=
r directory"
> missing?
>
> FYI, I run Ubuntu 18.04.03 and most of the company is using that one or
> 16.04. I have icecc 1.1-2.
>
> BR,
> Quentin
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11857): https://lists.yoctoproject.org/g/poky/message=
/11857
> Mute This Topic: https://lists.yoctoproject.org/mt/67467053/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
