Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE2874C811AA
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 17:57:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jan 2011 15:57:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,303,1291622400"; d="scan'208";a="876228475"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jan 2011 15:57:05 -0800
Date: Tue, 11 Jan 2011 08:06:32 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110111000632.GB18577@kyu3-hedt>
References: <cover.1294469496.git.ke.yu@intel.com>
	<caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
	<1294654419.2451.3.camel@scimitar> <1294659774.1492.186.camel@rex>
	<1294677815.1492.811.camel@rex> <1294690775.1492.1258.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1294690775.1492.1258.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/7] bb: add bb.fetcher as dynamic fetch module instance for fetch/fetch2
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
X-List-Received-Date: Mon, 10 Jan 2011 23:57:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 10, 20:19, Richard Purdie wrote:
> On Mon, 2011-01-10 at 16:43 +0000, Richard Purdie wrote:
> > On Mon, 2011-01-10 at 11:42 +0000, Richard Purdie wrote:
> > > On Mon, 2011-01-10 at 10:13 +0000, Joshua Lock wrote:
> > > > On Sat, 2011-01-08 at 15:15 +0800, Yu Ke wrote:
> > > > > +import bb
> > > > > +from bb import fetch, fetch2
> > > > > +
> > > > > +# switch between fetch and fetch2
> > > > > +instance = bb.fetch
> > > > > +__version__ = "1"
> > > > > +
> > > > > +#instance = bb.fetch2
> > > > > +#__version__ = "2"
> > > > 
> > > > I'm not very happy with this, it doesn't feel right. Can we not add some
> > > > runtime determination of which module to use (a variable in
> > > > bitbake.conf?) and then use some dynamic Python magic to add it to the
> > > > imported modules list?
> > > > 
> > > > A quick Google makes me thing we could do something more dynamic with
> > > > the __import__() function.
> > > 
> > > Agreed, I was also thinking about this but wanted to come up with a
> > > suggestion about how to better handle it. There is some interesting info
> > > in this webpage:
> > > 
> > > http://stackoverflow.com/questions/1096216/override-namespace-in-python
> > > 
> > > This example in particular looks useful:
> > > 
> > > def weirdimport(fullpath):
> > >   global project
> > > 
> > >   import os
> > >   import sys
> > >   sys.path.append(os.path.dirname(fullpath))
> > >   try:
> > >       project = __import__(os.path.basename(fullpath))
> > >       sys.modules['project'] = project
> > >   finally:
> > >       del sys.path[-1]
> > > 
> > > Although we shouldn't need to manipulate sys.path in our case.
> > > 
> > > As Joshua mentions, overriding the __import__ builtin should also work
> > > and might avoid some ordering issues we'd have with the above.
> > 
> > I did come up with this code inserted at the start of bin/bitbake:
> > 
> > origimport = __builtins__.__import__
> > def bbimport(name, *args, **kwargs):
> >     newname = name
> >     if name.find("bb.fetch") != -1:
> >         newname = name.replace("bb.fetch", "bb.fetch2")
> >     ret = origimport(newname, *args, **kwargs)
> >     if name != newname:
> >         sys.modules[name] = sys.modules[newname]
> >         if name == "bb.fetch":
> >             bb.fetch = sys.modules[newname]
> >     return ret
> > if os.environ.get('BBFETCH2'):
> >     __builtins__.__import__ = bbimport
> > 
> > which is pretty ugly :(. The big advantage of this is that it does
> > redirect any bb.fetch calls into bb.fetch2 calls, even within the
> > bb.fetch2 codebase.
> > 
> > I'm working through some other ideas as time permits.
> 
> If we assume bb.fetch2 will not make calls to bb.fetch we can simplify
> this to:
> 
> if os.environ.get("BBFETCH2"):
>     from bb import fetch2 as fetch
>     sys.modules['bb.fetch'] = sys.modules['bb.fetch2']
> 
> so from the environment you can trigger the new fetcher code. For Poky,
> I've added something to hardcode that behaviour since I don't want it to
> break.
> 
> I've pushed this both into Poky and bitbake upstream so we're in sync
> and can move forward on improving the fetcher code :).

Thanks Josh and Richard. I did think about the dynamic switch by bb config variable, but did not find a good implementation. Richard's approach looks simple and clean. A good learning on the python powerful dynamicness for me.

Regards
Ke

> 
> Cheers,
> 
> Richard
> 
> 
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

