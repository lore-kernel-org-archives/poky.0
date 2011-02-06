Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D88C4C800B7
	for <poky@yoctoproject.org>; Sun,  6 Feb 2011 16:18:45 -0600 (CST)
Received: by wye20 with SMTP id 20so4148989wye.35
	for <poky@yoctoproject.org>; Sun, 06 Feb 2011 14:18:44 -0800 (PST)
Received: by 10.227.145.198 with SMTP id e6mr14924006wbv.151.1297030723311;
	Sun, 06 Feb 2011 14:18:43 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id m6sm1816593wej.10.2011.02.06.14.18.42
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 06 Feb 2011 14:18:42 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Sun, 6 Feb 2011 23:18:41 +0100
Message-Id: <CEA5BDC6-13F8-4806-9117-4BF0E62E15CD@dominion.thruhere.net>
To: poky <poky@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: Fetcher2 git problems
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
X-List-Received-Date: Sun, 06 Feb 2011 22:18:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I bugged RP during fosdem about this, but I needed to wait for his =
patches to get some more usefull error messages:

NOTE: package =
pseudo-native-0.0+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: =
task do_fetch: Started
ERROR: =
'virtual:native:/OE/tentacle/sources/openembedded/meta/recipes-devtools/ps=
eudo/pseudo_git.bb' failed
ERROR: Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/pseudo-native-0.0=
+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17/temp/log.do_fetch.13627=

Log data follows:
| fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
| NOTE: fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
| Fetcher accessed the network with the command /usr/bin/env wget -t 5 =
-q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
| NOTE: Fetcher accessed the network with the command /usr/bin/env wget =
-t 5 -q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
| fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
| NOTE: fetch =
http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrps=
eudo.pseudo.git.tar.gz
| Fetcher accessed the network with the command /usr/bin/env wget -t 5 =
-q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
| NOTE: Fetcher accessed the network with the command /usr/bin/env wget =
-t 5 -q --passive-ftp -P /OE/downloads =
'http://www.angstrom-distribution.org/unstable/sources/git2_github.com.wrp=
seudo.pseudo.git.tar.gz'
| Fetcher accessed the network with the command git clone --bare =
github.com/wrpseudo/pseudo.git
| NOTE: Fetcher accessed the network with the command git clone --bare =
github.com/wrpseudo/pseudo.git
| Cloning into bare repository =
/OE/downloads/git/github.com.wrpseudo.pseudo.git...
|  Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
| ERROR: Function 'Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.' =
failed
NOTE: package =
pseudo-native-0.0+git1+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: =
task Fetch failed: Unable to fetch URL =
git://github.com/wrpseudo/pseudo.git;protocol=3Dgit from any source.: =
Failed

FWIW, github prefers https: uris nowadays for better performance.

regards,

Koen=

