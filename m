Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B9F4E005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 03:29:35 -0700 (PDT)
Received: by eyh5 with SMTP id 5so762225eyh.35
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 03:29:34 -0700 (PDT)
Received: by 10.223.62.16 with SMTP id v16mr47538686fah.35.1318415374370;
	Wed, 12 Oct 2011 03:29:34 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id u6sm2961571faf.3.2011.10.12.03.29.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Oct 2011 03:29:33 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CABRtByMv-ZyuuO_+BA96w-ZM51ARynDjRom-N6Fmng7eQWEpJA@mail.gmail.com>
Date: Wed, 12 Oct 2011 12:29:28 +0200
Message-Id: <2B72F198-5F75-4D2C-82AE-B385274B4D35@dominion.thruhere.net>
References: <CABRtByO8SsdAQm+0dH9N946MN8nMXnfGQAbMjAYV1hu4U9rBnQ@mail.gmail.com>
	<6423790F-59AC-4742-9951-6AE5E1570736@dominion.thruhere.net>
	<CABRtByMv-ZyuuO_+BA96w-ZM51ARynDjRom-N6Fmng7eQWEpJA@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Oct 2011 10:29:36 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 12 okt. 2011, om 12:18 heeft sonu vishwakarma het volgende =
geschreven:

>=20
> But i'm using the recipe libsdl-mixer_1.2.11.bb taken from =
open-embedded only . I Couldn't get meta-oe , where could i find it????

Try http://tinyurl.com/5wpezm3



>=20
> Thanks & Regards,
> Sonu.
>=20
> On Wed, Oct 12, 2011 at 3:16 PM, Koen Kooi =
<koen@dominion.thruhere.net> wrote:
>=20
> Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende =
geschreven:
>=20
> > Hi,
> >
> > I'm trying the build for XBMC 10.05 which depends on libsdl-mixer. I =
pulled the recipe from open embedded which i'm
> > sharing here along with the log file.
> > I'm getting the error as below :
> >
> > | ./libtool: line 6399: cd: =3D/usr/lib: No such file or directory
> > | libtool: link: warning: cannot determine absolute directory name =
of `=3D/usr/lib'
> > | /bin/grep: =3D/usr/lib/libdirectfb.la: No such file or directory
> > | /bin/sed: can't read =3D/usr/lib/libdirectfb.la: No such file or =
directory
> > | libtool: link: `=3D/usr/lib/libdirectfb.la' is not a valid libtool =
archive
> > | make: *** [build/libSDL_mixer.la] Error 1
> > | make: *** Waiting for unfinished jobs....
> > | FATAL: oe_runmake failed
> > | ERROR: Function 'do_compile' failed (see =
/home/sct/logi/test-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-p=
oky-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.23677 for further =
information)
> > NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed
> >
> > I'm pulling for the Fishriver machine . My host machine is Ubuntu =
10.10 ,64 bit .
> > Can someone help me out of this problem ?
>=20
>=20
> The libsdl-mixer recipe in meta-oe works just fine, why not use that?
>=20
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>=20


