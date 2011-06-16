Return-Path: <jkridner@beagleboard.org>
Received: from mail-bw0-f43.google.com (mail-bw0-f43.google.com
	[209.85.214.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 519044C808B6
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 20:32:59 -0500 (CDT)
Received: by bwz14 with SMTP id 14so1271288bwz.2
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 18:32:58 -0700 (PDT)
Received: by 10.204.47.66 with SMTP id m2mr212681bkf.146.1308187977803;
	Wed, 15 Jun 2011 18:32:57 -0700 (PDT)
Received: from mail-bw0-f43.google.com (mail-bw0-f43.google.com
	[209.85.214.43])
	by mx.google.com with ESMTPS id n3sm839805bka.16.2011.06.15.18.32.56
	(version=SSLv3 cipher=OTHER); Wed, 15 Jun 2011 18:32:56 -0700 (PDT)
Received: by bwz14 with SMTP id 14so1271258bwz.2
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 18:32:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.65.19 with SMTP id g19mr234331bki.49.1308187975259; Wed,
	15 Jun 2011 18:32:55 -0700 (PDT)
Received: by 10.204.69.20 with HTTP; Wed, 15 Jun 2011 18:32:55 -0700 (PDT)
In-Reply-To: <4DF94208.2000002@linux.intel.com>
References: <it8ite$i96$1@dough.gmane.org> <4DF80B84.9000304@linux.intel.com>
	<4DF890F0.1020307@reliableembeddedsystems.com>
	<4DF8E01F.8040209@linux.intel.com> <itaphs$mug$1@dough.gmane.org>
	<4DF94208.2000002@linux.intel.com>
Date: Wed, 15 Jun 2011 21:32:55 -0400
Message-ID: <BANLkTin1aLMmFjrKL2rz+A2mgPL9CJpneA@mail.gmail.com>
From: Jason Kridner <jkridner@beagleboard.org>
To: Darren Hart <dvhart@linux.intel.com>
Cc: gmane@reliableembeddedsystems.com, Alexander Holler <holler@ahsoftware.de>,
	Rabin Vincent <rabin@rab.in>, Arnd Bergmann <arnd@arndb.de>,
	poky@pokylinux.org
Subject: Re: bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Thu, 16 Jun 2011 01:32:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I don't know, but you might want to add align(4) attribute, rather
than remove the packed attribute, to provide the most compatible EHCI
code across architectures...

On Wed, Jun 15, 2011 at 7:36 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
>
>
> On 06/15/2011 10:18 AM, Robert Berger wrote:
> > Hi,
> >
> > On 06/15/2011 07:38 PM, Darren Hart wrote:
> >>
> >> For details on that effort and it's status, please see:
> >>
> >> https://lists.yoctoproject.org/pipermail/yocto/2011-June/001599.html
> >>
> >
> > I'm aware of this.
> >
> >>
> >> Both Koen and Jason K. have been helping to get the right bits merged
> >> for the kernel. I had hoped to use mainline u-boot, but it appears we
> >> may need at least a set of patches in support of Rev C.
> >
> > What else is needed in addition to [2]?
>
>
> Mainline u-boot appears to be adequate according to Jason.
>
>
> >
> >>
> >> The updated BSP will be released with 1.1. My patches and commits will
> >> of course hit the list before then and you can build from master once
> >> they arrive there. Within a week I suspect.
> >>
> >
> > I hope we'll have something which works without graphics on the Beagle
> > XM - Rev C before October (1.1) - before summer would be great.
> >
>
>
> We won't be making another 1.0 release for the Beagleboard. The refresh
> will come with 1.1. If you don't want to build master for the entire
> image, you could build the linux-yocto recipe from master and install
> uImage and the kernel modules over a bernard image. I should have all
> the necessary bits committed in the next few days.
>
>
> > This means, I would assume, gcc 4.6.0 fixes and the Beagle XM Rev C
> > stuff. I did not dare to touch master due to the gcc 4.6.0 issues.
> > Will this be fixed as well in the near future?
>
>
> This is resolved for ARM with the following patch from mainline
> linux-2.6.git:
>
> commit 139540170d9d9b7ead3caaf540f161756b356d56
> Author: Rabin Vincent <rabin@rab.in>
> Date: =A0 Wed Apr 27 21:07:28 2011 +0530
>
> =A0 =A0USB: ehci: remove structure packing from ehci_def
>
> =A0 =A0As pointed out by Arnd Bergmann, in include/linux/usb/ehci_def.h, =
struct
> =A0 =A0ehci_caps is defined with __attribute__((packed)) for no good reas=
on,
> =A0 =A0and this triggers undefined behaviour when using ARM's readl() on
> =A0 =A0pointers to elements of this structure:
>
> =A0 =A0http://lkml.kernel.org/r/201102021700.20683.arnd@arndb.de
>
> =A0 =A0The same problem exists with the other two structures in ehci_def.=
h too,
> =A0 =A0so remove the __attribute__((packed)) from all of them.
>
> =A0 =A0Cc: Arnd Bergmann <arnd@arndb.de>
> =A0 =A0Signed-off-by: Rabin Vincent <rabin@rab.in>
> =A0 =A0Signed-off-by: Greg Kroah-Hartman <gregkh@suse.de>

I've been pretty delinquent in following-up to mailing list feedback,
but we had a similar issue in trying to enable EHCI within u-boot.
Someone, I've forgotten who now, recommended to Alexander that it
would be better to do "__attribute__ ((packed, aligned(4)))" than to
remove the packed attribute altogether.

See http://patchwork.ozlabs.org/patch/92345/

>
>
> >
> > I also played around with the patches in the meantime and
> >
> > [1] for the x-loader
> > [2] for for u-boot
> >
> > seem to apply cleanly on whatever comes with bernard 5.0.1
> >
> > [1]
> > http://gitorious.org/x-loader/x-loader/commit/2efa178acd56d83c86210b593=
4895cfb9ea62125
> >
> > [2]
> > http://git.denx.de/?p=3Du-boot.git;a=3Dcommitdiff;h=3Df6e593bb1255d1e15=
201cb5dec8c95264489e729
> >
> > The kernel patch against 2.6.37 seems to be a bit more involved.
> >
> > Of course more code might be needed to make the Beagle XM Rev C work.
> >
> > Regards,
> >
> > Robert
> >
> >> --
> >> Darren Hart
> >> Intel Open Source Technology Center
> >> Yocto Project - Linux Kernel
> >
> > ..."In my egotistical opinion, most people's C programs should be
> > indented six feet downward and covered with dirt." - Blair P. Houghton
> >
> > My public pgp key is available at:
> > http://pgp.mit.edu:11371/pks/lookup?op=3Dget&search=3D0x90320BF1
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

