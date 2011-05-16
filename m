Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E408C4C80263
	for <poky@yoctoproject.org>; Mon, 16 May 2011 03:36:32 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4G8aUop017580;
	Mon, 16 May 2011 09:36:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17039-10; Mon, 16 May 2011 09:36:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4G8aKgA017574
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 16 May 2011 09:36:21 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4DCF53FC.9060109@intel.com>
References: <cover.1305415455.git.tom.zanussi@intel.com>
	<92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
	<4DCF53FC.9060109@intel.com>
Date: Mon, 16 May 2011 09:36:03 +0100
Message-ID: <1305534963.3424.13.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/4] crownbay: remove custom BASE_PACKAGE_ARCH and	PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Mon, 16 May 2011 08:36:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-05-14 at 21:18 -0700, Saul Wold wrote:
> On 05/14/2011 08:36 PM, Tom Zanussi wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
> > include following it, preventing the atom BASE_PACKAGE_ARCH from being
> > included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
> > Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
> > file and allow the values in tune-atom to be used as intended.
> >
> I think we may still want to change the tune-atom PACKAGE_EXTRA_ARCHS to ?=.

No, we really don't want to do that ;-). 

The whole point behind the tune-* include files is they are the one
correct place where these architecture specific flags get setup
correctly. Experience shows people trying to do it in each machine file
get it wrong more often than right, this machine file being a perfect
example.

If some different flags are needed, we create a new tune-xxx file which
can either inherit another and customise or set the correct values
itself.

Cheers,

Richard

> > Fixes [BUGID #986].
> >
> Should be [YOCTO #986]
> 
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >   meta-crownbay/conf/machine/crownbay.conf |    3 ---
> >   1 files changed, 0 insertions(+), 3 deletions(-)
> >
> > diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> > index b8f107b..bc09ada 100644
> > --- a/meta-crownbay/conf/machine/crownbay.conf
> > +++ b/meta-crownbay/conf/machine/crownbay.conf
> > @@ -5,12 +5,9 @@
> >   # i.e. E660 + EG20T
> >
> >   TARGET_ARCH = "i586"
> > -PACKAGE_EXTRA_ARCHS = "x86 atom"
> >
> >   include conf/machine/include/tune-atom.inc
> >
> > -BASE_PACKAGE_ARCH="atom"
> > -
> >   MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> >                       acpi serial usbgadget"
> >
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



