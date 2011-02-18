Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 146114C8090C
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 13:15:16 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1IJFEDG015802;
	Fri, 18 Feb 2011 11:15:14 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 11:15:14 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 11:15:14 -0800
Message-ID: <4D5EC541.2050807@windriver.com>
Date: Fri, 18 Feb 2011 14:15:13 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D5EB1FB.9030704@linux.intel.com>
In-Reply-To: <4D5EB1FB.9030704@linux.intel.com>
X-OriginalArrivalTime: 18 Feb 2011 19:15:14.0208 (UTC)
	FILETIME=[2B858A00:01CBCFA0]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 18 Feb 2011 19:15:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-18 12:52 PM, Darren Hart wrote:
> I've been getting more and more questions regarding flash footprint,
> memory footprint, and boot time. All of these fall under the "minimal
> image" heading in my head.
>
> Currently, poky-image-minimal is a simple subset of poky-image-sato. It
> uses busybox, but is still dynamically linked and uses the same
> somewhat-generic kernel build. By somewhat-generic I mean we have named
> features that often cover more drivers than are stricly necessary for a
> given board (usb-net comes to mind). I'd like to see minimal become a
> truly minimal image from both the userspace and kernel side point of view.
>
> Here's my take on this. From userspace this means uclibc and a staticly
> linked busybox. From the kernel this means a static build (no modules)
> with nothing more than is required for the board's built-in peripherals
> to function, with the possible exception of something like usb-storage.
> I'd like to see a < 10M flash size and a <8M memory footprint.

 From the kernel angle, I have a profile/solution for this
lurking in the 2.6.34 kernel, and one that we've been updating
for the 2.6.37 kernel.

There's a kernel feature called "small", that when overlayed
on top of any BSP, converts it to a tuned for small systems
BSP. Other than that, we have to hold the line on BSP configurations.
Keep them tuned and specific by default and add kernel configurations
for optional features when request, not by default.

That's the approach we've been taking without our 150 or so
BSPs, and it has worked out really well for producing a
general/debug BSP + something that is tuned for a truly
embedded deployment.

Bruce

>
> Thoughts on this direction?
>


