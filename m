Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A03EE0044D
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 13:10:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D6F1EF81245; Tue, 10 Apr 2012 14:10:49 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B0E4BF81232;
	Tue, 10 Apr 2012 14:10:35 -0600 (MDT)
Message-ID: <4F8493BB.5070400@mlbassoc.com>
Date: Tue, 10 Apr 2012 14:10:35 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: SRC checksum checking broken
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
X-List-Received-Date: Tue, 10 Apr 2012 20:10:50 -0000
X-Groupsio-MsgNum: 7653
Content-Type: multipart/mixed; boundary="------------080801090006070006010401"

--------------080801090006070006010401
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm not sure how, but this revision broke the checking of checksums:

commit 3d69d9462d550ce4e00e14768cc616bc9ad7e8a5
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Mar 23 14:52:23 2012 +0000

     bitbake/fetch2: Ensure mirror tarballs have .done stamps so we don't redownload and corrupt them

     [YOCTO #2154]

     (Bitbake rev: 521d6b14151d3bf934b9597557f7ae46e50a3d7a)

     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

The attached log shows this failure - I've modified the busybox_1.19.4.bb
recipe to have incorrect checksums.  With revision 67c83a8, the failure
is correctly identified.  With revision 3d69d94, it is not.

The error happens with direct downloads (using DL_DIR) and also
with a mirror setup (using own-mirrors).

I've reviewed the change and I don't see how/why this happens.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080801090006070006010401
Content-Type: text/plain; charset=UTF-8;
 name="bb.fail"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="bb.fail"

[gthomas@titan poky_test]$ bitbake busybox -c patch
Loading cache: 100% |######################################################=
##############################| ETA:  00:00:00
Loaded 1108 entries from dependency cache.

OE Build Configuration:
BB_VERSION        =3D "1.15.1"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "beagleboard"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.1+snapshot-20120410"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa8"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "(nobranch):67c83a8c0838c28cfbbb792daa83aa1f3c331302"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 8 of 10 (ID: 2, /home/local/poky-master/meta/recipes-cor=
e/busybox/busybox_1.19.4.bb, do_fetch)
NOTE: package busybox-1.19.4-r0: task do_fetch: Started
WARNING: Failed to fetch URL http://www.busybox.net/downloads/busybox-1.19.=
4.tar.bz2;name=3Dtarball
ERROR: Function failed: Fetcher failure for URL: 'http://www.busybox.net/do=
wnloads/busybox-1.19.4.tar.bz2;name=3Dtarball'. Checksum mismatch!
File: '/home/local/poky_test/downloads/busybox-1.19.4.tar.bz2' has md5 chec=
ksum 9c0cae5a0379228e7b55e5b29528df8e when 9c0cae5a0379228e7b55e5b29528df8f=
 was expected
File: '/home/local/poky_test/downloads/busybox-1.19.4.tar.bz2' has sha256 c=
hecksum 9b853406da61ffb59eb488495fe99cbb7fb3dd29a31307fcfa9cf070543710ee wh=
en 9b853406da61ffb59eb488495fe99cbb7fb3dd29a31307fcfa9cf070543710ef was exp=
ected
ERROR: Logfile of failure stored in: /home/local/poky_test/tmp/work/armv7a-=
vfp-neon-poky-linux-gnueabi/busybox-1.19.4-r0/temp/log.do_fetch.3868
Log data follows:
| DEBUG: Trying PREMIRRORS
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['bzr', '.*', '/.*', '', '', =
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {=
}]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['cvs', '.*', '/.*', '', '', =
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {=
}]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['git', '.*', '/.*', '', '', =
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {=
}]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['hg', '.*', '/.*', '', '', {=
}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}=
]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['osc', '.*', '/.*', '', '', =
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {=
}]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['p4', '.*', '/.*', '', '', {=
}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}=
]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['svk', '.*', '/.*', '', '', =
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {=
}]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['svn', '.*', '/.*', '', '', =
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {=
}]
| DEBUG: Trying Upstream
| NOTE: fetch http://www.busybox.net/downloads/busybox-1.19.4.tar.bz2
| DEBUG: executing /usr/bin/env wget -t 5 -nv --passive-ftp --no-check-cert=
ificate -P /home/local/poky_test/downloads 'http://www.busybox.net/download=
s/busybox-1.19.4.tar.bz2'
| DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t=
 5 -nv --passive-ftp --no-check-certificate -P /home/local/poky_test/downlo=
