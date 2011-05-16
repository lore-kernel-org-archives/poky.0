Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94F114C800E0
	for <poky@yoctoproject.org>; Mon, 16 May 2011 09:18:39 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 May 2011 07:18:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,374,1301900400"; d="scan'208";a="747876543"
Received: from unknown (HELO [10.255.12.109]) ([10.255.12.109])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2011 07:18:37 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1305535028.3424.14.camel@rex>
References: <cover.1305415455.git.tom.zanussi@intel.com>
	<92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
	<4DCF53FC.9060109@intel.com>  <1305436392.21191.135.camel@elmorro>
	<1305535028.3424.14.camel@rex>
Date: Mon, 16 May 2011 09:17:46 -0500
Message-ID: <1305555466.21191.227.camel@elmorro>
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
X-List-Received-Date: Mon, 16 May 2011 14:18:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-05-16 at 01:37 -0700, Richard Purdie wrote:
> On Sun, 2011-05-15 at 00:13 -0500, Tom Zanussi wrote:
> > On Sat, 2011-05-14 at 21:18 -0700, Wold, Saul wrote:
> > > On 05/14/2011 08:36 PM, Tom Zanussi wrote:
> > > > From: Tom Zanussi<tom.zanussi@intel.com>
> > > >
> > > > PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
> > > > include following it, preventing the atom BASE_PACKAGE_ARCH from being
> > > > included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
> > > > Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
> > > > file and allow the values in tune-atom to be used as intended.
> > > >
> > > I think we may still want to change the tune-atom PACKAGE_EXTRA_ARCHS to ?=.
> > > 
> > 
> > Yeah, I'll change that along with a couple other changes to that file,
> > such as switching -march=core2 to -march=atom, soon...
> 
> Does that actually make any difference to gcc? It never used to but I'm
> wondering if anything has changed?

I don't know yet, which is why I didn't just make the change
straightaway - it would need some benchmarking first, at least.

I would be kind of surprised though if it didn't have some effect -
otherwise why would it exist at all?  It sounds like you've tested this
before and it didn't make any difference - how did you test, and do you
have any benchmarking suggestions that would help decide one way or the
other?

Thanks,

Tom

> 
> Cheers,
> 
> Richard
> 



