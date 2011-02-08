Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id B248E4C8007E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 16:01:22 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Pmvcg-0004yc-35 from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Tue, 08 Feb 2011 14:01:22 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Tue, 8 Feb 2011 14:01:21 -0800
Received: from [172.30.80.130] ([172.30.80.130]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Tue, 8 Feb 2011 15:01:20 -0700
Message-ID: <4D51BD2D.8020602@mentor.com>
Date: Tue, 08 Feb 2011 15:01:17 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D51B86E.7060709@linux.intel.com>
In-Reply-To: <4D51B86E.7060709@linux.intel.com>
X-OriginalArrivalTime: 08 Feb 2011 22:01:21.0051 (UTC)
	FILETIME=[B81796B0:01CBC7DB]
Subject: Re: History and intentions of linux.inc ?
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
X-List-Received-Date: Tue, 08 Feb 2011 22:01:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2011 02:41 PM, Darren Hart wrote:
> I've stumbled over a couple of interesting bits in the existing
> recipes-kernel/linux/linux.inc, for example (but not limited to):
>
>> do_install_prepend() {
>>          if test -e arch/${ARCH}/boot/Image ; then
>>               ln -f arch/${ARCH}/boot/Image arch/${ARCH}/boot/uImage
>>          fi
>
> On a recent kernel, the above will overwrite a valid uImage with Image,
> resulting in a non-bootable set of files in deploy/images.
>
>>
>>          if test -e arch/${ARCH}/boot/images/uImage ; then
>>               ln -f arch/${ARCH}/boot/images/uImage arch/${ARCH}/boot/uImage
>>          fi
>
> The arch/arm/boot/images directory does not exist on a current kernel
> (2.6.35-linaro anyway).
>
>
> Does anyone know the historical significance and/or intent of this code?
> Are there architectures for which this does something sane? After
> reading through linux.inc, I'm inclined to avoid using it for the
> meta-linaro kernel, and then going after it with chainsaw.
>
> Anyone have anything to add before I start cutting?

This really sounds like older stuff that's not relevant anymore.  That 
second example for example makes sense to me but only in the scope of 
some old arch/ppc stuff.

-- 
Tom Rini
Mentor Graphics Corporation