ads 'http://www.busybox.net/downloads/busybox-1.19.4.tar.bz2'
| DEBUG: Running export HOME=3D"/home/gthomas"; export GIT_CONFIG=3D"/home/=
local/poky_test/tmp/sysroots/i686-linux/etc/gitconfig"; export PATH=3D"/hom=
e/local/poky_test/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linu=
x-gnueabi:/home/local/poky_test/tmp/sysroots/beagleboard/usr/bin/crossscrip=
ts:/home/local/poky_test/tmp/sysroots/i686-linux/usr/sbin:/home/local/poky_=
test/tmp/sysroots/i686-linux/usr/bin:/home/local/poky_test/tmp/sysroots/i68=
6-linux/sbin:/home/local/poky_test/tmp/sysroots/i686-linux//bin:/home/local=
/poky-master/scripts:/home/local/poky-master/bitbake/bin/:/opt/amltd/bin:/u=
sr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/=
tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerbero=
s/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbi=
n:/sbin:/home/local/poky-master/scripts"; /usr/bin/env wget -t 5 -nv --pass=
ive-ftp --no-check-certificate -P /home/local/poky_test/downloads 'http://w=
ww.busybox.net/downloads/busybox-1.19.4.tar.bz2'
| WARNING: Failed to fetch URL http://www.busybox.net/downloads/busybox-1.1=
9.4.tar.bz2;name=3Dtarball
| DEBUG: Fetcher failure for URL: 'http://www.busybox.net/downloads/busybox=
-1.19.4.tar.bz2;name=3Dtarball'. Checksum mismatch!
| File: '/home/local/poky_test/downloads/busybox-1.19.4.tar.bz2' has md5 ch=
ecksum 9c0cae5a0379228e7b55e5b29528df8e when 9c0cae5a0379228e7b55e5b29528df=
8f was expected
| File: '/home/local/poky_test/downloads/busybox-1.19.4.tar.bz2' has sha256=
 checksum 9b853406da61ffb59eb488495fe99cbb7fb3dd29a31307fcfa9cf070543710ee =
