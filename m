Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89ABCE0097C; Mon,  1 Oct 2018 09:10:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F73CE0090C
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 09:10:23 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id v19-v6so1169484qtg.2
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 09:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/YEzWDLPdx5O6kr5qNBgtgVtg9/o+0cA1LsxR5ZKqiE=;
	b=MckJZw0MI/dYjdTa44LzJ83Yj+5LMXIFRSEIkQvAB/jwrIfjrtd1zKkJJexIaqYfkD
	Qalf3xycmgF7QH2u0VzLBz02KhYSAVETJ8fF8Hbd9qoSYx4hBH3fyl7X8LsbDuSUFfpI
	NBz2AE7o9F08QeOjsHgPRxi9LaQo5ukksocypzCxJsi/A3sIZHZF3ZLShc8eDESALpgS
	VokbIfIB/jE01N3OYbF9DLSrkpiR4No1rjS7O7whRyyCr7yMoKhJjjnEAp8+RCktiYfe
	mUkTsdZO03dHAAXL4TicgeBGcrFNLRDbhpyDx4wg4UkkV6LzxIcsk5HMVcscfK80QKEt
	euCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/YEzWDLPdx5O6kr5qNBgtgVtg9/o+0cA1LsxR5ZKqiE=;
	b=o5VL1shqcJ9DZ7UZGwnhvH1WxGpn1Y+slgG8tJ6BtmkT8i6v++WMT/k/y/XdREq80b
	sxNXuwbxbbiJOAUuAOz6+kT1asXuvHDJCOA9BKBBhJkDvSrhu2sxjGKPyEnRVCEYKBeS
	jGclgdA8Z2MK4DLLC9xFsHKIspI/9SPG1P/RrAZaTMm3QVNR3D13wQqrbi3OCnqaEyzw
	rOrhB7Km+Ucr/dQxu0J3chqG6bAIrFZC5jL1QUUTxQy6pf2LzPB8/WxFHVGw3eRJq6+C
	OnsVxfDTbl/EcOxYEdR09jXzZgiK+pkd2TQNKt6s7AUsrhfcX5gQ7NW8OQUbbu0p2NYC
	b+Nw==
X-Gm-Message-State: ABuFfohz5N7H+Tu2ABrJ89RlwsJq4C97UicDtouIi46oVUDZGS/Dp8lA
	sf3PR9ndLfbQHTvRh8MCl7qVXgzNYKzT+NDQB1Y=
X-Google-Smtp-Source: ACcGV62vU/S/6WMx8YKJTUtjbGX58xVVAZzNZTPsAZdkPm+ZvqBV8u38gO2fSND0yn2nvovcOzCmQw+4PYHt9Cw6pao=
X-Received: by 2002:ac8:4912:: with SMTP id
	e18-v6mr2073498qtq.34.1538410222297; 
	Mon, 01 Oct 2018 09:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
	<CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
	<CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
In-Reply-To: <CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 1 Oct 2018 09:09:55 -0700
Message-ID: <CAMKF1sp2dp7BeP4z4n7tBnH08o+0gsGtxJdm-pLAwumj_2rx5A@mail.gmail.com>
To: stangerm2@gmail.com
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
X-List-Received-Date: Mon, 01 Oct 2018 16:10:24 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 1, 2018 at 8:34 AM matthew stanger <stangerm2@gmail.com> wrote:
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

Generally its better to start of a known smaller images preferably
from OE-core and then build on top by
adding your own needs, building up is easier than tearing down in this
case. The image you are basing of has a lot of stuff which can pull in
py3 especially the dev packages.

to sort out your case. enable buildhistory, then go into buildhistory folder.
e.g. buildhistory/images/qemux86/musl/core-image-sato
and then inspect depends-nokernel-nolibc-noupdate-nomodules.dot
especially look for "python3" in RHS of -> marker

that will give you the package on LHS which is asking for python3 then you
can walk backwards from there.

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
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

