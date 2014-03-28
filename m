Return-Path: <denis@denix.org>
Received: from vms173023pub.verizon.net (vms173023pub.verizon.net
	[206.46.173.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 692FBE00BCC;
	Fri, 28 Mar 2014 12:12:19 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173023.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009))
	with ESMTPA id <0N3500AWYUOI71S0@vms173023.mailsrvcs.net>; Fri,
	28 Mar 2014 14:12:19 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 8847D20210; Fri,
	28 Mar 2014 15:12:18 -0400 (EDT)
Date: Fri, 28 Mar 2014 15:12:18 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-id: <20140328191218.GO3370@denix.org>
References: <1396031047.14790.24.camel@ted> <5335BF1C.9030902@windriver.com>
	<5335BF6A.8080404@windriver.com> <1396031644.14790.26.camel@ted>
	<5335C1AF.5080904@windriver.com> <CF5B1473.7DC1D%darren.hart@intel.com>
	<5335C6AA.6020308@windriver.com> <CF5B160D.7DC33%darren.hart@intel.com>
	<5335C8C6.20604@windriver.com>
MIME-version: 1.0
In-reply-to: <5335C8C6.20604@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto-builds <yocto-builds@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>, "Hart, Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "WOLD,
	SAUL" <saul.wold@intel.com>
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
X-List-Received-Date: Fri, 28 Mar 2014 19:12:22 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Fri, Mar 28, 2014 at 03:08:54PM -0400, Bruce Ashfield wrote:
> On 14-03-28 03:05 PM, Hart, Darren wrote:
> >On 3/28/14, 11:59, "Bruce Ashfield" <bruce.ashfield@windriver.com> wrote:
> >
> >>On 14-03-28 02:57 PM, Hart, Darren wrote:
> >>>On 3/28/14, 11:38, "Bruce Ashfield" <bruce.ashfield@windriver.com>
> >>>wrote:
> >>>
> >>>>On 14-03-28 02:34 PM, Richard Purdie wrote:
> >>>>>
> >>>>>
> >>>>>With regard to beagleboard, whilst the kernel may have support for it,
> >>>>>I'd like to remove it from meta-yocto-bsp.
> >>>>
> >>>>ok. I had planned to just leave the compatible machine as 3.10 and
> >>>>leave
> >>>>the support there, since there are a few people who contact me
> >>>>regularly
> >>>>and poke with the support.
> >>>>
> >>>>Is there a place we can put them as a "retirement" home ? versus asking
> >>>>people to locally restore the support.
> >>>
> >>>The retirement home would be the 1.5 stable releases. Yes?
> >>
> >>Nope. That's my point, I have 3.10 changes for the Xm in linux-yocto
> >>3.10 that lives in 1.6. We can make it less visible, but I'd like the
> >>configs to follow the latest versions of the tree.
> >
> >Isn't it just the SRCREV that matters here? Those can always just be
> >applied to 1.5. RP is only asking to remove the beagle board as a
> >reference BSP from the meta-yocto-bsp layer, he doesn't care if the
> >linux-yocto/meta data remains in place.
> 
> We are talking past each other. I'm asking for the meta-yocto-bsp and
> machine conf file to be around .. somewhere .. I don't want people
> to have to scrounge them up and revive them from old releases, or
> revert commits to make them available.
> 
> So this is outside of linux-yocto, I'd like a single layer than when
> added, gives access to the BSPs "as they were" in the 3.10 tree, and
> I'd like that layer to not be on people's local drives only.

3.10 EOL is projected as Sep, 2015 - do you plan to keep linux-yocto-3.10 
until then?

-- 
Denys

