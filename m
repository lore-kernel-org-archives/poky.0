Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2CB2B4C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 12:26:03 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1IIQ1TF014100;
	Fri, 18 Feb 2011 18:26:01 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13610-08; Fri, 18 Feb 2011 18:25:57 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1IIPtB9014094
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Feb 2011 18:25:55 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D5EB1FB.9030704@linux.intel.com>
References: <4D5EB1FB.9030704@linux.intel.com>
Date: Fri, 18 Feb 2011 18:25:47 +0000
Message-ID: <1298053547.11289.3147.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Fri, 18 Feb 2011 18:26:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-18 at 09:52 -0800, Darren Hart wrote:
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
> 
> Thoughts on this direction?

That sounds more like a "micro" rather than the current minimal. Minimal
is designed to be extended by the user, what you describe above is a lot
harder to extend.

So my take is that minimal is ok as it is stands from the dynamic linked
busybox perspective and static linking doesn't buy you what you might
expect it to. mklibs will probably have just as much effect.

For kernel modules, I suspect even for a micro, you still want them
since you can then start booting the kernel faster and only have what
you need in memory (say USB peripherals).

I'm not against a micro type target but its smaller that what we've been
aiming for an introduces a new element into the Yocto test matrix.

Having said all that, I expect there are ways to reduce minimal further
than it is today as its not something anyone has looked hard at so
far...

Cheers,

Richard




