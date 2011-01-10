Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75AAC4C8108C
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 05:43:09 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0ABim8e020525; Mon, 10 Jan 2011 11:44:49 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id dPLTcAKvN2gH; Mon, 10 Jan 2011 11:44:48 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0ABig7V020518
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 10 Jan 2011 11:44:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@openedhand.com>
In-Reply-To: <1294654419.2451.3.camel@scimitar>
References: <cover.1294469496.git.ke.yu@intel.com>
	<caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
	<1294654419.2451.3.camel@scimitar>
Date: Mon, 10 Jan 2011 11:42:54 +0000
Message-ID: <1294659774.1492.186.camel@rex>
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
X-List-Received-Date: Mon, 10 Jan 2011 11:43:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-10 at 10:13 +0000, Joshua Lock wrote:
> On Sat, 2011-01-08 at 15:15 +0800, Yu Ke wrote:
> > bb.fetcher is introduced to swtich between bb.fetch and bb.fetch2.
> > all bb.fetch/bb.fetch2 referrence can be replaced with bb.fetcher.instance,
> > so that we can cleanly switch between bb.fetch and bb.fetch2
> > 
> > Signed-off-by: Yu Ke <ke.yu@intel.com>
> > ---
> >  bitbake/lib/bb/fetcher.py |   26 ++++++++++++++++++++++++++
> >  1 files changed, 26 insertions(+), 0 deletions(-)
> >  create mode 100644 bitbake/lib/bb/fetcher.py
> > 
> > diff --git a/bitbake/lib/bb/fetcher.py b/bitbake/lib/bb/fetcher.py
> > new file mode 100644
> > index 0000000..3818d78
> > --- /dev/null
> > +++ b/bitbake/lib/bb/fetcher.py
> > @@ -0,0 +1,26 @@
> > +#!/usr/bin/env python
> > +# ex:ts=4:sw=4:sts=4:et
> > +# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> > +#
> > +# This program is free software; you can redistribute it and/or modify
> > +# it under the terms of the GNU General Public License version 2 as
> > +# published by the Free Software Foundation.
> > +#
> > +# This program is distributed in the hope that it will be useful,
> > +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > +# GNU General Public License for more details.
> > +#
> > +# You should have received a copy of the GNU General Public License along
> > +# with this program; if not, write to the Free Software Foundation, Inc.,
> > +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> > +
> > +import bb
> > +from bb import fetch, fetch2
> > +
> > +# switch between fetch and fetch2
> > +instance = bb.fetch
> > +__version__ = "1"
> > +
> > +#instance = bb.fetch2
> > +#__version__ = "2"
> 
> I'm not very happy with this, it doesn't feel right. Can we not add some
> runtime determination of which module to use (a variable in
> bitbake.conf?) and then use some dynamic Python magic to add it to the
> imported modules list?
> 
> A quick Google makes me thing we could do something more dynamic with
> the __import__() function.

Agreed, I was also thinking about this but wanted to come up with a
suggestion about how to better handle it. There is some interesting info
in this webpage:

http://stackoverflow.com/questions/1096216/override-namespace-in-python

This example in particular looks useful:

def weirdimport(fullpath):
  global project

  import os
  import sys
  sys.path.append(os.path.dirname(fullpath))
  try:
      project = __import__(os.path.basename(fullpath))
      sys.modules['project'] = project
  finally:
      del sys.path[-1]

Although we shouldn't need to manipulate sys.path in our case.

As Joshua mentions, overriding the __import__ builtin should also work
and might avoid some ordering issues we'd have with the above.

Cheers,

Richard



