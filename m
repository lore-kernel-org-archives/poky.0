Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web09.7436.1648030882724997935
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 03:21:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=ehAbsCXT;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1648030883;
  x=1679566883;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=tjuWvI8LM2MiHiYoO1ZPL1z+SvWl/upQqd45bXrlPBY=;
  b=ehAbsCXTT9JUhlFl6nPrA1GrHkTE/iok1LDFWy2WOGRmlC9GKd4a97Ey
   v+l27sW33IeIFL4Pf0N2KnLsKaglcndaaqlT7Y9lqn4GcMxfF2WUVAhDe
   NMWM/7aTYup3S7P3Q0aUZDJD0R0d/A9mvRcAmyZdIOyfQ0FyrSp7EEes1
   Y2f+c9R8UFHEKFG2dTY0dKxBEiixujxMXeBv4zOmCvpcCfZTqPhzzBI1y
   a6dfL9hjsdU/DVfUmozRF5LnngH53M/NRm+TED8w4ee26eoCEAXJGd0Dw
   8cUTYvuVs+eWEwH0X3hyXx5qGK/rhYFWX5wCTyf8rhjY49ceW7S1nmIum
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: John Lemonovich <john.lemonovich@foresys.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Topic: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
 invoke dnf
Thread-Index: Adg+BWxnSx0rHyT7Q0WLXKcK19eJQwAA8raAAAFjsQAAI63VMA==
Date: Wed, 23 Mar 2022 10:21:19 +0000
Message-ID: <35f50637a06a4488a8872bc8ead24821@axis.com>
References: <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <YjoGJ/R4BV0gTa9N@piout.net>
 <MN2PR11MB3887035BDA3DE294BDEEB125E1179@MN2PR11MB3887.namprd11.prod.outlook.com>
In-Reply-To: <MN2PR11MB3887035BDA3DE294BDEEB125E1179@MN2PR11MB3887.namprd11.prod.outlook.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> Of John Lemonovich
> Sent: den 22 mars 2022 19:04
> To: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
> invoke dnf
>=20
> Thank you for the reply.  My apologies, here is the rest:

[cut]

> Transaction Summary
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> Install  25 Packages
>=20
> Total size: 2.0 M
> Installed size: 3.8 M
> Downloading Packages:
> Running transaction check
> Transaction check succeeded.
> Running transaction test
> Error: Transaction test error:
>   file /var/lib conflicts between attempted installs of initscripts-1.0-r=
155.cortexa9t2hf_neon and base-files-3.0.14-r89.arria10

This means that the two packages are trying to create /var/lib differently.=
=20
If you run `rpm -qilvp <path to respective rpm file>`, you should be able=20
to tell what the difference is. The rpm files can be found in "tmp/deploy/r=
pm/".

Then you will have to determine what causes this difference in your=20
configuration, because they do not differ in a standard poky build.=20

//Peter

