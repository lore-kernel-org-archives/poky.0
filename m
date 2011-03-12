Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06A9F4C8009A
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 02:57:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Mar 2011 00:57:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,307,1297065600"; d="scan'208";a="896519571"
Received: from unknown (HELO [10.255.12.198]) ([10.255.12.198])
	by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2011 00:57:03 -0800
Message-ID: <4D7B3559.5000004@linux.intel.com>
Date: Sat, 12 Mar 2011 00:56:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <AANLkTim5QiDttsH40ezchVxLVGQVAtV5iGKbAE7J2edh@mail.gmail.com>
	<4D7B30ED.3020801@gmail.com>
In-Reply-To: <4D7B30ED.3020801@gmail.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Sat, 12 Mar 2011 08:57:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/12/2011 12:38 AM, Khem Raj wrote:
> On 3/12/2011 12:29 AM, kubera samrat wrote:
>> Hi,
>>
>> I have added jpeg_6b to my recipe. When I build it It got
>> succesful stating " Tasks Summary: Attempted 3879 tasks of which 3863
>> didn't need to be rerun and 0 failed."
>> But When I mount my image I am unable to see ".so" files. But I can
>> see those files created in ".libs" folder. even I tried to copy those
>> files from .libs to image folder but I can't see.
>
> you should add the packages to your image one way is
> in local.conf add
> IMAGE_INSTALL += "jpeg-tools ..."

Preferably with:

POKY_EXTRA_INSTALL = "jpeg-tools"

also in local.conf. The handbook covers this briefly:

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html

Using IMAGE_INSTALL can have some nasty, hard to debug side-effects if 
used improperly. (I managed to obliterate half of /etc by using it in a 
machine.conf file).

--
Darren Hart

>
> basically find the package names from deploy directory and use them in
> above construct.
>
>> Can you please suggest me the solution. my jpeg_6b.bb file looks like
>> as shown below.
>>
>> ************************************************************************************************************************************************************
>>
>> SUMMARY = "library for jpeg"
>> DESCRIPTION = "Libraries that allow compression of image files based
>> on the Joint Photographic Experts"
>> HOMEPAGE = "http://www.ijg.org/"
>> SECTION = "libs"
>> LICENSE = "jpeg"
>> DEPENDS = "libtool-cross"
>> DEPENDS_virtclass-native = "libtool-native"
>>
>> PR = "r0"
>> S = "${WORKDIR}/jpeg-${PV}"
>>
>> SRC_URI = "http://www.ijg.org/files/jpegsrc.v${PV}.tar.gz"
>> inherit pkgconfig autotools
>> EXTRA_OECONF="--enable-static --enable-shared"
>> EXTRA_OEMAKE='"LIBTOOL=${STAGING_BINDIR}/${HOST_SYS}-libtool"'
>>
>> #CFLAGS_append = " -D_REENTRANT"
>> #INSTALL_PREFIX="${D}"
>> do_configure_prepend(){
>> # rm -f ${D}/ltconfig
>> rm -f ${D}/ltmain.sh
>> # rm -f ${D}${includedir}/jconfig.h
>> }
>> do_configure(){
>> oe_runconf PREFIX=${D}
>> }
>> do_compile(){
>> oe_runmake "LIBTOOL=$LIBTOOL"
>> }
>> do_install(){
>> install -d ${D}${bindir} ${D}${includedir}\
>> ${D}${mandir}/man1 ${D}${libdir}
>>
>> # install -m 0755 .libs/libjpeg.so ${STAGING_LIBDIR}
>> # install -m 0755 .libs/libjpeg.so.62 ${STAGING_LIBDIR}
>> # install -m 0755 .libs/libjpeg.so.62.0.0 ${STAGING_LIBDIR}
>>
>> oe_runmake 'bindir=${D}${bindir}' 'mandir=${D}${mandir}'
>> 'libdir=${D}${libdir}'install
>> install -m 0755 .libs/libjpeg.so ${D}${libdir}
>> install -m 0755 .libs/libjpeg.so.62 ${D}${libdir}
>> install -m 0755 .libs/libjpeg.so.62.0.0 ${D}${libdir}
>> }
>>
>> PACKAGES =+ "jpeg-tools "
>> DESCRIPTION_jpeg-tools = "The jpeg-tools package includes the client
>> programs for access libjpeg functionality. These tools allow for the
>> compression, decompression, transformation and display of JPEG files."
>> FILES_jpeg-tools = "${bindir}/*"
>>
>> BBCLASSEXTEND = "native"
>>
>> ***************************************************************************************************************************************
>>
>> Thanks and regards,
>> V kubera Samrat
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

