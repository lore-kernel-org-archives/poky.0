Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48DBCF43698
	for <webhook@archiver.kernel.org>; Fri, 17 Apr 2026 12:06:21 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.43367.1776427575213567900
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Apr 2026 05:06:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F+h1CbUz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43cf7683a28so432437f8f.2
        for <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 05:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1776427573; x=1777032373; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=COfcM6Fj/4LvpyCdSYeg5qxD3zLMP0Uwl152BjIB66w=;
        b=F+h1CbUzNc2FcUHy/Fizf6WJ9xtcGx0gU9qK72l5vaYt4M8uudmTS1+bp4NqtI9rsy
         8oen7I2UnMImAoayZyrER21nP8+ZiKq86dpG4sdzv/YEVDiIwT0i1HJIUg27KY/pAWEr
         EjfSgqshEzoZ7u0NMFvv1soW7C3kKQ3Sirn4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776427573; x=1777032373;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=COfcM6Fj/4LvpyCdSYeg5qxD3zLMP0Uwl152BjIB66w=;
        b=MEhUfOeDMLdbtZ9Oyl35746917FeELNS4IQAmJADNnRNqmCw0sRfRPDjRyiQVj8Mmm
         8qEEhhwFJ3CnaFQC56qi4oM7o4PsS9PGXXhsxGF8wL3g7lbEewxu0Nr1WLQrl+BbkRY3
         6O9Co5j9MvwMVjLIId9oSfSTxEN4++RJU+33dmXIugoXTIP/DYQUuvzPHUqnt6qrZ0lN
         SGu5SHBgazoW3z9pWtDWUWTvbubek4IAgQDnC0l3pIuCYINBWh2xKn5LVj1N+xTxgtGx
         4eh2wHSezDvhSNejr5p2E4rapCD11s5L6i7kfgGnKr24AWyrAGYpAxxONjr1E61tdtkA
         9MpA==
X-Gm-Message-State: AOJu0YwyAAB5liZwhXppGiIxCfQpYNM2kUi5LKv/GV/R7BfdBZXC1g3C
	OVKp9JmKK45vfc/d+Ffi9t2KvB9mYFNe16hmzrqfLvBXbayO6V/u9lbD/ERznPPdmKo=
X-Gm-Gg: AeBDieuKrIx/5ZhSotSCgrBVichkDrKg1MBQXe1hclOXcJwyG245b+Ro0pLe5z+iPrD
	5OVGXJcH5fWqKhiV7p9B5I2BSLVmXz+I/LeqHIeGP/wGNB7MZZk3y9cBU/7PG3S/A58TVFfGvel
	ZiNE0NgPpOAMsRMZr5kFgo9pw4598HCw/mF5Eg6PV6ZoepKaLs4DEazCOYv96gKzhQtqGUn9PO6
	CZuiA10GK9GfxZagSAAkCUOb5cGS1vs5eINqYTYnSGP4YlnTi+lMJc9PT/BIZHqZrbLK4+/gy6Y
	hnbNXN6jnCLw79aAPsdLP8coMueuVThJmEL9L8c1l/8UJljiDuV7q4zSjpCT7aoQP9qAg3i6VCR
	DhHK/TDowsM+SxhPbZuVp0efQEhnq97z5FLSyaSK6RJ8JjCHQ0CWdZDC6Zy169rtWJT0ELiG5+0
	her4/v+UO+43FPpD05DVoDRzTVhrtXR4qrdLkSKxFUd1eNA7UZe7/5JYLFvxB97YsZ0LzcMW8Mf
	aXCFgCa9eTrwoqPIhr5j80/8dE=
