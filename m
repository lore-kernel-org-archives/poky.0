Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web11.9364.1575888146316537372
 for <poky@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 02:42:26 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47WfsD0nc3z5tlD;
	Mon,  9 Dec 2019 11:42:24 +0100 (CET)
Date: Mon, 9 Dec 2019 11:42:22 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org, andriy.danylovskyy@streamunlimited.com,
	radek.dostal@streamunlimited.com
Subject: Re: [poky] [BUG] icecc breaks gobject-introspection do_compile on 2.7.2 and master
Message-ID: <20191209104222.lddk55rzv6lrwlp4@qschulz>
References: <20191206101849.hvhc5itxvxfxoap6@qschulz>
 <CAMKF1srL4gGxGx6DtHVN3=6uzn7KEGAQXcyypgw+7R6OZUjgsQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srL4gGxGx6DtHVN3=6uzn7KEGAQXcyypgw+7R6OZUjgsQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Khem,

On Fri, Dec 06, 2019 at 11:25:52AM -0800, Khem Raj wrote:
> On Fri, Dec 6, 2019 at 2:18 AM Quentin Schulz
> <quentin.schulz@streamunlimited.com> wrote:
> >
> > Hi all,
> >
> > I've *sometimes* encountered a build failure on gobject-introspection in
> > warrior 2.7.2.
> >
> > Here is how to reproduce:
> >
> > git clone git://git.yoctoproject.org/poky
> > cd poky
> > git checkout 109ef2e5c4161a2c0ac58bede3daa48c7b4881ec #for master I tested or warrior-21.0.2
> > source oe-init-build-env
> > echo 'ICECC_PATH = "/usr/bin/icecc"' >> conf/local.conf
> > echo 'INHERIT += "icecc"' >> conf/local.conf
> > while true; do (bitbake gobject-introspection -c cleansstate && bitbake gobject-introspection -c compile) || break ; done
> >
> > Full log is attached, the interesting excerpt is here:
> > [71/101] /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
> > FAILED: gir/cairo-1.0.typelib
> > /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/g-ir-scanner-qemuwrapper /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/tools/g-ir-compiler -o gir/cairo-1.0.typelib gir/cairo-1.0.gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/build/gir --includedir /tmp/poky/build/tmp/work/core2-64-poky-linux/gobject-introspection/1.62.0-r0/gobject-introspection-1.62.0/gir
> > If the above error message is about missing .so libraries, then setting up GIR_EXTRA_LIBS_PATH in the recipe should help.
> > (typically like this: GIR_EXTRA_LIBS_PATH="${B}/something/.libs" )
> >
> 
> if you look into logs a bit more then most probably
> qemu-user is crashing.
> 

I have attached the full Yocto do_compile log to the original mail, I
don't see anything related to qemu-user.

What do you mean with that sentence? Is there some other logs I could
check?

Thanks,
Quentin
