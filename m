Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7786C4C80132
	for <poky@yoctoproject.org>; Sun, 15 May 2011 00:13:54 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 May 2011 22:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; d="scan'208";a="436271131"
Received: from unknown (HELO [10.255.12.105]) ([10.255.12.105])
	by azsmga001.ch.intel.com with ESMTP; 14 May 2011 22:13:53 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
In-Reply-To: <4DCF53FC.9060109@intel.com>
References: <cover.1305415455.git.tom.zanussi@intel.com>
	<92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
	<4DCF53FC.9060109@intel.com>
Date: Sun, 15 May 2011 00:13:12 -0500
Message-ID: <1305436392.21191.135.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Sun, 15 May 2011 05:13:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-05-14 at 21:18 -0700, Wold, Saul wrote:
> On 05/14/2011 08:36 PM, Tom Zanussi wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
> > include following it, preventing the atom BASE_PACKAGE_ARCH from being
> > included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
> > Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
> > file and allow the values in tune-atom to be used as intended.
> >
> I think we may still want to change the tune-atom PACKAGE_EXTRA_ARCHS to ?=.
> 

Yeah, I'll change that along with a couple other changes to that file,
such as switching -march=core2 to -march=atom, soon...

Tom

> > Fixes [BUGID #986].
> >
> Should be [YOCTO #986]
> 
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >   meta-crownbay/conf/machine/crownbay.conf |    3 ---
> >   1 files changed, 0 insertions(+), 3 deletions(-)
> >
> > diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> > index b8f107b..bc09ada 100644
> > --- a/meta-crownbay/conf/machine/crownbay.conf
> > +++ b/meta-crownbay/conf/machine/crownbay.conf
> > @@ -5,12 +5,9 @@
> >   # i.e. E660 + EG20T
> >
> >   TARGET_ARCH = "i586"
> > -PACKAGE_EXTRA_ARCHS = "x86 atom"
> >
> >   include conf/machine/include/tune-atom.inc
> >
> > -BASE_PACKAGE_ARCH="atom"
> > -
> >   MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> >                       acpi serial usbgadget"
> >
> 



