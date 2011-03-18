Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6D954C800B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 10:06:01 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Mar 2011 08:05:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="898687704"
Received: from unknown (HELO [10.255.12.171]) ([10.255.12.171])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 08:05:56 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTikFB9w+x9XNk407hf8MEVum0E4bqxPT1mGYmp6G@mail.gmail.com>
References: <1bdc18$jtdv00@fmsmga002.fm.intel.com>
	<AANLkTikFB9w+x9XNk407hf8MEVum0E4bqxPT1mGYmp6G@mail.gmail.com>
Date: Fri, 18 Mar 2011 10:05:58 -0500
Message-ID: <1300460758.8530.4.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [KERNEL][linux-yocto][PATCH 0/1] Fix for bug 888
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
X-List-Received-Date: Fri, 18 Mar 2011 15:06:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 07:05 -0700, Bruce Ashfield wrote:
> On Thu, Mar 17, 2011 at 2:45 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> >
> > Fixes [BUGID #888].  Please pull.
> >
> > Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
> >  Branch: tzanussi/crownbay-bugfix-888
> >  Browse: http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/crownbay-bugfix-888
> 
> I'm back to location in the world with a working access to the
> internet :)
> 
> These look good to me.
> 
> What's the timeline for getting this into the tree? I can merge this in about
> 10 hours from now, and have it in for the weekend.
> 

Hi Bruce,

The timeline looks to be shorter than that, but no problem, I'm just
going to resubmit them using the good old SRC_URI method, so Richard can
pull them in...

Thanks,

Tom

> Cheers,
> 
> Bruce
> 
> >
> > Tom Zanussi (1):
> >  crownbay: update a handful of EMGD licenses
> >
> >  drivers/gpu/drm/emgd/emgd/pal/Makefile.include     |   39 ++--
> >  .../emgd/pvr/services4/system/common/sysconfig.c   |  287 ++++++++++----------
> >  .../drm/emgd/pvr/services4/system/plb/sysconfig.c  |   64 +++---
> >  .../drm/emgd/pvr/services4/system/tnc/sysconfig.c  |   64 +++---
> >  .../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h |   48 ++--
> >  5 files changed, 246 insertions(+), 256 deletions(-)
> >
> >
> 
> 
> 



