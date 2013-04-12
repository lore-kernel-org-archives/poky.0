Return-Path: <denis@denix.org>
Received: from vms173011pub.verizon.net (vms173011pub.verizon.net
	[206.46.173.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EE59E014DB
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 12:54:52 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.45.150.102])
	by vms173011.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0ML500JJ6RB26KW8@vms173011.mailsrvcs.net> for
	poky@yoctoproject.org; Fri, 12 Apr 2013 14:54:38 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 28992201AD; Fri,
	12 Apr 2013 15:54:37 -0400 (EDT)
Date: Fri, 12 Apr 2013 15:54:37 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Martin Jansa <martin.jansa@gmail.com>
Message-id: <20130412195437.GB3757@denix.org>
References: <CAHUNapT4owKXJY_wBmRfwkn_56DTSO6hZsuGemES_YG6aFA2RQ@mail.gmail.com>
	<20130412193116.GA3757@denix.org> <20130412194229.GU2477@jama>
MIME-version: 1.0
In-reply-to: <20130412194229.GU2477@jama>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: poky and OpenEmbedded (post-release)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Apr 2013 19:54:52 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Fri, Apr 12, 2013 at 09:42:29PM +0200, Martin Jansa wrote:
> On Fri, Apr 12, 2013 at 03:31:16PM -0400, Denys Dmytriyenko wrote:
> > On Fri, Apr 12, 2013 at 03:07:00PM -0400, Trevor Woerner wrote:
> > > Many thanks to Denys for pointing me to
> > > http://openembedded.org/wiki/OpenEmbedded-Core. You won't believe how
> > > I've poured over that page and how many "lights have gone on" while
> > > reading it (over and over).
> > > 
> > > If poky started as a fork of OE but is now a distribution, wouldn't it
> > > make sense to remove the "meta" directory from poky and simply have
> > > people add openembedded-core as a layer (as they would any other
> > > layer)?
> > 
> > I believe that was suggested few times before (and other distros are doing 
> > exactly that - i.e. assembling their distros from layers), but Poky developers 
> > prefer their distro to be already pre-assembled for ease of use. Besides 
> > openembedded-core layer, there're also bitbake and meta-yocto inside Poky. It 
> > maybe confusing at first, but think of it as being pre-assembled from bitbake+
> > oe-core + meta-yocto and saved into a single repository.
> > 
> > Well, at least it saves Poky from needing to provide setup tools to download 
> > and assemble different layers from different repositories. Otherwise you would 
> > need something like our oe-layersetup[1] tool for Arago or setup-scripts for 
> > Angstrom etc.
> 
> But on the other hand they wouldn't need to send slightly different
> (path prefix) patchsets for poky and for oe-core/bitbake/meta-yocto.

Yes, indeed! So, a slightly easier user experience for the price of a slight 
maintenance overhead. :)

-- 
Denys


> > [1] git://arago-project.org/git/projects/oe-layersetup.git
> > 
> > -- 
> > Denys
> > 
> > > Or am I going down the wrong path with this thought?
> > > 
> > > Of course it might be confusing having, potentially, both an
> > > openembedded-core and a meta-openembedded layer, but it seems like
> > > having the "meta" directory in poky is redundant, given that it is
> > > already its own layer in openembedded-core.
> > > 
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 
> -- 
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com



