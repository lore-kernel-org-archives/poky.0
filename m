Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5568C4C8090B
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 19:18:48 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Feb 2011 17:18:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,209,1297065600"; d="scan'208";a="392638720"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 17:18:46 -0800
Date: Wed, 23 Feb 2011 09:23:43 +0800
From: Yu Ke <ke.yu@intel.com>
To: Saul Wold <saul.wold@intel.com>
Message-ID: <20110223012343.GB2728@kyu3-hedt>
References: <cover.1298390312.git.ke.yu@intel.com>
	<3a0ec35ea472b2ae866022ef2d3278afd33d9db8.1298390312.git.ke.yu@intel.com>
	<4D641A8A.5030802@intel.com>
MIME-Version: 1.0
In-Reply-To: <4D641A8A.5030802@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] xserver-nodm-init: add rootless-x support
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
X-List-Received-Date: Wed, 23 Feb 2011 01:18:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Feb 22, 12:20, Saul Wold wrote:
> On 02/22/2011 08:00 AM, Yu Ke wrote:
> >most rootless X work are already done in the kernel, xserver and
> >graphics driver, this patches add the the remaining userspace setting:
> >
> >- create /etc/X11/Xusername to set rootless X user
> >- add rootless X user to group video, tty to access /dev/tty[0-4]
> >   and /dev/dri/card0
> >- grant rootless X user access right to /dev/input/*, /var/log
> >
> >Signed-off-by: Yu Ke<ke.yu@intel.com>
> >---
> >  .../x11-common/xserver-nodm-init.bb                |   22 +++++++++++++++++++-
> >  .../x11-common/xserver-nodm-init/Xusername         |    1 +
> >  .../x11-common/xserver-nodm-init/xserver-nodm      |    4 +++
> >  3 files changed, 26 insertions(+), 1 deletions(-)
> >  create mode 100644 meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername
> >
> >diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init.bb b/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
> >index 03a6ca3..4642272 100644
> >--- a/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
> >+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
> >@@ -3,10 +3,11 @@ LICENSE = "GPLv2"
> >  LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
> >  SECTION = "x11"
> >  PRIORITY = "optional"
> >-PR = "r23"
> >+PR = "r24"
> >  RDEPENDS_${PN} = "dbus-wait sudo"
> >
> >  SRC_URI = "file://xserver-nodm \
> >+           file://Xusername \
> >             file://gplv2-license.patch"
> >
> >  S = ${WORKDIR}
> >@@ -17,6 +18,25 @@ do_install() {
> >      install -d ${D}/etc
> >      install -d ${D}/etc/init.d
> >      install xserver-nodm ${D}/etc/init.d
> >+    if [ "${ROOTLESS_X}" = "1" ] ; then
> >+        install -d ${D}/etc/X11
> >+        install Xusername ${D}/etc/X11
> >+    fi
> >+}
> >+
> >+pkg_postinst_${PN} () {
> >+    if [ "x$D" != "x" ] ; then
> >+        exit 1
> >+    fi
> >+
> >+    if [ ! -f /etc/X11/Xusername ]; then
> Do you really mean to check for the file existing?
> 
> >+        # create the rootless X user, and add user to group tty, video
> >+        username=`cat /etc/X11/Xusername`
> >+        adduser --disabled-password $username
> >+        # FIXME: use addgroup if busybox addgroup is ready
> >+        sed -i -e "s/^video:.*/&${username}/g" /etc/group
> >+        sed -i -e "s/^tty:.*/&${username}/g" /etc/group
> >+    fi
> >  }
> >
> >  inherit update-rc.d
> >diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername b/meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername
> >new file mode 100644
> >index 0000000..db9781a
> >--- /dev/null
> >+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername
> >@@ -0,0 +1 @@
> >+yocto
> Why yocto, maybe xuser would be a more generic username

Yup, this looks better. I will revise and resubmit the patch

Regards
Ke

> 
> >diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm b/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm
> >index 69ea949..d8c4ba0 100755
> >--- a/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm
> >+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm
> >@@ -30,6 +30,10 @@ case "$1" in
> >         echo "Starting Xserver"
> >         if [ -f /etc/X11/Xusername ]; then
> >             username=`cat /etc/X11/Xusername`
> >+           # setting for rootless X
> >+           chmod o+w /var/log
> >+           chmod g+r /dev/tty[0-3]
> >+           chmod o+rw /dev/input/*
> >         fi
> >         # Using sudo -i here has the nice side effect of making sire
> >         # HOME, USER and other previously problematic variables
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

