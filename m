Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 622F9E002AB
	for <poky@yoctoproject.org>; Thu, 22 Nov 2012 00:32:36 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id qAM8WUmh024370;
	Thu, 22 Nov 2012 08:32:30 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21425-09; Thu, 22 Nov 2012 08:32:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id qAM8WL1e024363
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 22 Nov 2012 08:32:23 GMT
Message-ID: <1353573138.10459.38.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 22 Nov 2012 08:32:18 +0000
In-Reply-To: <50AD2CF0.1050705@linux.intel.com>
References: <1353328788-31664-1-git-send-email-constantinx.musca@intel.com>
	<50ACFD54.4090808@intel.com> <50AD0F0F.4010507@linux.intel.com>
	<4719811.PUxhVNNcLA@helios> <50AD2CF0.1050705@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org,
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
X-List-Received-Date: Thu, 22 Nov 2012 08:32:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-11-21 at 11:35 -0800, Darren Hart wrote:
> 
> On 11/21/2012 09:44 AM, Paul Eggleton wrote:
> > On Wednesday 21 November 2012 09:27:43 Darren Hart wrote:
> >> On 11/21/2012 08:12 AM, Constantin Musca wrote:
> >>> On 11/21/2012 12:19 AM, Darren Hart wrote:
> >>>> Hi Constantin,
> >>>>
> >>>> On 11/19/2012 04:39 AM, Constantin Musca wrote:
> >>>>> Blacklist all images that aren't core-image-minimal-*
> >>>>
> >>>> This needs a description as to what the problem is and why this change
> >>>> is needed. Note that the bug is here for reference, but cannot be relied
> >>>> upon to provide context. That is what the git log is for.
> >>>>
> >>>> I believe the core-image-rt image should also build, but I haven't tried
> >>>> recently. trace-cmd might break that.
> >>>>
> >>>> What sort of error is the user presented with when trying to build one
> >>>> of the blacklisted images?
> >>>>
> >>>> As I've stated in the bug, I'd be happier with an image whitelist than a
> >>>> blacklist as it is hopelessly unmaintainable. Have we explored the
> >>>> whitelist approach?
> >>>>
> >>>> Finally, please remember to CC the maintainer of the files you are
> >>>> modifying when that information is obvious. It is also good practice to
> >>>> CC the active bugzilla commenters when available.
> >>>>
> >>>> Thanks,
> >>>>
> >>>> Darren
> >>>>
> >>>>> [YOCTO #2565]
> >>>>>
> >>>>> Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
> >>>>> ---
> >>>>>
> >>>>>   meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
> >>>>>   1 file changed, 17 insertions(+)
> >>>>>
> >>>>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf
> >>>>> b/meta-yocto/conf/distro/poky-tiny.conf index d40748e..121534e 100644
> >>>>> --- a/meta-yocto/conf/distro/poky-tiny.conf
> >>>>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> >>>>> @@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
> >>>>>
> >>>>>   # will build perl in case this package is installed. Since we don't
> >>>>>   care about # this script for the purposes of tiny, remove the
> >>>>>   dependency from here. RDEPENDS_${PN}-mtrace_pn-eglibc = ""
> >>>>>
> >>>>> +
> >>>>> +INHERIT_DISTRO += "blacklist"
> >>>>> +PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-gtk-directfb] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
> >>>>> +PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
> >>>
> >>> Hi Darren,
> >>>
> >>> I will come back with build errors for incompatible images as soon as I
> >>> test all the images using the poky-tiny distro. Do you agree with the
> >>> following whitelist approach?
> >>> - create poky-tiny.bbclass in meta-yocto which will contain an anonymous
> >>> python function for checking whether a package is a whitelisted image
> >>> - the whitelist variable (configurable from poky-tiny.conf) will be
> >>> called TINY_IMAGE_WHITELIST
> >>
> >> I'd like to hear from Richard or Paul regarding the whitelist approach.
> >> I don't think we should resort to something that is tiny-specific (such
> >> as TINY_IMAGE_WHITELIST). This is something that should applicable to
> >> any DISTRO, just as the PNBLACKLIST is.
> > 
> > I can see what you're suggesting with the use of a whitelist here, but my 
> > thinking when I originally suggested the use of the blacklist was that it is a 
> > case of us knowing that certain recipes (and not just image recipes) won't 
> > build properly. If people add their own image recipes, as long as we also 
> > blacklist the recipes that won't build themselves (e.g. diffutils) then that 
> > case should be taken care of as well since they will still get a reasonable 
> > error upon building the image. I probably wasn't clear enough about this in 
> > the original discussion though.
> > 
> > If rather than us blacklisting each recipe, Hob was able to filter out recipes 
> > that depend on unbuildable recipes (because they are blacklisted, assuming we 
> > can do that practically) then would this alleviate some of your concern as to 
> > the maintainability of this solution?
> 
> It would, thanks for clarifying Paul.
> 
> I suppose the above it fine then, and we can make it more granular with
> time. If you find a package that doesn't build, just added it to the
> poky-tiny blacklist.

The question is whether we have the time/resources to implement this as
described above. I'm not sure bitbake can cope with realising that:

"X is broken so Y which depends on it is also broken and then Z which
depends on Y is also not buildable."

I think bitbake can figure this out as the code stands today but it will
be rather verbose about it on the console. I doubt the UI can cope with
doing this against many different image targets.

This doesn't mean I don't like the solution, just that we likely have a
resource problem so something simple working today might be a better
immediate option that the ideal solution we lack the resources to
implement right now.

Cheers,

Richard






