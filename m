Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3877DE00AB3; Mon,  1 Oct 2018 21:35:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58516E0097C
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 21:35:14 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d8-v6so603190qtk.13
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 21:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=79ZFOEGdSXqwTRY+fxBzJCvFcOstJe2Fl/a64EY04k8=;
	b=OSxSmQRt0c5udoU0ZXMJ5c1TWCbvA7+BQtWZV5PoXe7AmXWzCjdaeICFFOfoEakmNi
	P8wczmgeHyvdoNwmHOZyKfu5VaJsBLknU0AVi+YNM4WMzuthRA2lrVzAv7ruTB0EzhLQ
	ckGDj6hjvplWd52J1SAhJiXKMM5czIH2vbTN8ofXIaFOM1C/2Qfi/GsNtCkJpocF3sDG
	FMq9RsswdBQ2vyLURZQEVfFm/kWpyB3w+oWJykUHpPbr7X0dHPaWqh412RGpPbuSFrfI
	fm+MsIrAr/efx8c0EGPalNsBuzC8q8qy03OgQvhNaxSv1vZYYgQJTmkL12QFOUR5PAU5
	0+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=79ZFOEGdSXqwTRY+fxBzJCvFcOstJe2Fl/a64EY04k8=;
	b=qqBKvKK0mKCoiC7Zvsg81US5U7CYj3Gvi3eZT4vltkejbDtbfcKdJr7e4FEFN87jij
	S/ErqH0ob7ed9lEU9GboCyi7d9VtwFYFRc0aurwdXSy+tP66rXEfyu8f8/eyKoGVtLvT
	it69pVvDjBELrym612Hpgz+b1bKC+kzlLp1nv+VNSJxivwgkovKQ3WhjqqA8ZZYcTFBo
	rwYgzXbD6aW5yn6bV2A2quW2aIYqDRbrarcVRXbAinUCRGJE6CnVp5Vcw1OtMKrix6b/
	//gcojnVtD/tGjHCDJRvlRvh5xk54ZSP88ACBoQpSJE+pv9eJJwtbx6Ayjt7abNUJuAT
	6OdA==
X-Gm-Message-State: ABuFfohuVIi9BxbMbRsgifxK1Fd0UKbUDEBWifb+vvckrHL/Zr0Cae7G
	BBH/x8Ks+fjb0Kc4ZZzXpu5vPfDxj5aZoVkZjTs=
X-Google-Smtp-Source: ACcGV60xvLz8dZDxjIWaeEnIslDbbo//xMY4BLId41ldzWu5kGsAq9NPX9t7vowUoxCRCtwQ0DKaA88SqhCZoxYk20E=
X-Received: by 2002:a0c:f091:: with SMTP id
	g17-v6mr11094078qvk.55.1538454913313; 
	Mon, 01 Oct 2018 21:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
	<CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
	<CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
	<CAMKF1sp2dp7BeP4z4n7tBnH08o+0gsGtxJdm-pLAwumj_2rx5A@mail.gmail.com>
	<CAGni2Mhd2O_fBkgZH6rh+UGZfVugSsOtM1pdtxe9TYQcQy7P+A@mail.gmail.com>
In-Reply-To: <CAGni2Mhd2O_fBkgZH6rh+UGZfVugSsOtM1pdtxe9TYQcQy7P+A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 1 Oct 2018 21:34:46 -0700
Message-ID: <CAMKF1so81oBjUufLMvGzrZEX0r2R1fdoF3gDAxe0pVFwE+Axag@mail.gmail.com>
To: matthew stanger <stangerm2@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Systemd on Sumo without python3(runtime)
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
X-List-Received-Date: Tue, 02 Oct 2018 04:35:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 1, 2018 at 8:13 PM matthew stanger <stangerm2@gmail.com> wrote:
>
> Just to leave a clean paper trail. It was the
> 'IMAGE_FEATURES+=package-managment' in my local.conf, thus 'opkg'
> needing (configurable)Py3 indirectly, and not systemd:
>   "opkg" -> "libarchive"
>   "libarchive" -> "libxml2"
>   "libxml2" -> "python3"
>

