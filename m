Return-Path: <tolvupostur@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CFEBC4332F
	for <webhook@archiver.kernel.org>; Thu, 14 Dec 2023 09:43:37 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web11.18502.1702547016064450025
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 01:43:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JaI+1xsq;
 spf=pass (domain: gmail.com, ip: 209.85.217.51, mailfrom: tolvupostur@gmail.com)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-4665d7c670dso51158137.1
        for <poky@lists.yoctoproject.org>; Thu, 14 Dec 2023 01:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702547015; x=1703151815; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGHkrV0UEffPdTE9KjM5qMuWqT5nz7KKzHj6h8uZ1gc=;
        b=JaI+1xsqi2KDprW0h1fFX6IUhKLLoHGzQapbSDqhmYvGxadKoeIFmdszgV43DRv84N
         lp4flC8+PkeUV8mQjFzkdsgEDJEd2zotgSkzaLN+fbdtwvQGQ8btsMxzi/UwjOyL7NXP
         vyRe6ffd0wo1QXDZ7JIiC3G89GIUKyFi9ZuUevg4iC+5Atz9M7FZ1DyC3exkWl2tuJE5
         Yn3paerXtd5mcfuQXbdRvqJ8FqBxwAJXxp+ZUj4SsOZhEVzfBWNyOSu9Hp7w21AjkIVf
         TL3YDMN6yn2m3XuCRKnlPXa/zT7Enaxcfj1Tbn80G3D743KiQryftleVdyj9ALJicF8p
         SJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702547015; x=1703151815;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZGHkrV0UEffPdTE9KjM5qMuWqT5nz7KKzHj6h8uZ1gc=;
        b=tvSInAtBFJXSa1IPy2iiTN9LEV82PUkT4VAtkeFh2su1a6XkevwyRkHyuR7T9bWH3J
         BsyMtmUEgCd5Ew/evYe4KqyuvELSEm9bjGEE39S6DjKkZO57BFLZ/SmvgVDwMhvqNYoa
         tLbKeT2S8nXDKPvoZq2jWK851yR6W2rRHmWclAKYa3sRHmXWbF6x5w6gAUqEg0ctCr9e
         vz3uvjH29G2NVqAz/0AeY5g8JAes/SaKBFFMidE//kbXE/y5lV52uA8qKN98Wg8Glg/M
         3yhjnRE8y8HBe+fre6Xwv8/oZ8GM0544T7cFY1nNYETRIAtfpMB8sYBj56ETosIyoi5W
         Cppg==
X-Gm-Message-State: AOJu0YxoGIo+wqx4V14i3Q/Gn6Bc94uGP+z8L/+z/Uyr9nSjGxyDCnRA
	aY/5E5HXBtCfcP4RD/9fZgaNOzweeAUc2AFOrwo=
X-Google-Smtp-Source: AGHT+IFt14TJOYLQVqvWxeE2Od1gXfpwGA9EIDSsBYUmtE37iNBuEi7m3cznGEzxUQddY5FNv475SgDD9jG0UEOl49A=
X-Received: by 2002:a05:6102:f14:b0:464:8eb5:bed3 with SMTP id
 v20-20020a0561020f1400b004648eb5bed3mr4423759vss.24.1702547014861; Thu, 14
 Dec 2023 01:43:34 -0800 (PST)
MIME-Version: 1.0
References: <CABhNV20HP8rNTkEfnUqbju43Z7K=LOHNanUc1nosnvHprxUa7A@mail.gmail.com>
 <CABhNV21oUdDU7dULZOin11ex4UPGt5dLA0yoBkSQTbBaHw-abw@mail.gmail.com> <44A9502F-A654-4A0B-B4D9-3E1AB8DB1130@arm.com>
In-Reply-To: <44A9502F-A654-4A0B-B4D9-3E1AB8DB1130@arm.com>
From: =?UTF-8?Q?Einar_J=C3=B3n?= <tolvupostur@gmail.com>
Date: Thu, 14 Dec 2023 10:43:23 +0100
Message-ID: <CABhNV22wnHhziPuoz3yBKu=WZMCBsQwj8NrvoVXTD8-MZ4SYxw@mail.gmail.com>
Subject: Re: [poky] [question]: Creating tailored image without standard
 rootfs files?
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000008cf13060c751e83"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 14 Dec 2023 09:43:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13216

