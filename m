Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CF29E00A4F; Mon,  1 Oct 2018 08:53:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.167.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48930E009B8
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 08:53:11 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id j68-v6so11602214oib.7
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 08:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=anGBbEZVmXRFOvKkYaIs6L2IyW31iKuG1HMdW26vnWU=;
	b=HLrRn8YrIaIJNhCuu+9a/SkefluS/WZNPH12Y9PF/ct2XK+NqmDEzdww7GciHFCRJl
	Wn1HNFaLWolxmghMdsC1rNFkqXepVFCsCnZRDLYeuKSHraFHVgVHxITFs6HJqyzKCiYe
	CjJWJxTIY9fiuWVb7CSc1WmxHa/WXyk2Lwg59K6Op6ULJyJ+cL7m1LBNevsyuTLHUYuw
	f53MpFo2RJxJBTgb7ZHpx1Dwc6zVB9lzejG4egQl1/zNbG9Ca4o2BwBiKwuTYEHwVFcM
	QyyhqeQIjYmlwsVe9RFaSuE0A4T4I9rx/s1Xk4bXNUcsrcTL1bYu463epatD+ZaAVqOM
	MBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=anGBbEZVmXRFOvKkYaIs6L2IyW31iKuG1HMdW26vnWU=;
	b=JH0F2FxrgPU8ysbVEcKi+ZhelRgaR0GdU6JwW2uzUCUwQcLytjBNdvYHwFxkOZH9cA
	n/QbV9BVfjrJ8XLP/pfV0AS4REu+eWDh3ZpgHBY4BGANH+hyOWKwuJJEAQQ3RRIYlyi/
	6GEzC2QcjWGRlP2+FMMvyXd1mgP9EeJfoOwO0yVudfECPSO/+tbX+A0k7GIWPCvzYaVh
	eEg6QVqcCiKmIzZ/0UhFK9qzXgmlMcaslYcPsmyIV3PuH9IGrZb3+75s4KMekynpoEgM
	M6l6/TvG+dYRcnwmwHEyttt7sdR221mrhmvqAVawZZuiZlmaQEK9SfXHJ1woa3cbU4Wt
	96eQ==
X-Gm-Message-State: ABuFfogyKsjJulYMfKU5POOk1SLx5BhMT0rQCd1lfUnN+H0OPwnjM8/i
	SrQrfYpMJ9jBsg4srwscIB7OtY+eHvyP2O4dJ6NkFA==
X-Google-Smtp-Source: ACcGV60iNSO2KynsS/akfzg4ILZM9MSZIJEHQr35rwuizEtYlrVDaS4XHvJksDwajPJtFRiN1T+z+FzDrMNew7lYl6g=
X-Received: by 2002:aca:68ce:: with SMTP id
	o75-v6mr4308381oik.44.1538409190606; 
	Mon, 01 Oct 2018 08:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
	<CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
	<CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
In-Reply-To: <CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Oct 2018 16:52:58 +0100
Message-ID: <CAJTo0LbEMsETwbHv5BWxjo2SYjd=APO025tF+wSfL8QfCsOyMA@mail.gmail.com>
To: stangerm2@gmail.com
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Oct 2018 15:53:12 -0000
Content-Type: text/plain; charset="UTF-8"

I'm still not sure what your actual problem is.  If Py3 is just
appearing during a build, that's expected.  If it's in the image and
you don't want it in the image, the easy way to find out what is
pulling it in is to remove it inside the image using the package
manager.  That will then tell you want will break if you remove it.

Ross
On Mon, 1 Oct 2018 at 16:36, matthew stanger <stangerm2@gmail.com> wrote:
>
> Ahh thanks, that explains that. I'm not aware that I'm pulling in Py3
> as part of my image but I must be somewhere. I'm just using a trimmed
> version of the console-image.bb of the Raspberry Pi meta-layer by
> Scott Ellis (https://github.com/jumpnow/meta-rpi/blob/sumo/images/console-image.bb)
> where I changed out sysvinit for systemd in the local.conf and am only
> building the $(CORE_OS) targets [kernel-modules, openssh
> openssh-keygen openssh-sftp-server, packagegroup-core-boot,
> term-prompt, tzdata], so I'm not sure where the Py3 part is being set.
> I know you're busy so what would be the best way in this case for me
> to track down where this is set?
> On Mon, Oct 1, 2018 at 9:05 AM Burton, Ross <ross.burton@intel.com> wrote:
> >
> > Well, -g shows you *build* dependencies, not target.  Build
> > dependencies are recipes, whereas target dependencies will be
> > packages.
> >
> > I see systemd just depending on update-alternatives-opkg, part of
> > opkg-utils but without the Python dependency.
> >
> > Have you demonstrated that Py3 is part of your *images*?
> >
> > Ross
> > On Mon, 1 Oct 2018 at 15:55, matthew stanger <stangerm2@gmail.com> wrote:
> > >
> > > Hi Ross,
> > >
> > > Thanks for the reply. It seems running 'bitbake -g systemd' yields:
> > > "systemd" -> "opkg-utils"
> > > "opkg-utils" -> "python3"
> > >
> > > I actually used a previous ML post about this from you to address that
> > > aspect (https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html).
> > > However I still don't understand why opkg-utils are listed as
> > > dependencies for systemd. I do have opkg as part of my image via
> > > 'IMAGE_FEATURES+=package-managment' but I thought they should be
> > > unrelated in this context?
> > > On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross <ross.burton@intel.com> wrote:
> > > >
> > > > On Sun, 30 Sep 2018 at 20:02, matthew stanger <stangerm2@gmail.com> wrote:
> > > > > I'm having trouble removing python3 from being installed as a runtime
> > > > > package using the Sumo branch. Per the systemd(v237) build
> > > > > spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
> > > > > there isn't runtime requirements for python3, only build time.
> > > > >
> > > > > It looks to me when running a .dot on the systemd dependencies that
> > > > > python3 is being pulled in by 'meson' as a non'-native' dependency,
> > > > > but this is where I'm lost. Could anyone clarify the logic here on how
> > > > > to trim python3 to a native only dependency for systemd? Or is there
> > > > > something fundamental I'm missing?
> > > >
> > > > Looking at the recipe I don't see where a Python 3 dependency comes
> > > > from.  Have you verified that it's coming from systemd?
> > > >
> > > > Ross

