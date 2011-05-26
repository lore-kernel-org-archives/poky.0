Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews05.kpnxchange.com (cpsmtpb-ews05.kpnxchange.com
	[213.75.39.8])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C1CF4C80228
	for <poky@yoctoproject.org>; Thu, 26 May 2011 06:22:23 -0500 (CDT)
Received: from cpbrm-ews24.kpnxchange.com ([10.94.84.155]) by
	cpsmtpb-ews05.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 26 May 2011 13:22:22 +0200
Received: from CPSMTPM-CMT106.kpnxchange.com ([195.121.3.22]) by
	cpbrm-ews24.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 26 May 2011 13:22:22 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT106.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Thu, 26 May 2011 13:22:22 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Thu, 26 May 2011 13:22:19 +0200
Message-ID: <4DDE37EE.101@de-haardt.com>
Date: Thu, 26 May 2011 13:22:22 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DDE01BB.3000109@de-haardt.com> <1306402981.27470.97.camel@rex>
In-Reply-To: <1306402981.27470.97.camel@rex>
X-OriginalArrivalTime: 26 May 2011 11:22:22.0259 (UTC)
	FILETIME=[2E977030:01CC1B97]
X-RcptDomain: yoctoproject.org
Cc: poky <poky@yoctoproject.org>
Subject: Re: wrong rpm name qt package
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
X-List-Received-Date: Thu, 26 May 2011 11:22:23 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/26/2011 11:43 AM, Richard Purdie wrote:
> On Thu, 2011-05-26 at 09:31 +0200, Gerard van den Bosch wrote:
>> I have developed a shared library using Qt, it compiles without any
>> problems but it goes wrong with rpm packaging.
>> When it packages it should create a rpm package with the name
>> "libxmlpcpqt" but it creates a package with "libxmlpcpqt1".
>> My question is where does the '1' come from?
>>
>> The install part from the recipe is as follows:
>> do_install() {
>>       install -d ${D}${libdir}
>>       install -m 0755 ${S}/${PN}.so ${D}${libdir}
>> }
>>
>> In
>> the /tmp/work/armv7a-poky-linux-gnueabi/libxmlpcpqt-0.1-r1/image/usr/lib the libxmlpcpqt.so file correctly exists.
> This happens as debian style package naming is enabled (debian.bbclass
> is inherited).
>
> Cheers,
>
> Richard
>
I tried removing debian from the INHERITS+= variable in the poky.conf but then it printed it couldn't find the function that is inside debian.bbclass and didn't create the package.
Modifying debian.bbclass would be too drastic so I work around it like this:
Added PACKAGES+= ${PN}1 to my recipe
Modified the IMAGE_INSTALL+= variable from libxmlpcpqt to libxmlpcpqt1
This resulted in a working solution.

Regards,
Gerard



