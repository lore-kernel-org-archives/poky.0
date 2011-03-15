Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews05.kpnxchange.com (cpsmtpb-ews05.kpnxchange.com
	[213.75.39.8])
	by mx1.pokylinux.org (Postfix) with ESMTP id 176CB4C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 05:57:44 -0500 (CDT)
Received: from cpbrm-ews06.kpnxchange.com ([10.94.84.137]) by
	cpsmtpb-ews05.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 15 Mar 2011 11:57:44 +0100
Received: from CPSMTPM-CMT108.kpnxchange.com ([195.121.3.24]) by
	cpbrm-ews06.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 15 Mar 2011 11:57:44 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT108.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Tue, 15 Mar 2011 11:57:43 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Tue, 15 Mar 2011 11:57:39 +0100
Message-ID: <4D7F4630.3030705@de-haardt.com>
Date: Tue, 15 Mar 2011 11:57:52 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: poky@yoctoproject.org
X-OriginalArrivalTime: 15 Mar 2011 10:57:43.0504 (UTC)
	FILETIME=[CF715500:01CBE2FF]
X-RcptDomain: yoctoproject.org
Subject: compile application header file missing
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
X-List-Received-Date: Tue, 15 Mar 2011 10:57:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have programmed an application that uses the OpenSLP library and thus 
needs the header file from it.
OpenSLP is already compiled and running fine on the target.

But when I try to compile my application it can't find the header file.
When I print out the CFLAGS with bitbake myimage -e | grep CFLAGS the 
BUILD_CFLAGS point to:
/home/gerard/green-3.3/build/tmp/sysroots/i686-linux/usr/include
The slp.h is indeed missing, but it is located at:
/home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/include

How can I change the CFLAGS to look in the other folder or force OpenSLP 
to drop it in the i686 folder?

I have added OpenSLP to my DEPENDS in the recipe, also tried RDEPENDS 
but it didn't solve the problem.

Regards,
Gerard




