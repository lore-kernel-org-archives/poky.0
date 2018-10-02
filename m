Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 390BBE00AB3; Mon,  1 Oct 2018 20:13:16 -0700 (PDT)
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
	*      [209.85.167.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stangerm2[at]gmail.com)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 190D7E0097C
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 20:13:14 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id a203-v6so400761oib.0
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 20:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tddoZ7I3CmoTbwxi/j7Ey2dCe2xJsvqSDjPIWcwt4w4=;
	b=RDgiCloQKPyu6MnNiXaZokwztpz4uVteCIOREScEVZo6grMtCZJyv4iSvTRG0e0Z4p
	l27c+cCU/uvvqdAmMO5/j7sFTLP+7Ud3LQ6Ke7LOCh1BafNxojrN5QKLYzvwXbV+M9SS
	a30aDk4o3v0Gi+3lK9GVeZ6DQWvnUV52Dd6X/2JIxKeYOJsXKInJyI03xSMyqeBUMb6M
	qA5p0RFaEWZ2Z654JV7HvK1Ha3//tNYwKrstHsx7zVlF7Lpdt3OlFgMmbe3lpwnVzwBW
	hku6MTYfXlOH4/zZQVBxymId5cIibQLt8D73DzHlRpb3yC9tJ/uugJkowrP4tXjNwJ+e
	vZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tddoZ7I3CmoTbwxi/j7Ey2dCe2xJsvqSDjPIWcwt4w4=;
	b=PWRcbSr45rZ0v8Iqi5qDW91oEBA71Gw5BMIArUZFYrpMmYXuF9AyrFj3HojUCtvAsm
	VFJsZH3bjvdgJCju8alvcVoPlrpdQIgm7/7YA2F67oRiSQfzK7/agDM6KL54OII7yfxy
	yiChp/qraRwOB+eGCse6YLp55jIwaQ+2/XONc9DHBzGv1k0w6aqFz9ZmA4mssevwTAhE
	Z/yhpkfylqeKTP72aAsNS0l+LTCRWTwnYuN5Ch3LQrA1zgvWyyujMR1Sa/t9X+BTpFPi
	EnQwRVpWovIhCuvWlSQt0dYBBm1JquAADQjyUqOS1q6vtAVaNUt6Uo040IROexXkGTj8
	RcdQ==
X-Gm-Message-State: ABuFfogh0PoJO939gRDauaWIpLM/qWc+3dsV7PpocGRUQVTBxpRfNgGi
	Az9iHmi8ZCZvXdUWFUgL7Afq51vQ8tmodeT0iA==
X-Google-Smtp-Source: ACcGV62blwelgigRU/L/k5PCkYt5cq22WMW4JCN+/EBpF90UYNUGVtadJl49QlCmaSjnMWlrhKXEAV5XdqbesWUOkW4=
X-Received: by 2002:aca:1c14:: with SMTP id
	c20-v6mr157637oic.191.1538449994341; 
	Mon, 01 Oct 2018 20:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
	<CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
	<CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
	<CAMKF1sp2dp7BeP4z4n7tBnH08o+0gsGtxJdm-pLAwumj_2rx5A@mail.gmail.com>
In-Reply-To: <CAMKF1sp2dp7BeP4z4n7tBnH08o+0gsGtxJdm-pLAwumj_2rx5A@mail.gmail.com>
From: matthew stanger <stangerm2@gmail.com>
Date: Mon, 1 Oct 2018 21:12:38 -0600
Message-ID: <CAGni2Mhd2O_fBkgZH6rh+UGZfVugSsOtM1pdtxe9TYQcQy7P+A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Tue, 02 Oct 2018 03:13:16 -0000
Content-Type: text/plain; charset="UTF-8"

Just to leave a clean paper trail. It was the
'IMAGE_FEATURES+=package-managment' in my local.conf, thus 'opkg'
needing (configurable)Py3 indirectly, and not systemd:
  "opkg" -> "libarchive"
  "libarchive" -> "libxml2"
  "libxml2" -> "python3"

