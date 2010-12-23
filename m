Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B1084C80039
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 16:37:49 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBNMbmpr020143
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 14:37:48 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 23 Dec 2010 14:37:48 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 23 Dec 2010 14:37:48 -0800
Message-ID: <4D13CF3B.3030501@windriver.com>
Date: Thu, 23 Dec 2010 16:37:47 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <AANLkTim9iax+7aW3tmBUtmCdjtgAr0nT5U0nhwi+j2Ay@mail.gmail.com>
	<1293130788.17519.217.camel@rex>
In-Reply-To: <1293130788.17519.217.camel@rex>
X-OriginalArrivalTime: 23 Dec 2010 22:37:48.0663 (UTC)
	FILETIME=[06987070:01CBA2F2]
Subject: Re: pseudo native build fails on Fedora 14
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
X-List-Received-Date: Thu, 23 Dec 2010 22:37:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Form the pastebin, it appears to have been building the 32-bit portions.  If
this is a 64-bit Fedora.. it looks like you have a partial 32-bit run-time
environment installed.  The system detected this and attempted to build a 32-bit
wrapper (as well as the 64-bit version).  Likely you are missing the 32-bit gcc
or libgcc package.  (Sorry I don't know the actual name of the package.)

(We have to build both a 64-bit and 32-bit version of pseudo, if we detect
32-bit on the system, because we have no way of knowing what applications will
be loaded.  The apps executed MAY be either 32-bit or 64-bit, so we need a
wrapper library for each available... even if the system's primary applications
and libraries are 64-bit.)

--Mark

On 12/23/10 12:59 PM, Richard Purdie wrote:
> On Thu, 2010-12-23 at 12:27 -0600, Adrian Alonso wrote:
>> I start a build from scratch and pseudo-native fails to build
>> at link stage:
>>
>>
>> ...
>> /usr/bin/ld: skipping
>> incompatible /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so when
>> searching for -lgcc_s
>> | /usr/bin/ld: cannot find -lgcc_s
>> | collect2: ld returned 1 exit status
>> ....
> 
> What kind of machine is this? Mixed 32 bit and 64 bit userspace? 64 or
> 32 bit kernel?
> 
> To me, this looks like you have half a 32 or 64 bit toolchain alongside
> the "correct" one and its preferring that for some reason.
> 
> Cheers,
> 
> Richard
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


