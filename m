Return-Path: <denis@denix.org>
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E3EE00C06;
	Mon, 31 Mar 2014 08:00:18 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009))
	with ESMTPA id <0N3B005CP2RZZFA0@vms173017.mailsrvcs.net>; Mon,
	31 Mar 2014 09:55:21 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id F291320182; Mon,
	31 Mar 2014 10:55:10 -0400 (EDT)
Date: Mon, 31 Mar 2014 10:55:10 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-id: <20140331145510.GU3370@denix.org>
References: <1396031047.14790.24.camel@ted> <5335D450.1030007@windriver.com>
	<1396134758.14790.32.camel@ted> <1396183076.14790.47.camel@ted>
MIME-version: 1.0
In-reply-to: <1396183076.14790.47.camel@ted>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto-builds <yocto-builds@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>, "Hart, Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>
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
X-List-Received-Date: Mon, 31 Mar 2014 15:00:20 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Sun, Mar 30, 2014 at 01:37:56PM +0100, Richard Purdie wrote:
> On Sat, 2014-03-29 at 23:12 +0000, Richard Purdie wrote:
> > One remaining issue is that u-boot may be breaking for beaglebone. I'm
> > hoping Denys can help there.
> 
> http://autobuilder.yoctoproject.org/main/builders/nightly-arm/builds/21/steps/BuildImages_1/logs/stdio
> http://autobuilder.yoctoproject.org/main/builders/nightly-arm-lsb/builds/21/steps/BuildImages_1/logs/stdio

Sorry, there appears to be a typo - I'm sending a fix shortly.

-- 
Denys

