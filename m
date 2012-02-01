Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D518CE00595
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 05:46:16 -0800 (PST)
Received: by pbcc11 with SMTP id c11so1372761pbc.35
	for <poky@yoctoproject.org>; Wed, 01 Feb 2012 05:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=o2XaSRPSytutifTAvSO8pM6VGoWm8bITccYdN0tztLw=;
	b=qcQB+FcQv7w5UnzVDksGo+CYexXe02aJRGoMfAmTl4yWKSenvcUD/ijxoGnbzpq3RQ
	YweSEeASNoxbO443jTEUatWDHsnXC3nT7S0vro+8DPAArX4VsbZvsmP51SXGAE0Qy4DB
	tiKFZ75a8rK6RIRVbzkhPLgT5v2/d23pIX7eM=
MIME-Version: 1.0
Received: by 10.68.240.135 with SMTP id wa7mr59687984pbc.7.1328103976561; Wed,
	01 Feb 2012 05:46:16 -0800 (PST)
Received: by 10.143.7.11 with HTTP; Wed, 1 Feb 2012 05:46:16 -0800 (PST)
In-Reply-To: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
References: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
Date: Wed, 1 Feb 2012 08:46:16 -0500
Message-ID: <CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Simple recipe for local kernel/git development
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
X-List-Received-Date: Wed, 01 Feb 2012 13:46:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 1, 2012 at 8:23 AM, O'donoghue, Bryan
<bryan.odonoghue@intel.com> wrote:
> Hi all.
>
> I'd like to have bitbake take a kernel in a local git repository and use =
a defconfig in the same directory as my bitbake recipe, to configure the ke=
rnel.
>
> So far I keep running into a requirement to have a "meta" branch which co=
ntains various kernel config options. I'd rather not have to store my kerne=
l config in a separate "meta" branch whilst developing/configing the kernel=
.
>
> My understanding is that I'd have to have the development sources in "mas=
ter" with the kernel configuration in "meta" - which is not ideal.
>
> In the ideal - we have one "master" branch for the kernel in the git repo=
 - and have a full and complete defconfig applied to that branch - ideal fo=
r internal development that is, I'm not suggesting this as a release method=
.
>
> What's the simple bitbake/yocto-newbie friendly way to accomplish this ? =
One defconfig is by far my preference.
>
> Here's the recipe so far - is there any way to do what I want to do witho=
ut a "meta" branch containing the kernel config ?

There's no requirement of a meta branch if the repository isn't a full
yocto repository, and I have several more enhancements in this area that
will be part of M3.

So the question that I have is .. what is your local kernel repository that
you are working with ?

Cheers,

Bruce

>
> #####################################################
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> # Set branch pointers
> KMACHINE =3D "master"
> KBRANCH =3D ${KMACHINE}
> #KMETA =3D meta
>
> # Set version - required ??
> LINUX_VERSION ?=3D "3.2.0"
>
> # We want a directory named linux-yocto-dev (I think)
> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-dev"
>
> # Use yocto/standard/base for all machines
> SRCREV=3D${AUTOREV}
> SRCREV_machine_pn-linux-yocto-dev ?=3D ${AUTOINC}
> SRCREV_meta_pn-linux-yocto-dev ?=3D ${AUTOINC}
>
> PR =3D "r0"
> PV =3D "${LINUX_VERSION}+git${SRCPV}"
> SRCREV_FORMAT =3D "meta_machine"
>
>
> # Set KSRC to poky/linux-yocto-dev
> KSRC_linux_yocto_dev ?=3D ${COREBASE}/linux-yocto-dev
>
> # Set SRC_URI
> KSRC_linux_yocto_dev ?=3D ${COREBASE}/linux-yocto-dev
> SRC_URI =3D "git://${KSRC_linux_yocto_dev};protocol=3Dfile;nocheckout=3D1=
;branch=3D${KBRANCH},meta;name=3Dmachine,meta\
> =A0 =A0 =A0 =A0 =A0file://defconfig.cfg"
>
> KERNEL_REVISION_CHECKING=3D
> #BB_LOCALCOUNT_OVERRIDE =3D "1"
> LOCALCOUNT =3D "0"
>
> FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
> COMPATIBLE_MACHINE =3D ${MACHINE}
>
> # Functionality flags
> KERNEL_FEATURES=3D""
>
> # Drop linux-tools.inc to avoid building perf and pulling in perl, python=
, and
> # elfutils.
> -------------------------------------------------------------
> Intel Ireland Limited (Branch)
> Collinstown Industrial Park, Leixlip, County Kildare, Ireland
> Registered Number: E902934
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

