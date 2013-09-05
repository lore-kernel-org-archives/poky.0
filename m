Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9871E01554
	for <poky@yoctoproject.org>; Thu,  5 Sep 2013 06:04:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 05 Sep 2013 06:04:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,847,1371106800"; d="scan'208";a="391471121"
Received: from unknown (HELO [10.255.14.130]) ([10.255.14.130])
	by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2013 06:04:22 -0700
Message-ID: <1378386260.13564.8.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 05 Sep 2013 08:04:20 -0500
In-Reply-To: <CAJTo0LY-oi+tQy7rs84axy4R71Y4j=HtEgXALN20aVdATwzVdg@mail.gmail.com>
References: <cover.1378339881.git.dvhart@linux.intel.com>
	<4562a00806c5a6573b5aa650764ad12bc93edda7.1378339881.git.dvhart@linux.intel.com>
	<CAJTo0LY-oi+tQy7rs84axy4R71Y4j=HtEgXALN20aVdATwzVdg@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>, "Bodke,
	Kishore K" <kishore.k.bodke@intel.com>,
	OE-core <openembedded-core@lists.openembedded.org>, "Seow,
	Chen Yong" <chen.yong.seow@intel.com>, Poky <poky@yoctoproject.org>
Subject: Re: [PATCH 3/4] xf86-video-mga: Pull in Matrox MGA support from meta-intel
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Sep 2013 13:04:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-09-05 at 10:57 +0100, Burton, Ross wrote:
> On 5 September 2013 01:18, Darren Hart <dvhart@linux.intel.com> wrote:
> > In support of the more generic x86 BSPs, pull in the Matrox driver
> > recipe from meta-intel.
> 
> What machine is this for in particular?  In discussion with Nitin
> about MGA a few weeks back the conclusion was that the vesa driver
> should be sufficient.  As far as I'm aware the reference platforms
> don't ship with MGA hardware so it's up to the owner of the platform
> to install whatever they have to hand (mga, nvidia, ATI, etc), or am I
> wrong about that?
> 

It's my understanding that some of these server-type systems like Romley
and Crystal Forest have on-chip graphics disabled and ship with ancient
MGA graphics, which apparently we have a cheap source of chips for...

Probably vesa would work for these systems, cc'ing those in the know...

Tom

> > Remove the checkfile patch from Ross as this is now handled adequately
> > with the configure prepend hack which assumes success for any checkfile
> > calls.
> 
> Assuming success in an distro where opengl isn't enabled will result
> in the driver believing that DRI is enabled when it isn't, so expect
> to see build failures from this.
> 
> Ross



