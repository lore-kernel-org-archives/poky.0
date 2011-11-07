Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E56E01358
	for <poky@yoctoproject.org>; Mon,  7 Nov 2011 09:40:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Nov 2011 09:40:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="71911002"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.14])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2011 09:40:00 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Nov 2011 09:39:58 -0800
Message-Id: <8698d46481551038f2baa147debcc66061d18b7f.1320687487.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1320687487.git.sgw@linux.intel.com>
References: <cover.1320687487.git.sgw@linux.intel.com>
In-Reply-To: <cover.1320687487.git.sgw@linux.intel.com>
References: <cover.1320687487.git.sgw@linux.intel.com>
Subject: [PATCH 1/1] Self Hosted Image: Added Task and Images
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
X-List-Received-Date: Mon, 07 Nov 2011 17:40:00 -0000

This is the first pass of creating a self hosted image, this task
and image can pass bitbake's sanity check (if modified to remove the
cvs check) and can build psuedo, albit very slowly on qemu

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../recipes-core/images/self-hosted-image.bb       |   16 ++
 meta-yocto/recipes-core/tasks/task-self-hosted.bb  |  158 ++++++++++++++++++++
 2 files changed, 174 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-core/images/self-hosted-image.bb
 create mode 100644 meta-yocto/recipes-core/tasks/task-self-hosted.bb

diff --git a/meta-yocto/recipes-core/images/self-hosted-image.bb b/meta-yocto/recipes-core/images/self-hosted-image.bb
new file mode 100644
index 0000000..26174e2
--- /dev/null
+++ b/meta-yocto/recipes-core/images/self-hosted-image.bb
@@ -0,0 +1,16 @@
+IMAGE_INSTALL = "task-core-boot task-core-apps-console task-core-ssh-openssh task-self-hosted"
+
+MACHINE_FEATURES = "kernel26"
+
+DISTRO_FEATURES="argp usbgadget usbhost xattr nfs zeroconf pci ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt                                     libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse                                        libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code                                      libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc                                      libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc                                      libc-posix-wchar-io largefile"
+
+
+POKY_EXTRA_INSTALL = "\
+    task-self-hosted \
+    "
+
+IMAGE_ROOTFS_EXTRA_SPACE = "1048576"
+
+inherit core-image
+
+PR = "r3"
diff --git a/meta-yocto/recipes-core/tasks/task-self-hosted.bb b/meta-yocto/recipes-core/tasks/task-self-hosted.bb
new file mode 100644
index 0000000..e8a87e3
--- /dev/null
+++ b/meta-yocto/recipes-core/tasks/task-self-hosted.bb
@@ -0,0 +1,158 @@
+#
+# Copyright (C) 2010 Intel Corporation
+#
+
+DESCRIPTION = "Create Basic Image Tasks"
+PR = "r33"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+PACKAGES = "\
+    task-self-hosted \
+    task-self-hosted-debug \
+    task-self-hosted-sdk \
+    task-self-hosted-extended \
+    task-self-hosted-graphics \
+    "
+
+ALLOW_EMPTY = "1"
+
+RDEPENDS_task-self-hosted = "\
+    task-self-hosted-debug \
+    task-self-hosted-sdk \
+    task-self-hosted-extended \
+    task-self-hosted-graphics \
+    "
+
+RDEPENDS_task-self-hosted-sdk = "\
+    autoconf \
+    automake \
+    binutils-symlinks \
+    binutils \
+    cpp \
+    cpp-symlinks \
+    ccache \
+    gcc \
+    gcc-symlinks \
+    g++ \
+    g++-symlinks \
+    gettext \
+    make \
+    intltool \
+    libstdc++ \
+    libstdc++-dev \
+    libtool \
+    perl-module-re \
+    perl-module-text-wrap \
+    coreutils \
+    diffutils \
+    pkgconfig \
+    findutils \
+    quilt \
+    less \
+    distcc \
+    ldd \
+    file \
+    tcl \
+    "
+
+RDEPENDS_task-self-hosted-debug = " \
+    gdb \
+    gdbserver \
+    tcf-agent \
+    rsync \
+    strace"
+
+
+RDEPENDS_task-self-hosted-extended = "\
+    binutils \
+    bzip2 \
+    chkconfig \
+    chrpath \
+    curl \
+    dhcp-client \
+    diffstat \
+    diffutils \
+    elfutils \
+    expat \
+    gamin \
+    gdbm \
+    git \
+    gettext \
+    gettext-runtime \
+    grep \
+    groff \
+    gawk \
+    hdparm \
+    libaio \
+    libxml2 \
+    libusb1 \
+    lrzsz \
+    lsof \
+    lzo \
+    man \
+    man-pages \
+    mc \
+    mdadm \
+    minicom \
+    mtools \
+    ncurses \
+    neon \
+    openssl \
+    opkg \
+    opkg-utils \
+    parted \
+    patch \
+    perl \
+    perl-modules \
+    perl-dev \
+    pth \
+    python \
+    python-compile \
+    python-compiler \
+    python-core \
+    python-curses \
+    python-datetime \
+    python-distutils \
+    python-elementtree \
+    python-fcntl \
+    python-logging \
+    python-misc \
+    python-multiprocessing \
+    python-netclient \
+    python-netserver \
+    python-pickle \
+    python-re \
+    python-rpm \
+    python-shell \
+    python-sqlite3 \
+    python-subprocess \
+    python-textutils \
+    python-xmlrpc \
+    quota \
+    readline \
+    rpm \
+    screen \
+    setserial \
+    strace \
+    subversion \
+    sysstat \
+    tar \
+    tcl \
+    texi2html \
+    texinfo \
+    usbutils \
+    unzip \
+    watchdog \
+    wget \
+    which \
+    xinetd \
+    zip \
+    zlib \
+    "
+
+
+RDEPENDS_task-self-hosted-graphics = "\
+    python-pygtk \
+    "
-- 
1.7.6.4


