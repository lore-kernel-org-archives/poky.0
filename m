Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7F1C4C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:30:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 08:29:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,355,1288594800"; d="scan'208";a="868942049"
Received: from unknown (HELO [10.255.13.76]) ([10.255.13.76])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 08:29:56 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D0A3D8F.5070209@linux.intel.com>
References: <4D095AB5.6060805@linux.intel.com>
	<1292463064.2104.40.camel@elmorro> <4D0A3D8F.5070209@linux.intel.com>
Date: Thu, 16 Dec 2010 10:29:58 -0600
Message-ID: <1292516998.2104.55.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project Discussions <yocto@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Yocto] RFC: README.hardware: Intel Atom device documentation
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
X-List-Received-Date: Thu, 16 Dec 2010 16:30:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 08:25 -0800, Darren Hart wrote:
> On 12/15/2010 05:31 PM, Tom Zanussi wrote:
> > On Wed, 2010-12-15 at 16:17 -0800, Darren Hart wrote:
> >> I ran across some issues working with USB keys while booting a couple
> >> different Intel Atom based devices. I drafted the following documenting
> >> what I learned from the process. I'd like to add this (or something
> >> similar) to README.hardware.
> >>
> >> Thoughts/Comments?
> >>
> >
> > Hey, thanks for this - it solved the same problem I was having with the
> > sdk image :-)
> 
> Excellent, glad to hear it. Did you happen to try writing a directdisk 
> image to the usb stick to see if that would boot? That might be another 
> option. I prefer the hddimg over the ddimg, as the hddimg can easily be 
> mounted with -o loop and modified, but if ddimg works, it's a fair bit 
> easier than having to deal with the USB-ZIP mode.
> 
> Thoughts on how we should present this?
> 

No, I will try that (ddimg).  I plan on at least putting these
instructions in the README for the Crown Bay BSP along with the dd
instructions already there - it should probably be part of a boilerplate
included ine every BSP README...

Tom

> > One small correction below...
> >
> >>
> 
> >>    2. Without such an option, the BIOS generally boots the device in
> >>       USB-ZIP mode.
> >>
> >>       a. Configure the USB device for USB-ZIP mode:
> >>
> >>       # mkdiskimage -4 /dev/sdb 0 63 62
> >>
> >>       Where 63 and 62 are the cylinder and head count as reported by
> >
> > should be: head and sector rather than cylinder and
> > head.
> 
> Woops, right you are. Thanks for the catch!
> 
> --
> Darren--
> Darren Hart
> Yocto Linux Kernel



