Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 725F1E008D2; Wed, 16 May 2018 07:41:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23D95E00816
	for <poky@yoctoproject.org>; Wed, 16 May 2018 07:41:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id E281F12AF7E;
	Wed, 16 May 2018 16:41:06 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id fB-QMobVKVE3; Wed, 16 May 2018 16:41:04 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 710AD12AF21;
	Wed, 16 May 2018 16:41:04 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 16 May 2018 16:41:04 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Arno Steffens <star@gmx.li>
In-Reply-To: <trinity-1da387ae-4287-4deb-9844-59c3a2016d56-1526479553134@3c-app-gmx-bs71>
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
Message-ID: <bc174232c043d0844f2a95fc32ca2f9f@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.6
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
X-List-Received-Date: Wed, 16 May 2018 14:41:11 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-05-16 16:05, Arno Steffens wrote:
> Checking the log file it seem that a file is missing in Yocto project:
>=20
> https://git.yoctoproject.org/pseudo/
>=20
> And the file that is downloaded ...
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.=
org.pseudo.tar.gz
> .. it has not .git folder and it has been compressed (date in file is=20
> July 2016)
>=20
> That looks strange to me.
> Can you try to force to use https instead of git?
>=20
> A snippet from the attached log.
>=20
> DEBUG: Fetching
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.=
org.pseudo.tar.gz
> using command '/usr/bin/env wget -t 2 -T 30 -nv --passive-ftp
> --no-check-certificate -P /home/user/y/yocto25/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject=
.org.pseudo.tar.gz''
> DEBUG: Fetcher accessed the network with the command /usr/bin/env wget
> -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P
> /home/user/y/yocto25/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject=
.org.pseudo.tar.gz'
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qfg19NLhKL,guid=3D=
a96bba72ead4ff8a436d20d65afbba71";
> export SSH_AGENT_PID=3D"1853"; export
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/y=
/yocto25/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/y=
octo25/poky/scripts:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseu=
do-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x8=
6_64-linux:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native=
/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/=
y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddb=
e854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto25/build/tmp/w=
ork/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysr=
oot-native/usr/bin:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseud=
o-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/home/=
user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC=
+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitbak=
e/bin:/home/user/y/yocto25/build/tmp/hosttools";
> export HOME=3D"/home/user"; /usr/bin/env wget -t 2 -T 30 -nv
> --passive-ftp --no-check-certificate -P
> /home/user/y/yocto25/build/downloads
> 'http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject=
.org.pseudo.tar.gz'
> --progress=3Ddot -v
> --2018-05-16 13:45:12--
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.=
org.pseudo.tar.gz
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
> 198.145.29.63
> Connecting to downloads.yoctoproject.org
> (downloads.yoctoproject.org)|198.145.29.63|:80... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 679041 (663K) [application/octet-stream]
> Saving to:
> =E2=80=98/home/user/y/yocto25/build/downloads/git2_git.yoctoproject.org=
.pseudo.tar.gz=E2=80=99
>=20
> ...
>=20
> DEBUG: Running export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qfg19NLhKL,guid=3D=
a96bba72ead4ff8a436d20d65afbba71";
> export SSH_AGENT_PID=3D"1853"; export
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/y=
/yocto25/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/y=
octo25/poky/scripts:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseu=
do-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x8=
6_64-linux:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native=
/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/=
y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddb=
e854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto25/build/tmp/w=
ork/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysr=
oot-native/usr/bin:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseud=
o-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/home/=
user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC=
+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitbak=
e/bin:/home/user/y/yocto25/build/tmp/hosttools";
> export HOME=3D"/home/user"; LANG=3DC git -c core.fsyncobjectfiles=3D0 f=
etch
> -f --prune --progress git://git.yoctoproject.org/pseudo refs/*:refs/*
> fatal: repository 'https://git.yoctoproject.org/pseudo/' not found
> DEBUG: Mirror fetch failure for url
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.=
org.pseudo.tar.gz
> (original url: git://git.yoctoproject.org/pseudo)
> DEBUG: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; expor=
t
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qfg19NLhKL,guid=3D=
a96bba72ead4ff8a436d20d65afbba71";
> export SSH_AGENT_PID=3D"1853"; export
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/y=
/yocto25/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/y=
octo25/poky/scripts:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseu=
do-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x8=
6_64-linux:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native=
/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/=
y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddb=
e854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto25/build/tmp/w=
ork/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysr=
oot-native/usr/bin:/home/user/y/yocto25/build/tmp/work/x86_64-linux/pseud=
o-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/home/=
user/y/yocto25/build/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC=
+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitbak=
e/bin:/home/user/y/yocto25/build/tmp/hosttools";
> export HOME=3D"/home/user"; LANG=3DC git -c core.fsyncobjectfiles=3D0 f=
etch
> -f --prune --progress git://git.yoctoproject.org/pseudo refs/*:refs/*
> failed with exit code 128, output:
> fatal: repository 'https://git.yoctoproject.org/pseudo/' not found
>=20
> and this is repeated a few times ...

I think I know what went wrong. See below.

Changed the bb file to force https:

diff --git a/meta/recipes-devtools/pseudo/pseudo_git.bb=20
b/meta/recipes-devtools/pseudo/pseudo_git.bb
index 9103d49..15c4d32 100644
--- a/meta/recipes-devtools/pseudo/pseudo_git.bb
+++ b/meta/recipes-devtools/pseudo/pseudo_git.bb
@@ -1,6 +1,6 @@
  require pseudo.inc

-SRC_URI =3D "git://git.yoctoproject.org/pseudo \
+SRC_URI =3D "git://git.yoctoproject.org/git/pseudo;protocol=3Dhttps \
             file://0001-configure-Prune-PIE-flags.patch \
             file://fallback-passwd \
             file://fallback-group \

*notice the extra "git/" in the URL for a git checkout over https*

Removed the complete "build" dir and ran the oe-init-build-env again to=20
make sure everything gets downloaded again.
Then started bitbake pseudo-native.

That worked for me and really does a git checkout of pseudo using https=20
protocol instead of git:

$ cat git2/git.yoctoproject.org.git.pseudo/config
[core]
         repositoryformatversion =3D 0
         filemode =3D true
         bare =3D true
[remote "origin"]
         url =3D https://git.yoctoproject.org/git/pseudo
         fetch =3D +refs/*:refs/*
         mirror =3D true


Hope this solves your problem. At least for this package...

Regards,

Bas.


