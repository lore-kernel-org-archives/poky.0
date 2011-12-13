Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D3EFE00742
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 11:52:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so24647laa.35
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 11:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=OOccYbRYat5dqtN7Ka9+H/pY9woqQgfZQsid3HIvdEA=;
	b=fIDWedphuu+3DNZSO3n90yIAoXok0oD+fosKOkNcHUE0+3SkQ6CjdCOjW9wjLF8vVK
	1H4cs9LAw2sQi515hUgSBzJ70UGEemW10OwcLyXCGDUDwVba1sGY23kQjI0o5yVjae3/
	UCU5EaFQAb6vgjALKWReSW+YccUVJDyBxLDxY=
Received: by 10.152.111.136 with SMTP id ii8mr16613455lab.20.1323805960363;
	Tue, 13 Dec 2011 11:52:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Tue, 13 Dec 2011 11:52:09 -0800 (PST)
In-Reply-To: <CANdftmPpQAjkTiZ0KzaxjmjsXMgTr0Oy=pH3WjTUhv_oyjeatQ@mail.gmail.com>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
	<CANdftmPXu-zrbaha3Gc5bP7=cZX29bqe8Nw2437XTgeEqJacQw@mail.gmail.com>
	<20111213094002.GA6336@ad.chargestorm.se>
	<CANdftmPpQAjkTiZ0KzaxjmjsXMgTr0Oy=pH3WjTUhv_oyjeatQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 13 Dec 2011 11:52:09 -0800
Message-ID: <CAMKF1so_12LcZ5ZhAVf7+AsM+t-DTgsutroFbsCy10==NnN_pg@mail.gmail.com>
To: Foinel <flocirel@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Tue, 13 Dec 2011 19:52:42 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 13, 2011 at 2:04 AM, Foinel <flocirel@gmail.com> wrote:
> This is exactly the issue: the third rpm (-extra) gets included in the rootfs.
> So in the rootfs I get the files from the first rpm and the third rpm

thats a bug.

