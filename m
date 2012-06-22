Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B85E01426
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 02:44:15 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 22 Jun 2012 02:44:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114981543"
Received: from unknown (HELO helios.localnet) ([10.252.120.123])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Jun 2012 02:44:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 22 Jun 2012 10:44:12 +0100
Message-ID: <3380572.szjuG0GuWa@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FE253E8.7090901@mlbassoc.com>
References: <4FE220B8.2080903@mlbassoc.com>
	<CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
	<4FE253E8.7090901@mlbassoc.com>
MIME-Version: 1.0
Subject: Re: New warning
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
X-List-Received-Date: Fri, 22 Jun 2012 09:44:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 20 June 2012 16:51:20 Gary Thomas wrote:
> On 2012-06-20 15:55, Khem Raj wrote:
> > On Wed, Jun 20, 2012 at 12:12 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
> >> This happens when I have two intertwined layers - I have a recipe in
> >> layer1
> >> which references a file satisfied only by layer2.
> > 
> > why not move the reference from layer1 to layer2 as well ?
> 
> Layer1 holds the recipe and I find it more informative to have the
> reference there - that way the .bbappends in layer2 _must_ define
> it and the dependency is obvious since the recipe will fail without
> this file being specified.
>
> My use case is layer1 has a generic kernel recipe and layer2 (BSP)
> has a platform specific patch for that kernel.  I have other use
> cases, but this is indicative of how I view the layering.

Well, that's not unreasonable I suppose. However I've just tested a trivial 
example of cross-layer file references here and it does not produce a warning. 
In any case, the code that does the checksums uses the same code as do_fetch 
when it locates the files, so I'm a bit puzzled as to how it would not be able 
to find the file in the first instance and it would when it came to fetch time.

FWIW, Andrea and I figured out that his reported case was caused by some 
recipes that only provided a file for specific machines which did not include 
the current MACHINE, but the recipes were not marked with COMPATIBLE_MACHINE, 
so the warning there was legitimate. Gary, is it possible something similar is 
happening for your layer structure? If not, can you provide some more 
information that might help me reproduce the warning?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

