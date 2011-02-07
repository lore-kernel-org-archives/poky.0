Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id F39894C800B7
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 02:55:49 -0600 (CST)
Received: by wwb31 with SMTP id 31so4736011wwb.11
	for <poky@yoctoproject.org>; Mon, 07 Feb 2011 00:55:49 -0800 (PST)
Received: by 10.227.132.77 with SMTP id a13mr15352030wbt.127.1297068948881;
	Mon, 07 Feb 2011 00:55:48 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id u9sm3126675wbg.6.2011.02.07.00.55.47
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 07 Feb 2011 00:55:48 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CEA5BDC6-13F8-4806-9117-4BF0E62E15CD@dominion.thruhere.net>
Date: Mon, 7 Feb 2011 09:55:46 +0100
Message-Id: <171A4E49-D076-4078-B831-2F3D5FF879AA@dominion.thruhere.net>
References: <CEA5BDC6-13F8-4806-9117-4BF0E62E15CD@dominion.thruhere.net>
To: poky <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1082)
Subject: Re: Fetcher2 git problems
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
X-List-Received-Date: Mon, 07 Feb 2011 08:55:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 6 feb 2011, om 23:18 heeft Koen Kooi het volgende geschreven:

> Hi,
>=20
> I bugged RP during fosdem about this, but I needed to wait for his =
patches to get some more usefull error messages:
>=20
> NOTE: package =
pseudo-native-0.0+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: =
task do_fetch: Started
> ERROR: =
'virtual:native:/OE/tentacle/sources/openembedded/meta/recipes-devtools/ps=
eudo/pseudo_git.bb' failed
> ERROR: Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
> ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/pseudo-native-0.0=
+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17/temp/log.do_fetch.13627=

> Log data follows:
> | fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
> | NOTE: fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
> | Fetcher accessed the network with the command /usr/bin/env wget -t 5 =
-q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
> | NOTE: Fetcher accessed the network with the command /usr/bin/env =
wget -t 5 -q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
> | fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
> | NOTE: fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
> | Fetcher accessed the network with the command /usr/bin/env wget -t 5 =
-q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
> | NOTE: Fetcher accessed the network with the command /usr/bin/env =
wget -t 5 -q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
> | Fetcher accessed the network with the command git clone --bare =
github.com/wrpseudo/pseudo.git
> | NOTE: Fetcher accessed the network with the command git clone --bare =
github.com/wrpseudo/pseudo.git
> | Cloning into bare repository =
/OE/downloads/git/github.com.wrpseudo.pseudo.git...
> |  Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
> | ERROR: Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
> NOTE: package =
pseudo-native-0.0+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: =
task Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.: =
Failed


Some further logs:

| Level 8: Running export HOME=3D"/home/koen"; export =
GIT_CONFIG=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux=
/usr/etc/gitconfig"; export =
PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/b=
in/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010_x/sy=
sroots/beagleboard/usr/bin/crossscripts:/OE/tentacle/build/tmp-angstrom_20=
10_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/build/tmp-angstrom_2010_x=
/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-angstrom_2010_x/sysr=
oots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86=
_64-linux//bin:/OE/tentacle/sources/openembedded/scripts:/OE/tentacle/sour=
ces/bitbake/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/=
local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/b=
in:/usr/local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/O=
E/tentacle/sources/openembedded/scripts"; git log --pretty=3Doneline -n =
1 bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8 -- 2> /dev/null | wc -l
| Fetcher accessed the network with the command git clone --bare =
git://github.com/wrpseudo/pseudo.git =
/OE/downloads/git2/github.com.wrpseudo.pseudo.git
| NOTE: Fetcher accessed the network with the command git clone --bare =
git://github.com/wrpseudo/pseudo.git =
/OE/downloads/git2/github.com.wrpseudo.pseudo.git
| Running export HOME=3D"/home/koen"; export =
GIT_CONFIG=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux=
/usr/etc/gitconfig"; export =
PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/b=
in/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010_x/sy=
sroots/beagleboard/usr/bin/crossscripts:/OE/tentacle/build/tmp-angstrom_20=
10_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/build/tmp-angstrom_2010_x=
/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-angstrom_2010_x/sysr=
oots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86=
_64-linux//bin:/OE/tentacle/sources/openembedded/scripts:/OE/tentacle/sour=
ces/bitbake/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/=
local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/b=
in:/usr/local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/O=
E/tentacle/sources/openembedded/scripts"; git clone --bare =
git://github.com/wrpseudo/pseudo.git =
/OE/downloads/git2/github.com.wrpseudo.pseudo.git
| Level 8: Running export HOME=3D"/home/koen"; export =
GIT_CONFIG=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux=
/usr/etc/gitconfig"; export =
PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/b=
in/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010_x/sy=
sroots/beagleboard/usr/bin/crossscripts:/OE/tentacle/build/tmp-angstrom_20=
10_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/build/tmp-angstrom_2010_x=
/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-angstrom_2010_x/sysr=
oots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86=
_64-linux//bin:/OE/tentacle/sources/openembedded/scripts:/OE/tentacle/sour=
ces/bitbake/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/=
local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/b=
in:/usr/local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/O=
E/tentacle/sources/openembedded/scripts"; git clone --bare =
git://github.com/wrpseudo/pseudo.git =
/OE/downloads/git2/github.com.wrpseudo.pseudo.git
| Cloning into bare repository =
/OE/downloads/git2/github.com.wrpseudo.pseudo.git...
|  Running export HOME=3D"/home/koen"; export =
GIT_CONFIG=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux=
/usr/etc/gitconfig"; export =
PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/b=
in/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010_x/sy=
sroots/beagleboard/usr/bin/crossscripts:/OE/tentacle/build/tmp-angstrom_20=
10_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/build/tmp-angstrom_2010_x=
/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-angstrom_2010_x/sysr=
oots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86=
_64-linux//bin:/OE/tentacle/sources/openembedded/scripts:/OE/tentacle/sour=
ces/bitbake/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/=
local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/b=
in:/usr/local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/O=
E/tentacle/sources/openembedded/scripts"; git log --pretty=3Doneline -n =
1 bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8 -- 2> /dev/null | wc -l
| Level 8: Running export HOME=3D"/home/koen"; export =
GIT_CONFIG=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux=
/usr/etc/gitconfig"; export =
PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/b=
in/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010_x/sy=
sroots/beagleboard/usr/bin/crossscripts:/OE/tentacle/build/tmp-angstrom_20=
10_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/build/tmp-angstrom_2010_x=
/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-angstrom_2010_x/sysr=
oots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86=
_64-linux//bin:/OE/tentacle/sources/openembedded/scripts:/OE/tentacle/sour=
ces/bitbake/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/=
local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/b=
in:/usr/local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/O=
E/tentacle/sources/openembedded/scripts"; git log --pretty=3Doneline -n =
1 bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8 -- 2> /dev/null | wc -l
| Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
| ERROR: Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
NOTE: package =
pseudo-0.0+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: task Fetch =
failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.: =
Failed

The bare clone is present:

koen@dominion:/OE/downloads/git2/github.com.wrpseudo.pseudo.git$ ls
branches/  config  description  HEAD  hooks/  info/  objects/  =
packed-refs  refs/

and the _contains_ref function:

koen@dominion:/OE/downloads/git2/github.com.wrpseudo.pseudo.git$ git log =
--pretty=3Doneline -n 1 bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8 -- 2> =
/dev/null | wc -l
1

So the bug seems to be outside the dowload method, but I get lost at =
that point.




