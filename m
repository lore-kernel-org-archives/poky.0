Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 684F9E005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 02:46:46 -0700 (PDT)
Received: by wwf5 with SMTP id 5so624964wwf.11
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 02:46:45 -0700 (PDT)
Received: by 10.223.91.87 with SMTP id l23mr47180954fam.5.1318412805058;
	Wed, 12 Oct 2011 02:46:45 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id y8sm2810352faj.10.2011.10.12.02.46.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Oct 2011 02:46:40 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CABRtByO8SsdAQm+0dH9N946MN8nMXnfGQAbMjAYV1hu4U9rBnQ@mail.gmail.com>
Date: Wed, 12 Oct 2011 11:46:30 +0200
Message-Id: <6423790F-59AC-4742-9951-6AE5E1570736@dominion.thruhere.net>
References: <CABRtByO8SsdAQm+0dH9N946MN8nMXnfGQAbMjAYV1hu4U9rBnQ@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1244.3)
Subject: Re: : package libsdl-mixer-1.2.11-r5: task do_compile: Failed
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
X-List-Received-Date: Wed, 12 Oct 2011 09:46:48 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende =
geschreven:

> Hi,
>=20
> I'm trying the build for XBMC 10.05 which depends on libsdl-mixer. I =
pulled the recipe from open embedded which i'm=20
> sharing here along with the log file.
> I'm getting the error as below :
>=20
> | ./libtool: line 6399: cd: =3D/usr/lib: No such file or directory
> | libtool: link: warning: cannot determine absolute directory name of =
`=3D/usr/lib'
> | /bin/grep: =3D/usr/lib/libdirectfb.la: No such file or directory
> | /bin/sed: can't read =3D/usr/lib/libdirectfb.la: No such file or =
directory
> | libtool: link: `=3D/usr/lib/libdirectfb.la' is not a valid libtool =
archive
> | make: *** [build/libSDL_mixer.la] Error 1
> | make: *** Waiting for unfinished jobs....
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see =
/home/sct/logi/test-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-p=
oky-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.23677 for further =
information)
> NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed
>=20
> I'm pulling for the Fishriver machine . My host machine is Ubuntu =
10.10 ,64 bit .=20
> Can someone help me out of this problem ?=20


The libsdl-mixer recipe in meta-oe works just fine, why not use that?



