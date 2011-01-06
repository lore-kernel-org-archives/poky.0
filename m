Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45BF44C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 06:53:19 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2011 04:53:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,283,1291622400"; d="scan'208";a="694172906"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2011 04:53:17 -0800
Date: Thu, 6 Jan 2011 21:01:58 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110106130158.GF20168@kyu3-hedt>
References: <cover.1293457442.git.ke.yu@intel.com>
	<0222a4a459b310da4e6ae4737a1639a4b5bf128d.1293457442.git.ke.yu@intel.com>
	<1294311995.17519.24194.camel@rex>
	<1294314969.17519.24283.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1294314969.17519.24283.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 7/8] Fetcher: break the "SRCREVINACTION" deadlock
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
X-List-Received-Date: Thu, 06 Jan 2011 12:53:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 06, 11:56, Richard Purdie wrote:
> On Thu, 2011-01-06 at 11:06 +0000, Richard Purdie wrote:
> > On Mon, 2010-12-27 at 21:58 +0800, Yu Ke wrote:
> > > Current fetcher has annoying "SRCREVINACTION" deadlock,
> > > which occurs when SRCREV=${AUTOREV}=@bb.fetch.get_srcrev():
> > > get_srcrev()->setup_localpath()->srcrev_internal_helper()
> > > ->evaluate SRCREV->get_srcrev()
> > > 
> > > current fetcher resolve the deadlock by introducing a
> > > "SRCREVINACTION" condition check. Althoguh it works, it is
> > > indeed not clean.
> > > 
> > > This patch use antoehr idea to break the deadlock: break
> > > the dependency among SRCREV and get_srcrev(), i.e. assign
> > > a specific keyword "AUTOINC" to AUTOREV. when Fetcher meet
> > > this keyword, it will check and set the latest revision to
> > > urldata.revision. get_srcrev later can use the urldata.revision
> > > for value evaluation(SRCPV etc). In this case, SRCREV no longer
> > > depends on get_srcrev, and there is not deadlock anymore.
> > > 
> > > In implementation side, several things are done:
> > > a) set the revision in FetchData:__init__, so that
> > >    urldata.revision is ready when get_srcrev() need it
> > > b) init fetch method specific data in Fetch:supports, so that
> > >    Fetch.latest_revision() can be conducted when FetchData:
> > >    __init__ need it to achieve a)
> > 
> > I do think we need to make this change. 
> > 
> > Since we're not doing this in a fetcher "version 2" currently there is
> > the backwards compatibility question though. What does this code do if
> > the bitbake.conf change isn't made? Can we detect the old situation and
> > error at least? This change is going to need a little discussion on the
> > bitbake-dev list...
> > 
> > The answer may be that we need to start a fetch2 codebase to carry on
> > with this kind of cleanup.
> 
> I've given this further thought and lets go with the original plan,
> create a fetch2 and then go and really clean it up.

Ok, I like the idea of having a seperate fetch2. This allow me not to worry about breaking the old fetch code.

> 
> We therefore need to copy the fetch directory to fetch2, then start
> applying patches against fetch2. We can update poky to use bb.fetch2
> instead of bb.fetch. This should also give OE a way to transition too.
> 
> I made a quick grep over bitbake itself and there are some fetch
> references we'll need to resolve to switch between the two fetch
> modules:
> 
> lib/bb/cooker.py:        bb.fetch.persistent_database_connection = {}
> lib/bb/cooker.py:        bb.fetch.persistent_database_connection = {}
> 
> The above two references no longer do anything as the
> persistent_database code was removed in bitbake upstream and for now
> poky has followed that although I would like to revisit it.
> 
> lib/bb/parse/parse_py/BBHandler.py:import bb.fetch, bb.build, bb.utils
> 
> I doubt BBHandler still needs this reference
> 
> lib/bb/cooker.py:            bb.fetch.fetcher_init(self.configuration.data)
> lib/bb/command.py:        if bb.fetch.fetcher_compare_revisions(command.cooker.configuration.data):
> 
> These two are important and we'll need to have a way to switch between
> the fetchers for these.

There are also some bbclase like base.bbclass, distrodata.bbclass, sstate.bbclass, patch.bbclass, utility-tasks.bbclass, utils.bbclass need to take care of. I will search and handle them case by case.

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

