Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 634A9E01492
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:26:49 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cz11so938981veb.8
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=sC9DjZ1DAizGHs1brtwgAzHbMirwSv808tIqoHbMDFA=;
	b=XfPD0BUoLKkcmDiV7x2m5OIhZk052beDk5mg9uTRSDfGj+6HDAxSftO9bAV8T+Y/Ge
	45dpmJRPi2/5+vV+Sjb15HeVpuYqRmvlhlUQUmgIEEweZPG3D+9zAZvoSl0vhtBiNYax
	KkrFqSpNpspMNsz+vjcNsFBLuyutc89sLyYQ0Fc6q4ledCJ9zWE/m/7uBplBGecOcVD/
	CNTC91KwOXxLW9li3OEvW8IwRTNuKv2xXgcNYIrFMj7HMJoxjkh9ytdPBCLcOAmHXAjb
	R3T/q2x+4amVZbfgqdE3GPouSePy0C1ESFcb2WbczyDmP5aYN6tM59fxRhfRFvM6ANPT
	/xjg==
X-Received: by 10.220.58.195 with SMTP id i3mr8835221vch.38.1375115209240;
	Mon, 29 Jul 2013 09:26:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 29 Jul 2013 09:26:29 -0700 (PDT)
In-Reply-To: <51F619CF.5010607@r-finger.com>
References: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
	<1374770285-22235-5-git-send-email-ross.burton@intel.com>
	<51F619CF.5010607@r-finger.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Jul 2013 17:26:29 +0100
Message-ID: <CAJTo0Lb2oW+LowL-PnfPfTb=XNqpNuLK+YmCHX7t7nNSJVecOA@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQkvN5UIq05QhcMl1Iqq/cCIWLyGbRANon8gRqDEbgV0P+Hbojv6VcSpN3sC3JsrvgOLEKxy
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/6] genericx86: disable rootless X
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
X-List-Received-Date: Mon, 29 Jul 2013 16:26:50 -0000
Content-Type: text/plain; charset=UTF-8

On 29 July 2013 08:29, Tomas Frydrych <tf+lists.yocto@r-finger.com> wrote:
> On 25/07/2013 17:38, Ross Burton wrote:
>> Not all video drivers support rootless X and this BSP aims to have broader
>> support than atom-pc.
>
> Which drivers do you have in mind here? AFAICT this patch set / BSP only
> supports the i9x5 family of drivers out of the box, where this is not an
> issue. In this day and age rootless X should be the norm, not the
> exception, so I think it would be preferable to document the need to
> disable rootless X with any such substandard drivers rather than have a
> suboptimal lowest common denominator for the generic x86 machine.

In X is supports Intel gen hardware directly, and anything that it has
framebuffer or modesetting kernel drivers for (so anything with a
plain vesa framebuffer *should* work).

There's also a big difference between running X as root and the
session as root.  I've been meaning for a long time to implement that
split in the session scripts so that we're not by default running Sato
as root, just the X server.

Ross

