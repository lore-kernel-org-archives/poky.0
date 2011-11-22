Return-Path: <koen@dominion.thruhere.net>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54ACDE0059C
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 08:27:58 -0800 (PST)
Received: by faap19 with SMTP id p19so784166faa.35
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 08:27:57 -0800 (PST)
Received: by 10.180.0.100 with SMTP id 4mr19231518wid.48.1321979276976;
	Tue, 22 Nov 2011 08:27:56 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id y3sm6908207wiy.3.2011.11.22.08.27.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 22 Nov 2011 08:27:55 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4ECBBEBF.2030308@linux.intel.com>
Date: Tue, 22 Nov 2011 17:27:51 +0100
Message-Id: <CE673F23-1499-4A3D-BF35-79D7B0455A0F@dominion.thruhere.net>
References: <1321058705-8230-1-git-send-email-sgw@linux.intel.com>
	<4ECBBEBF.2030308@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1251.1)
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
X-List-Received-Date: Tue, 22 Nov 2011 16:28:02 -0000
X-Groupsio-MsgNum: 7199
Content-Type: multipart/signed;
	boundary="Apple-Mail=_69503203-9C62-48E8-ADBE-E1F7C58088A6";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_69503203-9C62-48E8-ADBE-E1F7C58088A6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


Op 22 nov. 2011, om 16:24 heeft Saul Wold het volgende geschreven:

>=20
> Ping?

put it in oe-core?

