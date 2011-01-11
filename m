Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 382D54C80050
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 19:19:14 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jan 2011 17:18:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,303,1291622400"; d="scan'208";a="645471143"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2011 17:18:54 -0800
Date: Tue, 11 Jan 2011 09:28:18 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110111012818.GF18577@kyu3-hedt>
References: <cover.1294571866.git.ke.yu@intel.com>
	<5dc86fafe3227653f652bb61e8ad49f875b3e20d.1294571866.git.ke.yu@intel.com>
	<1294691838.1492.1314.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1294691838.1492.1314.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 8/8] Fetcher: only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"
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
X-List-Received-Date: Tue, 11 Jan 2011 01:19:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 10, 20:37, Richard Purdie wrote:
> On Sun, 2011-01-09 at 19:50 +0800, Yu Ke wrote:
> > we should cache SRCREV whenever possible, the only exception is
> > when SREREV is auto rev. so change the logic to only set __BB_DONT_CACHE
> > at SRCREV = "${AUTOREV}" case
> > 
> > Signed-off-by: Yu Ke <ke.yu@intel.com>
> > ---
> >  bitbake/lib/bb/fetch2/__init__.py |    6 +++---
> >  1 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> > index 44189ee..fd489a1 100644
> > --- a/bitbake/lib/bb/fetch2/__init__.py
> > +++ b/bitbake/lib/bb/fetch2/__init__.py
> > @@ -356,6 +356,9 @@ def localpaths(d):
> >      return local
> >  
> >  def get_autorev(d):
> > +    #  only not cache src rev in autorev case
> > +    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
> > +        bb.data.setVar('__BB_DONT_CACHE', '1', d)
> >      return "AUTOINC"
> >  
> >  def get_srcrev(d):
> > @@ -382,9 +385,6 @@ def get_srcrev(d):
> >          logger.error("SRCREV was used yet no valid SCM was found in SRC_URI")
> >          raise ParameterError
> >  
> > -    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
> > -        bb.data.setVar('__BB_DONT_CACHE', '1', d)
> > -
> >      if len(scms) == 1:
> >          return urldata[scms[0]].method.sortable_revision(scms[0], urldata[scms[0]], d)
> 
> I wasn't going to take this as I think its rather ugly. Looking at it
> further, its not really any less ugly than the existing code so I'm
> torn. I will take it as its an improvement and will make the user
> experience better but this approach relies on the cache to expand PV and
> call get_autorev() which is not obvious and the code should at least
> have a comment attached to it about how it works. Behaviour change in
> the cache could break this rather easily.

oh, yes. it is indeed not clean and fragile. I just blindly make the patch based on the orignal code and not think more.Idealy, if Cache.py has a hook that other component (e.g. fetcher) could register callback, and the callback will be executed in determed order, e.g. before Cache.add(), that will solve this problem. I will see if there is such place or any alternative.

Regards
Ke



> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

