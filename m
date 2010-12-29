Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B6FC4C80BD8
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 09:39:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Dec 2010 07:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="872756811"
Received: from unknown (HELO [10.255.13.209]) ([10.255.13.209])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 07:39:46 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4D1AD99A.4020006@intel.com>
References: <cover.1293522033.git.tom.zanussi@intel.com>
	<c364ccadf9cb18bb017cffc198aa991f733834e8.1293522033.git.tom.zanussi@intel.com>
	<4D1AD99A.4020006@intel.com>
Date: Wed, 29 Dec 2010 09:39:00 -0600
Message-ID: <1293637140.12997.3.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 4/4] bblayers.conf.sample: remove meta-emenlow
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
X-List-Received-Date: Wed, 29 Dec 2010 15:39:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-28 at 22:47 -0800, Saul Wold wrote:
> On 12/28/2010 08:45 AM, Tom Zanussi wrote:
> > meta-emenlow has been moved to the meta-intel repo, so it shouldn't be
> > added as a default layer by bblayers.conf.  Users who want to build
> > the meta-emenlow layer can just add it to bblayers.conf as they would
> > any other layer e.g.
> >
> > BBLAYERS = " \
> >    /home/trz/yocto/meta \
> >    /home/trz/yocto/meta-intel/meta-emenlow \
> >    "
> >
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >   meta/conf/bblayers.conf.sample |    1 -
> >   1 files changed, 0 insertions(+), 1 deletions(-)
> >
> > diff --git a/meta/conf/bblayers.conf.sample b/meta/conf/bblayers.conf.sample
> > index 3c7b6e6..27e2906 100644
> > --- a/meta/conf/bblayers.conf.sample
> > +++ b/meta/conf/bblayers.conf.sample
> > @@ -5,5 +5,4 @@ LCONF_VERSION = "3"
> >   BBFILES ?= ""
> >   BBLAYERS = " \
> >     ##POKYBASE##/meta \
> > -  ##POKYBASE##/meta-emenlow \
> >     "
> Tom,
> 
> When you make a change like this, you need to increment the 
> LCONF_VERSION by one to force people to review their bblayers.conf file.
> 

Oops, yeah, missed that - will fix and send a v2...

Tom

> Please update and send a v2 of the patch
> 
> Sau!
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



