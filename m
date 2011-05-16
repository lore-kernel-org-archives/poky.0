Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4892B4C80878
	for <poky@yoctoproject.org>; Mon, 16 May 2011 09:50:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4GEoGF1020486;
	Mon, 16 May 2011 15:50:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20015-09; Mon, 16 May 2011 15:50:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4GEo500020471
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 16 May 2011 15:50:08 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4DCD623C.1050101@windriver.com>
References: <cover.1305266909.git.kai.kang@windriver.com>
	<7d8bd25d3d5664125484582160518ce857cac2f5.1305266909.git.kai.kang@windriver.com>
	<4DCD6128.6030506@linux.intel.com>  <4DCD623C.1050101@windriver.com>
Date: Mon, 16 May 2011 15:50:04 +0100
Message-ID: <1305557404.3424.91.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/4] foomatic-filters: add a link to pass LSB printing test
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
X-List-Received-Date: Mon, 16 May 2011 14:50:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-13 at 11:54 -0500, Mark Hatle wrote:
> On 5/13/11 11:49 AM, Saul Wold wrote:
> > On 05/13/2011 12:56 AM, Kang Kai wrote:
> >> From: Kang Kai<kai.kang@windriver.com>
> >>
> >> LSB printing test will test a foomatic-rip under cups' directory,
> >> so add it as link.
> >> Part fixes [Yocto 904]
> >>
> >> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> >> ---
> >>   .../foomatic/foomatic-filters_4.0.7.bb             |    9 ++++++++-
> >>   1 files changed, 8 insertions(+), 1 deletions(-)
> >>
> >> diff --git a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
> >> index 8d70400..43e9c8d 100644
> >> --- a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
> >> +++ b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
> >> @@ -10,7 +10,7 @@ format using a printer-specific, but spooler-independent PPD file. \
> >>   "
> >>
> >>   DEPENDS += "cups perl libxml2"
> >> -PR = "r0"
> >> +PR = "r1"
> >>
> >>   LICENSE = "GPLv2+"
> >>   LIC_FILES_CHKSUM = "file://${WORKDIR}/foomatic-filters-${PV}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
> >> @@ -20,4 +20,11 @@ SRC_URI = "http://www.openprinting.org/download/foomatic/foomatic-filters-${PV}.
> >>   SRC_URI[md5sum] = "20abd25c1c98b2dae68709062a132a7d"
> >>   SRC_URI[sha256sum] = "090313fae40b177f505d9c9b93d7a4d7188b6d5d18b6ae41ab24903ac983478d"
> >>
> >> +do_install_append_linuxstdbase() {
> >> +    install -d ${D}${libdir}/cups/filter
> >> +    ln -sf ../../../bin/foomatic-rip ${D}${libdir}/cups/filter
> > Kai Kang:
> > 
> > This should really be an absolute patch instead of a relative, there are 
> > distros that might have a different exec_prefix
> 
> We should likely audit our environments for these items.  I know at Wind River
> our policy is all links are relative, we do not allow absolute links as the
> values usually cause problems in sysroots, or external SDK environments.
> 
> (Note, pseudo has a mechanism internal to it that ensures that absolute links
> don't point off to system files.. but we still avoid it.)

If we want to use relative paths, they need to be calculated using the
current layout. I can think of at least one userbase which is going to
want to set all the *prefix variables to "/" instead of "/usr" and I'd
prefer not to introduce additional problems for them.

Cheers,

Richard


