Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA5AAE0059C
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 07:24:48 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2011 07:24:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,553,1315206000"; d="scan'208";a="94086084"
Received: from unknown (HELO [10.255.12.15]) ([10.255.12.15])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2011 07:24:47 -0800
Message-ID: <4ECBBEBF.2030308@linux.intel.com>
Date: Tue, 22 Nov 2011 07:24:47 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1321058705-8230-1-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1321058705-8230-1-git-send-email-sgw@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] Self Hosted Image: Added Task and Images
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
X-List-Received-Date: Tue, 22 Nov 2011 15:24:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Ping?


On 11/11/2011 04:45 PM, Saul Wold wrote:
> This is the first pass of creating a self hosted image, this task
> and image can pass bitbake's sanity check (if modified to remove the
> cvs check) and can build psuedo, albit very slowly on qemu
>
> Signed-off-by: Saul Wold<sgw@linux.intel.com>
> ---
>   .../recipes-core/images/self-hosted-image.bb       |   11 ++
>   meta-yocto/recipes-core/tasks/task-self-hosted.bb  |  158 ++++++++++++++++++++
>   2 files changed, 169 insertions(+), 0 deletions(-)
>   create mode 100644 meta-yocto/recipes-core/images/self-hosted-image.bb
>   create mode 100644 meta-yocto/recipes-core/tasks/task-self-hosted.bb
>
> diff --git a/meta-yocto/recipes-core/images/self-hosted-image.bb b/meta-yocto/recipes-core/images/self-hosted-image.bb
> new file mode 100644
> index 0000000..3a244f7
> --- /dev/null
> +++ b/meta-yocto/recipes-core/images/self-hosted-image.bb
> @@ -0,0 +1,11 @@
> +IMAGE_INSTALL = "task-core-boot task-core-apps-console task-core-ssh-openssh task-self-hosted"
> +
> +POKY_EXTRA_INSTALL = "\
> +    task-self-hosted \
> +    "
> +
> +IMAGE_ROOTFS_EXTRA_SPACE = "1048576"
> +
> +inherit core-image
> +
> +PR = "r3"
> diff --git a/meta-yocto/recipes-core/tasks/task-self-hosted.bb b/meta-yocto/recipes-core/tasks/task-self-hosted.bb
> new file mode 100644
> index 0000000..d7b6e87
> --- /dev/null
> +++ b/meta-yocto/recipes-core/tasks/task-self-hosted.bb
> @@ -0,0 +1,158 @@
> +#
> +# Copyright (C) 2010 Intel Corporation
> +#
> +
> +DESCRIPTION = "Create Basic Image Tasks"
> +PR = "r32"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
> +                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +PACKAGES = "\
> +    task-self-hosted \
> +    task-self-hosted-debug \
> +    task-self-hosted-sdk \
> +    task-self-hosted-extended \
> +    task-self-hosted-graphics \
> +    "
> +
> +ALLOW_EMPTY = "1"
> +
> +RDEPENDS_task-self-hosted = "\
> +    task-self-hosted-debug \
> +    task-self-hosted-sdk \
> +    task-self-hosted-extended \
> +    task-self-hosted-graphics \
> +    "
> +
> +RDEPENDS_task-self-hosted-sdk = "\
> +    autoconf \
> +    automake \
> +    binutils-symlinks \
> +    binutils \
> +    cpp \
> +    cpp-symlinks \
> +    ccache \
> +    gcc \
> +    gcc-symlinks \
> +    g++ \
> +    g++-symlinks \
> +    gettext \
> +    make \
> +    intltool \
> +    libstdc++ \
> +    libstdc++-dev \
> +    libtool \
> +    perl-module-re \
> +    perl-module-text-wrap \
> +    coreutils \
> +    diffutils \
> +    pkgconfig \
> +    findutils \
> +    quilt \
> +    less \
> +    distcc \
> +    ldd \
> +    file \
> +    tcl \
> +    "
> +
> +RDEPENDS_task-self-hosted-debug = " \
> +    gdb \
> +    gdbserver \
> +    tcf-agent \
> +    rsync \
> +    strace"
> +
> +
> +RDEPENDS_task-self-hosted-extended = "\
> +    binutils \
> +    bzip2 \
> +    chkconfig \
> +    chrpath \
> +    curl \
> +    dhcp-client \
> +    diffstat \
> +    diffutils \
> +    elfutils \
> +    expat \
> +    gamin \
> +    gdbm \
> +    git \
> +    gettext \
> +    gettext-runtime \
> +    grep \
> +    groff \
> +    gawk \
> +    hdparm \
> +    libaio \
> +    libxml2 \
> +    libusb1 \
> +    lrzsz \
> +    lsof \
> +    lzo \
> +    man \
> +    man-pages \
> +    mc \
> +    mdadm \
> +    minicom \
> +    mtools \
> +    ncurses \
> +    neon \
> +    openssl \
> +    opkg \
> +    opkg-utils \
> +    parted \
> +    patch \
> +    perl \
> +    perl-modules \
> +    perl-dev \
> +    pth \
> +    python \
> +    python-compile \
> +    python-compiler \
> +    python-core \
> +    python-curses \
> +    python-datetime \
> +    python-distutils \
> +    python-elementtree \
> +    python-fcntl \
> +    python-logging \
> +    python-misc \
> +    python-multiprocessing \
> +    python-netclient \
> +    python-netserver \
> +    python-pickle \
> +    python-re \
> +    python-rpm \
> +    python-shell \
> +    python-sqlite3 \
> +    python-subprocess \
> +    python-textutils \
> +    python-xmlrpc \
> +    quota \
> +    readline \
> +    rpm \
> +    screen \
> +    setserial \
> +    strace \
> +    subversion \
> +    sysstat \
> +    tar \
> +    tcl \
> +    texi2html \
> +    texinfo \
> +    usbutils \
> +    unzip \
> +    watchdog \
> +    wget \
> +    which \
> +    xinetd \
> +    zip \
> +    zlib \
> +    "
> +
> +
> +RDEPENDS_task-self-hosted-graphics = "\
> +    python-pygtk \
> +    "

