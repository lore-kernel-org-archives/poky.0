Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E0E94C800B3
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 12:19:09 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWtkB-0000WO-1n
	for poky@pokylinux.org; Wed, 15 Jun 2011 19:19:07 +0200
Received: from 79.167.211.68 ([79.167.211.68])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 19:19:07 +0200
Received: from gmane by 79.167.211.68 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 19:19:07 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 15 Jun 2011 20:18:52 +0300
Organization: Reliable Embedded Systems
Message-ID: <itaphs$mug$1@dough.gmane.org>
References: <it8ite$i96$1@dough.gmane.org>
	<4DF80B84.9000304@linux.intel.com>	<4DF890F0.1020307@reliableembeddedsystems.com>
	<4DF8E01F.8040209@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.211.68
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DF8E01F.8040209@linux.intel.com>
Subject: Re: bernard 5.0.1 and beagle-xm rev c
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Jun 2011 17:19:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 06/15/2011 07:38 PM, Darren Hart wrote:
> 
> For details on that effort and it's status, please see:
> 
> https://lists.yoctoproject.org/pipermail/yocto/2011-June/001599.html
> 

I'm aware of this.

> 
> Both Koen and Jason K. have been helping to get the right bits merged
> for the kernel. I had hoped to use mainline u-boot, but it appears we
> may need at least a set of patches in support of Rev C.

What else is needed in addition to [2]?

> 
> The updated BSP will be released with 1.1. My patches and commits will
> of course hit the list before then and you can build from master once
> they arrive there. Within a week I suspect.
> 

I hope we'll have something which works without graphics on the Beagle
XM - Rev C before October (1.1) - before summer would be great.

This means, I would assume, gcc 4.6.0 fixes and the Beagle XM Rev C
stuff. I did not dare to touch master due to the gcc 4.6.0 issues.
Will this be fixed as well in the near future?

I also played around with the patches in the meantime and

[1] for the x-loader
[2] for for u-boot

seem to apply cleanly on whatever comes with bernard 5.0.1

[1]
http://gitorious.org/x-loader/x-loader/commit/2efa178acd56d83c86210b5934895cfb9ea62125

[2]
http://git.denx.de/?p=u-boot.git;a=commitdiff;h=f6e593bb1255d1e15201cb5dec8c95264489e729

The kernel patch against 2.6.37 seems to be a bit more involved.

Of course more code might be needed to make the Beagle XM Rev C work.

Regards,

Robert

> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel

..."In my egotistical opinion, most people's C programs should be
indented six feet downward and covered with dirt." - Blair P. Houghton

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