X-Received: by 2002:a5d:5f87:0:b0:43d:1c21:ead4 with SMTP id ffacd0b85a97d-43fe3dcb248mr3759534f8f.18.1776427573201;
        Fri, 17 Apr 2026 05:06:13 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d1f3:409a:3cf5:1213? ([2001:8b0:aba:5f3c:d1f3:409a:3cf5:1213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4cb11b4sm4372562f8f.2.2026.04.17.05.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 05:06:12 -0700 (PDT)
Message-ID: <c39bc15ec611160c073b3c1338244d1ee6a99f5a.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v3] genericarm64 core-image-initramfs-boot:
 remove some kernel drivers
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: poky@lists.yoctoproject.org, Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 17 Apr 2026 13:06:11 +0100
In-Reply-To: <aeH8idgVfQ5I0UqT@nuoska>
References: <20260413072715.20701-1-mikko.rapeli@linaro.org>
	 <026091996b0e9f36733c8933fdf6f872625be247.camel@linuxfoundation.org>
	 <aeH8idgVfQ5I0UqT@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 12:06:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13909

On Fri, 2026-04-17 at 12:25 +0300, Mikko Rapeli wrote:
> Hi,
>=20
> On Fri, Apr 17, 2026 at 10:10:07AM +0100, Richard Purdie wrote:
> > On Mon, 2026-04-13 at 10:27 +0300, Mikko Rapeli via lists.yoctoproject.=
org wrote:
> > > genericarm64 supports a lot of HW and thus large collection of kernel
> > > drivers are enabled and installed to images by default.
> > > Subset of the kernel drivers are needed in initramfs to mount rootfs
> > > from local mass storage devices. This increases initramfs size a lot
> > > and with new kernel config updates even more. Thus remove kernel
> > > drivers from initramfs image which are not needed for mounting
> > > rootfs from local mass storage devices. GPU, Bluetooth, NFC,
> > > sound, networking etc support is not needed in the initramfs.
> > >=20
> > > According to buildhistory core-image-initramfs-boot size is reduced
> > > from 118 to 83 Mb.
> > >=20
> > > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > ---
> > > =C2=A0.../images/core-image-initramfs-boot.bbappend | 28 ++++++++++++=
+++++++
> > > =C2=A01 file changed, 28 insertions(+)
> > > =C2=A0create mode 100644 meta-yocto-bsp/recipes-core/images/core-imag=
e-initramfs-boot.bbappend
> > >=20
> > > v3: added PATHS_TO_REMOVE variable so that it can be customized
> > > =C2=A0=C2=A0=C2=A0 as suggested by Jose Quaresma <quaresma.jose@gmail=
.com>
> > >=20
> > > v2: https://lists.yoctoproject.org/g/poky/message/13894
> > >=20
> > > diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-=
boot.bbappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boo=
t.bbappend
> > > new file mode 100644
> > > index 000000000000..2298c2f94740
> > > --- /dev/null
> > > +++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bb=
append
> > > @@ -0,0 +1,28 @@
> > > +POSTFUNCS =3D ""
> > > +POSTFUNCS:genericarm64 =3D "reduce_initrd_size"
> > > +
> > > +PATHS_TO_REMOVE =3D ""
> > > +# these kernel modules are not needed for rootfs mount from local ma=
ss storage
> > > +# and can be loaded from main rootfs by udev
> > > +PATHS_TO_REMOVE:genericarm64 =3D "\
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/driv=
ers/bluetooth \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/driv=
ers/gpu \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/driv=
ers/media \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/driv=
ers/net \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/driv=
ers/nfc \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/driv=
ers/usb/gadget \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/f=
use \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/=
bluetooth \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/=
bridge \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/=
netfilter \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/=
nfc \
> > > +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/soun=
d \
> > > +"
> > > +
> > > +do_rootfs[postfuncs] +=3D "${POSTFUNCS}"
> > > +reduce_initrd_size () {
> > > +=C2=A0=C2=A0=C2=A0 if [ -n "${PATHS_TO_REMOVE}" ]; then
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${PATHS_TO_REMOVE}
> > > +=C2=A0=C2=A0=C2=A0 fi
> > > +}
> > > +
> >=20
> > This is a tough one. There are some simple things like "POSTFUNCS"
> > being a bit generic as a name. I also worry a little this may trip up
> > yocto-check-layer with the added variable POSTFUNCS, even if it is
> > empty. I think if we're creating this as API, listing the directories:
> >=20
> > =C2=A0=C2=A0=C2=A0 drivers/bluetooth \
> > =C2=A0=C2=A0=C2=A0 drivers/gpu \
> > =C2=A0=C2=A0=C2=A0 drivers/media \
> > =C2=A0=C2=A0=C2=A0 drivers/net \
> > =C2=A0=C2=A0=C2=A0 drivers/nfc \
> > =C2=A0=C2=A0=C2=A0 drivers/usb/gadget \
> > =C2=A0=C2=A0=C2=A0 fs/fuse \
> > =C2=A0=C2=A0=C2=A0 net/bluetooth \
> > =C2=A0=C2=A0=C2=A0 net/bridge \
> > =C2=A0=C2=A0=C2=A0 net/netfilter \
> > =C2=A0=C2=A0=C2=A0 net/nfc \
> > =C2=A0=C2=A0=C2=A0 sound \
> >=20
> > and then adding the prefix would probably be cleaner too. Those are all
> > easier tweaks.
> >=20
> > The bigger challenge is "generic" kernel adding all this. Ideally you
> > wouldn't install these things to the initramfs in the first place, then
> > you wouldn't need to delete them. I'm not sure how you could
> > detect/filter and install only the subset of modules you want, or how
> > that list of modules would be maintained/updated.
>=20
> kernel-modules correctly get installed to all images through MACHINE_EXTR=
A_RDEPENDS.
> This is flexible to drivers being built-in or modules. IMO initramfs
> image should not be explicitly tied to the exact kernel config and thus
> should not depend on the exact set of kernel module packages. A slightly =
more abstract
> interface between kernel and initramfs image is needed, and "kernel-modul=
es"
> decent at that. This works well for the real rootfs but is not optimal fo=
r
> initramfs.
>=20
> > A different package to "kernel-modules" could be one idea, how you
> > construct that, again, I'm less sure. The above filter list could be
> > used to iterate the modules and filter by path I guess?
>=20
> I had a patchset for this but ran into issues with it.
>=20
> https://lists.openembedded.org/g/openembedded-core/topic/112087526#msg214=
354
>=20
> I don't see how that can move forward though.

The problems there didn't seem unsolvable but I don't remember the full
details. I think we should revisit that in 6.1.

> > Now we've merged the firmware update, the builds are breaking but some
> > of these kinds of changes are probably too late for the release/LTS.
> >=20
> > Perhaps we just have to increase the size of the initramfs for now :(
>=20
> Sigh, alright then.

We're too close to release to start doing other things unfortunately.

Cheers,

Richard

