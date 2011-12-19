Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 036D7E0121A
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 11:40:12 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so3265188laa.35
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 11:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=T9fBcCbd85x0YLBqbOx0gO5iYQcSZWVgX+QObTYq8Ik=;
	b=Z/Wyn6wxo+De+ejvqhN4V1/o98RnjotzhA/Wz4vbgnVSdr/hJkft+uukVgPY20vEA9
	hIUsvzT3Z0N8vhUQCiU7kpZEp2a126fXDIXOhItSW2TfYCn7bVgQuHdQZyT8olXfiLgD
	LkdvnbdMK1amdMaXdoad/XNnHrM4ih4yTXNJw=
Received: by 10.152.128.103 with SMTP id nn7mr17439328lab.48.1324323611485;
	Mon, 19 Dec 2011 11:40:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.36.198 with HTTP; Mon, 19 Dec 2011 11:39:39 -0800 (PST)
In-Reply-To: <CANdftmOF6p5eZoYR_TGO4XPe3X-PPE0tP-PwR8o835AnHHCXEQ@mail.gmail.com>
References: <CANdftmOF6p5eZoYR_TGO4XPe3X-PPE0tP-PwR8o835AnHHCXEQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Dec 2011 11:39:39 -0800
Message-ID: <CAMKF1sqAWMWOYW8rYPbYBraHtwLjVzFNdo9RQ=P_JE2gp2WVbA@mail.gmail.com>
To: Foinel <flocirel@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: qemu armv7a
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
X-List-Received-Date: Mon, 19 Dec 2011 19:40:13 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 19, 2011 at 12:48 AM, Foinel <flocirel@gmail.com> wrote:
> Hello,
> the default qemuarm build seems to be building for ARM926EJ-S as it
> requires tune-arm926ejs.
> Has anybody tried to build for armv7a (cortex a9) ? Have tried it
> myself, by modifying the qemuarf.conf to require tune-cortexa9.inc
> instead of tune-arm926ejs but the qemu machine won't boot anymore, it
> just stays blank.
> Any ideas, thoughts, suggestions regarding this would be appreciated.
>

on oe-core linux-yocto is used to provide kernel for supported machines
and it does not yet have configuration support for say qemu with
cortex-a9 emulation.
so you will need kernel support so either add it to linux-yocto and then
let the tooling figure it out from machine.conf something like
qemucortex-a9 or somesuch

or you can have your own BSP which primarily with provide machine
configuration for qemu
emulating cortex-a9

> Thanks
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

