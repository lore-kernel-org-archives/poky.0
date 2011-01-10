Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7EAB54C80050
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 10:43:53 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AGjWak001027; Mon, 10 Jan 2011 16:45:33 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id muPFXFp1cSEq; Mon, 10 Jan 2011 16:45:32 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AGjPRo001024
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 10 Jan 2011 16:45:27 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@openedhand.com>
In-Reply-To: <1294659774.1492.186.camel@rex>
References: <cover.1294469496.git.ke.yu@intel.com>
	<caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
	<1294654419.2451.3.camel@scimitar>  <1294659774.1492.186.camel@rex>
Date: Mon, 10 Jan 2011 16:43:35 +0000
Message-ID: <1294677815.1492.811.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
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
X-List-Received-Date: Mon, 10 Jan 2011 16:43:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-10 at 11:42 +0000, Richard Purdie wrote:
> On Mon, 2011-01-10 at 10:13 +0000, Joshua Lock wrote:
> > On Sat, 2011-01-08 at 15:15 +0800, Yu Ke wrote:
> > > +import bb
> > > +from bb import fetch, fetch2
> > > +
> > > +# switch between fetch and fetch2
> > > +instance = bb.fetch
> > > +__version__ = "1"
> > > +
> > > +#instance = bb.fetch2
> > > +#__version__ = "2"
> > 
> > I'm not very happy with this, it doesn't feel right. Can we not add some
> > runtime determination of which module to use (a variable in
> > bitbake.conf?) and then use some dynamic Python magic to add it to the
> > imported modules list?
> > 
> > A quick Google makes me thing we could do something more dynamic with
> > the __import__() function.
> 
> Agreed, I was also thinking about this but wanted to come up with a
> suggestion about how to better handle it. There is some interesting info
> in this webpage:
> 
> http://stackoverflow.com/questions/1096216/override-namespace-in-python
> 
> This example in particular looks useful:
> 
> def weirdimport(fullpath):
>   global project
> 
>   import os
>   import sys
>   sys.path.append(os.path.dirname(fullpath))
>   try:
>       project = __import__(os.path.basename(fullpath))
>       sys.modules['project'] = project
>   finally:
>       del sys.path[-1]
> 
> Although we shouldn't need to manipulate sys.path in our case.
> 
> As Joshua mentions, overriding the __import__ builtin should also work
> and might avoid some ordering issues we'd have with the above.

I did come up with this code inserted at the start of bin/bitbake:

origimport = __builtins__.__import__
def bbimport(name, *args, **kwargs):
    newname = name
    if name.find("bb.fetch") != -1:
        newname = name.replace("bb.fetch", "bb.fetch2")
    ret = origimport(newname, *args, **kwargs)
    if name != newname:
        sys.modules[name] = sys.modules[newname]
        if name == "bb.fetch":
            bb.fetch = sys.modules[newname]
    return ret
if os.environ.get('BBFETCH2'):
    __builtins__.__import__ = bbimport

which is pretty ugly :(. The big advantage of this is that it does
redirect any bb.fetch calls into bb.fetch2 calls, even within the
bb.fetch2 codebase.

I'm working through some other ideas as time permits.

Cheers,

Richard



