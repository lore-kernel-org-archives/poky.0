Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F2FE0027E
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 11:22:38 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Oct 2012 11:22:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,555,1344236400"; d="scan'208";a="201979318"
Received: from unknown (HELO helios.localnet) ([10.252.122.50])
	by azsmga001.ch.intel.com with ESMTP; 08 Oct 2012 11:22:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Date: Mon, 08 Oct 2012 19:22:21 +0100
Message-ID: <4966710.FLmFsZHAgP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <5073101D.9080204@r-finger.com>
References: <5072FBB8.9060703@mlbassoc.com> <5797264.jLXkT5xyjF@helios>
	<5073101D.9080204@r-finger.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Files missing from package
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
X-List-Received-Date: Mon, 08 Oct 2012 18:35:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 08 October 2012 18:40:45 Tomas Frydrych wrote:
> On 08/10/12 17:24, Paul Eggleton wrote:
> > Since ${sysconfdir} is /etc by default and ${sysconfdir} is in the default
> > value of FILES_${PN}, and your additional package is appended to PACKAGES,
> > I suspect you'll find the file is being picked up by the main package
> > first. You need to use =+ instead of += so that the some-tool-tools
> > package is prepended to PACKAGES and thus gets the file before the main
> > package.
> 
> Probably worth noting that using =+ with PACKAGES can have some
> undesirable side effects. For example, if the recipe in question
> generates packages dynamically, e.g., for plugins, the first package in
> the PACKAGES list will be considered the 'main' package, and the dynamic
> packages will RDEPEND on it. If you modify PACKAGES in such a recipe
> using the =+, this will result in broken dependency chain without any
> obvious signs something is not right. I think it's much better to
> explicitly specify what should go into the main package than using =+ to
> work around the unsuitable main package default.

If we're using just the first item in PACKAGES for anything anywhere then that 
is wrong and we should fix it. I would be surprised if we were still doing that 
(other than the old fallback code in update-rc.d.bbclass that is probably 
never hit) since the first item in PACKAGES hasn't been ${PN} for some time now 
- in fact it's currently the last item if you look at the default value of 
PACKAGES in conf/bitbake.conf in master.

In master and the upcoming release we do have PACKAGE_BEFORE_PN, which may be 
more appropriate for adding packages such as this one.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

