Return-Path: <flocirel@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615C9E00306
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 00:48:45 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so9362320wgb.11
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 00:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=eflpA9eB/lFz5PBZaaKcl3/hmtgacw7ENG/iQj8TtOw=;
	b=nEsEsLv+ZLicfe6+z9s1PFx7XJa8Xm240b9YSCGjnySDzclur5RoEzqPcIU3Ag9U+B
	xpLnxNjj6E930LJrYcHvuiSfTRnCa02QQ1KQ5+tkYjDqhWrABtAEdAoPw/SSeQ5SbsQw
	3pfZqDQDGAu3DGecu4YQ+qPs4YI2pmH6O2w3o=
MIME-Version: 1.0
Received: by 10.227.205.203 with SMTP id fr11mr11196436wbb.18.1324284524087;
	Mon, 19 Dec 2011 00:48:44 -0800 (PST)
Received: by 10.223.156.6 with HTTP; Mon, 19 Dec 2011 00:48:44 -0800 (PST)
Date: Mon, 19 Dec 2011 10:48:44 +0200
Message-ID: <CANdftmOF6p5eZoYR_TGO4XPe3X-PPE0tP-PwR8o835AnHHCXEQ@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
To: poky@yoctoproject.org
Subject: qemu armv7a
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
X-List-Received-Date: Mon, 19 Dec 2011 08:48:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,
the default qemuarm build seems to be building for ARM926EJ-S as it
requires tune-arm926ejs.
Has anybody tried to build for armv7a (cortex a9) ? Have tried it
myself, by modifying the qemuarf.conf to require tune-cortexa9.inc
instead of tune-arm926ejs but the qemu machine won't boot anymore, it
just stays blank.
Any ideas, thoughts, suggestions regarding this would be appreciated.

Thanks

