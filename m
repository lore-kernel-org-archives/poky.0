Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33DFC4C80039
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:01:53 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HK1qd2029499
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:01:52 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 12:01:52 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 12:01:52 -0800
Message-ID: <4D34A02F.7080507@windriver.com>
Date: Mon, 17 Jan 2011 14:01:51 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <9AFCD584B0B67B48AE8D8585BE30BA9504E1482C@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504E1482C@orsmsx504.amr.corp.intel.com>
X-OriginalArrivalTime: 17 Jan 2011 20:01:52.0357 (UTC)
	FILETIME=[62213150:01CBB681]
Subject: Re: sysroot question
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
X-List-Received-Date: Mon, 17 Jan 2011 20:01:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/17/11 1:46 PM, Zhang, Jessica wrote:
> Hi Richard,
>  
> While testing the sysroot setup, I noticed there're some variation between the
> sysroot that built by meta-toolchain and qemu-image-sdk.  For example, limits.h,
> if I search for it under the meta-toolchain sysroot, I got the following:
>  
> jzhang@jzhang-desktop:/opt/poky/0.9+snapshot$
> <mailto:jzhang@jzhang-desktop:/opt/poky/0.9+snapshot$> find . -name limits.h
> ./sysroots/i586-poky-linux/usr/include/limits.h
> ./sysroots/i586-poky-linux/usr/include/linux/limits.h
> ./sysroots/i586-poky-linux/usr/include/c++/tr1/limits.h
> ./sysroots/i686-pokysdk-linux/usr/lib/i586-poky-linux/gcc/i586-poky-linux/4.5.1/include-fixed/limits.h
> ./sysroots/i686-pokysdk-linux/usr/include/limits.h
>  
> and the sysroot extract from qemu-image-sdk, gave me this:
>  
> jzhang@jzhang-desktop:~/qemu-x86$ <mailto:jzhang@jzhang-desktop:~/qemu-x86$>
> find . -name limits.h
> ./usr/lib/gcc/i586-poky-linux/4.5.1/include-fixed/limits.h
> ./usr/include/c++/tr1/limits.h
> ./usr/include/limits.h
> This caused problem in test programs of suduku which looking for
> <linux/limits.h>.  The question is where should I look that cause the sysroot
> content variation?

It is almost always a bug in an application to include <linux/*>.  The ONLY
valid exceptions are when they need an ioctl, syscall or similar definition that
is not available via the standard set of includes.

I highly doubt suduku fits this, so it's a bug in the test program.

(but yes, I also suspect that /usr/include/linux/... will be needed in the SDK,
so thats ALSO likely a defect..)

--Mark

> Thanks,
> Jessica
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


