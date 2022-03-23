Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.10057.1648046457905105413
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 07:40:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=f6VVNulw;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1648046458;
  x=1679582458;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=TDlShl/feXX/rKORqe1vRA17iHbdnaK4qePqrCU5Sv8=;
  b=f6VVNulw2YYsnjLQQ3pydN0ZWk46ArmR8DjHhMjHgd7kSC0MQRjWbO1a
   jQi2NjCpuA9MjxeHD60x0Ybz/jhG8tJ4ESSK+nRznd+hwI4+JJAsHS0Ek
   WcM+r0OErLZF4wTa0BvgGHzO2zzlgbVwjNL3mh9qkba80UBqhgdBeu5wb
   /TckcRQI6p17pznPczt8Rk/Q0ju+2yJxYa+1OIMUESSwkW+SwoeVeEOk5
   cuzfa3VMNAOPUGQxIK7OUkLvEcVV2aaBTnCjlftPZ7F/MD3pn2ZnbJdx8
   OqeFwKE1nM1vJFBPdDZsxYG2PA9WQ+hQmVMpUBRjqriLcFm7rjo2rOQJH
   Q==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: John Lemonovich <john.lemonovich@foresys.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Topic: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
 invoke dnf
Thread-Index: Adg+BWxnSx0rHyT7Q0WLXKcK19eJQwADCyeAAAFe63AAIinxgAAGn/SAAACxFqAAAXP+MA==
Date: Wed, 23 Mar 2022 14:40:54 +0000
Message-ID: <10ee9efc9517420ea1107e175506dde9@axis.com>
References: <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <YjoGJ/R4BV0gTa9N@piout.net>
 <MN2PR11MB3887035BDA3DE294BDEEB125E1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <35f50637a06a4488a8872bc8ead24821@axis.com>
 <16DF06ACABF4E6A1.29582@lists.yoctoproject.org>
 <MN2PR11MB3887199D7EB82A8E32438CAAE1189@MN2PR11MB3887.namprd11.prod.outlook.com>
In-Reply-To: <MN2PR11MB3887199D7EB82A8E32438CAAE1189@MN2PR11MB3887.namprd11.prod.outlook.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Return-Path: peter.kjellerstedt@axis.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: John Lemonovich <john.lemonovich@foresys.com>
> Sent: den 23 mars 2022 15:01
> To: John Lemonovich <john.lemonovich@foresys.com>; Peter Kjellerstedt
> <peter.kjellerstedt@axis.com>; Alexandre Belloni
> <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: RE: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
> invoke dnf
>=20
> Or... is it the different permissions on the /var/lib directory itself ?

Yes, it is. Everything about a directory must match for dnf/rpm to=20
allow it to be created by multiple packages.

In this case it seems the initscripts package you use has the wrong=20
permissions for /var/lib as it shall be 0755, not 0750. AFAICT, the=20
recipe in meta has created /var/lib with mode 0755 since the creation=20
of /var/lib/urandom was introduced in 2012 so it must be something in=20
one of your layers that change the behavior of the initscripts package.

//Peter

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> Of John Lemonovich via lists.yoctoproject.org
> Sent: Wednesday, March 23, 2022 9:49 AM
> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>; Alexandre Belloni
> <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
> invoke dnf
>=20
> Hi Peter,
>=20
> Thanks for the reply.  I looked at it and here is the difference.  Is it =
a
> problem that each one needs a different subdirectory within /var/lib/ ?
>=20
> From  tmp/deploy/rpm/cortexa9t2hf_neon/initscripts-1.0-r155.cortexa9t2hf_=
neon.rpm :
> drwxr-x---    2 root    root                        0 Apr  5  2011 /var/l=
ib
> drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/l=
ib/urandom
>=20
> From  tmp/deploy/rpm/arria10/base-files-3.0.14-r89.arria10.rpm:
> drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/l=
ib
> drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/l=
ib/misc
>=20
>=20
> I'm not sure what's causing the problem with the configuration - the step=
s
> to create the rootfs are given from Intel/Rocketboards and I would presum=
e
> worked at some point.  However, I will say that it's more common than not
> for a given set of build commands/steps  to NOT work by default without
> problems...
>=20
> Thanks,
> John
>=20
>=20
> -----Original Message-----
> From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> Sent: Wednesday, March 23, 2022 6:21 AM
> To: John Lemonovich <john.lemonovich@foresys.com>; Alexandre Belloni
> <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: RE: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
> invoke dnf
>=20
> > -----Original Message-----
> > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On
> > Behalf Of John Lemonovich
> > Sent: den 22 mars 2022 19:04
> > To: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: poky@lists.yoctoproject.org
> > Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could
> > not invoke dnf
> >
> > Thank you for the reply.  My apologies, here is the rest:
>=20
> [cut]
>=20
> > Transaction Summary
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > Install  25 Packages
> >
> > Total size: 2.0 M
> > Installed size: 3.8 M
> > Downloading Packages:
> > Running transaction check
> > Transaction check succeeded.
> > Running transaction test
> > Error: Transaction test error:
> >   file /var/lib conflicts between attempted installs of
> > initscripts-1.0-r155.cortexa9t2hf_neon and
> > base-files-3.0.14-r89.arria10
>=20
> This means that the two packages are trying to create /var/lib
> differently.
> If you run `rpm -qilvp <path to respective rpm file>`, you should be able
> to tell what the difference is. The rpm files can be found in
> "tmp/deploy/rpm/".
>=20
> Then you will have to determine what causes this difference in your
> configuration, because they do not differ in a standard poky build.
>=20
> //Peter

