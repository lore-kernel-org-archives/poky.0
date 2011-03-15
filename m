Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews07.kpnxchange.com (cpsmtpb-ews07.kpnxchange.com
	[213.75.39.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58CAF4C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 10:03:09 -0500 (CDT)
Received: from cpbrm-ews30.kpnxchange.com ([10.94.84.161]) by
	cpsmtpb-ews07.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 15 Mar 2011 16:03:06 +0100
Received: from CPSMTPM-CMT105.kpnxchange.com ([195.121.3.21]) by
	cpbrm-ews30.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 15 Mar 2011 16:03:06 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT105.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Tue, 15 Mar 2011 16:03:06 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Tue, 15 Mar 2011 16:03:01 +0100
Message-ID: <4D7F7FB4.30007@de-haardt.com>
Date: Tue, 15 Mar 2011 16:03:16 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D7F4630.3030705@de-haardt.com> <1300196286.30423.1726.camel@rex>
In-Reply-To: <1300196286.30423.1726.camel@rex>
X-OriginalArrivalTime: 15 Mar 2011 15:03:06.0382 (UTC)
	FILETIME=[16F63AE0:01CBE322]
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
X-List-Received-Date: Tue, 15 Mar 2011 15:03:13 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/15/2011 02:38 PM, Richard Purdie wrote:
> On Tue, 2011-03-15 at 11:57 +0100, Gerard van den Bosch wrote:
>> Hello,
>>
>> I have programmed an application that uses the OpenSLP library and thus
>> needs the header file from it.
>> OpenSLP is already compiled and running fine on the target.
>>
>> But when I try to compile my application it can't find the header file.
>> When I print out the CFLAGS with bitbake myimage -e | grep CFLAGS the
>> BUILD_CFLAGS point to:
>> /home/gerard/green-3.3/build/tmp/sysroots/i686-linux/usr/include
>> The slp.h is indeed missing, but it is located at:
>> /home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/include
>>
>> How can I change the CFLAGS to look in the other folder or force OpenSLP
>> to drop it in the i686 folder?
>>
>> I have added OpenSLP to my DEPENDS in the recipe, also tried RDEPENDS
>> but it didn't solve the problem.
> You should be adding OpenSLP to DEPENDS. The toolchain should be
> automatically searching the arm sysroot /usr/include directory for
> include files which is where your file is.
>
> I appreciate this is the green release, in master we have this in
> meta/conf/bitbake.conf:
>
> TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
>
> export CC = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"
>
> Back in green, this option should be being hardcoded into gcc as the
> default sysroot option but you could try explicitly setting it.
>
> Note that BUILD_CFLAGS is the wrong place to look, those are for native
> build tools, not target ones. You want to use TARGET_CFLAGS and
> TARGET_CFLAGS should be the same as CFLAGS.
>
> After reading the above, if your image *is* using BUILD_CFLAGS and
> BUILD_CC instead of CC, that is your real problem, it should be using
> the target device compiler, not the build one.
>
> Cheers,
>
> Richard
>
I am indeed using the Green release.

The TARGET_CFLAGS are indeed the same as the CFLAGS. The system is using the default CC and not the BUILD_CC, thanks for pointing out the difference.

I have added the --sysroot option pointing to the arm sysroot to the CFLAGS in my recipe, with compilation it now looks like this:
arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types --sysroot=/home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/ libxmlpcp.c -o libxmlpcp.o

This removes the missing SLP.h error.

Is this problem related to my recipe or did I broke my build environment?

My recipe looks like this:
DESCRIPTION = "libxmlpcp"
SECTION = "examples"
DEPENDS = "openslp libxml2"
LICENSE = "LGPL"

SRC_URI = "file://libxmlpcp.tar.gz"

CFLAGS += --sysroot=/home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/

do_install() {
     install -d ${D}${libdir}
     install -d ${D}${includedir}
     oe_runmake 'INSTALLHEADERDIR=${D}${includedir}' 'INSTALLLIBDIR=${D}${libdir}' \
     install
}

Regards,
Gerard







