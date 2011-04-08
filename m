Return-Path: <sean@chumby.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 963164C80A8A
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 03:36:13 -0500 (CDT)
Received: by iwr19 with SMTP id 19so4679774iwr.35
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 01:36:13 -0700 (PDT)
Received: by 10.43.53.132 with SMTP id vq4mr1346659icb.472.1302251773375;
	Fri, 08 Apr 2011 01:36:13 -0700 (PDT)
Received: from [192.168.1.101] (firewall.muvee.com [203.116.69.162])
	by mx.google.com with ESMTPS id xe5sm1450221icb.22.2011.04.08.01.36.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 08 Apr 2011 01:36:12 -0700 (PDT)
From: Sean Cross <sean@chumby.com>
Date: Fri, 8 Apr 2011 16:36:08 +0800
Message-Id: <A710DDAD-0F83-40BB-BDED-419D8F3B4EA0@chumby.com>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: Error when building: Unable to find package locale-base-en-gb
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
X-List-Received-Date: Fri, 08 Apr 2011 08:36:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to port Poky to the chumby-falconwing platform, but I'm =
having a problem in the very last step.  I'm using poky-laverne-4.0.  =
I'm running Ubuntu 10.04 LTE.  For some reason, I get an error saying =
that it's unable to find the package locale-base-en-gb, even though it =
appears to exist.  I've tried rebuilding eglibc, but the problem =
remains.  Both the ipk and rpm are present in the deploy directory:

user@ubuntu:~/poky-laverne-4.0/build$ find tmp/deploy -name =
'locale-base-en-gb*'
tmp/deploy/ipk/armv5te/locale-base-en-gb_2.12-r9_armv5te.ipk
tmp/deploy/rpm/armv5te/locale-base-en-gb-2.12-r9.armv5te.rpm
user@ubuntu:~/poky-laverne-4.0/build$=20

When I go to actually build poky-image-sato, I get the following output:=20=


user@ubuntu:~/poky-laverne-4.0/build$ bitbake poky-image-sato
  ...
NOTE: Running task 5553 of 5556 (ID: 10, =
/home/user/poky-laverne-4.0/meta/recipes-sato/images/poky-image-sato.bb, =
do_rootfs)
NOTE: package poky-image-sato-1.0-r0: task do_rootfs: Started
ERROR: Task failed: ('function do_rootfs failed', =
'/home/user/poky-laverne-4.0/build/tmp/work/chumby-falconwing-poky-linux-g=
nueabi/poky-image-sato-1.0-r0/temp/log.do_rootfs.25117')
ERROR: Logfile of failure stored in: =
/home/user/poky-laverne-4.0/build/tmp/work/chumby-falconwing-poky-linux-gn=
ueabi/poky-image-sato-1.0-r0/temp/log.do_rootfs.25117
Log data follows:
| + rm -rf =
/home/user/poky-laverne-4.0/build/tmp/work/chumby-falconwing-poky-linux-gn=
ueabi/poky-image-sato-1.0-r0/rootfs
| + mkdir -p =
/home/user/poky-laverne-4.0/build/tmp/work/chumby-falconwing-poky-linux-gn=
ueabi/poky-image-sato-1.0-r0/rootfs
| + mkdir -p /home/user/poky-laverne-4.0/build/tmp/deploy/images
| + '[' 0 '!=3D' 1 ']'
| + rootfs_rpm_do_rootfs
| + set +x
| Generating solve db for =
/home/user/poky-laverne-4.0/build/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.122722 secs
|    order:               1      0.000000 MB      0.053324 secs
|    fingerprint:        52      0.003158 MB      0.008152 secs
|    install:            38      0.000000 MB      0.030789 secs
|    dbadd:              38      0.000000 MB      0.016166 secs
|    dbget:            3348      0.036632 MB      0.001855 secs
|    dbput:            1769      0.248988 MB      0.003098 secs
|    readhdr:           381      0.432536 MB      0.001162 secs
|    hdrload:          3781      5.984096 MB      0.013046 secs
|    hdrget:          64607      0.000000 MB      0.020991 secs
| Generating solve db for =
/home/user/poky-laverne-4.0/build/tmp/deploy/rpm/chumby-falconwing...
|    total:               1      0.000000 MB      0.814512 secs
|    order:               1      0.000000 MB      0.168025 secs
|    fingerprint:       690      0.010686 MB      0.050415 secs
|    install:           393      0.000000 MB      0.305696 secs
|    dbadd:             393      0.000000 MB      0.157316 secs
|    dbget:           12651      1.576036 MB      0.012937 secs
|    dbput:            7308      2.967748 MB      0.022940 secs
|    readhdr:          3931      3.000744 MB      0.011413 secs
|    hdrload:        387891    537.810976 MB      1.247059 secs
|    hdrget:        7250284      0.000000 MB      1.376680 secs
| Processing locale-base-en-gb...
| Unable to find package locale-base-en-gb!
| ERROR: Task failed: ('function do_rootfs failed', =
'/home/user/poky-laverne-4.0/build/tmp/work/chumby-falconwing-poky-linux-g=
nueabi/poky-image-sato-1.0-r0/temp/log.do_rootfs.25117')
NOTE: package poky-image-sato-1.0-r0: task do_rootfs: Failed
ERROR: Task 10 =
(/home/user/poky-laverne-4.0/meta/recipes-sato/images/poky-image-sato.bb, =
do_rootfs) failed with 1
ERROR: =
'/home/user/poky-laverne-4.0/meta/recipes-sato/images/poky-image-sato.bb' =
failed
]user@ubuntu:~/poky-laverne-4.0/build$=20

How can I track down the cause of the problem?


Sean

