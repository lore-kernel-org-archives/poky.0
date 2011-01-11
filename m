Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 434B14C8085F
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 05:54:59 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 372BE12EC118;
	Tue, 11 Jan 2011 06:35:05 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1294690775.1492.1258.camel@rex>
References: <cover.1294469496.git.ke.yu@intel.com>
	<caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
	<1294654419.2451.3.camel@scimitar>  <1294659774.1492.186.camel@rex>
	<1294677815.1492.811.camel@rex>  <1294690775.1492.1258.camel@rex>
Date: Tue, 11 Jan 2011 11:54:49 +0000
Message-ID: <1294746889.2516.0.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
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
X-List-Received-Date: Tue, 11 Jan 2011 11:54:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-10 at 20:19 +0000, Richard Purdie wrote:
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

Lovely, this is almost exactly what I had envisaged :-)

Cheers,
Joshua

> 
> so from the environment you can trigger the new fetcher code. For Poky,
> I've added something to hardcode that behaviour since I don't want it to
> break.
> 
> I've pushed this both into Poky and bitbake upstream so we're in sync
> and can move forward on improving the fetcher code :).
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

-- 
Joshua Lock
        Intel Open Source Technology Centre


