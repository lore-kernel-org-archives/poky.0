Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5949CE00533
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 06:24:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2012 06:24:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,265,1352102400"; d="scan'208";a="220659263"
Received: from unknown (HELO helios.localnet) ([10.252.122.187])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2012 06:24:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 16 Nov 2012 14:24:39 +0000
Message-ID: <7871104.EdYNj4Ce18@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <50A649D6.9030301@mlbassoc.com>
References: <50A649D6.9030301@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Wacky dependencies
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
X-List-Received-Date: Fri, 16 Nov 2012 14:24:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 16 November 2012 07:12:38 Gary Thomas wrote:
> I wanted to run an experiment with X11 vs GTK-directfb on my platform.
> I built a complete image with X11 in DISTRO_FEATURES.
> When I changed DISTRO_FEATURES to have gtk-directfb, nearly everything
> was rebuilt!  Why on earth do GCC & EGLIBC have to be rebuilt??  This
> doesn't seem logical at all to me.

The build system is not able to determine whether a variable within a recipe 
depends on a single value within DISTRO_FEATURES, it only knows that it looks 
at the variable; thus any change to DISTRO_FEATURES will change the hash of 
all recipes that read DISTRO_FEATURES.

I'd like to fix this but given that we check if DISTRO_FEATURES and other list 
variables like it contain values using inline python code i.e. 
${@base_contains(...)} this seems like it would be tricky to implement in a 
reliable way.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

