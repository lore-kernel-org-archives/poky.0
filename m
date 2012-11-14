Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D0FE01448
	for <poky@yoctoproject.org>; Wed, 14 Nov 2012 02:15:34 -0800 (PST)
Received: from mail-ia0-f200.google.com ([209.85.210.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 14 Nov 2012 02:15:34 -0800
Received: by mail-ia0-f200.google.com with SMTP id x26so374884iak.11
	for <poky@yoctoproject.org>; Wed, 14 Nov 2012 02:15:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=oZTI0P3TCkVsU5WogCqmJT6H7yAAGUi+VGxDOX1PWKc=;
	b=FyRZufddkqxxirsk8TdHYn5loXEz567CLXnIEFxrGrnCHk3Ip308YRBl/TFqL4htRN
	H+fJB4cYnPUtlTa0FYvTn/LCJAvUVudY/yqR5wgnQKnxThVb/9MQy79kzbD7CIUfDA2j
	bxKZFM2xM52YeMJT7m6tQc7QzprpDtaqzEwMSrhhG+rwrvkhHft1AD/q0/4nxMG7f4AI
	hpHA3xdadRrOgmlwrbMK1U1g0KyIzXxAsdLXkyLLZPisHmiBZeKiGWavxwPue7ihkNqv
	ckdd6s8B3hC86/A5PFUCDMRmrnpnZ+t13kmuW5+kPENAn7f5qZjYxnhOp+KBM7J2oX29
	PhZw==
Received: by 10.182.78.228 with SMTP id e4mr20501538obx.77.1352888133175;
	Wed, 14 Nov 2012 02:15:33 -0800 (PST)
Received: by 10.182.78.228 with SMTP id e4mr20501533obx.77.1352888133057; Wed,
	14 Nov 2012 02:15:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.68.135 with HTTP; Wed, 14 Nov 2012 02:15:12 -0800 (PST)
In-Reply-To: <1352886522-26874-2-git-send-email-laurentiu.palcu@intel.com>
References: <1352886522-26874-1-git-send-email-laurentiu.palcu@intel.com>
	<1352886522-26874-2-git-send-email-laurentiu.palcu@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Nov 2012 10:15:12 +0000
Message-ID: <CAJTo0LZ2g-4=LT77G73zuBW4mt4pQRyY43HHibapPZr=v4UsDA@mail.gmail.com>
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
X-Gm-Message-State: ALoCoQkCMACAbx6l2mqaHNHVG6Y5ZjLXqF9H01eBg90IQuKchb0ViNgho1VkwvsShd68tGcpfx0gm8zUqEE62Skps8BmcFO5Lsipmfvi4y4TV5ZoMTX34L3k8WRc+u6ydzpDk67HJBENifeBKqrE59jNJbP2nL/Ebw==
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] yocto-bsp: update configs after xorg upgrade
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
X-List-Received-Date: Wed, 14 Nov 2012 10:15:34 -0000
Content-Type: text/plain; charset=UTF-8

On 14 November 2012 09:48, Laurentiu Palcu <laurentiu.palcu@intel.com> wrote:
> There were some changes in the xserver-xorg upstream project that need
> to be reflected here too:
>  * extmod module was removed completely as it became empty;
>  * DRI1, DRI2, DBE (among others) were made built-in;
>
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>

Acked-By: Ross Burton <ross.burton@intel.com>

Ross

