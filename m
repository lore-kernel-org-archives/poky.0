Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A76EC4C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 21:30:05 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 19:30:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,355,1291622400"; d="scan'208";a="377748347"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 19:30:04 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pg7bc-0002f1-3e; Fri, 21 Jan 2011 11:24:08 +0800
Date: Fri, 21 Jan 2011 11:24:08 +0800
From: Qing He <qing.he@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Message-ID: <20110121032408.GC9774@qhe2-db>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
MIME-Version: 1.0
In-Reply-To: <20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Fri, 21 Jan 2011 03:30:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 2011-01-20 at 03:51 +0800, Koen Kooi wrote:
> Tangent: have you considered switching to util-linux-ng?

Koen,
	It's already util-linux-ng, the original util-linux stalled at
2.13~pre7, and now util-linux-ng is renamed back to util-linux. You can
see that util-linux and util-linux-ng directories are identical on
kernel.org

Thanks,
Qing

> 
> Op 19 jan 2011, om 17:55 heeft Paul Eggleton het volgende geschreven:
> 
> > Split libuuid and libblkid from util-linux into separate runtime packages.
> > Slightly reduces the overall footprint of other packages that depend on these 
> > libraries.
> > 
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >  Branch: paule/util-linux-libsplit
> >  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/util-linux-libsplit
> > 
> > Thanks,
> >    Paul Eggleton <paul.eggleton@linux.intel.com>
> > ---
> > 
> > 
> > Paul Eggleton (3):
> >  util-linux: split out libuuid and libblkid into separate packages
> >  gst-plugins-base: add util-linux to DEPENDS
> >  Bump PR on recipes that depend on util-linux
> > 
> > .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
> > meta/recipes-core/util-linux/util-linux.inc        |    6 ++++--
> > meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    2 +-
> > .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
> > meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb       |    2 +-
> > meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    2 +-
> > .../gstreamer/gst-plugins-base_0.10.31.bb          |    4 ++--
> > 7 files changed, 11 insertions(+), 9 deletions(-)
> > 
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

