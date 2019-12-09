Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web12.15627.1575918179838207263
 for <poky@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 11:03:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qwaEslA9;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id d71so6104141qkc.0
        for <poky@lists.yoctoproject.org>; Mon, 09 Dec 2019 11:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9kZ6PpdM74HnnHCdcXHm8gtzbGwYtywDANOFK2LG2mg=;
        b=qwaEslA9WeqFY58aNL76juwPKIR0DkDSdOgG+MphKjSH6aQVE8HTzGJnl4z17xCuJP
         J3H/MexxB3+s81Ece72c0CgokIbFyMx8uyf12hd8Kf62bvVjhG0Mi7AIEdwbzCUa2095
         Pm75qD5ZZwosFKfQi56SbIT2UPZHxj5I6fjbSHElmCZ8jRLOsT6rrYGaoIo0rDcleP7E
         TW2e8GoDg+3tyrCam1Tvk8j2XU0M/c8tUUfmmC8XCPB8mAArKkx26AX+dQWXBGmIhHW1
         uKSj47fgMNrL1hZ6zQ06637mSDbwA3uws/JX/iwpLgxSzmecG+ocBt1bogjBJvXEJXSw
         kaHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9kZ6PpdM74HnnHCdcXHm8gtzbGwYtywDANOFK2LG2mg=;
        b=hrtgupc79DTT+ijuFfalHwIDcSVBT4qJ2lZp7o1yBhaXahY3uGCzgGBEYtccj00U7b
         0NSEYR7Q8LfGArpsZwRiHlsIo/CPChOjYCBVha5UwFJg8vpdkr4byokgD/ppK1QbE6+U
         WK67vebSQ4prsDxJVQmuXrbxSM/MU2qJnZTj5QzvVCiPkyIejHZO2vN2oMRReNxcky5v
         QsJ5Q9Jin9Kyyda0NjSqBQTv/TgQnbtjX7TJ+eCQ0RqThhudyg9YLfI7k6g87Xgy6wYs
         fZ5xsU4ESJ3RFMA0eFsl6WF1+1WTIfhpOZrtAQUV1MLpRXLXrrnMKCSt9AqYqbm61+nR
         TvZQ==
X-Gm-Message-State: APjAAAX1oo5xQHHYa7SnShsBIAvAe+mCryTh95FZ48tlKotUL2oCQbva
	ORtokVe6l5pQs2OrIIvDXZPLrvUgOcApGqbpQo6U8TMEDCI=
X-Google-Smtp-Source: APXvYqyG+v7QxRWZxTbp+atAiLlVf8zzBCEV2gxO2nj8eRwiY3xF+0q+gmTb7gzW8fjiXiiJplSO5sK93M5AC+lTgig=
X-Received: by 2002:a37:4cd3:: with SMTP id z202mr29323233qka.212.1575918178362;
 Mon, 09 Dec 2019 11:02:58 -0800 (PST)
MIME-Version: 1.0
References: <20191206101849.hvhc5itxvxfxoap6@qschulz> <CAMKF1srL4gGxGx6DtHVN3=6uzn7KEGAQXcyypgw+7R6OZUjgsQ@mail.gmail.com>
 <20191209104222.lddk55rzv6lrwlp4@qschulz>
In-Reply-To: <20191209104222.lddk55rzv6lrwlp4@qschulz>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 9 Dec 2019 11:02:29 -0800
Message-ID: <CAMKF1sp+rmXSrNqXD5k0Z1oC8rKtZA5xo9-OmJLYG2sS4SwWEg@mail.gmail.com>
Subject: Re: [poky] [BUG] icecc breaks gobject-introspection do_compile on 2.7.2 and master
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: poky@lists.yoctoproject.org, andriy.danylovskyy@streamunlimited.com, 
	radek.dostal@streamunlimited.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/g-ir-scanner-qemuwrapper
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/tools/g-ir-compiler
-o gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir
/tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r=
0/build/gir
--includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspec=
tion/1.62.0-r0/gobject-introspection-1.62.0/gir


try to run above cmd manually with some verbosity

On Mon, Dec 9, 2019 at 2:42 AM Quentin Schulz
<quentin.schulz@streamunlimited.com> wrote:
>
> Hi Khem,
>
> On Fri, Dec 06, 2019 at 11:25:52AM -0800, Khem Raj wrote:
> > On Fri, Dec 6, 2019 at 2:18 AM Quentin Schulz
> > <quentin.schulz@streamunlimited.com> wrote:
> > >
> > > Hi all,
> > >
> > > I've *sometimes* encountered a build failure on gobject-introspection=
 in
> > > warrior 2.7.2.
> > >
> > > Here is how to reproduce:
> > >
> > > git clone git://git.yoctoproject.org/poky
> > > cd poky
> > > git checkout 109ef2e5c4161a2c0ac58bede3daa48c7b4881ec #for master I t=
ested or warrior-21.0.2
> > > source oe-init-build-env
> > > echo 'ICECC_PATH =3D "/usr/bin/icecc"' >> conf/local.conf
> > > echo 'INHERIT +=3D "icecc"' >> conf/local.conf
> > > while true; do (bitbake gobject-introspection -c cleansstate && bitba=
ke gobject-introspection -c compile) || break ; done
> > >
> > > Full log is attached, the interesting excerpt is here:
> > > [71/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introsp=
ection/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/co=
re2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler=
 -o gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tm=
p/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --incl=
udedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1=
.62.0-r0/gobject-introspection-1.62.0/gir
> > > FAILED: gir/cairo-1.0.typelib
> > > /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.=
62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-po=
ky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/c=
airo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/co=
re2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /t=
mp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/=
gobject-introspection-1.62.0/gir
> > > If the above error message is about missing .so libraries, then setti=
ng up GIR_EXTRA_LIBS_PATH in the recipe should help.
> > > (typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
> > >
> >
> > if you look into logs a bit more then most probably
> > qemu-user is crashing.
> >
>
> I have attached the full Yocto do_compile log to the original mail, I
> don't see anything related to qemu-user.
>
> What do you mean with that sentence? Is there some other logs I could
> check?
>
> Thanks,
> Quentin
