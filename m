Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f182.google.com (mail-iw0-f182.google.com
	[209.85.214.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99E364C810AC
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 04:42:08 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn39 with SMTP id 39so11889770iwn.13
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 02:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=9wFoZp6OD/WID95rowkwoMZzyTqaes9K4kqFkwxovYo=;
	b=ZKsnD1JB8CNMEbExssXZ7CQdvd+FbGcDbfmHPf7a9iBTy79L3vHm9ZFXi50iOxlYn1
	LWcVSKghTTYtz8m5z1eHwX//5Qn8eOzFPVFIMfxYtiS9OjgsIYdaekQV2EzRz8gPyHeK
	cYCrZiO1r8nMKTYtjTlleUIitLTkAQMFTbujw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=OS8sO7TSukIyxskPbQ7X7EWPGiZYq+lKu76KF9iwI6kR06VtmEF9yClwEISZVe/bVO
	rlsBXCe7m3QIs7cZex+2dJbPjBLXC9yky/I3/18AFsgGzUAeZbTv7ETPiOblAuxg9y8w
	hoC/YR84KkrvnDh64HIIUogHlU2WU6tViKEQ0=
MIME-Version: 1.0
Received: by 10.231.206.7 with SMTP id fs7mr1717140ibb.82.1292236928314; Mon,
	13 Dec 2010 02:42:08 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Mon, 13 Dec 2010 02:42:08 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1627@shsmsx502.ccr.corp.intel.com>
References: <1292166132-23035-1-git-send-email-fransmeulenbroeks@gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5A7A1627@shsmsx502.ccr.corp.intel.com>
Date: Mon, 13 Dec 2010 11:42:08 +0100
Message-ID: <AANLkTikNQDymk6J3XvSAu9NzbbYgAw3QqpYADH2wSeZu@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] rm_work.bbclass: allow a shell var to override rm_work
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
X-List-Received-Date: Mon, 13 Dec 2010 10:42:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/12/13 Tian, Kevin <kevin.tian@intel.com>:
>>From: Frans Meulenbroeks
>>Sent: Sunday, December 12, 2010 11:02 PM
>>
>>Sometimes one is building with rm_work, but for a specific build you want to
>>keep the work even if the build is successful.
>>One way to achieve this is to comment the INHERIT += "rm_work" from your
>>local.conf file, but this means that all recipes need to be reparsed which takes some time.
>>
>>This patch introduces a variable KEEP_WORK
>>If this variable is set the work will not be removed.
>>Intended use is
>>KEEP_WORK=1 bitbake yourrecipe.bb
>>Default behaviour is kept the same (in case KEEP_WORK is not set)
>>
>>Note that in order for this to work KEEP_WORK needs to be added to the env var
>>BB_ENV_EXTRAWHITE
>>e.g. export BB_ENV_EXTRAWHITE="KEEP_WORK"
>>
>>We still might want to improve the test so it only keeps the work if KEEP_WORK is > 0
>>(or do not execute the task at all if KEEP_WORK is not set).
>>Also we might want to add KEEP_WORK to the whitelist of vars that are always ok
>
> Is it useful to further extend this KEEP_WORK option to allow task-based selection?
> For example, I may only be interested on the sysroot installation path, and thus:
>
> KEEP_WORK="install populate_sysroot" bitbake yourrecipe.bb
>
> Currently the scope of rm_work is just binary: keep all or remove all. A finer granule
> control gives us flexibility to concentrate on several tasks which most likely causes
> trouble while still able to reduce the footprint.
>
> Comment? :-)
>
> Thanks
> Kevin
>
Seems a good plan to me, but it is beyond my capabilities to implement that.
It is useful to have an easy way to keep all though.
e.g. KEEP_WORK="all".
I don't think it is desirable to have to say
KEEP_WORK="configure compile install package ..." to keep all.

The typical use case for me is to keep either nothing because I want
to save space, or keep all because for some reason the package has an
issue or for some other reason I want to examine the log.
In the latter case I prefer having a little bit too much above having
a little bit too little.

Best regards, Frans

