Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C143DE00D67; Fri, 31 May 2019 02:48:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.20 listed in list.dnswl.org]
X-Greylist: delayed 2304 seconds by postgrey-1.32 at yocto-www;
	Fri, 31 May 2019 02:48:19 PDT
Received: from bsmtp8.bon.at (bsmtp8.bon.at [213.33.87.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6430EE00D5F
	for <poky@yoctoproject.org>; Fri, 31 May 2019 02:48:19 -0700 (PDT)
Received: from bsmtp7.bon.at (unknown [192.168.181.107])
	by bsmtp8.bon.at (Postfix) with ESMTPS id 45Fdv82dYzz5vCL
	for <poky@yoctoproject.org>; Fri, 31 May 2019 11:09:56 +0200 (CEST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45Fdv64fX0z5tlD
	for <poky@yoctoproject.org>; Fri, 31 May 2019 11:09:54 +0200 (CEST)
Date: Fri, 31 May 2019 11:09:53 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: poky@yoctoproject.org
Message-ID: <20190531090953.shdqfcmj27ei4evb@qschulz>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
Subject: opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Fri, 31 May 2019 09:48:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

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


I could reproduce it with an image meh.bb (I still have other layers
included, including custom ones and I'm using a custom machine, so it
might not be reproducible with solely poky and the following):
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

So now, the question:
I see that there is a planned 2.6.3 release. What is your policy in
backporting patches? Could you please consider adding at least the first
patch patching the python scripts since I can't do a bbappend of those
in my layers and I'm pretty reluctant in applying patches on top of the
upstream Thud release, as I like to keep upstream sources vanilla.

Thanks,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com

