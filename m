Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FA924C800B3
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 08:25:43 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Jun 2011 06:25:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,443,1304319600"; d="scan'208";a="20296695"
Received: from unknown (HELO [10.255.13.88]) ([10.255.13.88])
	by azsmga001.ch.intel.com with ESMTP; 29 Jun 2011 06:25:42 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6A167F0C71A@shsmsx502.ccr.corp.intel.com>
References: <cover.1308553185.git.dexuan.cui@intel.com>
	<1865303E0DED764181A9D882DEF65FB6A167F0C71A@shsmsx502.ccr.corp.intel.com>
Date: Wed, 29 Jun 2011 08:25:31 -0500
Message-ID: <1309353931.2297.112.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 0/1][meta-intel] emenlow: fix some .bbappend files' names: poky -> core, etc
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
X-List-Received-Date: Wed, 29 Jun 2011 13:25:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-29 at 05:42 -0700, Cui, Dexuan wrote:
> Cui, Dexuan wrote:
> > Please review the patch.
> > 
> > The following changes since commit
> > 76d1178ba1a43cf6457c89717134aeb9f1275fae: 
> > 
> >   meta-intel: fix formfactor bbappends to use FILESEXTRAPATHS_prepend
> > (2011-06-15 11:43:04 -0500) 
> > 
> > are available in the git repository at:
> >   git://git.pokylinux.org/poky-contrib dcui/meta-intel-emenlow
> >  
> > http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/meta-intel-emenlow
> > 
> > Dexuan Cui (1):
> >   emenlow: fix some .bbappend files' name: poky -> core, etc.
> > 
> >  ...k-gmae.bbappend => task-core-sdk-gmae.bbappend} |    0
> >  ... task-core-standalone-gmae-sdk-target.bbappend} |    0
> >  ..._4.7.2.bbappend => qt4-x11-free_4.7.3.bbappend} |    0
> >  3 files changed, 0 insertions(+), 0 deletions(-)
> >  rename meta-emenlow/recipes-gnome/tasks/{task-poky-sdk-gmae.bbappend
> >  => task-core-sdk-gmae.bbappend} (100%) rename
> >  meta-emenlow/recipes-gnome/tasks/{task-poky-standalone-gmae-sdk-target.bbappend
> > => task-core-standalone-gmae-sdk-target.bbappend} (100%) rename
> > meta-emenlow/recipes-qt/qt4/{qt4-x11-free_4.7.2.bbappend =>
> > qt4-x11-free_4.7.3.bbappend} (100%)   
> 
> Looks the patch was neglected somehow? :-)
> 

Sorry, was offline wrt this for bit...

Pulled into meta-intel/master, thanks!

Tom

> Thanks,
> -- Dexuan



