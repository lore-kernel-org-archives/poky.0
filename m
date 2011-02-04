Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2923B4C800A4
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 22:21:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2011 20:21:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,424,1291622400"; d="scan'208";a="599380641"
Received: from unknown (HELO [10.255.14.151]) ([10.255.14.151])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2011 20:21:21 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTikTjEjFUdxLQMMwGp2Yvb131ccWt9TqMCBapyAy@mail.gmail.com>
References: <b9dded$hrjbng@orsmga002.jf.intel.com>
	<AANLkTikTjEjFUdxLQMMwGp2Yvb131ccWt9TqMCBapyAy@mail.gmail.com>
Date: Thu, 03 Feb 2011 22:21:18 -0600
Message-ID: <1296793278.2013.12.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] sugarbay: update kernel SRCREVs
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
X-List-Received-Date: Fri, 04 Feb 2011 04:21:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-03 at 19:51 -0800, Bruce Ashfield wrote:
> On Thu, Feb 3, 2011 at 10:38 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> >
> > Update kernel SRCREVs to match linux-yocto.
> >
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  meta-sugarbay/conf/machine/sugarbay.conf |    4 ++--
> >  1 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
> > index 4d58d05..626131d 100644
> > --- a/meta-sugarbay/conf/machine/sugarbay.conf
> > +++ b/meta-sugarbay/conf/machine/sugarbay.conf
> > @@ -53,5 +53,5 @@ PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
> >
> >  PREFERRED_VERSION_grub ?= "1.98"
> >
> > -#SRCREV_machine_pn-linux-yocto_sugarbay ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
> > -#SRCREV_meta_pn-linux-yocto_sugarbay ?= "39b796c508a80dcab6b4511b46183d4dfee6284d"
> > +SRCREV_machine_pn-linux-yocto_sugarbay ?= "41ec30ddc42912fec133a533b924e9c56ecda8f9"
> > +SRCREV_meta_pn-linux-yocto_sugarbay ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
> 
> These will jump again shortly, I'm about to send a merge that includes
> lttng support. We still need to come to resolution on how I can have
> a global copy AND where we can keep SRCREVs in layers to make
> things standalone .. that way I could update these for you when CVEs
> and dot updates start rolling in.
> 

Yeah, that would be nice - it's kind of a pain to have to keep updating
these...

Tom

> I'll kick that discussion up again.
> 
> Cheers,
> 
> Bruce
> 
> > --
> > 1.7.0.4
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> 
> 
> 



