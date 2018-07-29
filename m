Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0008AE00A48; Sun, 29 Jul 2018 04:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6405EE006EC
	for <poky@yoctoproject.org>; Sun, 29 Jul 2018 04:29:02 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id w126-v6so16499750oie.7
	for <poky@yoctoproject.org>; Sun, 29 Jul 2018 04:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6//I3TzRWl3GQ1klXpHTnIwPv7lgi47S83oLJQlBt3E=;
	b=h9GZhXAyzEahWWoLsz851xORSCFhOOMZydRaNlKpfpgOKZS6dlHAwxAEZuRwde9sx8
	/j2aS9WyeLxVk59CuLxq9tWHyoEBLhfA2a5TyjQ7JL3gGJv5bChMI8sy2hIHqXH/NJM9
	wKDyrUXAoJH5kBAaBVRvPQb2x8Z6oJNwuZJ50dmm5cosGcgB9pKZbqQxhuwldzC5NllX
	lRfiuRp1OqTv9iIs47OLW/9k35xsbBi+/nZy2euwFswdttqPcBYjiisXt+391QocnWEu
	ADDbz+Lg+Gchw8sLxIb4zBl5reYQhOdSMUivxUUqCmUFv3/+743aDriFkLHfoxXMR6mr
	EzdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6//I3TzRWl3GQ1klXpHTnIwPv7lgi47S83oLJQlBt3E=;
	b=FHsAjuI+HAnpMdCtgF8XTNwkggiU0NY9X7rTqmkygTR85NLB98kDWqk3Fk2eM1ImJg
	GpsS0PcV811alrO0GbwPGxtwf8aku+bBCIIcBX0YhvpB0GOviRgGgXHTGscr3e43hTC/
	eZC+LkYlpFxijnDEOgC4B6eKiXAPNye5HYAFxmyc1fE6iYR1aSHx2XyMnROwslVPVH2O
	k8wrSJfc2GJkiMxx6AZD1zNdBO6Xgp0UZEI/tRNBp0agVKcyKOBSQniKqJIKyjoE6pWg
	rQEn49Bs7aQBF2A4xAwjLobiCXhqPMDhX0n/7i9zrGVp9nDvuhPEkYx1rv1qxCC2nurv
	fX3g==
X-Gm-Message-State: AOUpUlGMGZyCo+bzIG6vDraYkFr3wn1MlYQaxVwqCrXrjIT6IAKICgbu
	o94CBK3B1ClAjFfC4sbdg5e2R6ml5cipf3upjaYJIg==
X-Google-Smtp-Source: AAOMgpdPHk7ib2fLoyCApk/rDrXiKkNh7cwVSlVpRJEtnmQW6ThX2AtIylhgjxvCzEq1xBGXRB+3kpwNu4DuvWRD0QU=
X-Received: by 2002:aca:5dc5:: with SMTP id
	r188-v6mr14133400oib.320.1532863741710; 
	Sun, 29 Jul 2018 04:29:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Sun, 29 Jul 2018 04:28:40
	-0700 (PDT)
In-Reply-To: <CAMKF1sp12fAFA9EeA0V60zVgOBKC_j6sEhAGpdzLiMm1Tg9Z7Q@mail.gmail.com>
References: <20180728024614.10888-1-raj.khem@gmail.com>
	<CAJTo0LYk=tYeJsO84-_jVggersyWEvua6eKX+8GFg1Ymq=r+=g@mail.gmail.com>
	<CAMKF1sp12fAFA9EeA0V60zVgOBKC_j6sEhAGpdzLiMm1Tg9Z7Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 29 Jul 2018 12:28:40 +0100
Message-ID: <CAJTo0LYgjuZQSxKsxC0C=UvO=J=NmQ252Xqajw3ynN21yFa7Bw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [meta-poky][PATCH] poky.conf: Enable security flags+pie by defaultEnable security flags+pie by default
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
X-List-Received-Date: Sun, 29 Jul 2018 11:29:03 -0000
Content-Type: text/plain; charset="UTF-8"

On 29 July 2018 at 02:57, Khem Raj <raj.khem@gmail.com> wrote:
> Hi Ross
> On Sat, Jul 28, 2018 at 3:15 PM Burton, Ross <ross.burton@intel.com> wrote:
>>
>> Interestingly, considering that poky-lsb used to do this, the
>> autobuilder is failing.  See the ross/flags row on
>> https://autobuilder.yocto.io/tgrid.
>>
>
> https://autobuilder.yocto.io/builders/nightly-no-x11/builds/1160/steps/Running%20Sanity%20Tests/logs/stdio
>
> This seems to be mark failed but all tests have passed. I wonder what
> is marking it so.

I've re-fired that to see if it goes away.

> musl one looks real, I will take a look

And the ppc builder basically exploded in fire.

Ross