thats good but I still think something is amiss. Because python dependencies
(runtime) are expressed for libxml2-python and libxml2-ptest packages and not
on libxml2 so to me it seems there is some leak happening. Can you check if
some .py file is slipping into libxml2 package ?

> With libxml2 being marked clearly in openembedded for Py3
> (https://layers.openembedded.org/layerindex/recipe/80796/).
>
> Cheers,
> On Mon, Oct 1, 2018 at 10:10 AM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Mon, Oct 1, 2018 at 8:34 AM matthew stanger <stangerm2@gmail.com> wrote:
> > >
> > > Ahh thanks, that explains that. I'm not aware that I'm pulling in Py3
> > > as part of my image but I must be somewhere. I'm just using a trimmed
> > > version of the console-image.bb of the Raspberry Pi meta-layer by
> > > Scott Ellis (https://github.com/jumpnow/meta-rpi/blob/sumo/images/console-image.bb)
> > > where I changed out sysvinit for systemd in the local.conf and am only
> > > building the $(CORE_OS) targets [kernel-modules, openssh
> > > openssh-keygen openssh-sftp-server, packagegroup-core-boot,
> > > term-prompt, tzdata], so I'm not sure where the Py3 part is being set.
> > > I know you're busy so what would be the best way in this case for me
> > > to track down where this is set?
> >
> > Generally its better to start of a known smaller images preferably
> > from OE-core and then build on top by
> > adding your own needs, building up is easier than tearing down in this
> > case. The image you are basing of has a lot of stuff which can pull in
> > py3 especially the dev packages.
> >
> > to sort out your case. enable buildhistory, then go into buildhistory folder.
> > e.g. buildhistory/images/qemux86/musl/core-image-sato
> > and then inspect depends-nokernel-nolibc-noupdate-nomodules.dot
> > especially look for "python3" in RHS of -> marker
> >
> > that will give you the package on LHS which is asking for python3 then you
> > can walk backwards from there.
> >
> > > On Mon, Oct 1, 2018 at 9:05 AM Burton, Ross <ross.burton@intel.com> wrote:
> > > >
> > > > Well, -g shows you *build* dependencies, not target.  Build
> > > > dependencies are recipes, whereas target dependencies will be
> > > > packages.
> > > >
> > > > I see systemd just depending on update-alternatives-opkg, part of
> > > > opkg-utils but without the Python dependency.
> > > >
> > > > Have you demonstrated that Py3 is part of your *images*?
> > > >
> > > > Ross
> > > > On Mon, 1 Oct 2018 at 15:55, matthew stanger <stangerm2@gmail.com> wrote:
> > > > >
> > > > > Hi Ross,
> > > > >
> > > > > Thanks for the reply. It seems running 'bitbake -g systemd' yields:
> > > > > "systemd" -> "opkg-utils"
> > > > > "opkg-utils" -> "python3"
> > > > >
> > > > > I actually used a previous ML post about this from you to address that
> > > > > aspect (https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html).
> > > > > However I still don't understand why opkg-utils are listed as
> > > > > dependencies for systemd. I do have opkg as part of my image via
> > > > > 'IMAGE_FEATURES+=package-managment' but I thought they should be
> > > > > unrelated in this context?
> > > > > On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross <ross.burton@intel.com> wrote:
> > > > > >
> > > > > > On Sun, 30 Sep 2018 at 20:02, matthew stanger <stangerm2@gmail.com> wrote:
> > > > > > > I'm having trouble removing python3 from being installed as a runtime
> > > > > > > package using the Sumo branch. Per the systemd(v237) build
> > > > > > > spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
> > > > > > > there isn't runtime requirements for python3, only build time.
> > > > > > >
> > > > > > > It looks to me when running a .dot on the systemd dependencies that
> > > > > > > python3 is being pulled in by 'meson' as a non'-native' dependency,
> > > > > > > but this is where I'm lost. Could anyone clarify the logic here on how
> > > > > > > to trim python3 to a native only dependency for systemd? Or is there
> > > > > > > something fundamental I'm missing?
> > > > > >
> > > > > > Looking at the recipe I don't see where a Python 3 dependency comes
> > > > > > from.  Have you verified that it's coming from systemd?
> > > > > >
> > > > > > Ross
> > > --
> > > _______________________________________________
> > > poky mailing list
> > > poky@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/poky

