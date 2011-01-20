Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F2844C810AF
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 12:38:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 10:38:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,352,1291622400"; d="scan'208";a="594906458"
Received: from unknown (HELO [10.255.14.104]) ([10.255.14.104])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2011 10:38:25 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D387ECF.5040509@linux.intel.com>
References: <1295546428.12074.243.camel@elmorro>
	<4D387ECF.5040509@linux.intel.com>
Date: Thu, 20 Jan 2011 12:38:21 -0600
Message-ID: <1295548701.12074.247.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH][2.6.34 KERNEL] wrs_meta: turn on OHCI USB config option
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
X-List-Received-Date: Thu, 20 Jan 2011 18:38:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-20 at 10:28 -0800, Darren Hart wrote:
> On 01/20/2011 10:00 AM, Tom Zanussi wrote:
> > Allow crownbay to recognize low-speed devices such as mouse and
> > keyboard.
> >
> > Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
> >    Branch: tzanussi/crownbay-usb-fix
> >    Browse:
> > http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=tzanussi/crownbay-usb-fix
> >
> > Please pull...
> >
> > Thanks,
> >      Tom Zanussi<tom.zanussi@intel.com>
> >
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >   wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    1 +
> >   1 files changed, 1 insertions(+), 0 deletions(-)
> >
> > diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> > index a516dc9..864e1dc 100644
> > --- a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> > +++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> > @@ -21,6 +21,7 @@ CONFIG_USB_EHCI_HCD=y
> >   CONFIG_PCIEPORTBUS=y
> >   CONFIG_NET=y
> >   CONFIG_USB_UHCI_HCD=y
> > +CONFIG_USB_OHCI_HCD=y
> >   CONFIG_BLK_DEV_SD=y
> >   CONFIG_CHR_DEV_SG=y
> >   CONFIG_SOUND=y
> 
> This seems like the sort of thing we should push to standard. Or do BSPs 
> like the crownbay start from an empty config?
> 

Yeah, I remember awhile back discussing that we wanted to factor the
things in the base configs out into e.g. standard, which of course would
still be a good thing to do.

But for now, I went with the existing flow and put it alongside other
similar options in that BSP...

Tom



