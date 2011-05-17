Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C40484C80335
	for <poky@yoctoproject.org>; Tue, 17 May 2011 13:00:14 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 May 2011 11:00:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,226,1304319600"; d="scan'208";a="437681494"
Received: from unknown (HELO [10.255.12.109]) ([10.255.12.109])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 11:00:13 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1305653109.3424.270.camel@rex>
References: <cover.1305415455.git.tom.zanussi@intel.com>
	<92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
	<4DCF53FC.9060109@intel.com>  <1305436392.21191.135.camel@elmorro>
	<1305535028.3424.14.camel@rex>  <1305555466.21191.227.camel@elmorro>
	<1305653109.3424.270.camel@rex>
Date: Tue, 17 May 2011 12:59:14 -0500
Message-ID: <1305655155.21191.584.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 1/4] crownbay: remove custom BASE_PACKAGE_ARCH and	PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Tue, 17 May 2011 18:00:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-17 at 10:25 -0700, Richard Purdie wrote:
> On Mon, 2011-05-16 at 09:17 -0500, Tom Zanussi wrote:
> > On Mon, 2011-05-16 at 01:37 -0700, Richard Purdie wrote:
> > > On Sun, 2011-05-15 at 00:13 -0500, Tom Zanussi wrote:
> > > > On Sat, 2011-05-14 at 21:18 -0700, Wold, Saul wrote:
> > > > > On 05/14/2011 08:36 PM, Tom Zanussi wrote:
> > > > > > From: Tom Zanussi<tom.zanussi@intel.com>
> > > > > >
> > > > > > PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
> > > > > > include following it, preventing the atom BASE_PACKAGE_ARCH from being
> > > > > > included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
> > > > > > Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
> > > > > > file and allow the values in tune-atom to be used as intended.
> > > > > >
> > > > > I think we may still want to change the tune-atom PACKAGE_EXTRA_ARCHS to ?=.
> > > > > 
> > > > 
> > > > Yeah, I'll change that along with a couple other changes to that file,
> > > > such as switching -march=core2 to -march=atom, soon...
> > > 
> > > Does that actually make any difference to gcc? It never used to but I'm
> > > wondering if anything has changed?
> > 
> > I don't know yet, which is why I didn't just make the change
> > straightaway - it would need some benchmarking first, at least.
> > 
> > I would be kind of surprised though if it didn't have some effect -
> > otherwise why would it exist at all?  It sounds like you've tested this
> > before and it didn't make any difference - how did you test, and do you
> > have any benchmarking suggestions that would help decide one way or the
> > other?
> 
> I think I looked at the gcc codebase and found it didn't do anything.
> Its more common that you'd have thought in gcc :/
> 

OK, good to know.  I'll take a look when I get a chance and see if
anything's changed in that area lately...

Tom

> Cheers,
> 
> Richard
> 



