Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BA8B4C81234
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 00:09:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 22:09:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="582008164"
Received: from unknown (HELO [10.255.13.241]) ([10.255.13.241])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 22:09:03 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CFFC5DB.8060009@linux.intel.com>
References: <cover.1291703954.git.tom.zanussi@intel.com>
	<4CFFC5DB.8060009@linux.intel.com>
Date: Thu, 09 Dec 2010 00:09:05 -0600
Message-ID: <1291874945.18502.109.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] Add meta-crownbay
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
X-List-Received-Date: Thu, 09 Dec 2010 06:09:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 09:52 -0800, Darren Hart wrote:
> On 12/06/2010 10:39 PM, Tom Zanussi wrote:
> > Adds a new layer for Tunnel Creek/Topcliff systems.
> >
> 
> I'm concerned about the long-term sustainability of this approach of 
> adding a new layer for each "platform". Just Intel platforms alone will 
> make 'ls meta-*' unwieldy in fairly short order, add to that the other 
> architectures and we're looking at a lot of layers.
> 
> We support a lot of platforms under the existing machine types. Is the 
> primary reason for this being a layer to accomodate the EMGD bits? if 
> so, are those specific to crownbay, or can they somehow be shared across 
> multiple platforms?
> 

Yes, like meta-emenlow, it's a layer mainly because of the special needs
of the graphics hardware, and yes, there may be other platforms that
could share the EMGD 1.5 bits - my assumption would be that any common
factoring for sharing would happen when a second user came along...

But anyway, you hit on a good point, that simply adding new meta-<bsp>
layers to the top-level could become unwieldy after awhile.  It seems to
me that that problem could be easily solved by arranging them in a
directory hierarchy, arranged by TARGET_ARCH, e.g.

/meta-bsp/i586/meta-emenlow
              /meta-crownbay

(the meta- in front of emenlow, crownbay is redundant, but there just to
make it clear that the same layers are just being moved around).

And rather than moving away from layers, why not go even further and
take the existing machine confs, put each into its own layer too:

/meta-bsp/i586/meta-emenlow
              /meta-crownbay
              /atom-pc
              ...

/meta-bsp/arm/beagleboard
             /cm-x270
             /depicture
             ...

/meta-bsp/arm/routerstationpro
             ...

/meta-bsp/arm/mpc8315e-rdb
             ...

Each directory (layer) would at least have its machine.conf and its
associate formfactor, which is currently also in a separate location, so
it wouldn't be just a directory containing a single file.  This would
also be a nice place for a board-specific README, so we could get rid of
things like a global README.hardware and put the README info in that
file into the directory for the specific board.

It seem to me something like this would be a nice unification of all the
current 'BSP' support in poky, and would also get rid of the confusion I
know people have when it comes to deciding whether to use a layer or
just add a new machine conf - everything would be a layer so there's
nothing to think about.  And you'd see all the BSPs 'at-a-glance' -
everything would be located in the same place under a single /bsp (or
whatever sounds right) location.

Another advantage of this scheme would be that since each BSP would be
implemented as its own layer within its own directory structure, each
layer could be easily packaged as a stand-alone tarball or git repo that
we could then make available here: 

http://www.yoctoproject.org/download/board-support-package-bsp-downloads

The Black Sand BSP that's the example there currently can't be
downloaded as a separate tarball or git repo - you have to download the
entire yocto release that contains the Black Sand BSP to get it.  Some
developers might not want to start with a new release, they're already
using their own modified version, they just want to download support for
a specific BSP.  To do that for a current non-layer machine, they'd have
to download the release containing the new machine support, and move the
applicable files from the release to their own working version.  Having
it packaged as a modular unit would make things much easier. (BTW all
the text on that page about how to set up the Black Sand once it's build
would fit nicely into the atom-pc layer's README).

I think this scheme also more closely matches what Bruce has been trying
to do for the kernel...

But anyway, I'm thinking that this plus making the internal structure of
the current BSPs match what's in the BSP Developer's Guide (either by
changing the internal structure of the existing layers (and following it
for the new/converted ones), or changing the doc to how we decide it
should be) would be a good (and necessary) step towards making BSP
development for Yocto relatively painless and less confusing.

I know this is probably exactly the opposite of what you were thinking,
but it seems to me to have a lot of advantages, and I don't see much
downside, unless I'm missing something.  What do you think?

Tom  

> For instance, could the xf86 patches be appended to the existing xf86 
> recipe using the SRC_URI_crownbay mechanism?
> 
> --
> Darren
> 
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >    Branch: tzanussi/crownbay
> >    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/crownbay
> >
> > Thanks,
> >      Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >
> >
> > Tom Zanussi (1):
> >    meta-crownbay: new layer for E6xx/EG20T systems
> >
> >   meta-crownbay/COPYING.MIT                          |   17 +++
> >   meta-crownbay/README.before.building               |  112 ++++++++++++++++++++
> >   meta-crownbay/conf/layer.conf                      |   10 ++
> >   meta-crownbay/conf/machine/crownbay.conf           |   46 ++++++++
> >   .../formfactor/formfactor/crownbay/machconfig      |    3 +
> >   .../recipes/formfactor/formfactor_0.0.bbappend     |    3 +
> >   .../recipes/linux/linux-yocto_git.bbappend         |    3 +
> >   .../xserver-xf86-config/crownbay/xorg.conf         |   47 ++++++++
> >   .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
> >   .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 ++++++++++++++++
> >   .../xserver-xf86-emgd/crosscompile.patch           |   19 ++++
> >   .../fix_open_max_preprocessor_error.patch          |   13 +++
> >   .../xserver-xf86-emgd/macro_tweak.patch            |   18 +++
> >   .../xorg-xserver/xserver-xf86-emgd/nodolt.patch    |   12 ++
> >   .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 +++++
> >   15 files changed, 421 insertions(+), 0 deletions(-)
> >   create mode 100644 meta-crownbay/COPYING.MIT
> >   create mode 100755 meta-crownbay/README.before.building
> >   create mode 100644 meta-crownbay/conf/layer.conf
> >   create mode 100644 meta-crownbay/conf/machine/crownbay.conf
> >   create mode 100644 meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
> >   create mode 100644 meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
> >   create mode 100644 meta-crownbay/recipes/linux/linux-yocto_git.bbappend
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
> >   create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 
> 



