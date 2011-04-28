Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DE524C804D4
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 16:08:38 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Apr 2011 14:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,283,1301900400"; d="scan'208";a="635528579"
Received: from vorpal.jf.intel.com (HELO [10.7.199.68]) ([10.7.199.68])
	by orsmga002.jf.intel.com with ESMTP; 28 Apr 2011 14:08:37 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4DB9859D.7070609@windriver.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F2311C1C837@shsmsx502.ccr.corp.intel.com>
	<20110428092232.GA3259@jama.jama.net> <4DB9859D.7070609@windriver.com>
Date: Thu, 28 Apr 2011 14:04:32 -0700
Message-ID: <1304024672.2171.396.camel@vorpal>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: poky@yoctoproject.org
Subject: Re: RFC: design of network based PR service
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
X-List-Received-Date: Thu, 28 Apr 2011 21:08:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-04-28 at 10:19 -0500, Mark Hatle wrote:
> On 4/28/11 4:22 AM, Martin Jansa wrote:
> > On Thu, Apr 28, 2011 at 03:08:03PM +0800, Lu, Lianhao wrote:
> >> Hi Guys,
> >>
> >> Here is the design of network based PR service, please help to review and 
> >> give you comment. Thanks a lot!
> > 
> > Hi,
> > 
> > looks good, just wondering if we can use the same mechanism for
> > LOCALCOUNT numbers in SRCPV, we can even use same table if we prefix
> > first column ie LOCALCOUNT_${PN} and CheckSum in 2nd column would be
> > actuall git hash (from SRCREV or HEAD for AUTOREV) or 2nd table with
> > similar structure.
> > 
> > But it wont work very well if one builder is using AUTOREV and another
> > one isn't, but that can be resolved by allowing only trusted builders
> > with same configuration (wrt AUTOREV) to send such tuples.
> > 
> > Do we have at least 2 groups of "users".
> > 1) trusted which increments PR when hash is not found
> > 2) public which can query PR for given hash (not sure what they should
> >    do if hash is not found)
> 
> I think this points our something necessary.  There are manual indications of a
> change.  I.e. the current "PR" usage.  If I change the recipe, patches, etc I
> should expect to update the 'PR' to the next value.  However, if something ELSE
> changes (affecting the checksum), or an end user forgets to change the PR, the
> auto increment should be used.

Why would you need to update the PR manually? Detecting changes in the
recipe/patches/etc should all be handled by the checksumming.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Center


