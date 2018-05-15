Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD5B2E00CA3; Tue, 15 May 2018 05:36:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 306 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 May 2018 05:35:57 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38062E00CA6
	for <poky@yoctoproject.org>; Tue, 15 May 2018 05:35:57 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs12.server.lan (via HTTP); Tue, 15 May 2018 14:30:43 +0200
MIME-Version: 1.0
Message-ID: <trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
From: "Arno Steffens" <star@gmx.li>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Date: Tue, 15 May 2018 14:30:43 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1526383459.5720.162.camel@linuxfoundation.org>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:gl7fYCNctPBONYkT47KtqPNV+IvgbEqCl699ERkm/34
	cQqzG2lvSucjtKo+CeIiyY40lnjl3u1zZujQZkZmukZ2DT/coJ
	AvOh/ENwDOAbdztJJ+uaEVNqUm2BldDbloO6EZax5cVhjTtEOz
	trYtDeADy11y8qyBDao529cE78EPmEzJWtxfS8rIrNPlkM+UPU
	eOHtWsCwjc6RC+5qFGYkGmMNDfsDgIKS89g4JOGt1r2hUWMvY4
	Eiwm2TnzzjEzNQ1dfzOMaVy0Vpa2qhExoJ619BvanspkhRo2Sm qWnBL8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:T/QWrc/k5Cw=:GiV18YnNr7qI50LVhBIsU9
	61iV0Z77x8ZcrnqGy3whgkr63PBthBFhwzkw9j84dnTwwzqzdMH3eMSOdQR3ooClPvxo5Fruy
	O/3PkYNTAaae/sYNOo5wS661EgbT9whTc1W7SLD9+zWTu69X1OpmUDQZQ7OHYKn94/OXflWm4
	5rpH3B+0aOYeN1U196bVPPlFc8XnQVdeo96TtD6jGOnsDIuRjioLvEYdnfQeaiblumG3neJfG
	+pv6YdII0ruJ7iDb8kehov0avfmEfJ5ViBWhc82x5INpgn3P1fBGY9duDzxYEZQiMXysRZmc5
	mAykWF2ArtlpgIZDySPKyERcljFvG6ofe4t2kKOS6aAZ1Qn/SFukI1b43ZoUaZxuB0bXL4S0p
	qd3L1a07KrgUehNhOH19tvwc38vDeu4Yw3ErzF9+0XH6d8V1+sQh3gPTPFkmKiPPqpQre67by
	8LKMIG7jpd+ItaA5L6E78sjYf0o5HaVS9ogejUhrGBPQcjnYJ49u
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
X-List-Received-Date: Tue, 15 May 2018 12:36:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Dienstag, 15=2E Mai 2018 um 13:24 Uhr
> Von: "Richard Purdie" <richard=2Epurdie@linuxfoundation=2Eorg>
> An: "Arno Steffens" <star@gmx=2Eli>, "Bas Mevissen" <abuse@basmevissen=
=2Enl>
> Cc: poky@yoctoproject=2Eorg
> Betreff: Re: [poky] Yocto 2=2E5 and problem with pseudo-native-1=2E9=2E0
>
> On Tue, 2018-05-15 at 13:17 +0200, Arno Steffens wrote:
> >=C2=A0
> > Yeah - I know, I am handicapped=C2=A0=C2=A0:(
> > But a change from=C2=A0
> > git://git=2Eyoctoproject=2Eorg/pseudo
> > to
> > https://git=2Eyoctoproject=2Eorg/git/pseudo
> > doesn't solve the issue=2E
> >=20
> > Compared to yocto 2=2E3 and 2=2E4 I miss in the recipes a file like
> > pseudo_1=2E8=2E2=2Ebb
> >=20
> > Now there is just
> > pseudo_git=2Ebb
> > and=C2=A0
> > pseudo=2Einc
> >=20
> > Also in the download I found a file:
> > git2_git=2Eyoctoproject=2Eorg=2Epseudo=2Etar=2Egz=2Edone
> >=20
>=20
> > Do we dig at wrong side?
>=20
> Try adding ";protocol=3Dhttps" to the url, something like:
>=20
> git://git=2Eyoctoproject=2Eorg/pseudo;protocol=3Dhttps
>=20
> Our mirrors should have http tarballs of the git repos which should
> work for this but clearly something isn't working quite correctly with
> the backup archives :(=2E Adding https to the url should work though=2E
>=20
> Cheers,
>=20
> Richard
>=20

Thanks for your patience with me=2E=20
Cleared the hole structure for building and even download folder and start=
ed with just=20
bitbake pseudo-navtive=20
but get same error again :(

Regards
Arno

WARNING: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_fetch: Failed=
 to fetch URL git://git=2Eyoctoproject=2Eorg/pseudo;protocol=3Dhttps, attem=
pting MIRRORS if available
ERROR: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fetcher=
 failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS=
_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qFLYbSsFJF,guid=3Dc8cffdaaccadb737f94=
547ed5afa68f2"; export SSH_AGENT_PID=3D"1886"; export SSH_AUTH_SOCK=3D"/run=
/user/1000/keyring/ssh"; export PATH=3D"/home/user/y/yocto25/poky/scripts/n=
ative-intercept:/home/user/y/yocto25/sp/tmp/sysroots-uninative/x86_64-linux=
/usr/bin:/home/user/y/yocto25/poky/scripts:/home/user/y/yocto25/sp/tmp/work=
/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysro=
ot-native/usr/bin/x86_64-linux:/home/user/y/yocto25/sp/tmp/work/x86_64-linu=
x/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/us=
r/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0=
+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto=
25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r=
0/recipe-sysroot-native/usr/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-lin=
ux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/s=
bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+g=
itAUTOINC+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky=
/bitbake/bin:/home/user/y/yocto25/sp/tmp/hosttools"; export HOME=3D"/home/u=
ser"; git -c core=2Efsyncobjectfiles=3D0 checkout -B master fddbe854c9db058=
d5a05830d3bcdd4233d95ee2e failed with exit code 128, output:
fatal: reference is not a tree: fddbe854c9db058d5a05830d3bcdd4233d95ee2e

ERROR: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_unpack: Functio=
n failed: base_do_unpack
ERROR: Logfile of failure stored in: /home/user/y/yocto25/sp/tmp/work/x86_=
64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/temp/log=2Edo_unp=
ack=2E5398
ERROR: Task (virtual:native:/home/user/y/yocto25/poky/meta/recipes-devtool=
s/pseudo/pseudo_git=2Ebb:do_unpack) failed with exit code '1'
NOTE: Tasks Summary: Attempted 57 tasks of which 0 didn't need to be rerun=
 and 1 failed=2E


