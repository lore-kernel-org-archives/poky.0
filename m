Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7244FE00D08; Fri, 18 Jan 2019 03:25:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB5B3E00CE6;
	Fri, 18 Jan 2019 03:25:42 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id a11so14029441otr.10;
	Fri, 18 Jan 2019 03:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ylejgVuvWvOyr8kBXZQZe1l4aN7aa+cAHuA6lxKnofk=;
	b=GYqd5BX0jKbgBl9wMKi6he3/swCUuVLxhb9tNlJWfpK3y8CYgXSd9snjowQjr9ykoQ
	RJ7gkAqus4of/E/APhWe4UiPKzJPvsLYWtBhabHrU2rJS2lTp6EHOq68IjglguwAccSR
	rlakUg4R0Rv3nGBCgn5e5IdTygS65pgwGl6mSezTCBmyRAVV+IA9S5pi6hspCSji8sPR
	eqSkjUWeYIi7TSIBxWM3inM+B5tGGqOaSyX0WthzrNSUWQ4XgKmNLMhk+eVlhlM3GBCk
	+JwyRsVgiKj6hF1330iFqaEwliPHzMYee4iI++A1fOoww5uBsxVBrG6Wh+3fJWNUDav1
	3sgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ylejgVuvWvOyr8kBXZQZe1l4aN7aa+cAHuA6lxKnofk=;
	b=OV1QJuaB/Yfjrc58ihT94vMgfjYPYSrnmlQmfI6oWSuBavPbsnWjPKTH/2BeeGkS9M
	xyxaQXT6Qx/VJihs7sUWItKUYvmbY63DG0qPaB3uWBq5+0e98YR2DC59bggC2vfli+py
	Dquyu7Sbgwnl9/0HcPiBjIHjMD8wntm3nIsfD5I0oHbvGqDNkUvp/IVh7/iH0S5zQkDD
	WE5psIz2JJzVry9vdWxpuy+0Bownm15jD89S2jLfdhkacxNam7pLFPdCUrWx85pjTaEN
	s/gPBBH3To5tMSLwZCcm8YtskR+CFpYdAPh+MD/xVICvB/Jv1DMKrtnb0AsalIW/Y8o6
	qLXQ==
X-Gm-Message-State: AJcUukdcRxhtFvji1XtBwcIULuB7cWB8hxGY5heWaI8irrKKjFM1NVzu
	WZA65sjD9+lTCWW+b6J/ofdwZRkklAcnxg0cMhHQUfeYX/g=
X-Google-Smtp-Source: ALg8bN6QquOS8AbHhhgBBAwgHzwwFTBuYHaQK3Z5Wuat5adjLgKplQMzLFSDf5LQAY5EEz3sgkjXBBz9qt3wOX65MbM=
X-Received: by 2002:a05:6830:14c4:: with SMTP id
	t4mr11685906otq.303.1547810742000; 
	Fri, 18 Jan 2019 03:25:42 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWf2+Kxt79GM0SUGaiyn6kpV4-bg9AqwiHMQ-DqnqRWcEQ@mail.gmail.com>
	<CA+jg_OW4rdvTXfqy0hQ5h9=gJJ=c4MjUcy3tHVmWYcroyQU-vw@mail.gmail.com>
In-Reply-To: <CA+jg_OW4rdvTXfqy0hQ5h9=gJJ=c4MjUcy3tHVmWYcroyQU-vw@mail.gmail.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Fri, 18 Jan 2019 12:25:31 +0100
Message-ID: <CAFsTbWezm75g8FmgeOf9D_5nuzYkO_OaMZvgEN01i8hRDzbjjQ@mail.gmail.com>
To: Daiane Angolini <daiane.list@gmail.com>
X-Mailman-Approved-At: Sat, 19 Jan 2019 10:25:18 -0800
Cc: yocto-bsp@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, Yocto-mailing-list <yocto@yoctoproject.org>,
	meta-freescale-request@yoctoproject.org,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	meta-intel@yoctoproject.org, Poky Project <poky@yoctoproject.org>
Subject: Re: [meta-freescale] ERROR: Nothing PROVIDES 'virtual/libgles2'
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
X-List-Received-Date: Fri, 18 Jan 2019 11:25:43 -0000
Content-Type: text/plain; charset="UTF-8"

imx8mmevk

On Fri, Jan 18, 2019 at 12:20 PM Daiane Angolini <daiane.list@gmail.com> wrote:
>
> On Fri, Jan 18, 2019 at 6:46 AM srinivasan <srinivasan.rns@gmail.com> wrote:
> >
> > Dear Yocto Experts,
> >
> > I am seeing the below error when i am trying to integrate freescale
> > layers into my custom os?
>
> Which imx8 MACHINE are you trying?
>
> Daiane
> >
> > srinishanmugam@ni-bln-07594:~/customBuild_test_rpi/customos/build_customosdistro_imx8$
> > bitbake -f -c clean custom-image-debug-imx8
> > WARNING: Host distribution "ubuntu-18.04" has not been validated with
> > this version of the build system; you may possibly experience
> > unexpected failures. It is recommended that you use a tested
> > distribution.
> > WARNING: /home/srinishanmugam/customBuild_test_rpi/customos/sources/poky/meta/recipes-graphics/drm/libdrm_2.4.91.bb:
> > Unable to get checksum for libdrm SRC_URI entry drm-update-arm.patch:
> > file could not be found
> >       | ETA:  0:00:05
> > Parsing recipes: 100%
> > |#############################################################################################################################################################################################################################################|
> > Time: 0:00:09
> > Parsing of 2275 .bb files complete (0 cached, 2275 parsed). 3177
> > targets, 382 skipped, 1 masked, 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing PROVIDES 'virtual/libgles2' (but
> > /home/srinishanmugam/customBuild_test_rpi/customos/sources/meta-qt5/recipes-qt/qt5/qtbase_git.bb,
> > /home/srinishanmugam/customBuild_test_rpi/customos/sources/poky/meta/recipes-graphics/cairo/cairo_1.14.12.bb
> > DEPENDS on or otherwise requires it)
> > imx-gpu-viv PROVIDES virtual/libgles2 but was skipped: incompatible
> > with machine imx8mmevk (not in COMPATIBLE_MACHINE)
> > NOTE: Runtime target 'qtbase' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['qtbase', 'virtual/libgles2']
> > ERROR: Required build target 'custom-image-debug-imx8' has no
> > buildable providers.
> > Missing or unbuildable dependency chain was:
> > ['custom-image-debug-imx8', 'qtbase', 'virtual/libgles2']
> >
> > Summary: There were 2 WARNING messages shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> >
> >
> > Could you anyone please provide me some inputs for resolving the above issue?
> >
> > Many Thanks in advance
> > --
> > _______________________________________________
> > meta-freescale mailing list
> > meta-freescale@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/meta-freescale

