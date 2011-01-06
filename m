Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95B654C8086F
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 06:25:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jan 2011 04:25:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="370889273"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 06 Jan 2011 04:25:56 -0800
Date: Thu, 6 Jan 2011 20:34:37 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110106123437.GE20168@kyu3-hedt>
References: <cover.1293457442.git.ke.yu@intel.com>
	<c9580df3dfe41b22e6cee32ac7c228197fcecd01.1293457442.git.ke.yu@intel.com>
	<1294311768.17519.24188.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1294311768.17519.24188.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/8] git.py: move git specific url data initialization earlier
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
X-List-Received-Date: Thu, 06 Jan 2011 12:25:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 06, 11:02, Richard Purdie wrote:
> On Mon, 2010-12-27 at 21:57 +0800, Yu Ke wrote:
> > move the url data init earlier, so that Git.latest_revision()
> > can work before Git.localpath()
> > 
> > This change allow FetchData:__init__ to set FetchData.revison by
> > Git.latest_revision()
> > 
> > Signed-off-by: Yu Ke <ke.yu@intel.com>
> > ---
> >  bitbake/lib/bb/fetch/git.py |   19 ++++++++++++++-----
> >  1 files changed, 14 insertions(+), 5 deletions(-)
> > 
> > diff --git a/bitbake/lib/bb/fetch/git.py b/bitbake/lib/bb/fetch/git.py
> > index a8ec104..df582a3 100644
> > --- a/bitbake/lib/bb/fetch/git.py
> > +++ b/bitbake/lib/bb/fetch/git.py
> > @@ -38,10 +38,17 @@ class Git(Fetch):
> >          """
> >          Check to see if a given url can be fetched with git.
> >          """
> > -        return ud.type in ['git']
> > -
> > -    def localpath(self, url, ud, d):
> > +        if ud.type in ['git']:
> > +            self.urldata_init(ud, d)
> > +            return True
> > +        else:
> > +            return False
> >  
> > +    def urldata_init(self, ud, d):
> > +        """
> > +        init git specific variable within url data
> > +        so that the git method like latest_revision() can work
> > +        """
> >          if 'protocol' in ud.parm:
> 
> I like the idea of having a urldata_init method but I don't like the way
> you're calling it from supports(). Each methods need to do one thing
> clearly and well.
> 
> Your patch does help clean things up and this is good but I'd just
> suggest you call urldata_init() from the fetcher __init__.py code
> alongside any supports() calls for now. This way, the supports() method
> remains 'clean'. You can make it so you only call the urldata_init()
> method if its present.

Yes, calling from supports() is not good. I will revise it to calling seperately from FetchData:__init__()

Regards
Ke

> 
> Ultimately, what needs to happen in the fetcher is to split the
> mechanics of fetching out from the actual urldata object. The code has
> been heading in that direction but python class usage isn't one of my
> better skills and I need to spend time I'm struggling to find working
> out what needs to happen there :(.
> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