>=20
>=20
> On 11/11/2011 04:45 PM, Saul Wold wrote:
>> This is the first pass of creating a self hosted image, this task
>> and image can pass bitbake's sanity check (if modified to remove the
>> cvs check) and can build psuedo, albit very slowly on qemu
>>=20
>> Signed-off-by: Saul Wold<sgw@linux.intel.com>
>> ---
>>  .../recipes-core/images/self-hosted-image.bb       |   11 ++
>>  meta-yocto/recipes-core/tasks/task-self-hosted.bb  |  158 =
++++++++++++++++++++
>>  2 files changed, 169 insertions(+), 0 deletions(-)
>>  create mode 100644 =
meta-yocto/recipes-core/images/self-hosted-image.bb
>>  create mode 100644 meta-yocto/recipes-core/tasks/task-self-hosted.bb
>>=20
>> diff --git a/meta-yocto/recipes-core/images/self-hosted-image.bb =
b/meta-yocto/recipes-core/images/self-hosted-image.bb
>> new file mode 100644
>> index 0000000..3a244f7
>> --- /dev/null
>> +++ b/meta-yocto/recipes-core/images/self-hosted-image.bb
>> @@ -0,0 +1,11 @@
>> +IMAGE_INSTALL =3D "task-core-boot task-core-apps-console =
task-core-ssh-openssh task-self-hosted"
>> +
>> +POKY_EXTRA_INSTALL =3D "\
>> +    task-self-hosted \
>> +    "
>> +
>> +IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576"
>> +
>> +inherit core-image
>> +
>> +PR =3D "r3"
>> diff --git a/meta-yocto/recipes-core/tasks/task-self-hosted.bb =
b/meta-yocto/recipes-core/tasks/task-self-hosted.bb
>> new file mode 100644
>> index 0000000..d7b6e87
>> --- /dev/null
>> +++ b/meta-yocto/recipes-core/tasks/task-self-hosted.bb
>> @@ -0,0 +1,158 @@
>> +#
>> +# Copyright (C) 2010 Intel Corporation
>> +#
>> +
>> +DESCRIPTION =3D "Create Basic Image Tasks"
>> +PR =3D "r32"
>> +LICENSE =3D "MIT"
>> +LIC_FILES_CHKSUM =3D =
"file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>> +                    =
file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420=
"
>> +
>> +PACKAGES =3D "\
>> +    task-self-hosted \
>> +    task-self-hosted-debug \
>> +    task-self-hosted-sdk \
>> +    task-self-hosted-extended \
>> +    task-self-hosted-graphics \
>> +    "
>> +
>> +ALLOW_EMPTY =3D "1"
>> +
>> +RDEPENDS_task-self-hosted =3D "\
>> +    task-self-hosted-debug \
>> +    task-self-hosted-sdk \
>> +    task-self-hosted-extended \
>> +    task-self-hosted-graphics \
>> +    "
>> +
>> +RDEPENDS_task-self-hosted-sdk =3D "\
>> +    autoconf \
>> +    automake \
>> +    binutils-symlinks \
>> +    binutils \
>> +    cpp \
>> +    cpp-symlinks \
>> +    ccache \
>> +    gcc \
>> +    gcc-symlinks \
>> +    g++ \
>> +    g++-symlinks \
>> +    gettext \
>> +    make \
>> +    intltool \
>> +    libstdc++ \
>> +    libstdc++-dev \
>> +    libtool \
>> +    perl-module-re \
>> +    perl-module-text-wrap \
>> +    coreutils \
>> +    diffutils \
>> +    pkgconfig \
>> +    findutils \
>> +    quilt \
>> +    less \
>> +    distcc \
>> +    ldd \
>> +    file \
>> +    tcl \
>> +    "
>> +
>> +RDEPENDS_task-self-hosted-debug =3D " \
>> +    gdb \
>> +    gdbserver \
>> +    tcf-agent \
>> +    rsync \
>> +    strace"
>> +
>> +
>> +RDEPENDS_task-self-hosted-extended =3D "\
>> +    binutils \
>> +    bzip2 \
>> +    chkconfig \
>> +    chrpath \
>> +    curl \
>> +    dhcp-client \
>> +    diffstat \
>> +    diffutils \
>> +    elfutils \
>> +    expat \
>> +    gamin \
>> +    gdbm \
>> +    git \
>> +    gettext \
>> +    gettext-runtime \
>> +    grep \
>> +    groff \
>> +    gawk \
>> +    hdparm \
>> +    libaio \
>> +    libxml2 \
>> +    libusb1 \
>> +    lrzsz \
>> +    lsof \
>> +    lzo \
>> +    man \
>> +    man-pages \
>> +    mc \
>> +    mdadm \
>> +    minicom \
>> +    mtools \
>> +    ncurses \
>> +    neon \
>> +    openssl \
>> +    opkg \
>> +    opkg-utils \
>> +    parted \
>> +    patch \
>> +    perl \
>> +    perl-modules \
>> +    perl-dev \
>> +    pth \
>> +    python \
>> +    python-compile \
>> +    python-compiler \
>> +    python-core \
>> +    python-curses \
>> +    python-datetime \
>> +    python-distutils \
>> +    python-elementtree \
>> +    python-fcntl \
>> +    python-logging \
>> +    python-misc \
>> +    python-multiprocessing \
>> +    python-netclient \
>> +    python-netserver \
>> +    python-pickle \
>> +    python-re \
>> +    python-rpm \
>> +    python-shell \
>> +    python-sqlite3 \
>> +    python-subprocess \
>> +    python-textutils \
>> +    python-xmlrpc \
>> +    quota \
>> +    readline \
>> +    rpm \
>> +    screen \
>> +    setserial \
>> +    strace \
>> +    subversion \
>> +    sysstat \
>> +    tar \
>> +    tcl \
>> +    texi2html \
>> +    texinfo \
>> +    usbutils \
>> +    unzip \
>> +    watchdog \
>> +    wget \
>> +    which \
>> +    xinetd \
>> +    zip \
>> +    zlib \
>> +    "
>> +
>> +
>> +RDEPENDS_task-self-hosted-graphics =3D "\
>> +    python-pygtk \
>> +    "
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_69503203-9C62-48E8-ADBE-E1F7C58088A6
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk7LzYkACgkQMkyGM64RGpH1BwCbBHAf0NLdtBrP7OXxHVXbl77Y
lDAAn2WmXaHBF4jkat4GDOgX4j6TjPxI
=9Dec
-----END PGP SIGNATURE-----

--Apple-Mail=_69503203-9C62-48E8-ADBE-E1F7C58088A6--
