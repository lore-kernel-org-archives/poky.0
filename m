Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews05.kpnxchange.com (cpsmtpb-ews05.kpnxchange.com
	[213.75.39.8])
	by mx1.pokylinux.org (Postfix) with ESMTP id 090204C806DA
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 02:43:17 -0500 (CDT)
Received: from cpbrm-ews34.kpnxchange.com ([10.94.84.165]) by
	cpsmtpb-ews05.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 17 Mar 2011 08:43:17 +0100
Received: from CPSMTPM-CMT104.kpnxchange.com ([195.121.3.20]) by
	cpbrm-ews34.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 17 Mar 2011 08:43:16 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT104.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Thu, 17 Mar 2011 08:43:16 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Thu, 17 Mar 2011 08:43:12 +0100
Message-ID: <4D81BBAC.9000402@de-haardt.com>
Date: Thu, 17 Mar 2011 08:43:40 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D7F4630.3030705@de-haardt.com>	 <1300196286.30423.1726.camel@rex>
	<4D7F7FB4.30007@de-haardt.com> <1300291688.30423.1890.camel@rex>
In-Reply-To: <1300291688.30423.1890.camel@rex>
X-OriginalArrivalTime: 17 Mar 2011 07:43:16.0882 (UTC)
	FILETIME=[FA6B9720:01CBE476]
X-RcptDomain: yoctoproject.org
Cc: poky@yoctoproject.org
Subject: Re: compile application header file missing
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
X-List-Received-Date: Thu, 17 Mar 2011 07:43:19 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2011 05:08 PM, Richard Purdie wrote:
> On Tue, 2011-03-15 at 16:03 +0100, Gerard van den Bosch wrote:
>> I am indeed using the Green release.
>>
>> The TARGET_CFLAGS are indeed the same as the CFLAGS. The system is
>> using the default CC and not the BUILD_CC, thanks for pointing out the
>> difference.
>>
>> I have added the --sysroot option pointing to the arm sysroot to the
>> CFLAGS in my recipe, with compilation it now looks like this:
>> arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon
>> -mfloat-abi=softfp -fno-tree-vectorize -fexpensive-optimizations
>> -fomit-frame-pointer -frename-registers -O2 -ggdb
>> -feliminate-unused-debug-types
>> --sysroot=/home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/ libxmlpcp.c -o libxmlpcp.o
>>
>> This removes the missing SLP.h error.
>>
>> Is this problem related to my recipe or did I broke my build
>> environment?
> To be honest, I don't know. The compiler should have been defaulting to
> that already so I don't understand why it wasn't working. We now
> explictly set this in master to allow for toolchain relocation and the
> machine specific sysroots support. You could try backporting the piece
> of code I previously referred to which should also fix the problem.
>
> If that option were missing from the toolchain I'd have expected you to
> see other errors rather than just this isolated problem...
It also couldn't find libxml headers either but because I thought it was similar to the missing SLP.h I left it out.
I made the changes now to the bitbake conf file like you wrote and it compiles now without having to add the sysroot in my recipe, I have also modified my recipe to pick up libxml also.
DESCRIPTION = "libxmlpcp"
SECTION = "libs"
DEPENDS = "openslp libxml2"
LICENSE = "LGPL"

SRC_URI = "file://libxmlpcp.tar.gz"

EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -fPIC -c -I${OPIEDIR}${includedir}/libxml2' 'LDFLAGS=${LDFLAGS} -shared -lxml2 -lslp'"

do_install() {
      install -d ${D}${libdir}
      install -d ${D}${includedir}
      oe_runmake 'INSTALLHEADERDIR=${D}${includedir}' 'INSTALLLIBDIR=${D}${libdir}' \
      install
}

But when build is done I can not find the lib in the actual rootfs, looking at the date the rootfs is being regenerated.

The lib file exists in the build tree on the following places:
tmp/work/armv7a-poky-linux-gnueabi/libxmlpcp-0.1.0-r0/image/usr/lib
tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib
libxmlpcp-dbg_0.1.0-r0_armv7a.ipk and libxmlpcp-dev_0.1.0-r0_armv7a.ipk in the tmp/deploy/ipk/armv7a folder.

I only get a "strip" error, can this be the reason it isn't included in the rootfs?
ERROR: runstrip: ''arm-poky-linux-gnueabi-strip' --remove-section=.comment --remove-section=.note --strip-unneeded '/home/gerard/green-3.3/build/tmp/work/armv7a-poky-linux-gnueabi/libxmlpcp-0.1.0-r0/package/usr/lib/libxmlpcp.so'' strip command failed

Because I didn't get soup out of it I installed the laverne release also.
If I build my package with that it also gives the strip error but at the end this gives the error that the do_rootfs failed because it couldn't find the package libxmlpcp.
So I assume this is also the problem in green why my package isn't included in the rootfs only that build doesn't give the error.

I have runned my build with -DDDvv but can't figure out where it searches for my libxmlpcp package.

Regards,
Gerard

>> My recipe looks like this:
>> DESCRIPTION = "libxmlpcp"
>> SECTION = "examples"
>> DEPENDS = "openslp libxml2"
>> LICENSE = "LGPL"
>>
>> SRC_URI = "file://libxmlpcp.tar.gz"
>>
>> CFLAGS += --sysroot=/home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/
>>
>> do_install() {
>>       install -d ${D}${libdir}
>>       install -d ${D}${includedir}
>>       oe_runmake 'INSTALLHEADERDIR=${D}${includedir}' 'INSTALLLIBDIR=${D}${libdir}' \
>>       install
>> }
> That all looks reasonable enough...
>
> Cheers,
>
> Richard
>



