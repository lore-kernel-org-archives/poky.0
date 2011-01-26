Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C79194C811AE
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 22:37:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Jan 2011 20:37:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,378,1291622400"; d="scan'208";a="700710081"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2011 20:37:34 -0800
Date: Wed, 26 Jan 2011 12:41:10 +0800
From: Yu Ke <ke.yu@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Message-ID: <20110126044110.GB15143@kyu3-hedt>
References: <cover.1295371995.git.ke.yu@intel.com>
	<8dfcbdd661ed90787b9680ea1bcdae45c4372a67.1295371995.git.ke.yu@intel.com>
	<1295978833.14388.50360.camel@rex>
	<AANLkTi=g9Z6c3PSLa=7JUtRS1xbh8KDMOgoBZao2Z24Z@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <AANLkTi=g9Z6c3PSLa=7JUtRS1xbh8KDMOgoBZao2Z24Z@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 10/11] bb.fetch2: add git unpack
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
X-List-Received-Date: Wed, 26 Jan 2011 04:37:36 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Jan 25, 14:39, Bruce Ashfield wrote:
> On Tue, Jan 25, 2011 at 1:07 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > Hi Ke,
> >
> > On Wed, 2011-01-19 at 01:48 +0800, Yu Ke wrote:
> >> git download will clone git repo to local, and git unpack just do a clone with referrence to the original repo
> >>
> >> Signed-off-by: Yu Ke <ke.yu@intel.com>
> >> ---
> >>  bitbake/lib/bb/fetch2/git.py |   16 ++++++++++++++++
> >>  1 files changed, 16 insertions(+), 0 deletions(-)
> >>
> >> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> >> index 438756a..bb62a87 100644
> >> --- a/bitbake/lib/bb/fetch2/git.py
> >> +++ b/bitbake/lib/bb/fetch2/git.py
> >> @@ -193,6 +193,22 @@ class Git(Fetch):
> >>          os.chdir(ud.clonedir)
> >>          bb.utils.prunedir(codir)
> >>
> >> +    def unpack(self, ud, destdir, d):
> >> +        """ unpack the downloaded src to destdir"""
> >> +        subdir = ud.parm.get("subpath", "")
> >> +        if subdir != "":
> >> +            readpathspec = ":%s" % (subdir)
> >> +        else:
> >> +            readpathspec = ""
> >> +
> >> +        # extract to ${WORKDIR}/git
> >> +        destdir = destdir + "/git/"
> >> +
> >> +        os.chdir(ud.clonedir)
> >> +        runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
> >> +        runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, destdir), d)
> >> +        return 1
> >> +
> >>      def supports_srcrev(self):
> >>          return True
> >
> > I know we talked about this via email and you revised the description
> > to:
> >
> > http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=kyu3/fetcher-api-v3&id=6df3037ea3679b804c2679afba8377b7e3796aca
> >
> > I'm wondering if we could optimise this cp command to be a "git clone
> > -l" or a "git clone -s" (see man git-clone). I'm cc'ing Bruce for his
> > thoughts on this and whether the linux-yocto tools would have a problem
> > with either of these.
> 
> Neither will pose a problem, and for what it is worth, I think using git
> for the copy from src/dest is a good idea. In other build systems, I'm
> doing the same thing with --shared (so I know for sure that works), and
> --local should also be fine.

"git clone" is my first try when cooking the patch, unfortunately I meet one issue here. the git clone target dir is ${WORKDIR}, while git requires the target dir to be empty, which is not true for ${WORKDIR}, so git clone will fail. so I fall back to cp approach.

But I agree that git clone is better. So I'd like use this apprach: git clone to {WORKDIR}/git/, and modify the kernel-yocto.bbclass:do_kernel_checkout() to use the new layout. 
																																					I will revise the patch accordingly for review.
																																					Regards
Ke

> 
> >
> > The idea would be one central checkout with the references in and then
> > the subcomponents would all just reference the one local clone saving
> > diskspace and time.
> 
> Absolutely. And if someone does something to the central checkout,
> minor errors ensue, but that can be recovered as well.
> 
> Cheers,
> 
> Bruce
> 
> >
> > Cheers,
> >
> > Richard
> >
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> 
> 
> 
> -- 
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

