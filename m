Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55D41E00A28; Wed, 16 May 2018 23:58:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2E4EE00831
	for <poky@yoctoproject.org>; Wed, 16 May 2018 23:58:24 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs28.server.lan (via HTTP); Thu, 17 May 2018 08:58:16 +0200
MIME-Version: 1.0
Message-ID: <trinity-16addffd-a4be-4adb-8d17-45c6ef608732-1526540296031@3c-app-gmx-bs28>
From: "Arno Steffens" <star@gmx.li>
To: "Bas Mevissen" <abuse@basmevissen.nl>
Date: Thu, 17 May 2018 08:58:16 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <bc174232c043d0844f2a95fc32ca2f9f@basmevissen.nl>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
	<trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
	<1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
	<trinity-22dc1a63-7fa8-41fd-bc2f-e011b698d3c6-1526461333500@3c-app-gmx-bs71>
	<1fd67bfccb82049ff75349a65d5bc81c@basmevissen.nl>
	<trinity-bafd13ab-8a55-4361-9796-d4dec1738677-1526466175205@3c-app-gmx-bs71>
	<trinity-1da387ae-4287-4deb-9844-59c3a2016d56-1526479553134@3c-app-gmx-bs71>
	<bc174232c043d0844f2a95fc32ca2f9f@basmevissen.nl>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:FS05UtejqPSvuo+SGzPy6dbxlGWDQkHpz491bpP5cyE
	icaaef8Y/CZJirXRjVSrRn4VIxD9o2abqKib7S1LCjSd/EK3Uo
	gr6n1TLNGRNm84VnQxbA/k4fYFmU/p6ECqt2aNFiUt9vKFOQbI
	SlUYo7F9Tw41+SIHm5BEHEUlwbmo0hQVOZX04V4CNgbhMfKE7E
	d9I16ug9ayaZnT0DxlqplB55ao0yFpLgDwnki0FCttvbkZMQ0g
	CmOJYdAEyP3sMZwaCW18FXmfnNFLE8q1s1cgWBpNQ1DJY6MFBL kJxefM=
X-UI-Out-Filterresults: notjunk:1;V01:K0:RRbqLXpNW54=:mfNhq/+RZOG6C49LScBr/F
	NBzzHwRo8zkN5sUPqleMBTmU3A6gHiBu2mJWMHxFoVknI9T2VVPLA/Z9xy0focuhtW+gYPhu9
	diyUZSyi4P4zmkqZ6BZf3x4Ak5StCv97q2Y2K7SSFoJiMWVZHCBGq/DYeUBpZLD14xivTEH6b
	DtJVzZVZVuh+S4oS2dxXgtgsWO1mJmmKmfB5KXhzrX23vI6bY0DpqqaF+FKyZV5zmhcwwXhXq
	YMymqH2t855pDFXaM0VJOOsOvonb3lKux/2rN4LM3efeeq6yQ85/v7eU4Nl+C/b5ZYuwRPmRZ
	+LBBohQkmLkdY1sfkgqNaGe5eLdeSf+4fGNMMcLT7rmfkOZkaaIvz24EHV8fLRX91nuGl96Nf
	R8B5D8wqRG9JEQ7rvk0KCeVIw6YRt/7seBuDJVpmJgYG6JvYdln+PS1+6G00U/BzAumaX1v3q
	eYME4q6cBraq8UXmA7fM/u/xmvTBS3MNfyxksGLrGjg+FlUhjwyu
