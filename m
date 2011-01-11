Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD61E4C80050
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 19:07:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jan 2011 17:07:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,303,1291622400"; d="scan'208";a="372664229"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 10 Jan 2011 17:07:29 -0800
Date: Tue, 11 Jan 2011 09:16:57 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110111011657.GE18577@kyu3-hedt>
References: <cover.1294469496.git.ke.yu@intel.com>
	<caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
	<1294654419.2451.3.camel@scimitar> <1294659774.1492.186.camel@rex>
	<1294677815.1492.811.camel@rex> <1294690775.1492.1258.camel@rex>
	<20110111001336.GC18577@kyu3-hedt> <1294707050.1492.1844.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1294707050.1492.1844.camel@rex>
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
X-List-Received-Date: Tue, 11 Jan 2011 01:07:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 11, 00:50, Richard Purdie wrote:
> On Tue, 2011-01-11 at 08:13 +0800, Yu Ke wrote:
> > > If we assume bb.fetch2 will not make calls to bb.fetch we can simplify
> > > this to:
> > > 
> > > if os.environ.get("BBFETCH2"):
> > >     from bb import fetch2 as fetch
> > >     sys.modules['bb.fetch'] = sys.modules['bb.fetch2']
> > 
> > BTW, a quick question. with sys.modules['bb.fetch'] =
> > sys.modules['bb.fetch2'], will the future "import bb.fetch" override
> > the bb.fetch in namespeace ? I assume not, but just want to double
> > confirm. I know that "import <module>" will not be executed if the
> > <module> is already imported. So does python use sys.modules[<module>]
> > to decide if it is already imported?
> 
> This is correct, yes. Python uses sys.modules behind the scenes when it
> sees "import X". You can prove this by placing a sys.exit(1) in the
> bb.fetch code :)

Thanks, yes, it is clear to me now.

Regards
Ke

> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

