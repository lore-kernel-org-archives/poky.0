Return-Path: <holger@freyther.de>
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8F5E00B93
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 23:02:10 -0700 (PDT)
Received: from sangmingze-mail.local (91-65-86-185-dynip.superkabel.de
	[91.65.86.185])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 634614DFEC
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 06:02:05 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.82)
	(envelope-from <holger@freyther.de>) id 1WT3O8-0003tI-QE
	for poky@yoctoproject.org; Thu, 27 Mar 2014 07:02:04 +0100
Date: Thu, 27 Mar 2014 07:02:04 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: poky@yoctoproject.org
Message-ID: <20140327060204.GA14885@xiaoyu.lan>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: PRserver support broken in Dora?
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
X-List-Received-Date: Thu, 27 Mar 2014 06:02:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Good Morning,

I am sorry to be a bit vagued. I have an in-house application, I modified
the CONFFILES_${PN} line of app-name_git.bb and then issued bitbake app-name.
My expectation was that somehow the signature will be different app-name
will be re-built and the resulting PKGR will be r1.X+1.

In practice nothing is being re-built. JaMa pointed out I can use the
"bitbake -S" option to display the signature but when doing "bitbake -S
app-name" nothing relevant will be printed on the screen. I tried to use
strace to see if it writes to a file but the trace is way too long to
find something relevant.

My local.conf is added below. Could it be that the AUTOPR handling in
Dora is broken? Any idea of where I can look at to see why the revisions
are never incremented?

holger

change to the recipe:
@@ -13,7 +13,7 @@ DEPENDS = "qtbase libsystemd-qt tufao1"
 inherit qmake5
 
 FILES_${PN} += "${systemd_unitdir}"

-CONFFILES_${PN} = "${sysconfdir}/sysctl.d/99-sysmocom-forwarding.conf"
+CONFFILES_${PN} = "${sysconfdir}/sysctl.d/99-sysmocom-forwarding.conf ${sysconfdir}/somedir"
 
 do_install() {
     # Install the main application


local.conf:
MACHINE ??= "sysmobts-v2"
DISTRO ?= "poky"
PACKAGE_CLASSES ?= "package_ipk"
EXTRA_IMAGE_FEATURES = "debug-tweaks"
USER_CLASSES ?= "buildstats image-mklibs image-prelink"
PATCHRESOLVE = "noop"
BB_DISKMON_DIRS = "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K" 
CONF_VERSION = "1"

DISTRO_FEATURES_append = " systemd "
VIRTUAL-RUNTIME_init_manager = "systemd"

MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"

FULL_OPTIMIZATION="-O2 -pipe ${DEBUG_FLAGS} -fno-omit-frame-pointer"
DEBUGFILEDIRECTORY-dbg = "/usr/lib/debug"
PACKAGE_DEBUG_SPLIT_STYLE = "debug-without-src"
PRSERV_HOST = "localhost:0"

INHERIT += "rm_work"