--00000000000008cf13060c751e83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 13 Dec 2023 at 19:11, Ross Burton <Ross.Burton@arm.com> wrote:

> On 13 Dec 2023, at 15:57, Einar Gunnarsson via lists.yoctoproject.org
> <tolvupostur=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello,
> >
> > I basically want to be able to build an ext4 image for an extra
> partition that is not a rootfs.
> >
> > So I don't need the kernel, or /run /var /etc folders or anything like
> that.
> > Just a few packages are needed, but with a QT app on that partition,
> loads of dependencies are pulled in and I end up with +80 entries in the
> manifest.
> >
> > This was asked 10 years ago, but I still have the same issue now.
> > https://docs.yoctoproject.org/pipermail/yocto/2013-March/012804.html
> >
> > This image would then be used by wic as well as swupdate, as a non-root
> partition.
> > Are there some tweaks to actually build an image without pulling in
> everything needed for a rootfs*?
> > I tried making my own tweaked version of image.bbclass, but I got lost
> in the abstraction.
> >
> >
> > *) Building a basic container-test-image with a linux-dummy still has
> all the folders /bin /boot /dev /etc /home /lib /media /mnt /proc /run
> /sbin /sys /tmp /usr /var
> > and +20 entries in the manifest (17MB of stuff), just for a 12KB binary
> (/usr/bin/theapp).
>
> If you set PACKAGE_INSTALL in your image then you override the implicit
> packages which can pull in dependencies.
>

Right. I had packagegroup-core-ssh-openssh there, coming through
IMAGE_FEATURES.

Unsetting IMAGE_LINGUAS and IMAGE_FEATURES will ensure that you don=E2=80=
=99t get
> any surprising features or locales installed.
>

poky/meta-selftest/recipes-test/container-image/container-test-image.bb
does unset IMAGE_LINGUAS.
Clearing IMAGE_FEATURES was the issue, and that pulled in these 20+
packages.

With IMAGE_FEATURES=3D"" there's only one package in the manifest, and the
only extra files are
./etc/ld.so.cache ./etc/timestamp   ./etc/version

The /var/{cache,lib} and /run and folders are still there, but the manifest
is clean and the uncompressed tarball went from 17MB to 20KB.
These I can just get rid of with some  ROOTFS_POSTPROCESS_COMMAND
shenanigans.

However, if you have a non-statically linked Qt app that will obviously
> depend on other pieces of the system (such as libqt, so libx11, etc etc).
> This is a policy choice for you though: should apps in this partition be
> self-contained (so they either pull in their deps, or are statically
> linked), or depend on the contents of the main rootfs?
>
> If the latter then you can either actually build one rootfs and use wic t=
o
> split it into separate partitions, or define a dummy recipe that defines
> the =E2=80=9CABI=E2=80=9D that your rootfs provides: this can RPROVIDES t=
he names that you
> don=E2=80=99t want in the second partition (like libx11) and by installin=
g that the
> dependencies will be satisfied.
>

I do want them to depend on the contents of the main rootfs. But splitting
them up only in the wic puts them in the rootfs.ext4.
That creates issues for dm-verity, swupdate and more. I would not like to
deal with those issues.

But at least I have a starting point with container-test-image.bb and
clearing those variables.
Thanks.


> Ross


--=20
Regards
Einar J=C3=B3n

