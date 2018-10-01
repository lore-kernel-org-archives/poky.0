Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC5B6E009B8; Mon,  1 Oct 2018 08:05:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.170 listed in list.dnswl.org]
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
	[209.85.167.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9F59E0090C
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 08:05:56 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id v69-v6so4113180oif.1
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 08:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=PhDuxrF/+HLQnpaSJFgwiisS0cAJePDphTYgEgtHpDs=;
	b=Ggy739XI9uVT9eAXnzWIRGTeiXHHTbrMmapITX3oZCTV6SMdA9z33k2z9HibQM+SXJ
	F/pv8tGx85FpGPFufDDSnZu7wPN/iwdYk2+31VuiDM/0cswFEIPRb207rTs3czyTvHIX
	IAaCaKNEPCzI8UZ0skYTyaV9m/8NvJr2kfu7nhJNcXgAXzDUhDV7R6ACkvESuaD3Ofan
	rjeAwDVJ+hgBIoSZFR5PsZc+d7Fw1HhVpGVtPQd4iSd1FtX5ucwvte2YsUmPh2j1G7ci
	Btkb2CE53VvUOFoU7dFgVeKx67gKgx7vL1s3+FnN9zhqfpgh7TJXcF/7Kd+8dTipF7cz
	IC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PhDuxrF/+HLQnpaSJFgwiisS0cAJePDphTYgEgtHpDs=;
	b=DVGRbvIweZgisHOPfWr+0mP6vWB97cSKv0G7EWE5e0asn5IKVFmTvCQXHpsKKM/uKU
	8jSBmdcVHljZkxceAOnZ56qorPgy806qpkE0Qs2MLvhwR4cMGlygyD7bNQh6ovQjlTtX
	VlQgKF+FrUzqRJcLqsd8CMn516dFUnCg433UePkELJPppMJOGr4W9m4Keq+rW/2P5V48
	UahOhGl+c8wDUoY1yCIkLf0Y9orrxYe2Y99xqKDSc6D7irn/oH2TO9hhRUnsdHrHgfEi
	7lhyf1OxFAFDoWuZuaVksXJkH8IDshvKgxwzJKNX/Y0+r8HPr/jTq6C62F0YFvxPUG86
	hpUw==
X-Gm-Message-State: ABuFfojwBZL0AfdqbGV4YsXfTDnU48FOqenCgSrd7VIWKQzVNMleHot4
	gKrLEgUBShbjsAql0ZhPmK/JYg06gRTW+LbCOWdLvRE+
X-Google-Smtp-Source: ACcGV63ms589txNOQ1prlMevuL9VEUs5jz+HxJjYSCKd1mLY9R6Fzs5GsEFadtaj9DqxYw0cpRAqdfiQZzeFiBWTn2E=
X-Received: by 2002:aca:ce4c:: with SMTP id
	e73-v6mr4900332oig.225.1538406355960; 
	Mon, 01 Oct 2018 08:05:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
In-Reply-To: <CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Oct 2018 16:05:43 +0100
Message-ID: <CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 01 Oct 2018 15:05:57 -0000
Content-Type: text/plain; charset="UTF-8"

Well, -g shows you *build* dependencies, not target.  Build
dependencies are recipes, whereas target dependencies will be
packages.

I see systemd just depending on update-alternatives-opkg, part of
opkg-utils but without the Python dependency.

Have you demonstrated that Py3 is part of your *images*?

Ross
On Mon, 1 Oct 2018 at 15:55, matthew stanger <stangerm2@gmail.com> wrote:
>
> Hi Ross,
>
> Thanks for the reply. It seems running 'bitbake -g systemd' yields:
> "systemd" -> "opkg-utils"
> "opkg-utils" -> "python3"
>
> I actually used a previous ML post about this from you to address that
> aspect (https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html).
> However I still don't understand why opkg-utils are listed as
> dependencies for systemd. I do have opkg as part of my image via
> 'IMAGE_FEATURES+=package-managment' but I thought they should be
> unrelated in this context?
> On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross <ross.burton@intel.com> wrote:
> >
> > On Sun, 30 Sep 2018 at 20:02, matthew stanger <stangerm2@gmail.com> wrote:
> > > I'm having trouble removing python3 from being installed as a runtime
> > > package using the Sumo branch. Per the systemd(v237) build
> > > spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
> > > there isn't runtime requirements for python3, only build time.
> > >
> > > It looks to me when running a .dot on the systemd dependencies that
> > > python3 is being pulled in by 'meson' as a non'-native' dependency,
> > > but this is where I'm lost. Could anyone clarify the logic here on how
> > > to trim python3 to a native only dependency for systemd? Or is there
> > > something fundamental I'm missing?
> >
> > Looking at the recipe I don't see where a Python 3 dependency comes
> > from.  Have you verified that it's coming from systemd?
> >
> > Ross

