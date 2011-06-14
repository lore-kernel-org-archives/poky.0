Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C60A4C800FB
	for <poky@yoctoproject.org>; Tue, 14 Jun 2011 14:53:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5EJrGuu017464;
	Tue, 14 Jun 2011 20:53:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17446-01; Tue, 14 Jun 2011 20:53:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5EJrAnT017458
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 14 Jun 2011 20:53:11 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <4DF7B8B2.7050709@mentor.com>
References: <it88ph$j2v$1@dough.gmane.org>
	<4DF7B675.6050304@linux.intel.com>  <4DF7B8B2.7050709@mentor.com>
Date: Tue, 14 Jun 2011 20:52:49 +0100
Message-ID: <1308081169.15712.351.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: bernard-5.0.1, poky-image-lsb, beagle, build error
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
X-List-Received-Date: Tue, 14 Jun 2011 19:53:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-06-14 at 12:38 -0700, Tom Rini wrote:
> On 06/14/2011 12:28 PM, Saul Wold wrote:
> > On 06/14/2011 11:20 AM, Robert Berger wrote:
> >> Hi,
> >>
> >> I hit a build error with the tag: bernard-5.0.1
> >> while trying to build poky-image-lsb, which failed, because psmisc could
> >> not be downloaded.
> >>
> >> I fixed it like this:
> >>
> >> diff --git a/meta/recipes-extended/psmisc/psmisc.inc
> >> b/meta/recipes-extended/psmisc/psmisc.inc
> >> index 8b391f4..460affc 100644
> >> --- a/meta/recipes-extended/psmisc/psmisc.inc
> >> +++ b/meta/recipes-extended/psmisc/psmisc.inc
> >> @@ -10,8 +10,9 @@ SECTION = "base"
> >>   PRIORITY = "required"
> >>   DEPENDS = "ncurses virtual/libintl"
> >>
> >> -SRC_URI = "${SOURCEFORGE_MIRROR}/psmisc/psmisc-${PV}.tar.gz \
> >> +SRC_URI =
> >> "${SOURCEFORGE_MIRROR}/project/psmisc/psmisc/${PV}/psmisc-${PV}.tar.gz \
> >>             file://libintl-link.patch;patch=1"
> >> +
> >>   S = "${WORKDIR}/psmisc-${PV}"
> >>
> >> This means that the tag bernard-5.0.1 does not build anymore for the
> >> beagle and most likely other platforms won't build as well out of the
> >> box.
> >>
> >> That's just a small issue, but my problem is more generic.
> >>
> >> Assuming someone makes a distro based on a tag e.g. bernard-5.0.1 and
> >> wants to rebuild this distro in a year from now.
> >>
> >> Packages might have disappeared, or in best case just the URLs changed.
> >> In any case the distro will not build anymore out of the box.
> >>
> >> I would ideally like to be able to reproduce exactly what I have in a
> >> couple of years from now, which seems impossible due to dependencies
> >> external to poky which are not controlled by this community.
> >>
> >> I could come up with a solution, where local copies of packages are kept
> >> e.g. in a local download directory, but this would mean, that I'll need
> >> to build and test all possible platforms just after the releases (where
> >> everything still works) and not when I'll actually need them.
> >>
> >> What's the best way to deal with this?
> >>
> > Robert,
> > 
> > This is a know problem with Upstream sources moving, dropping older
> > versions or just doing strange behavior.
> > 
> > Currently, if you have MIRRORS, it should pick up the original upstream
> > source tarball from http://autobuilder.yoctoprojecto.org/sources, if you
> > want to avoid checking any upstream source, you can set
> > PREMIRRORS_prepend for ftp, http, and https URLs to the
> > autobuilder/sources location. This location should maintain all tarballs
> > for releases.
> > 
> > We had a similar problem with distcc right about the time we released
> > 5.0.1!
> > 
> > You can use a local solution also with PREMIRRORS_prepend, as well as
> > setting the BB_NO_NETWORK, which will force bitbake to not look on the
> > network for any upstreams, this assumes you have everything preloaded
> > locally.
> > 
> > Let us know if this is what you are looking for.
> 
> I'd suggest making poky look at a poky-mirror as a "last resort" mirror
> by default (similar to angstrom and angstrom-mirror.bbclass), at least
> for release branches.

What worries me is that it should be doing this by default. The question
is therefore why isn't that working? Is that source on the sources
mirror?

Cheers,

Richard



