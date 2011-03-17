Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews08.kpnxchange.com (cpsmtpb-ews08.kpnxchange.com
	[213.75.39.13])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEAB74C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 03:00:17 -0500 (CDT)
Received: from cpbrm-ews08.kpnxchange.com ([10.94.84.139]) by
	cpsmtpb-ews08.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 17 Mar 2011 09:00:17 +0100
Received: from CPSMTPM-CMT108.kpnxchange.com ([195.121.3.24]) by
	cpbrm-ews08.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 17 Mar 2011 09:00:16 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT108.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Thu, 17 Mar 2011 09:00:16 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Thu, 17 Mar 2011 09:00:12 +0100
Message-ID: <4D81BFA8.8080504@de-haardt.com>
Date: Thu, 17 Mar 2011 09:00:40 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
References: <4D7F4630.3030705@de-haardt.com> <1300196286.30423.1726.camel@rex>
	<4D7F7FB4.30007@de-haardt.com> <1300291688.30423.1890.camel@rex>
	<4D81BBAC.9000402@de-haardt.com>
	<20110317075236.GB27644@sakrah.homelinux.org>
In-Reply-To: <20110317075236.GB27644@sakrah.homelinux.org>
X-OriginalArrivalTime: 17 Mar 2011 08:00:16.0933 (UTC)
	FILETIME=[5A6B0550:01CBE479]
X-RcptDomain: yoctoproject.org
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
X-List-Received-Date: Thu, 17 Mar 2011 08:00:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/17/2011 08:52 AM, Khem Raj wrote:
>> DESCRIPTION = "libxmlpcp"
>> SECTION = "libs"
>> DEPENDS = "openslp libxml2"
>> LICENSE = "LGPL"
>>
>> SRC_URI = "file://libxmlpcp.tar.gz"
>>
>> EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -fPIC -c -I${OPIEDIR}${includedir}/libxml2' 'LDFLAGS=${LDFLAGS} -shared -lxml2 -lslp'"
>>
>> do_install() {
>>       install -d ${D}${libdir}
>>       install -d ${D}${includedir}
>>       oe_runmake 'INSTALLHEADERDIR=${D}${includedir}' 'INSTALLLIBDIR=${D}${libdir}' \
>>       install
>> }
>>
>> But when build is done I can not find the lib in the actual rootfs, looking at the date the rootfs is being regenerated.
>>
>> The lib file exists in the build tree on the following places:
>> tmp/work/armv7a-poky-linux-gnueabi/libxmlpcp-0.1.0-r0/image/usr/lib
>> tmp/sysroots/armv7a-poky-linux-gnueabi/usr/lib
>> libxmlpcp-dbg_0.1.0-r0_armv7a.ipk and libxmlpcp-dev_0.1.0-r0_armv7a.ipk in the tmp/deploy/ipk/armv7a folder.
>>
>> I only get a "strip" error, can this be the reason it isn't included in the rootfs?
>> ERROR: runstrip: ''arm-poky-linux-gnueabi-strip' --remove-section=.comment --remove-section=.note --strip-unneeded '/home/gerard/green-3.3/build/tmp/work/armv7a-poky-linux-gnueabi/libxmlpcp-0.1.0-r0/package/usr/lib/libxmlpcp.so'' strip command failed
> It could very well be. Can you run file or readelf -e over libxmlpcp.so
> and see if it is for ARM architecture ?
>
> -Khem

This gives me the following ELF header:
ELF Header:
   Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00
   Class:                             ELF32
   Data:                              2's complement, little endian
   Version:                           1 (current)
   OS/ABI:                            UNIX - System V
   ABI Version:                       0
   Type:                              DYN (Shared object file)
   Machine:                           Intel 80386
   Version:                           0x1
   Entry point address:               0x12f0
   Start of program headers:          52 (bytes into file)
   Start of section headers:          29436 (bytes into file)
   Flags:                             0x0
   Size of this header:               52 (bytes)
   Size of program headers:           32 (bytes)
   Number of program headers:         6
   Size of section headers:           40 (bytes)
   Number of section headers:         37
   Section header string table index: 34

If I process the 'file' command it gives me:
libxmlpcp.so: ELF 32-bit LSB shared object, Intel 80386, version 1 (SYSV), dynamically linked, not stripped

Ok thus there is the problem, it isn't ARM architecture.

Regards,
Gerard



