Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2CD144C80BD4
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:35:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2011 02:35:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="699134375"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2011 02:35:50 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PgEFd-0002vy-Dj; Fri, 21 Jan 2011 18:29:53 +0800
Date: Fri, 21 Jan 2011 18:29:53 +0800
From: Qing He <qing.he@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Message-ID: <20110121102953.GG9774@qhe2-db>
References: <cover.1295515302.git.qing.he@intel.com>
	<85f7ea2efeca4cc2dcbfeeb6adbfe29aa584bf64.1295515302.git.qing.he@intel.com>
	<4D395D77.1040301@intel.com>
MIME-Version: 1.0
In-Reply-To: <4D395D77.1040301@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 4/7] shared-mime-info: upgrade to version 0.90
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
X-List-Received-Date: Fri, 21 Jan 2011 10:35:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, 2011-01-21 at 18:18 +0800, Wold, Saul wrote:
> On 01/20/2011 01:24 AM, Qing He wrote:
> > from 0.80
> >
> > The patch is to fix the build for 0.90 and is expected to be removed
> > in the next version
> >
> > Signed-off-by: Qing He<qing.he@intel.com>
> > ---
> >   .../conf/distro/include/distro_tracking_fields.inc |    4 +-
> >   .../shared-mime-info/fix-parallel-build.patch      |   21 ++++++++++++++++++++
> >   .../shared-mime-info/shared-mime-info_0.80.bb      |    5 ----
> >   .../shared-mime-info/shared-mime-info_0.90.bb      |    7 ++++++
> >   4 files changed, 30 insertions(+), 7 deletions(-)
> >   create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
> >   delete mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
> >   create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
> >
> Qing,
> 
> This patch is failing, I am doing a basic x86 build on a x86-64 machine.
> 

Saul,
	Please drop this patch.

	I met random errors when upgrading this recipe. Sometimes it
passes build, sometimes it fails at binutils, sometimes it fails to find
some .Po file, in short, it's random. After searching the bugzilla, it
seems the patch I included, "fix-parallel-build.patch" fixes the
problem, I did try it for 2~3 builds and met no errors.

	Looks the patch in the bugzilla isn't enough for the problem,
I'll further investigate.

Thanks,
Qing

