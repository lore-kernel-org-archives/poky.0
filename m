Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D859DE0097C; Mon,  1 Oct 2018 08:34:34 -0700 (PDT)
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
	provider *      (stangerm2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.195 listed in list.dnswl.org]
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378AEE0090C
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 08:34:34 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id a203-v6so11585514oib.0
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 08:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Va/1icJlIHe5QqcY11vjsjJMjxxj/ckQJAZkfq+PZWQ=;
	b=ucbfh+h3ffEhuHKOacJparEQHH2WBh6mMGXhs/ZlXFe2FQiReX25asIVYkcOsMy3CY
	aLaQKOdw8OVEA0+D4oY3q34zYL/D1HlhfxUT87cu8nkapE6be7MICG/EIeL/I1kWuU6A
	LdPTFe1SHAonGuNakepJZybgPBYxvGtZS52HLWdyV8PgIRZW8jiUHHvwifX3t6MbEYa+
	NT4B7Mt87w4e7IbKRlHcHiApivxx+k07but1Jzkse8X4s7ZgfqycCGQV/t6q/V7QQEi4
	Ku1D69R4LRX0L+4dad4tgcOHYDqWV+JlPumwFJe3U9r15nIRx5boFcRKllHgXGsKUmXq
	TKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Va/1icJlIHe5QqcY11vjsjJMjxxj/ckQJAZkfq+PZWQ=;
	b=C/EJUZbt31ZDodPgaxJl6/QwoR+4Jgoz8LcTs0VRALyL/dSoXNUoBF3X6PsS2MMYcI
	YZgWkxDc8gUCUgyj2DZ3n7iaT2T/SM2NMV6cvHAxM8Ki0wJm467nfu9iT3HicmfsTRaq
	F38d9bkjWU/dwqWyVgMkvsnjs+ioHF0HvHbmhM+gSrDcrBmaAW0a156rTccR9n1tOZut
	W5ZyhxsoF1TUDo+gXcNQNH5DmR6rw9kyP5E6dzW1IumT8sOADKOJLb2utS8p9RMIksGr
	puFpHQu83kI3tjprqwoHqY3m16Q41QnSDy9LNsNm5sLpGvrNailGXDkry2s6NvfGon0V
	ziag==
X-Gm-Message-State: ABuFfoi+hLtinBCcqXewYY9uaHZY8x5/4S4/8tdzuPTJJhVdRc0T8kg5
	nqGOY/+BJT1Z4SLD1KMrBYWSGSQ/01uqav83Qg==
X-Google-Smtp-Source: ACcGV60om2gx3x3mz7WcVAIVrYBJRJ/F7lRgv0wF0eSEqYJAC+RFm7G4Y6iU1gRwTKqMIKAtnuXxhkfxXegALXwZzT0=
X-Received: by 2002:aca:6057:: with SMTP id
	u84-v6mr5227768oib.361.1538408073100; 
	Mon, 01 Oct 2018 08:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
	<CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
From: matthew stanger <stangerm2@gmail.com>
Date: Mon, 1 Oct 2018 09:33:57 -0600
Message-ID: <CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
To: ross.burton@intel.com
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
X-List-Received-Date: Mon, 01 Oct 2018 15:34:34 -0000
Content-Type: text/plain; charset="UTF-8"

Ahh thanks, that explains that. I'm not aware that I'm pulling in Py3
as part of my image but I must be somewhere. I'm just using a trimmed
version of the console-image.bb of the Raspberry Pi meta-layer by
Scott Ellis (https://github.com/jumpnow/meta-rpi/blob/sumo/images/console-image.bb)
where I changed out sysvinit for systemd in the local.conf and am only
building the $(CORE_OS) targets [kernel-modules, openssh
openssh-keygen openssh-sftp-server, packagegroup-core-boot,
term-prompt, tzdata], so I'm not sure where the Py3 part is being set.
I know you're busy so what would be the best way in this case for me
to track down where this is set?
On Mon, Oct 1, 2018 at 9:05 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> Well, -g shows you *build* dependencies, not target.  Build
> dependencies are recipes, whereas target dependencies will be
> packages.
>
> I see systemd just depending on update-alternatives-opkg, part of
> opkg-utils but without the Python dependency.
>
> Have you demonstrated that Py3 is part of your *images*?
>
> Ross
> On Mon, 1 Oct 2018 at 15:55, matthew stanger <stangerm2@gmail.com> wrote:
> >
> > Hi Ross,
> >
> > Thanks for the reply. It seems running 'bitbake -g systemd' yields:
> > "systemd" -> "opkg-utils"
> > "opkg-utils" -> "python3"
> >
> > I actually used a previous ML post about this from you to address that
> > aspect (https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html).
> > However I still don't understand why opkg-utils are listed as
> > dependencies for systemd. I do have opkg as part of my image via
> > 'IMAGE_FEATURES+=package-managment' but I thought they should be
> > unrelated in this context?
> > On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross <ross.burton@intel.com> wrote:
> > >
> > > On Sun, 30 Sep 2018 at 20:02, matthew stanger <stangerm2@gmail.com> wrote:
> > > > I'm having trouble removing python3 from being installed as a runtime
> > > > package using the Sumo branch. Per the systemd(v237) build
> > > > spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
> > > > there isn't runtime requirements for python3, only build time.
> > > >
> > > > It looks to me when running a .dot on the systemd dependencies that
> > > > python3 is being pulled in by 'meson' as a non'-native' dependency,
> > > > but this is where I'm lost. Could anyone clarify the logic here on how
> > > > to trim python3 to a native only dependency for systemd? Or is there
> > > > something fundamental I'm missing?
> > >
> > > Looking at the recipe I don't see where a Python 3 dependency comes
> > > from.  Have you verified that it's coming from systemd?
> > >
> > > Ross

