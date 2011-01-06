Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 442C44C8086F
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 05:56:41 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06BwHlt028520; Thu, 6 Jan 2011 11:58:17 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id iq2hQJwM6FrR; Thu,  6 Jan 2011 11:58:17 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06BwDoL028511
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 6 Jan 2011 11:58:16 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <1294311995.17519.24194.camel@rex>
References: <cover.1293457442.git.ke.yu@intel.com>
	<0222a4a459b310da4e6ae4737a1639a4b5bf128d.1293457442.git.ke.yu@intel.com>
	<1294311995.17519.24194.camel@rex>
Date: Thu, 06 Jan 2011 11:56:09 +0000
Message-ID: <1294314969.17519.24283.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
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
X-List-Received-Date: Thu, 06 Jan 2011 11:56:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-06 at 11:06 +0000, Richard Purdie wrote:
> On Mon, 2010-12-27 at 21:58 +0800, Yu Ke wrote:
> > Current fetcher has annoying "SRCREVINACTION" deadlock,
> > which occurs when SRCREV=${AUTOREV}=@bb.fetch.get_srcrev():
> > get_srcrev()->setup_localpath()->srcrev_internal_helper()
> > ->evaluate SRCREV->get_srcrev()
> > 
> > current fetcher resolve the deadlock by introducing a
> > "SRCREVINACTION" condition check. Althoguh it works, it is
> > indeed not clean.
> > 
> > This patch use antoehr idea to break the deadlock: break
> > the dependency among SRCREV and get_srcrev(), i.e. assign
> > a specific keyword "AUTOINC" to AUTOREV. when Fetcher meet
> > this keyword, it will check and set the latest revision to
> > urldata.revision. get_srcrev later can use the urldata.revision
> > for value evaluation(SRCPV etc). In this case, SRCREV no longer
> > depends on get_srcrev, and there is not deadlock anymore.
> > 
> > In implementation side, several things are done:
> > a) set the revision in FetchData:__init__, so that
> >    urldata.revision is ready when get_srcrev() need it
> > b) init fetch method specific data in Fetch:supports, so that
> >    Fetch.latest_revision() can be conducted when FetchData:
> >    __init__ need it to achieve a)
> 
> I do think we need to make this change. 
> 
> Since we're not doing this in a fetcher "version 2" currently there is
> the backwards compatibility question though. What does this code do if
> the bitbake.conf change isn't made? Can we detect the old situation and
> error at least? This change is going to need a little discussion on the
> bitbake-dev list...
> 
> The answer may be that we need to start a fetch2 codebase to carry on
> with this kind of cleanup.

I've given this further thought and lets go with the original plan,
create a fetch2 and then go and really clean it up.

We therefore need to copy the fetch directory to fetch2, then start
applying patches against fetch2. We can update poky to use bb.fetch2
instead of bb.fetch. This should also give OE a way to transition too.

I made a quick grep over bitbake itself and there are some fetch
references we'll need to resolve to switch between the two fetch
modules:

lib/bb/cooker.py:        bb.fetch.persistent_database_connection = {}
lib/bb/cooker.py:        bb.fetch.persistent_database_connection = {}

The above two references no longer do anything as the
persistent_database code was removed in bitbake upstream and for now
poky has followed that although I would like to revisit it.

lib/bb/parse/parse_py/BBHandler.py:import bb.fetch, bb.build, bb.utils

I doubt BBHandler still needs this reference

lib/bb/cooker.py:            bb.fetch.fetcher_init(self.configuration.data)
lib/bb/command.py:        if bb.fetch.fetcher_compare_revisions(command.cooker.configuration.data):

These two are important and we'll need to have a way to switch between
the fetchers for these.

Cheers,

Richard


