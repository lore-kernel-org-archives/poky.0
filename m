Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews01.kpnxchange.com (cpsmtpb-ews01.kpnxchange.com
	[213.75.39.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id 350F84C80510
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 01:32:17 -0600 (CST)
Received: from cpbrm-ews31.kpnxchange.com ([10.94.84.162]) by
	cpsmtpb-ews01.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 1 Mar 2011 08:32:16 +0100
Received: from CPSMTPM-CMT102.kpnxchange.com ([195.121.3.18]) by
	cpbrm-ews31.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 1 Mar 2011 08:32:16 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT102.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Tue, 1 Mar 2011 08:32:16 +0100
Received: from [192.168.1.29] ([192.168.1.29])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Tue, 1 Mar 2011 08:32:12 +0100
Message-ID: <4D6CA107.3070600@de-haardt.com>
Date: Tue, 01 Mar 2011 08:32:23 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D6BB5E7.8060902@de-haardt.com> <1298909566.26736.7580.camel@rex>
In-Reply-To: <1298909566.26736.7580.camel@rex>
X-OriginalArrivalTime: 01 Mar 2011 07:32:16.0360 (UTC)
	FILETIME=[CA1BEE80:01CBD7E2]
X-RcptDomain: yoctoproject.org
Cc: poky@yoctoproject.org
Subject: Re: recipe gtk program include directories
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
X-List-Received-Date: Tue, 01 Mar 2011 07:32:17 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/28/2011 05:12 PM, Richard Purdie wrote:
> On Mon, 2011-02-28 at 15:49 +0100, Gerard van den Bosch wrote:
>> I have created a simple program with GTK and now I want to add it as a
>> package in poky.
>> Because it is a single C file I have constructed the following recipe:
>>
>> DESCRIPTION = "Battery indication"
>> SECTION = "examples"
>> LICENSE = "GPL"
>> DEPENDS = "gtk+"
>>
>> SRC_URI = "file://image.c"
>>
>> S = "${WORKDIR}"
>>
>> do_compile() {
>>       ${CC} image.c -o image
>> }
>>
>> do_install() {
>>       install -d ${D}${bindir}
>>       install -m 0755 image ${D}${bindir}
>> }
>>
>> Now I have the problem that on my ubuntu computer I normally add
>> `pkg-config --libs --cflags gtk+-2.0` to the gcc compile line to include
>> the right directories.
>>
>> But I don't understand how to do this in a recipe, can someone point me
>> to an example or explain how this is done?
> Can't you just add that to the do_compile line as you'd usually do, e.g:
>
> do_compile () {
>      ${CC} image.c -o image `pkg-config --libs --cflags gtk+-2.0`
> }
>
> ? (and add pkgconfig-native to DEPENDS)
>
> Cheers,
>
> Richard
>
Thanks, adding pkgconfig to the DEPENDS and adding the line I usually 
add solved the problem. I also had to rename the file from image to 
something else because the do_install created a folder image and 
overwrite my compiled image file.
But now it compiles and installs :).

Regards,
Gerard