--00000000000008cf13060c751e83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 13 Dec 2023 at 19:11, Ross Bu=
rton &lt;<a href=3D"mailto:Ross.Burton@arm.com" target=3D"_blank">Ross.Burt=
on@arm.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 13 Dec 2023, at 15:57, Einar Gunnarsson via <a href=3D"http:/=
/lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctopr=
oject.org</a> &lt;tolvupostur=3D<a href=3D"mailto:gmail.com@lists.yoctoproj=
ect.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<=
br>
&gt; <br>
&gt; Hello,<br>
&gt; <br>
&gt; I basically want to be able to build an ext4 image for an extra partit=
ion that is not a rootfs.<br>
&gt; <br>
&gt; So I don&#39;t need the kernel, or /run /var /etc folders or anything =
like that.<br>
&gt; Just a few packages are needed, but with a QT app on that partition, l=
oads of dependencies are pulled in and I end up with +80 entries in the man=
ifest.<br>
&gt; <br>
&gt; This was asked 10 years ago, but I still have the same issue now.<br>
&gt; <a href=3D"https://docs.yoctoproject.org/pipermail/yocto/2013-March/01=
2804.html" rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.o=
rg/pipermail/yocto/2013-March/012804.html</a><br>
&gt; <br>
&gt; This image would then be used by wic as well as swupdate, as a non-roo=
t partition.<br>
&gt; Are there some tweaks to actually build an image without pulling in ev=
erything needed for a rootfs*?<br>
&gt; I tried making my own tweaked version of image.bbclass, but I got lost=
 in the abstraction.<br>
&gt; <br>
&gt; <br>
&gt; *) Building a basic container-test-image with a linux-dummy still has =
all the folders /bin /boot /dev /etc /home /lib /media /mnt /proc /run /sbi=
n /sys /tmp /usr /var<br>
&gt; and +20 entries in the manifest (17MB of stuff), just for a 12KB binar=
y (/usr/bin/theapp).<br>
<br>
If you set PACKAGE_INSTALL in your image then you override the implicit pac=
kages which can pull in dependencies.<br></blockquote><div></div><div></div=
><div><br></div><div>Right. I had packagegroup-core-ssh-openssh there, comi=
ng through=C2=A0
IMAGE_FEATURES.</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
Unsetting IMAGE_LINGUAS and IMAGE_FEATURES will ensure that you don=E2=80=
=99t get any surprising features or locales installed.<br></blockquote><div=
><br></div><div>poky/meta-selftest/recipes-test/container-image/<a href=3D"=
http://container-test-image.bb">container-test-image.bb</a> does unset=20
IMAGE_LINGUAS. <br>Clearing=20
IMAGE_FEATURES was the issue, and that pulled in these 20+ packages. <br></=
div><div></div><div><br></div><div>With=20
IMAGE_FEATURES=3D&quot;&quot; there&#39;s only one package in the manifest,=
 and the only extra files are<br>./etc/ld.so.cache ./etc/timestamp=C2=A0=C2=
=A0 ./etc/version=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br></div><div><br></div><d=
iv>The /var/{cache,lib} and /run and folders are still there, but the manif=
est is clean and the uncompressed tarball went from 17MB to 20KB.<br></div>=
<div>These I can just get rid of with some=C2=A0 ROOTFS_POSTPROCESS_COMMAND=
 shenanigans.<br></div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
However, if you have a non-statically linked Qt app that will obviously dep=
end on other pieces of the system (such as libqt, so libx11, etc etc).=C2=
=A0 This is a policy choice for you though: should apps in this partition b=
e self-contained (so they either pull in their deps, or are statically link=
ed), or depend on the contents of the main rootfs?<br>
<br>
If the latter then you can either actually build one rootfs and use wic to =
split it into separate partitions, or define a dummy recipe that defines th=
e =E2=80=9CABI=E2=80=9D that your rootfs provides: this can RPROVIDES the n=
ames that you don=E2=80=99t want in the second partition (like libx11) and =
by installing that the dependencies will be satisfied.<br></blockquote><div=
><br></div><div>
<div>I do want them to depend on the contents of the main rootfs. But split=
ting them up only in the wic puts them in the rootfs.ext4.<br> That creates=
 issues for dm-verity, swupdate and more. I would not like to deal with tho=
se issues.<br><br>But at least I have a starting point with <a href=3D"http=
://container-test-image.bb">container-test-image.bb</a> and clearing those =
variables.<br></div><div>Thanks.<br></div></div><div>=C2=A0<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
Ross</blockquote></div><br><span class=3D"gmail_signature_prefix">-- </span=
><br><div dir=3D"ltr" class=3D"gmail_signature">Regards<br>Einar J=C3=B3n<b=
r><br></div></div>

--00000000000008cf13060c751e83--