when 9b853406da61ffb59eb488495fe99cbb7fb3dd29a31307fcfa9cf070543710ef was e=
xpected
| DEBUG: Trying MIRRORS
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['ftp', '.*', '/.*', '', '', =
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {=
}]
| DEBUG: For url ['http', 'www.busybox.net', '/downloads/busybox-1.19.4.tar=
.bz2', '', '', {'name': 'tarball'}] comparing ['http', '.*', '/.*', '', '',=
 {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', =
{}]
| DEBUG: For url http://www.busybox.net/downloads/busybox-1.19.4.tar.bz2;na=
me=3Dtarball returning http://downloads.yoctoproject.org/mirror/sources/bus=
ybox-1.19.4.tar.bz2;name=3Dtarball
| NOTE: fetch http://downloads.yoctoproject.org/mirror/sources/busybox-1.19=
.4.tar.bz2
| DEBUG: executing /usr/bin/env wget -t 5 -nv --passive-ftp --no-check-cert=
ificate -P /home/local/poky_test/downloads 'http://downloads.yoctoproject.o=
rg/mirror/sources/busybox-1.19.4.tar.bz2'
| DEBUG: Fetcher accessed the network with the command /usr/bin/env wget -t=
 5 -nv --passive-ftp --no-check-certificate -P /home/local/poky_test/downlo=
ads 'http://downloads.yoctoproject.org/mirror/sources/busybox-1.19.4.tar.bz=
2'
| DEBUG: Running export HOME=3D"/home/gthomas"; export GIT_CONFIG=3D"/home/=
local/poky_test/tmp/sysroots/i686-linux/etc/gitconfig"; export PATH=3D"/hom=
e/local/poky_test/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linu=
x-gnueabi:/home/local/poky_test/tmp/sysroots/beagleboard/usr/bin/crossscrip=
ts:/home/local/poky_test/tmp/sysroots/i686-linux/usr/sbin:/home/local/poky_=
test/tmp/sysroots/i686-linux/usr/bin:/home/local/poky_test/tmp/sysroots/i68=
6-linux/sbin:/home/local/poky_test/tmp/sysroots/i686-linux//bin:/home/local=
/poky-master/scripts:/home/local/poky-master/bitbake/bin/:/opt/amltd/bin:/u=
sr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/=
tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerbero=
s/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbi=
n:/sbin:/home/local/poky-master/scripts"; /usr/bin/env wget -t 5 -nv --pass=
ive-ftp --no-check-certificate -P /home/local/poky_test/downloads 'http://d=
ownloads.yoctoproject.org/mirror/sources/busybox-1.19.4.tar.bz2'
| ERROR: Function failed: Fetcher failure for URL: 'http://www.busybox.net/=
downloads/busybox-1.19.4.tar.bz2;name=3Dtarball'. Checksum mismatch!
| File: '/home/local/poky_test/downloads/busybox-1.19.4.tar.bz2' has md5 ch=
ecksum 9c0cae5a0379228e7b55e5b29528df8e when 9c0cae5a0379228e7b55e5b29528df=
8f was expected
| File: '/home/local/poky_test/downloads/busybox-1.19.4.tar.bz2' has sha256=
 checksum 9b853406da61ffb59eb488495fe99cbb7fb3dd29a31307fcfa9cf070543710ee =
when 9b853406da61ffb59eb488495fe99cbb7fb3dd29a31307fcfa9cf070543710ef was e=
xpected
NOTE: package busybox-1.19.4-r0: task do_fetch: Failed
ERROR: Task 2 (/home/local/poky-master/meta/recipes-core/busybox/busybox_1.=
19.4.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 8 tasks of which 7 didn't need to be rerun a=
nd 1 failed.

Summary: 1 task failed:
  /home/local/poky-master/meta/recipes-core/busybox/busybox_1.19.4.bb, do_f=
etch
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


[gthomas@titan poky_test]$ bitbake busybox -c patch
Loading cache: 100% |######################################################=
##############################| ETA:  00:00:00
Loaded 1108 entries from dependency cache.

OE Build Configuration:
BB_VERSION        =3D "1.15.1"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "beagleboard"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.1+snapshot-20120410"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa8"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "(nobranch):3d69d9462d550ce4e00e14768cc616bc9ad7e8a5"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 8 of 10 (ID: 2, /home/local/poky-master/meta/recipes-cor=
e/busybox/busybox_1.19.4.bb, do_fetch)
NOTE: package busybox-1.19.4-r0: task do_fetch: Started
WARNING: Failed to fetch URL http://www.busybox.net/downloads/busybox-1.19.=
4.tar.bz2;name=3Dtarball
NOTE: package busybox-1.19.4-r0: task do_fetch: Succeeded
NOTE: Running task 9 of 10 (ID: 0, /home/local/poky-master/meta/recipes-cor=
e/busybox/busybox_1.19.4.bb, do_unpack)
NOTE: package busybox-1.19.4-r0: task do_unpack: Started
NOTE: package busybox-1.19.4-r0: task do_unpack: Succeeded
NOTE: Running task 10 of 10 (ID: 1, /home/local/poky-master/meta/recipes-co=
re/busybox/busybox_1.19.4.bb, do_patch)
NOTE: package busybox-1.19.4-r0: task do_patch: Started
NOTE: package busybox-1.19.4-r0: task do_patch: Succeeded
NOTE: Tasks Summary: Attempted 10 tasks of which 7 didn't need to be rerun =
and all succeeded.

Summary: There was 1 WARNING message shown.


--------------080801090006070006010401--
