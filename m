Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A5034C800A3
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 03:05:19 -0600 (CST)
Received: by wya21 with SMTP id 21so2395375wya.35
	for <poky@yoctoproject.org>; Fri, 04 Mar 2011 01:05:18 -0800 (PST)
Received: by 10.216.51.135 with SMTP id b7mr357349wec.29.1299229518098;
	Fri, 04 Mar 2011 01:05:18 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	t11sm1044105wes.41.2011.03.04.01.05.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 Mar 2011 01:05:17 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D703953.8040000@intel.com>
Date: Fri, 4 Mar 2011 10:05:16 +0100
Message-Id: <8081091C-6C1A-44C5-9428-239C293C01F0@dominion.thruhere.net>
References: <cover.1299182375.git.sgw@linux.intel.com>	<e5662d07e615cfa5879a5d700df2d1e9049a6413.1299182375.git.sgw@linux.intel.com>
	<AANLkTi=aQ=HYbPrXd98qvxYC=voFhf0AJMsse5bcrp3M@mail.gmail.com>
	<4D703953.8040000@intel.com>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 03/10] sato-icon-theme: Explictly use "Sato" as gtk icon theme
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Mar 2011 09:05:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 4 mrt 2011, om 01:58 heeft Zhai, Edwin het volgende geschreven:

>=20
>=20
> Khem Raj wrote:
>>=20
>>=20
>> > --- a/meta/recipes-sato/sato-icon-theme/sato-icon-theme.inc
>> > +++ b/meta/recipes-sato/sato-icon-theme/sato-icon-theme.inc
>> > @@ -16,9 +16,12 @@ PACKAGE_ARCH =3D "all"
>> >
>> >  EXTRA_OECONF +=3D =
"--with-iconmap=3D${STAGING_LIBDIR_NATIVE}/../libexec/icon-name-mapping"
>> >
>> > +#explictly setting "Sato" as default icon theme to avoid icon =
missing due to
>> > +#tricky race condition
>> >  pkg_postinst_${PN} () {
>> >         if [ "x$D" !=3D "x" ]; then
>> >                 exit 1
>> >         fi
>> >         gtk-update-icon-cache -q /usr/share/icons/Sato
>> > +        echo 'gtk-icon-theme-name =3D "Sato"' >> =
/etc/gtk-2.0/gtkrc
>>=20
>> what would happen if you reinstalled this packge again I guess it
>> would keep appending right ?
>>=20
>=20
> I think postinst only got called via init script on 1st boot of the =
image, so it should be okay.

Postinst get called every time your install, reinstall or upgrade a =
package.

regards,

Koen=

