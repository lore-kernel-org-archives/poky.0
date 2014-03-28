Return-Path: <denis@denix.org>
Received: from vms173025pub.verizon.net (vms173025pub.verizon.net
	[206.46.173.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 886E2E00BCA
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 11:39:21 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173025.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N3500LH5T4P0YK0@vms173025.mailsrvcs.net> for
	poky@yoctoproject.org; Fri, 28 Mar 2014 13:39:05 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 4DE3620210; Fri,
	28 Mar 2014 14:38:49 -0400 (EDT)
Date: Fri, 28 Mar 2014 14:38:49 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Message-id: <20140328183849.GN3370@denix.org>
References: <1396031047.14790.24.camel@ted>
MIME-version: 1.0
In-reply-to: <1396031047.14790.24.camel@ted>
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Fri, 28 Mar 2014 18:39:21 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

[Sorry for duplication, my reply didn't make it to the list, resending]

On Fri, Mar 28, 2014 at 06:24:07PM +0000, Richard Purdie wrote:
> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
> parts that I could pull together, there seemed to be some pieces
> missing, specifically:
>
> * the yocto-linux-dev.bbappend was underpopulated
> * the yocto-linux-3.14.bbappend was missing
> * no removal of beagleboard
> * no addition to the README for beaglebone
> * local.conf.sample needs updates
> * missing edgerouter configuration in linux-yocto*
> * should we be removing a mips BSP?
> * need a layer version bump so beth can handle this on the autobuilder
>
> I added commits for some of these, the 3.14 kernel bbappend is missing
> SRCREVs though for example. The state of where I got to is:
>
> http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=master-next
>
> Beth: Your AR is to figure out the autobuilder side of this and build
> the two new replacement BSPs (beaglebone and edgerouter) instead of the
> old ones. When that and the current build on the AB is done, can we run
> a build of master-next please?
>
> Denys: I'm hoping you can help out with the README
>
> Bruce: can you look at the linux-yocto-* changes, particularly the 3.14
> SRCREVs and that linux-yocto-dev looks right?

Richard,

Thanks for the update!

I'll take a look at updating README with relevant Beaglebone pieces.

As of the linux-yocto-dev.bbappend - I made that change before Bruce had the
versioned linux-yocto recipe for 3.14, with plans to update it later. If you
are merging all the changes together, that part needs to be fixed, indeed.

-- 
Denys

