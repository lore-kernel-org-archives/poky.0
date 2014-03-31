Return-Path: <denis@denix.org>
Received: from vms173025pub.verizon.net (vms173025pub.verizon.net
	[206.46.173.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08E89E00C0C;
	Mon, 31 Mar 2014 08:08:39 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173025.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009))
	with ESMTPA id <0N3B007MO3CFQZ10@vms173025.mailsrvcs.net>; Mon,
	31 Mar 2014 10:07:38 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 933B720182; Mon,
	31 Mar 2014 11:07:27 -0400 (EDT)
Date: Mon, 31 Mar 2014 11:07:27 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-id: <20140331150727.GV3370@denix.org>
References: <1396031047.14790.24.camel@ted> <5335D450.1030007@windriver.com>
	<1396134758.14790.32.camel@ted> <1396183076.14790.47.camel@ted>
	<20140331145510.GU3370@denix.org>
MIME-version: 1.0
In-reply-to: <20140331145510.GU3370@denix.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto-builds <yocto-builds@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>, Denys Dmytriyenko <denys@ti.com>
Subject: Re: meta-yocto-bsp changes and 3.14
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 31 Mar 2014 15:08:40 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Mon, Mar 31, 2014 at 10:55:10AM -0400, Denys Dmytriyenko wrote:
> On Sun, Mar 30, 2014 at 01:37:56PM +0100, Richard Purdie wrote:
> > On Sat, 2014-03-29 at 23:12 +0000, Richard Purdie wrote:
> > > One remaining issue is that u-boot may be breaking for beaglebone. I'm
> > > hoping Denys can help there.
> > 
> > http://autobuilder.yoctoproject.org/main/builders/nightly-arm/builds/21/steps/BuildImages_1/logs/stdio
> > http://autobuilder.yoctoproject.org/main/builders/nightly-arm-lsb/builds/21/steps/BuildImages_1/logs/stdio
> 
> Sorry, there appears to be a typo - I'm sending a fix shortly.

Ok, the patch is out. I'm still working on README - will try to finish it 
shortly.
BTW, 3.14 is finally out this morning.

-- 
Denys

