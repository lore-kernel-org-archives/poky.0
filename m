Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78A214C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 14:33:48 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PqX1P-0007gW-PM from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Fri, 18 Feb 2011 12:33:47 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 18 Feb 2011 12:33:47 -0800
Received: from [172.30.80.150] ([172.30.80.150]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Fri, 18 Feb 2011 13:33:46 -0700
Message-ID: <4D5ED7A4.5010306@mentor.com>
Date: Fri, 18 Feb 2011 13:33:40 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D5EB1FB.9030704@linux.intel.com>	<1298053547.11289.3147.camel@rex>
	<4D5EBFD8.3010000@windriver.com>
In-Reply-To: <4D5EBFD8.3010000@windriver.com>
X-OriginalArrivalTime: 18 Feb 2011 20:33:46.0530 (UTC)
	FILETIME=[2448D020:01CBCFAB]
Subject: Re: Minimal images: kernel config
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
X-List-Received-Date: Fri, 18 Feb 2011 20:33:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/18/2011 11:52 AM, Mark Hatle wrote:
> On 2/18/11 12:25 PM, Richard Purdie wrote:
>> On Fri, 2011-02-18 at 09:52 -0800, Darren Hart wrote:
>>> I've been getting more and more questions regarding flash footprint,
>>> memory footprint, and boot time. All of these fall under the "minimal
>>> image" heading in my head.
>>>
>>> Currently, poky-image-minimal is a simple subset of poky-image-sato. It
>>> uses busybox, but is still dynamically linked and uses the same
>>> somewhat-generic kernel build. By somewhat-generic I mean we have named
>>> features that often cover more drivers than are stricly necessary for a
>>> given board (usb-net comes to mind). I'd like to see minimal become a
>>> truly minimal image from both the userspace and kernel side point of view.
>>>
>>> Here's my take on this. From userspace this means uclibc and a staticly
>>> linked busybox. From the kernel this means a static build (no modules)
>>> with nothing more than is required for the board's built-in peripherals
>>> to function, with the possible exception of something like usb-storage.
>>> I'd like to see a<  10M flash size and a<8M memory footprint.
>>>
>>> Thoughts on this direction?
>>
>> That sounds more like a "micro" rather than the current minimal. Minimal
>> is designed to be extended by the user, what you describe above is a lot
>> harder to extend.
>>
>> So my take is that minimal is ok as it is stands from the dynamic linked
>> busybox perspective and static linking doesn't buy you what you might
>> expect it to. mklibs will probably have just as much effect.
>>
>> For kernel modules, I suspect even for a micro, you still want them
>> since you can then start booting the kernel faster and only have what
>> you need in memory (say USB peripherals).
>>
>> I'm not against a micro type target but its smaller that what we've been
>> aiming for an introduces a new element into the Yocto test matrix.
>>
>> Having said all that, I expect there are ways to reduce minimal further
>> than it is today as its not something anyone has looked hard at so
>> far...
>
> The keys to reducing minimal further is eglibc configurability -- which we do
> not yet have implemented

While not yet being used heavily, this does exist in OE today thanks to 
Khem.  Perhaps this would be a good candidate for oe-core?

-- 
Tom Rini
Mentor Graphics Corporation

