Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0CCDE0085F
	for <poky@yoctoproject.org>; Tue, 18 Feb 2014 09:04:38 -0800 (PST)
Received: by mail-qg0-f45.google.com with SMTP id j5so7329644qga.4
	for <poky@yoctoproject.org>; Tue, 18 Feb 2014 09:04:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=WizWs9Ri9BJkBEfnAuB0tTHB0LBIL/6w3TO9sBMqG6U=;
	b=Le2TAKccljhMfnUDk/ceaWSInCi5pHeBJ1NBbi3LdPQatCViM2HacA7SQB7tZpMcSx
	szhGmRvgEmVFjfts9s0222Ju51a53P4v84XNoYh2yoVIYo+ojkoH0+CIRfFdFC4lgG0p
	fukvIreE2AlTiJB0hOJ1mB/FRTQsx9ey7VmFPL3G3tjeYQmMnfiz4Fas1HBEhIloI3+9
	7O4EZ2wx3vXIqo/VzzHkjkuFcuo1axEq3Hp8vLwa8vL87rzTwKozFFQ0nTtmp9lKXFn0
	BJ1TxyQuKz1i+Ciqp7haPeG5cFoHykEeHOh/xrgBygKzu3FX4vkqWOwBTbmI3xW5YpTk
	TS5w==
X-Gm-Message-State: ALoCoQlaSU9Dn+g9e/0mTr6ar2Te9SHDGHWrlsA0fl1Ev5es20aGAIWwZd+xJ4un+TUkRvfXB83f
X-Received: by 10.224.138.10 with SMTP id y10mr14625117qat.17.1392743078000;
	Tue, 18 Feb 2014 09:04:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Tue, 18 Feb 2014 09:04:17 -0800 (PST)
In-Reply-To: <1392742825-6589-1-git-send-email-valentin.popa@intel.com>
References: <1392742825-6589-1-git-send-email-valentin.popa@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 18 Feb 2014 17:04:17 +0000
Message-ID: <CAJTo0LZfPemAGtX7r79dV7L5dvsbLaqJqw7S_YRNEpBbhwLtjA@mail.gmail.com>
To: Valentin Popa <valentin.popa@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] gtk+3: update RECIPE_NO_UPDATE_REASON
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
X-List-Received-Date: Tue, 18 Feb 2014 17:04:40 -0000
Content-Type: text/plain; charset=UTF-8

On 18 February 2014 17:00, Valentin Popa <valentin.popa@intel.com> wrote:
> gtk+3 3.11.5 needs glib-2.0 >= 2.39.0 (which is unstable)
> Let's wait for glib 2.40.

GTK+ 3.11 is a development release, can you instead update the regexes
to ignore odd numbers?

Ross

