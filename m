Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD93E00D4F; Tue, 11 Jun 2019 07:47:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2511EE00D9E
	for <poky@yoctoproject.org>; Tue, 11 Jun 2019 07:47:00 -0700 (PDT)
Received: from qschulz.sue.net (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45NXrz2LM7z5tlJ;
	Tue, 11 Jun 2019 16:46:59 +0200 (CEST)
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: poky@yoctoproject.org
Date: Tue, 11 Jun 2019 16:46:46 +0200
Message-Id: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
X-Mailer: git-send-email 2.17.1
Cc: andriy.danylovskyy@streamunlimited.com
Subject: [thud] [PATCH 0/2] opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Tue, 11 Jun 2019 14:47:35 -0000

Hi all,

I've been hit with a rather unsettling bug when building an image with
PACKAGE_CLASSES = "ipk" in Thud 2.6.2.

The error message is the following:
ERROR: meh-1.0-r0 do_rootfs: Unable to install packages. Command
'/tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/opkg.conf -t /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/ipktemp/ -o /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/rootfs  --force_postinstall --prefer-arch-to-version   --force-maintainer --force-overwrite install packagegroup-base-extended packagegroup-core-boot plop run-postinsts' returned 2:
Collected errors:
 * Solver encountered 2 problem(s):
 * Problem 1/2:
 *   - nothing provides bluez5 needed by plop-1.0-r0.aarch64
 * 
 * Solution 1:
 *   - do not ask to install a package providing plop

 * Problem 2/2:
 *   - nothing provides bluez5 needed by packagegroup-base-bluetooth-1.0-r83.stream1832prime
 * 
 * Solution 1:
 *   - do not ask to install a package providing packagegroup-base-extended




ERROR: meh-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/log.do_rootfs.30869
ERROR: Task (/media/qschulz/yocto/build/oe/recipes-images/nsdk/meh.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3059 tasks of which 3046 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
  /media/qschulz/yocto/build/oe/recipes-images/nsdk/meh.bb:do_rootfs
Summary: There were 7 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


I could reproduce it with an image meh.bb:
inherit core-image

CORE_IMAGE_EXTRA_INSTALL += "plop"

BAD_RECOMMENDATIONS += "bluez5"

with plop.bb being:
DESCRIPTION = "Plap"
LICENSE = "CLOSED"

RDEPENDS_${PN} += "bluez5"

do_install() {
        install -d ${D}${bindir}
        echo "plip" > ${D}${bindir}/plep
}

I took me a while to find out that it's an issue with opkg itself and
nothing could be done in Yocto to fix it but I found the three following
patches in yocto-2.7:

https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=d8e12f2bfc4deaa0dc7530cf3af905e18e8037f6
https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c76c50df6498d85e7a6254002ff8f5e0ef3e67f7
https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=5bcb626cf49d2295ccca45d6fc7e1617cca932d6

With those three applied on top of thud 2.6.2, my image is built without
complaints.

Please apply those backported patches for next Thud releases.


Thanks,
Quentin

Alejandro del Castillo (2):
  opkg: add --ignore-recommends flag
  OpkgPM: use --add-ignore-recommends to process BAD_RECOMMENDATIONS

 meta/lib/oe/package_manager.py                |  41 +--
 meta/lib/oe/rootfs.py                         |   2 -
 ...pkg-add-add-ignore-recommends-option.patch | 260 ++++++++++++++++++
 meta/recipes-devtools/opkg/opkg_0.3.6.bb      |   1 +
 4 files changed, 263 insertions(+), 41 deletions(-)
 create mode 100644 meta/recipes-devtools/opkg/opkg/0001-libopkg-add-add-ignore-recommends-option.patch

-- 
2.17.1


