Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ADF934C80050
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 12:29:12 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Apr 2011 10:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="632165770"
Received: from vorpal.jf.intel.com (HELO [10.7.199.145]) ([10.7.199.145])
	by orsmga002.jf.intel.com with ESMTP; 21 Apr 2011 10:29:12 -0700
From: Joshua Lock <josh@linux.intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
In-Reply-To: <4DAFC9D3.2040206@linux.intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
	<1303312153.23006.5.camel@doubt>
	<D5AB6E638E5A3E4B8F4406B113A5A19A5081C5CC@shsmsx501.ccr.corp.intel.com>
	<4DAFC9D3.2040206@linux.intel.com>
Date: Thu, 21 Apr 2011 10:25:09 -0700
Message-ID: <1303406709.9960.45.camel@vorpal>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Subject: Re: [PATCH 00/14][PULL] connectivity/multimedia recipe upgrade, Dongxiao, 2011/04/15
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
X-List-Received-Date: Thu, 21 Apr 2011 17:29:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-20 at 23:08 -0700, Saul Wold wrote:
> On 04/20/2011 10:45 PM, Xu, Dongxiao wrote:
> >> -----Original Message-----
> >> From: Darren Hart [mailto:dvhart@linux.intel.com]
> >> Sent: Wednesday, April 20, 2011 11:09 PM
> >> To: Xu, Dongxiao
> >> Cc: poky@yoctoproject.org
> >> Subject: Re: [poky] [PATCH 00/14][PULL] connectivity/multimedia recipe
> >> upgrade, Dongxiao, 2011/04/15
> >>
> >> On Fri, 2011-04-15 at 13:36 +0800, Dongxiao Xu wrote:
> >>> From: Dongxiao Xu<dongxiao.xu@intel.com>
> >>>
> >>> Hi Saul,
> >>>
> >>> This pull request upgrades some connectivity and multimedia recipes, please
> >> help to review and pull.
> >>
> >> How have these upgrades been tested? In particular, has rygel from
> >> meta-demo been shown to work using the updated libraries?
> >
> > Before sending the patch, I verified the basic video/audio player does work in poky-image-sato image on atom-pc platform. However I didn't cover rygel testings.
> >
> > Do you meet issues with rygel after my upgrade?
> >
> Dongxiao,
> 
> I think the request is for you to check the demo layer with the updates 
> you did, to ensure it does not break rygel.  I think we need to take 
> some ownership of that layer so that Darren and Tom (kernel guys) don't 
> have to maintain it.

I think that layer is as much mine as anyone else's and my desire for it
is to move all of the recipes to more appropriate layers.

Rygel, for example, is a prime candidate for Koen's new gnome layer and
many of the recipes in meta-demo are just newer versions of recipes in
oe-core that I needed to get the demo running against Bernard.

In a perfect world the meta-demo layer would only contain custom image
definitions.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Center


