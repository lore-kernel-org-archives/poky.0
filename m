Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34DDF4C80050
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 02:38:16 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so810335pwi.35
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 00:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=F5QfyXwFdSiQwYa4F9y+a+Wfuls/r2veKrm/lB7DXdI=;
	b=dOFGxus0xdjxVQAz0BwDYwgBYYOTbKJgpzHl3vPcDJTGpu7RABNjBCvNZuK4JzSUAm
	EvszzaLNc+fU+DL95XuUqbnJj1t1iTvxoujxCqX3am7VorOGQ60/D3b89FNlKinIB40b
	Dbq9aoxwPBnX5vB0E6Ce5H7XREIfPi1mBXExo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=MJSZ9mTjVIwYcuHsmTrBNUiiFm27aUJY7Iuq56MYgufSs0ZS1Ype3vOq9LpLkMsp0C
	3ncSW4U+MbACV+gMhdTTuWJz4thwd+R3BTmu5q75ahpXKPRRymmssDi/sVmk4lLSZgnx
	/4P84AiFVa8pY5o7iOSugBSNDNsuoOktDzvSk=
Received: by 10.143.87.1 with SMTP id p1mr4533597wfl.271.1299919094791;
	Sat, 12 Mar 2011 00:38:14 -0800 (PST)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id w19sm6595972wfd.8.2011.03.12.00.38.12
	(version=SSLv3 cipher=OTHER); Sat, 12 Mar 2011 00:38:13 -0800 (PST)
Message-ID: <4D7B30ED.3020801@gmail.com>
Date: Sat, 12 Mar 2011 00:38:05 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <AANLkTim5QiDttsH40ezchVxLVGQVAtV5iGKbAE7J2edh@mail.gmail.com>
In-Reply-To: <AANLkTim5QiDttsH40ezchVxLVGQVAtV5iGKbAE7J2edh@mail.gmail.com>
Subject: Re: problem .so files in my image.
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
X-List-Received-Date: Sat, 12 Mar 2011 08:38:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 3/12/2011 12:29 AM, kubera samrat wrote:
> Hi,
>
>          I have added jpeg_6b to my recipe. When I build it It got
> succesful stating " Tasks Summary: Attempted 3879 tasks of which 3863
> didn't need to be rerun and 0 failed."
> But When I mount my image I am unable to see ".so" files. But I can
> see those files created in ".libs" folder. even I tried to copy those
> files from .libs to image folder but I can't see.

you should add the packages to your image one way is
in local.conf add
IMAGE_INSTALL += "jpeg-tools ..."

basically find the package names from deploy directory and use them in 
above construct.

> Can you please suggest me the solution. my jpeg_6b.bb file looks like
> as shown below.
>
> ************************************************************************************************************************************************************
> SUMMARY = "library for jpeg"
> DESCRIPTION = "Libraries that allow compression of image files based
> on the Joint Photographic Experts"
> HOMEPAGE = "http://www.ijg.org/"
> SECTION = "libs"
> LICENSE = "jpeg"
> DEPENDS = "libtool-cross"
> DEPENDS_virtclass-native = "libtool-native"
>
> PR = "r0"
> S = "${WORKDIR}/jpeg-${PV}"
>
> SRC_URI = "http://www.ijg.org/files/jpegsrc.v${PV}.tar.gz"
> inherit pkgconfig autotools
> EXTRA_OECONF="--enable-static --enable-shared"
> EXTRA_OEMAKE='"LIBTOOL=${STAGING_BINDIR}/${HOST_SYS}-libtool"'
>
> #CFLAGS_append = " -D_REENTRANT"
> #INSTALL_PREFIX="${D}"
> do_configure_prepend(){
> #               rm -f ${D}/ltconfig
>                  rm -f ${D}/ltmain.sh
> #               rm -f ${D}${includedir}/jconfig.h
> }
> do_configure(){
>          oe_runconf PREFIX=${D}
> }
> do_compile(){
>          oe_runmake "LIBTOOL=$LIBTOOL"
> }
> do_install(){
>          install -d ${D}${bindir} ${D}${includedir}\
>                  ${D}${mandir}/man1 ${D}${libdir}
>
> #       install -m 0755 .libs/libjpeg.so ${STAGING_LIBDIR}
> #       install -m 0755 .libs/libjpeg.so.62 ${STAGING_LIBDIR}
> #       install -m 0755 .libs/libjpeg.so.62.0.0 ${STAGING_LIBDIR}
>
>          oe_runmake 'bindir=${D}${bindir}' 'mandir=${D}${mandir}'
> 'libdir=${D}${libdir}'install
>          install -m 0755 .libs/libjpeg.so ${D}${libdir}
>          install -m 0755 .libs/libjpeg.so.62 ${D}${libdir}
>          install -m 0755 .libs/libjpeg.so.62.0.0 ${D}${libdir}
> }
>
> PACKAGES =+             "jpeg-tools "
> DESCRIPTION_jpeg-tools = "The jpeg-tools package includes the client
> programs for access libjpeg functionality.  These tools allow for the
> compression, decompression, transformation and display of JPEG files."
> FILES_jpeg-tools =      "${bindir}/*"
>
> BBCLASSEXTEND = "native"
>
> ***************************************************************************************************************************************
> Thanks and regards,
> V kubera Samrat
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


