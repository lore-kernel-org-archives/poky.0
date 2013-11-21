Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C833CE0059E
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 11:58:39 -0800 (PST)
Received: by mail-vb0-f51.google.com with SMTP id m10so172765vbh.38
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 11:58:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=WTSAG0h57AMGb34jZZTHtMMaCBOvxH2K2KUyWEjhNvI=;
	b=UBsdLVvXCH0i/Jx4QU8LkT8vw/ADPnFBU2Vh17+mDu7qHeORPLuYiwC8gngK92wy5x
	HSzN0omLIOHwXS8NudRjo62J05NbRmRNJMj682TgVeaN4zlokkd1VOt77i25WiT9QT/2
	TjEqZd2hHRAIcd0ERWPVT6mpqmoSvpnbV8b151LBUSeIEIu8s5JPr5sdKz3DWBuowccM
	KlbHL1QU0UBl05euEfNLkRmX824JHxmy1FcV8vIfUEggxEjX8HpYm/eSyTMCv03qlC5N
	RMgkpENvJk9Dvast0Hi37S8PspKmoFfJtUbkAIsPw6i1tB3O8yP0F3PYHntV8Qxbw61a
	REwA==
X-Gm-Message-State: ALoCoQmST4C5WYs2XugvfpZQ+16v3zy+bKFnGsF/ZqUyc6RMRCEmKOeskeDC+pUOUv2AFbCZVDFu
X-Received: by 10.58.39.97 with SMTP id o1mr7382126vek.15.1385063918136; Thu,
	21 Nov 2013 11:58:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 21 Nov 2013 11:58:17 -0800 (PST)
In-Reply-To: <1385057342-17210-1-git-send-email-ross.burton@intel.com>
References: <1385057342-17210-1-git-send-email-ross.burton@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Nov 2013 19:58:17 +0000
Message-ID: <CAJTo0LZhUcUFEtz3ZA=wt2UhU_9we_74FD1tJW=6SvRMF5Rx8w@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] poky: enable unknown-configure-option QA test as a warning
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
X-List-Received-Date: Thu, 21 Nov 2013 19:58:40 -0000
Content-Type: text/plain; charset=UTF-8

On 21 November 2013 18:09, Ross Burton <ross.burton@intel.com> wrote:
> This QA test will warn if configure is passed options that it doesn't recongise.

Note that this will cause warnings to appear in builds, about 25 in a
core-image-sato.    Each one should take someone -- ideally the
maintainer when they do an upgrade -- about a minute to verify and
either remove or whitelist.

Ross

