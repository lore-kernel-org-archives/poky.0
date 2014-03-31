Return-Path: <holger@freyther.de>
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 530B3E00C29
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 13:58:22 -0700 (PDT)
Received: from sangmingze-mail.local (91-65-86-185-dynip.superkabel.de
	[91.65.86.185])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 4A7644EEBD
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 20:58:18 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.82)
	(envelope-from <holger@freyther.de>) id 1WUjHd-0005c8-Bv
	for poky@yoctoproject.org; Mon, 31 Mar 2014 22:58:17 +0200
Date: Mon, 31 Mar 2014 22:58:17 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
To: poky@yoctoproject.org
Message-ID: <20140331205817.GA4987@xiaoyu.lan>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: ARM /proc/cpu/alignment with systemd images in dora
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
X-List-Received-Date: Mon, 31 Mar 2014 20:58:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Good Evening,

I noticed that the "alignment.sh" is not ran on my systemd images. I
think I opened a bug about systemd ignoring ".sh" scripts but that was
fixed and also not the main issue here. After looking at src/core/service.c
of systemd the rcS.d is not looked at.

Can something like the below be included? This will start the alignment
in runlevel2 too and will then be executed by systemd. Alternatively one
could add a proper symlink for the alignment target inside the systemd
recipe?

Comments?

diff --git a/meta/recipes-core/initscripts/initscripts_1.0.bb b/meta/recipes-core/initscripts/initscripts_1.0.bb
index 50ebb1c..08539a2 100644
--- a/meta/recipes-core/initscripts/initscripts_1.0.bb
+++ b/meta/recipes-core/initscripts/initscripts_1.0.bb
@@ -124,7 +124,7 @@ do_install () {
        update-rc.d -r ${D} read-only-rootfs-hook.sh start 29 S .
        update-rc.d -r ${D} devpts.sh start 38 S .
        if [ "${TARGET_ARCH}" = "arm" ]; then
-               update-rc.d -r ${D} alignment.sh start 06 S .
+               update-rc.d -r ${D} alignment.sh start 06 S 2 .
        fi
        # We wish to have /var/log ready at this stage so execute this after
        # populate-volatile.sh



