Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE766E0127C
	for <poky@yoctoproject.org>; Wed, 21 Nov 2012 09:48:28 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Nov 2012 09:44:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,293,1352102400"; d="scan'208";a="252486663"
Received: from unknown (HELO helios.localnet) ([10.252.122.187])
	by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2012 09:44:09 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 21 Nov 2012 17:44:08 +0000
Message-ID: <4719811.PUxhVNNcLA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <50AD0F0F.4010507@linux.intel.com>
References: <1353328788-31664-1-git-send-email-constantinx.musca@intel.com>
	<50ACFD54.4090808@intel.com> <50AD0F0F.4010507@linux.intel.com>
MIME-Version: 1.0
Cc: Richard Purdie <richard.purdie@intel.com>, poky@yoctoproject.org,
	Constantin Musca <constantinx.musca@intel.com>
Subject: Re: [PATCH] poky-tiny.conf: blacklist inappropriate image options
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
X-List-Received-Date: Wed, 21 Nov 2012 17:48:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 21 November 2012 09:27:43 Darren Hart wrote:
> On 11/21/2012 08:12 AM, Constantin Musca wrote:
> > On 11/21/2012 12:19 AM, Darren Hart wrote:
> >> Hi Constantin,
> >> 
> >> On 11/19/2012 04:39 AM, Constantin Musca wrote:
> >>> Blacklist all images that aren't core-image-minimal-*
> >> 
> >> This needs a description as to what the problem is and why this change
> >> is needed. Note that the bug is here for reference, but cannot be relied
> >> upon to provide context. That is what the git log is for.
> >> 
> >> I believe the core-image-rt image should also build, but I haven't tried
> >> recently. trace-cmd might break that.
> >> 
> >> What sort of error is the user presented with when trying to build one
> >> of the blacklisted images?
> >> 
> >> As I've stated in the bug, I'd be happier with an image whitelist than a
> >> blacklist as it is hopelessly unmaintainable. Have we explored the
> >> whitelist approach?
> >> 
> >> Finally, please remember to CC the maintainer of the files you are
> >> modifying when that information is obvious. It is also good practice to
> >> CC the active bugzilla commenters when available.
> >> 
> >> Thanks,
> >> 
> >> Darren
> >> 
> >>> [YOCTO #2565]
> >>> 
> >>> Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
> >>> ---
> >>> 
> >>>   meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
> >>>   1 file changed, 17 insertions(+)
> >>> 
> >>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf
> >>> b/meta-yocto/conf/distro/poky-tiny.conf index d40748e..121534e 100644
> >>> --- a/meta-yocto/conf/distro/poky-tiny.conf
> >>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> >>> @@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
> >>> 
> >>>   # will build perl in case this package is installed. Since we don't
> >>>   care about # this script for the purposes of tiny, remove the
> >>>   dependency from here. RDEPENDS_${PN}-mtrace_pn-eglibc = ""
> >>> 
> >>> +
> >>> +INHERIT_DISTRO += "blacklist"
> >>> +PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-gtk-directfb] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
> >>> +PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
> > 
> > Hi Darren,
> > 
> > I will come back with build errors for incompatible images as soon as I
> > test all the images using the poky-tiny distro. Do you agree with the
> > following whitelist approach?
> > - create poky-tiny.bbclass in meta-yocto which will contain an anonymous
> > python function for checking whether a package is a whitelisted image
> > - the whitelist variable (configurable from poky-tiny.conf) will be
> > called TINY_IMAGE_WHITELIST
> 
> I'd like to hear from Richard or Paul regarding the whitelist approach.
> I don't think we should resort to something that is tiny-specific (such
> as TINY_IMAGE_WHITELIST). This is something that should applicable to
> any DISTRO, just as the PNBLACKLIST is.

I can see what you're suggesting with the use of a whitelist here, but my 
thinking when I originally suggested the use of the blacklist was that it is a 
case of us knowing that certain recipes (and not just image recipes) won't 
build properly. If people add their own image recipes, as long as we also 
blacklist the recipes that won't build themselves (e.g. diffutils) then that 
case should be taken care of as well since they will still get a reasonable 
error upon building the image. I probably wasn't clear enough about this in 
the original discussion though.

If rather than us blacklisting each recipe, Hob was able to filter out recipes 
that depend on unbuildable recipes (because they are blacklisted, assuming we 
can do that practically) then would this alleviate some of your concern as to 
the maintainability of this solution?

> The hard part, I think, is we only want it to apply to images, as we cannot
> possibly list every package. Unfortunately, as far as I know, bitbake
> doesn't really distinguish between package recipes and image recipes,
> and nothing dictates that image recipes have a particular naming scheme.

FWIW, you can use bb.data.inherits_class() from within python code to check if 
the recipe inherits from image.bbclass, so this shouldn't be an issue if we 
need to have this check.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