Cc: poky@yoctoproject.org
Subject: Re: Yocto 2.5 and problem with pseudo-native-1.9.0
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 May 2018 06:58:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Mittwoch, 16=2E Mai 2018 um 16:41 Uhr
> Von: "Bas Mevissen" <abuse@basmevissen=2Enl>
> An: "Arno Steffens" <star@gmx=2Eli>
> Cc: poky@yoctoproject=2Eorg, "Richard Purdie" <richard=2Epurdie@linuxfou=
ndation=2Eorg>
> Betreff: Re: Aw: Re: [poky] Yocto 2=2E5 and problem with pseudo-native-1=
=2E9=2E0
>
> On 2018-05-16 16:05, Arno Steffens wrote:
> > Checking the log file it seem that a file is missing in Yocto project:
> >=20
> > https://git=2Eyoctoproject=2Eorg/pseudo/
> >=20
> > And the file that is downloaded =2E=2E=2E
> > http://downloads=2Eyoctoproject=2Eorg/mirror/sources/git2_git=2Eyoctop=
roject=2Eorg=2Epseudo=2Etar=2Egz
> > =2E=2E it has not =2Egit folder and it has been compressed (date in fi=
le is=20
> > July 2016)
> >=20
> > That looks strange to me=2E
> > Can you try to force to use https instead of git?
> >=20
> > A snippet from the attached log=2E
> >=20
> > DEBUG: Fetching
> > http://downloads=2Eyoctoproject=2Eorg/mirror/sources/git2_git=2Eyoctop=
roject=2Eorg=2Epseudo=2Etar=2Egz
> > using command '/usr/bin/env wget -t 2 -T 30 -nv --passive-ftp
> > --no-check-certificate -P /home/user/y/yocto25/build/downloads
> > 'http://downloads=2Eyoctoproject=2Eorg/mirror/sources/git2_git=2Eyocto=
project=2Eorg=2Epseudo=2Etar=2Egz''
> > DEBUG: Fetcher accessed the network with the command /usr/bin/env wget
> > -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P
> > /home/user/y/yocto25/build/downloads
> > 'http://downloads=2Eyoctoproject=2Eorg/mirror/sources/git2_git=2Eyocto=
project=2Eorg=2Epseudo=2Etar=2Egz'
> > DEBUG: Running export PSEUDO_DISABLED=3D1; export
> > DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qfg19NLhKL,guid=
=3Da96bba72ead4ff8a436d20d65afbba71";
> > export SSH_AGENT_PID=3D"1853"; export
> > SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> > PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/=
y/yocto25/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/yo=
cto25/poky/scripts:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-=
native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x86=
_64-linux:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=
=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/=
y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fd=
dbe854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto25/build/tmp/w=
ork/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sy=
sroot-native/usr/bin:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseud=
o-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/hom=
e/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUT=
OINC+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitb=
ake/bin:/home/user/y/yocto25/build/tmp/hosttools";
> > export HOME=3D"/home/user"; /usr/bin/env wget -t 2 -T 30 -nv
> > --passive-ftp --no-check-certificate -P
> > /home/user/y/yocto25/build/downloads
> > 'http://downloads=2Eyoctoproject=2Eorg/mirror/sources/git2_git=2Eyocto=
project=2Eorg=2Epseudo=2Etar=2Egz'
> > --progress=3Ddot -v
> > --2018-05-16 13:45:12--
> > http://downloads=2Eyoctoproject=2Eorg/mirror/sources/git2_git=2Eyoctop=
roject=2Eorg=2Epseudo=2Etar=2Egz
> > Resolving downloads=2Eyoctoproject=2Eorg (downloads=2Eyoctoproject=2Eo=
rg)=2E=2E=2E
> > 198=2E145=2E29=2E63
> > Connecting to downloads=2Eyoctoproject=2Eorg
> > (downloads=2Eyoctoproject=2Eorg)|198=2E145=2E29=2E63|:80=2E=2E=2E conn=
ected=2E
> > HTTP request sent, awaiting response=2E=2E=2E 200 OK
> > Length: 679041 (663K) [application/octet-stream]
> > Saving to:
> > =E2=80=98/home/user/y/yocto25/build/downloads/git2_git=2Eyoctoproject=
=2Eorg=2Epseudo=2Etar=2Egz=E2=80=99
> >=20
> > =2E=2E=2E
> >=20
> > DEBUG: Running export PSEUDO_DISABLED=3D1; export
> > DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qfg19NLhKL,guid=
=3Da96bba72ead4ff8a436d20d65afbba71";
> > export SSH_AGENT_PID=3D"1853"; export
> > SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> > PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/=
y/yocto25/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/yo=
cto25/poky/scripts:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-=
native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x86=
_64-linux:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=
=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/=
y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fd=
dbe854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto25/build/tmp/w=
ork/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sy=
sroot-native/usr/bin:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseud=
o-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/hom=
e/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUT=
OINC+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitb=
ake/bin:/home/user/y/yocto25/build/tmp/hosttools";
> > export HOME=3D"/home/user"; LANG=3DC git -c core=2Efsyncobjectfiles=3D=
0 fetch
> > -f --prune --progress git://git=2Eyoctoproject=2Eorg/pseudo refs/*:ref=
s/*
> > fatal: repository 'https://git=2Eyoctoproject=2Eorg/pseudo/' not found
> > DEBUG: Mirror fetch failure for url
> > http://downloads=2Eyoctoproject=2Eorg/mirror/sources/git2_git=2Eyoctop=
roject=2Eorg=2Epseudo=2Etar=2Egz
> > (original url: git://git=2Eyoctoproject=2Eorg/pseudo)
> > DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; expo=
rt
> > DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qfg19NLhKL,guid=
=3Da96bba72ead4ff8a436d20d65afbba71";
> > export SSH_AGENT_PID=3D"1853"; export
> > SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> > PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/=
y/yocto25/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/yo=
cto25/poky/scripts:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-=
native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x86=
_64-linux:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=
=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/=
y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fd=
dbe854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto25/build/tmp/w=
ork/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sy=
sroot-native/usr/bin:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseud=
o-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/hom=
e/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUT=
OINC+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitb=
ake/bin:/home/user/y/yocto25/build/tmp/hosttools";
> > export HOME=3D"/home/user"; LANG=3DC git -c core=2Efsyncobjectfiles=3D=
0 fetch
> > -f --prune --progress git://git=2Eyoctoproject=2Eorg/pseudo refs/*:ref=
s/*
> > failed with exit code 128, output:
> > fatal: repository 'https://git=2Eyoctoproject=2Eorg/pseudo/' not found
> >=20
> > and this is repeated a few times =2E=2E=2E
>=20
> I think I know what went wrong=2E See below=2E
>=20
> Changed the bb file to force https:
>=20
> diff --git a/meta/recipes-devtools/pseudo/pseudo_git=2Ebb=20
> b/meta/recipes-devtools/pseudo/pseudo_git=2Ebb
> index 9103d49=2E=2E15c4d32 100644
> --- a/meta/recipes-devtools/pseudo/pseudo_git=2Ebb
> +++ b/meta/recipes-devtools/pseudo/pseudo_git=2Ebb
> @@ -1,6 +1,6 @@
>   require pseudo=2Einc
>=20
> -SRC_URI =3D "git://git=2Eyoctoproject=2Eorg/pseudo \
> +SRC_URI =3D "git://git=2Eyoctoproject=2Eorg/git/pseudo;protocol=3Dhttps=
 \
>              file://0001-configure-Prune-PIE-flags=2Epatch \
>              file://fallback-passwd \
>              file://fallback-group \
>=20
> *notice the extra "git/" in the URL for a git checkout over https*
>=20
> Removed the complete "build" dir and ran the oe-init-build-env again to=
=20
> make sure everything gets downloaded again=2E
> Then started bitbake pseudo-native=2E
>=20
> That worked for me and really does a git checkout of pseudo using https=
=20
> protocol instead of git:
>=20
> $ cat git2/git=2Eyoctoproject=2Eorg=2Egit=2Epseudo/config
> [core]
>          repositoryformatversion =3D 0
>          filemode =3D true
>          bare =3D true
> [remote "origin"]
>          url =3D https://git=2Eyoctoproject=2Eorg/git/pseudo
>          fetch =3D +refs/*:refs/*
>          mirror =3D true
>=20
>=20
> Hope this solves your problem=2E At least for this package=2E=2E=2E
>=20
> Regards,
>=20
> Bas=2E
>=20
>=20

Thanks Bas,
indeed, that finally solves the issue - great! Thank you so much!
Look what will happen next=2E=20
Not sure I understand Richards explanation, but if there are more problems=
 like that - can/shall I report it here again?
Best regards
Arno