With libxml2 being marked clearly in openembedded for Py3
(https://layers.openembedded.org/layerindex/recipe/80796/).

Cheers,
On Mon, Oct 1, 2018 at 10:10 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Mon, Oct 1, 2018 at 8:34 AM matthew stanger <stangerm2@gmail.com> wrote:
> >
> > Ahh thanks, that explains that. I'm not aware that I'm pulling in Py3
> > as part of my image but I must be somewhere. I'm just using a trimmed
> > version of the console-image.bb of the Raspberry Pi meta-layer by
> > Scott Ellis (https://github.com/jumpnow/meta-rpi/blob/sumo/images/console-image.bb)
> > where I changed out sysvinit for systemd in the local.conf and am only
> > building the $(CORE_OS) targets [kernel-modules, openssh
> > openssh-keygen openssh-sftp-server, packagegroup-core-boot,
> > term-prompt, tzdata], so I'm not sure where the Py3 part is being set.
> > I know you're busy so what would be the best way in this case for me
> > to track down where this is set?
>
> Generally its better to start of a known smaller images preferably
> from OE-core and then build on top by
> adding your own needs, building up is easier than tearing down in this
> case. The image you are basing of has a lot of stuff which can pull in
> py3 especially the dev packages.
>
> to sort out your case. enable buildhistory, then go into buildhistory folder.
> e.g. buildhistory/images/qemux86/musl/core-image-sato
> and then inspect depends-nokernel-nolibc-noupdate-nomodules.dot
> especially look for "python3" in RHS of -> marker
>
> that will give you the package on LHS which is asking for python3 then you
> can walk backwards from there.
>
> > On Mon, Oct 1, 2018 at 9:05 AM Burton, Ross <ross.burton@intel.com> wrote:
> > >
> > > Well, -g shows you *build* dependencies, not target.  Build
> > > dependencies are recipes, whereas target dependencies will be
> > > packages.
> > >
> > > I see systemd just depending on update-alternatives-opkg, part of
> > > opkg-utils but without the Python dependency.
> > >
> > > Have you demonstrated that Py3 is part of your *images*?
> > >
> > > Ross
> > > On Mon, 1 Oct 2018 at 15:55, matthew stanger <stangerm2@gmail.com> wrote:
> > > >
> > > > Hi Ross,
> > > >
> > > > Thanks for the reply. It seems running 'bitbake -g systemd' yields:
> > > > "systemd" -> "opkg-utils"
> > > > "opkg-utils" -> "python3"
> > > >
> > > > I actually used a previous ML post about this from you to address that
> > > > aspect (https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html).
> > > > However I still don't understand why opkg-utils are listed as
> > > > dependencies for systemd. I do have opkg as part of my image via
> > > > 'IMAGE_FEATURES+=package-managment' but I thought they should be
> > > > unrelated in this context?
> > > > On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross <ross.burton@intel.com> wrote:
> > > > >
> > > > > On Sun, 30 Sep 2018 at 20:02, matthew stanger <stangerm2@gmail.com> wrote:
> > > > > > I'm having trouble removing python3 from being installed as a runtime
> > > > > > package using the Sumo branch. Per the systemd(v237) build
> > > > > > spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
> > > > > > there isn't runtime requirements for python3, only build time.
> > > > > >
> > > > > > It looks to me when running a .dot on the systemd dependencies that
> > > > > > python3 is being pulled in by 'meson' as a non'-native' dependency,
> > > > > > but this is where I'm lost. Could anyone clarify the logic here on how
> > > > > > to trim python3 to a native only dependency for systemd? Or is there
> > > > > > something fundamental I'm missing?
> > > > >
> > > > > Looking at the recipe I don't see where a Python 3 dependency comes
> > > > > from.  Have you verified that it's coming from systemd?
> > > > >
> > > > > Ross
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky

