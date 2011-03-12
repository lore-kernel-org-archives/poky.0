Return-Path: <kubera.samrat@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7979B4C80050
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 02:29:34 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so3658878wwd.11
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 00:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=5HWqstzbK9zgvpjfRS18M1rOwufsiEM32PTbLhz+IcA=;
	b=lgOttQrmfBqskjKYMbnDpL68RL9T4QnbJHmEkLT+rq7Y3yYsWEu+wGNDf2WcXf79qX
	KuolLQNVLyIfnW7Jm94WDC4sgZwjtakObCnBzNLxFazlBC+KwImoamttjNFpCR2fkWbm
	fpFBPtKTRGC6HopMWGbcG+gkJlSnmb9wrmSpc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=TOMiwd/1Wd/42cmJ2odqaKDcnkXOo7ZB3h9UoNCXJyY+AsPyTdO2MMNmikAi4/eLi2
	huz1huMKVz3rq1CPG0zfjK0lHtFYgqLdnO+xsaszjwt7OF9RRNWU+YSCnjPh7lfgL+4Q
	+UScbVWPKFYJSxDKP9/7Pn+qa+s361PEl/UD8=
MIME-Version: 1.0
Received: by 10.216.62.77 with SMTP id x55mr8119469wec.59.1299918573316; Sat,
	12 Mar 2011 00:29:33 -0800 (PST)
Received: by 10.216.236.166 with HTTP; Sat, 12 Mar 2011 00:29:33 -0800 (PST)
Date: Sat, 12 Mar 2011 13:59:33 +0530
Message-ID: <AANLkTim5QiDttsH40ezchVxLVGQVAtV5iGKbAE7J2edh@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: problem .so files in my image.
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
X-List-Received-Date: Sat, 12 Mar 2011 08:29:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

        I have added jpeg_6b to my recipe. When I build it It got
succesful stating " Tasks Summary: Attempted 3879 tasks of which 3863
didn't need to be rerun and 0 failed."
But When I mount my image I am unable to see ".so" files. But I can
see those files created in ".libs" folder. even I tried to copy those
files from .libs to image folder but I can't see.
Can you please suggest me the solution. my jpeg_6b.bb file looks like
as shown below.

************************************************************************************************************************************************************
SUMMARY = "library for jpeg"
DESCRIPTION = "Libraries that allow compression of image files based
on the Joint Photographic Experts"
HOMEPAGE = "http://www.ijg.org/"
SECTION = "libs"
LICENSE = "jpeg"
DEPENDS = "libtool-cross"
DEPENDS_virtclass-native = "libtool-native"

PR = "r0"
S = "${WORKDIR}/jpeg-${PV}"

SRC_URI = "http://www.ijg.org/files/jpegsrc.v${PV}.tar.gz"
inherit pkgconfig autotools
EXTRA_OECONF="--enable-static --enable-shared"
EXTRA_OEMAKE='"LIBTOOL=${STAGING_BINDIR}/${HOST_SYS}-libtool"'

#CFLAGS_append = " -D_REENTRANT"
#INSTALL_PREFIX="${D}"
do_configure_prepend(){
#               rm -f ${D}/ltconfig
                rm -f ${D}/ltmain.sh
#               rm -f ${D}${includedir}/jconfig.h
}
do_configure(){
        oe_runconf PREFIX=${D}
}
do_compile(){
        oe_runmake "LIBTOOL=$LIBTOOL"
}
do_install(){
        install -d ${D}${bindir} ${D}${includedir}\
                ${D}${mandir}/man1 ${D}${libdir}

#       install -m 0755 .libs/libjpeg.so ${STAGING_LIBDIR}
#       install -m 0755 .libs/libjpeg.so.62 ${STAGING_LIBDIR}
#       install -m 0755 .libs/libjpeg.so.62.0.0 ${STAGING_LIBDIR}

        oe_runmake 'bindir=${D}${bindir}' 'mandir=${D}${mandir}'
'libdir=${D}${libdir}'install
        install -m 0755 .libs/libjpeg.so ${D}${libdir}
        install -m 0755 .libs/libjpeg.so.62 ${D}${libdir}
        install -m 0755 .libs/libjpeg.so.62.0.0 ${D}${libdir}
}

PACKAGES =+             "jpeg-tools "
DESCRIPTION_jpeg-tools = "The jpeg-tools package includes the client
programs for access libjpeg functionality.  These tools allow for the
compression, decompression, transformation and display of JPEG files."
FILES_jpeg-tools =      "${bindir}/*"

BBCLASSEXTEND = "native"

***************************************************************************************************************************************
Thanks and regards,
V kubera Samrat

