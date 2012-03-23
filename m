Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 578FBE013DF
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 21:32:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2012 21:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="143705079"
Received: from unknown (HELO [10.255.15.202]) ([10.255.15.202])
	by fmsmga002.fm.intel.com with ESMTP; 22 Mar 2012 21:32:51 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F6BF3B8.20502@linux.intel.com>
References: <cover.1332466139.git.edwin.zhai@intel.com>
	<99b3a94a7298427e306aaced77694bdc047d30b2.1332466139.git.edwin.zhai@intel.com>
	<4F6BF3B8.20502@linux.intel.com>
Date: Thu, 22 Mar 2012 23:32:54 -0500
Message-ID: <1332477174.2310.3.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] n450: fix wrong video driver
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
X-List-Received-Date: Fri, 23 Mar 2012 04:32:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-22 at 20:53 -0700, Darren Hart wrote:
> 
> On 03/22/2012 06:36 PM, edwin.zhai@intel.com wrote:
> > From: Zhai Edwin <edwin.zhai@intel.com>
> > 
> > n450 should use i915 rather than i965.
> > 
> > [YOCTO #1840] fixed
> > 
> > Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
> > ---
> >  conf/machine/include/ia32-base.inc       |    4 ++++
> >  meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
> >  2 files changed, 5 insertions(+), 1 deletions(-)
> > 
> > diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> > index 7da53f6..9b2ef5a 100644
> > --- a/conf/machine/include/ia32-base.inc
> > +++ b/conf/machine/include/ia32-base.inc
> > @@ -49,6 +49,10 @@ XSERVER_IA32_EXT = "xserver-xorg-extension-dri \
> >             "
> >  
> >  XSERVER_IA32_I915 = "xf86-video-intel \
> > +           mesa-dri-driver-i915 \
> > +           "
> > +
> > +XSERVER_IA32_I965 = "xf86-video-intel \
> >             mesa-dri-driver-i965 \
> >             "
> 
> Looks good.
> 
> > diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
> > index 776089e..a44f918 100644
> > --- a/meta-sugarbay/conf/machine/sugarbay.conf
> > +++ b/meta-sugarbay/conf/machine/sugarbay.conf
> > @@ -11,5 +11,5 @@ require conf/machine/include/ia32-base.inc
> >  
> >  XSERVER ?= "${XSERVER_IA32_BASE} \
> >             ${XSERVER_IA32_EXT} \
> > -           ${XSERVER_IA32_I915} \
> > +           ${XSERVER_IA32_I965} \
> >             "
> 
> Tom, this one is your call - I presume this is right? Will leave to you
> to pull in, I'm good with the common i915 definition.
> 

Yeah, there was a typo in this cleanup.

/me again learns not to touch anyone else's BSPs.  ;-(

Tom

> Thanks,
> 



