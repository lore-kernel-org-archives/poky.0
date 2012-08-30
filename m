Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39DC9E01438
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 05:26:18 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 30 Aug 2012 05:26:17 -0700
Received: by obbtb18 with SMTP id tb18so3897477obb.35
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 05:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=90XG3JTid1yxN9EBJTmSMJ7NgsSvNhhsrEeFRzmSPdg=;
	b=lOGFJ3C8jMyIhhNdude8ZOrmic4+/f1nktGbyBycJV8qLwloAOEPAH7p1KFU/B0PgZ
	fsMA54fwcVYutQy3rXASprFXyascMt3hD62vqPhlp1jNQxv4HJwe2XGkNECGNJiehipU
	KPoa22+97GpiOLqDBykqebTrAUSqevXQpL7sHqSr+xS6qTiRgfzMINLzBRK2HO4WjDqx
	nnNc5IFjs+5cw0Rgnn5ksdnSJruN6uLLGXZImjotZkgRK0OaVW8wUaacDCOKY9/cfAL2
	RKJgaK2uL/Lp8Zl7D67D8CEVuVmOXtXL/fJKnmRj9TSqi1hk7gk1vNYJfduPQQ8Q2Wtb
	WrOQ==
Received: by 10.182.44.7 with SMTP id a7mr4132411obm.80.1346329576776; Thu, 30
	Aug 2012 05:26:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Thu, 30 Aug 2012 05:25:56 -0700 (PDT)
In-Reply-To: <1346255318-13168-1-git-send-email-ross.burton@intel.com>
References: <1346255318-13168-1-git-send-email-ross.burton@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Aug 2012 13:25:56 +0100
Message-ID: <CAJTo0LaqffZbP22RaOmz+xm1EJj8tU-inixj1HQ6WU6G25Og9Q@mail.gmail.com>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQmxpnStRxlZqLFRqwWcPmzpwk2fvyjIcYPCR1Kyd9gpixR/jpcQbYjw0tCz+SQ4YiSd/fzh
Subject: Re: [PATCH 1/2] mpc8315e: switch to Xorg instead of kdrive
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
X-List-Received-Date: Thu, 30 Aug 2012 12:26:18 -0000
Content-Type: text/plain; charset=UTF-8

On 29 August 2012 16:48, Ross Burton <ross.burton@intel.com> wrote:
> All of the other BSPs are using Xorg and kdrive is only maintained for Xephyr.

I've a slightly revised version of this patch (and 2/2) in my
poky-contrib/ross/xorg branch.  Please pull that instead of this.

Ross

