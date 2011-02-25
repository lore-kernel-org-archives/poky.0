Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3441F4C800AC
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 15:27:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Feb 2011 13:27:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,227,1297065600"; d="scan'208";a="713392798"
Received: from unknown (HELO [10.255.16.234]) ([10.255.16.234])
	by orsmga001.jf.intel.com with ESMTP; 25 Feb 2011 13:27:21 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
In-Reply-To: <4D681066.3040700@windriver.com>
References: <cover.1298661117.git.josh@linux.intel.com>
	<82d3ef44b338806b0af4b4fdbcab54f15108b0e5.1298661117.git.josh@linux.intel.com>
	<4D681066.3040700@windriver.com>
Date: Fri, 25 Feb 2011 21:27:16 +0000
Message-ID: <1298669236.11134.5.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 1/3] base.bbclass: enable INCOMPATIBLE_LICENSE to match slight variations
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
X-List-Received-Date: Fri, 25 Feb 2011 21:27:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-25 at 14:26 -0600, Mark Hatle wrote:
> Only thing I would be concerned with in this patch is a license of "GPLv3 w/
> exception"  (I'm not sure how we address that, but there are cases where things
> are GPLv3, but the exception may allow someone to use the component where they
> would not normally allow for GPLv3.)  I'm not exactly sure the best way to
> handle this...

Hmm, fair point - I hadn't thought of that.

I can't think of a better way to do this that doesn't involve
implementing a fragile test, in which case we'd probably best ignore
this and patch three from this series.

Cheers,
Joshua
> 
> --Mark
> 
> On 2/25/11 1:13 PM, Joshua Lock wrote:
> > From: Joshua Lock <josh@linux.intel.com>
> > 
> > Add a greedy any-character match to INCOMPATIBLE_LICENSE so that we can match
> > different permutations of that license, i.e. if INCOMPATIBLE_LICENSE is set
> > to GPLv3 we should also match GPLv3+
> > 
> > Signed-off-by: Joshua Lock <josh@linux.intel.com>
> > ---
> >  meta/classes/base.bbclass |    9 ++++++++-
> >  1 files changed, 8 insertions(+), 1 deletions(-)
> > 
> > diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
> > index a674f52..3ff11d3 100644
> > --- a/meta/classes/base.bbclass
> > +++ b/meta/classes/base.bbclass
> > @@ -345,7 +345,14 @@ python () {
> >                  raise bb.parse.SkipPackage("incompatible with machine %s" % this_machine)
> >  
> >  
> > -        dont_want_license = bb.data.getVar('INCOMPATIBLE_LICENSE', d, 1)
> > +        dont_want_license = bb.data.getVar('INCOMPATIBLE_LICENSE', d, True)
> > +        # If dont_want_license is set add a greedy any-character match
> > +        # to it (if not already set) so that we can match permutations
> > +        # of that license. i.e. if dont_want_license is set to GPLv3 we
> > +        # also want to match GPLv3+
> > +        if dont_want_license and not dont_want_license.endswith('.+'):
> > +	    dont_want_license = dont_want_license + '.+'
> > +
> >          if dont_want_license and not pn.endswith("-native") and not pn.endswith("-cross") and not pn.endswith("-cross-initial") and not pn.endswith("-cross-intermediate"):
> >              hosttools_whitelist = (bb.data.getVar('HOSTTOOLS_WHITELIST_%s' % dont_want_license, d, 1) or "").split()
> >              lgplv2_whitelist = (bb.data.getVar('LGPLv2_WHITELIST_%s' % dont_want_license, d, 1) or "").split()
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Joshua Lock
        Intel Open Source Technology Centre


