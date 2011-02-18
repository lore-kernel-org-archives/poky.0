Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 328564C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 12:52:46 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1IIq9mb011265;
	Fri, 18 Feb 2011 10:52:09 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 10:52:09 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 10:52:09 -0800
Message-ID: <4D5EBFD8.3010000@windriver.com>
Date: Fri, 18 Feb 2011 12:52:08 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D5EB1FB.9030704@linux.intel.com>
	<1298053547.11289.3147.camel@rex>
In-Reply-To: <1298053547.11289.3147.camel@rex>
X-OriginalArrivalTime: 18 Feb 2011 18:52:09.0449 (UTC)
	FILETIME=[F2241590:01CBCF9C]
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 18 Feb 2011 18:52:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/18/11 12:25 PM, Richard Purdie wrote:
> On Fri, 2011-02-18 at 09:52 -0800, Darren Hart wrote:
>> I've been getting more and more questions regarding flash footprint, 
>> memory footprint, and boot time. All of these fall under the "minimal 
>> image" heading in my head.
>>
>> Currently, poky-image-minimal is a simple subset of poky-image-sato. It 
>> uses busybox, but is still dynamically linked and uses the same 
>> somewhat-generic kernel build. By somewhat-generic I mean we have named 
>> features that often cover more drivers than are stricly necessary for a 
>> given board (usb-net comes to mind). I'd like to see minimal become a 
>> truly minimal image from both the userspace and kernel side point of view.
>>
>> Here's my take on this. From userspace this means uclibc and a staticly 
>> linked busybox. From the kernel this means a static build (no modules) 
>> with nothing more than is required for the board's built-in peripherals 
>> to function, with the possible exception of something like usb-storage. 
>> I'd like to see a < 10M flash size and a <8M memory footprint.
>>
>> Thoughts on this direction?
> 
> That sounds more like a "micro" rather than the current minimal. Minimal
> is designed to be extended by the user, what you describe above is a lot
> harder to extend.
> 
> So my take is that minimal is ok as it is stands from the dynamic linked
> busybox perspective and static linking doesn't buy you what you might
> expect it to. mklibs will probably have just as much effect.
> 
> For kernel modules, I suspect even for a micro, you still want them
> since you can then start booting the kernel faster and only have what
> you need in memory (say USB peripherals).
> 
> I'm not against a micro type target but its smaller that what we've been
> aiming for an introduces a new element into the Yocto test matrix.
> 
> Having said all that, I expect there are ways to reduce minimal further
> than it is today as its not something anyone has looked hard at so
> far...

The keys to reducing minimal further is eglibc configurability -- which we do
not yet have implemented, and use of mklibs.  Shared memory will likely be both
smaller disk and memory footprint then static binaries in this configuration.
(If not, it will be very close...)

The size of the kernel and modules is also a factor -- but as Richard mentioned,
it's fairly typical to have a lightly configured kernel as the boot kernel and
then load a lot of modules once the system comes alive.

My goal for a busybox / glibc based system is around 8 MB of disk usage... This
should be easily achievable when eglibc is able to be configured, mklibs is run
and a reasonable set of modules is available.

--Mark

> Cheers,
> 
> Richard
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


