Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BC314C800AC
	for <poky@yoctoproject.org>; Sun,  3 Jul 2011 03:34:24 -0500 (CDT)
Received: from [192.168.0.101] (91-64-95-94-dynip.superkabel.de [91.64.95.94])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id E91091B10C05
	for <poky@yoctoproject.org>; Sun,  3 Jul 2011 08:42:19 +0000 (UTC)
Message-ID: <4E10298C.8080507@freyther.de>
Date: Sun, 03 Jul 2011 10:34:20 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.1.1
Subject: kernel upgrade breaks image creation
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
X-List-Received-Date: Sun, 03 Jul 2011 08:34:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

I managed to get my build directory into an inconsistent state. There was a
kernel update and now the image fails to be built. It tries to copy the
System.map-... from the sysroot/${MACHINE}/kernel/... but it is empty:

| FATAL: Could not open
'/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
No such file or directory
| FATAL: Could not open
'/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
No such file or directory
| FATAL: Could not open
'/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
No such file or directory
| FATAL: Could not open
'/poky/build/tmp/sysroots/sysmocom-foo/kernel/System.map-2.6.33-07172-g57e3d92':
No such file or directory


I tried a bitbake -cclean virtual/kernel, also a cleanall, interestingly the
sysmocom-ti/kernel directory is not removed or does not seem to be
re-populated. Did anyone else ever see that behavior? There was one non
standard thing in the kernel upgrade:

+PR... bumped
-SRC_URI = "git://linux.git;protocol=ssh;branch=master"
+SRC_URI = "git://linux.git;protocol=ssh;branch=master \
+          file://defconfig-${MACHINE}"
 S = "${WORKDIR}/git"

 do_configure() {
-       oe_runmake foo_defconfig
-       oe_runmake oldconfig
+       install -m 0644 ${WORKDIR}/defconfig-${MACHINE} ${S}/.config
+       #oe_runmake foo_defconfig
+       #oe_runmake oldconfig
 }

is there anything that makes click?

	holger

