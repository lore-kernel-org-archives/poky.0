Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE00DE006C7
	for <poky@yoctoproject.org>; Fri, 20 Apr 2012 09:38:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Apr 2012 09:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="144103583"
Received: from unknown (HELO helios.localnet) ([10.252.120.122])
	by fmsmga001.fm.intel.com with ESMTP; 20 Apr 2012 09:38:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>, poky@yoctoproject.org
Date: Fri, 20 Apr 2012 17:38:11 +0100
Message-ID: <74169790.jigKjBi9LZ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <CAC+thW26psx39QTFBUqXexPkxao8hk_D_nmrMhOis5+0Gdo3YQ@mail.gmail.com>
References: <4F5B73E6.9040908@mlbassoc.com> <1856275.4JdY7aZveN@helios>
	<CAC+thW26psx39QTFBUqXexPkxao8hk_D_nmrMhOis5+0Gdo3YQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Poky doesn't play nice with meta-oe
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
X-List-Received-Date: Fri, 20 Apr 2012 16:38:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 20 April 2012 18:01:54 Andrea Galbusera wrote:
> On Thu, Mar 15, 2012 at 4:24 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > That's not an unreasonable approach for now. However we do really want to
> > tidy up meta-oe such that it doesn't do surprising things when you enable
> > it. Hopefully we will get a chance to make progress on this over the next
> > few months.
> 
> Before starting to mess up things I'm asking if there is any relevant
> improvement on this side? I need a few recipes that are in meta-oe but
> not in poky/yocto (python-twisted, gpsd and a few more). Enabling
> meta-oe over my current edison environment would be nice to avoid
> manually importing those recipes with dependencies. Maybe master
> branch and upcoming 1.2 are expected to work better on this side?

No major progress as yet, I've been busy with things leading up to the 1.2 
release; however once that's out the door there should be more time available 
for improving meta-oe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

