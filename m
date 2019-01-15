Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EC98E00D05; Tue, 15 Jan 2019 02:51:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0107E00BE8
	for <poky@yoctoproject.org>; Tue, 15 Jan 2019 02:51:28 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id b16so1723619ior.1
	for <poky@yoctoproject.org>; Tue, 15 Jan 2019 02:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HXn7KXp+uYlDh9xy7M1HSxj4A+sQrTF+FNOu5IqUVeQ=;
	b=AvlUfM5uRpghyVd4Vvg0QPUuyC+0T0o8w+RRXIQKJFngYvr4JC//O+74gH14v5rnNK
	mM5b5rMTMjbBpbCvV3i3e6Q0adZnnT1ryMKRMYLqLF/Y3jLBVCXixDWaTC0bCudKVC1y
	MvRO1CjTdJTa9tu1l382EApyEFobb4+YptGGbwir/XF1H9EYKpelfQqJCMqlayNyS6JV
	p0t3cY1m5dWk2WeR0Aqun5NFbuFAgpqO44ocGdq/etvyYQGL7ONuDvL0B8vOgH8GTtLc
	QV5ZGNssZuOSf1+RXjURJuZRnkofO1wDaKbHnqKHXo4uFutXNcCZL7N1yYntDGzaszcS
	vLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HXn7KXp+uYlDh9xy7M1HSxj4A+sQrTF+FNOu5IqUVeQ=;
	b=GaRVqVbiIds4TgfSARg3EyFZWlfz53Lleoypdc5oB+s7KgOVVOQ+JFbns0cJhZf8eH
	b8qO0oD07QVfxfAfaD59yLCNcM8I0PrkP3RL7JJl9OqsBzNkNWCLdYz4qUbiNcHTT7TW
	C185WnRwzLy/YBcKFqE625FpFUGgJGO3Uou4fvG2nMwAxsoGetku4oAHryHZ6oZ9BAVe
	tvDdffNW2TE3AryIxjl9k9wEx01YoKFvy461HsDbM1stsOGH8m8+6EmIbgqVeQF2LxX4
	0mxoPyhDsmtIxLHdNAlMdlv1aBBnQ5YByZqJA19GnyaJP5uvy2kU0KXxtSRLMJ1mLHm1
	aLsQ==
X-Gm-Message-State: AJcUukecjdXyvuauaIO17YiJ22RXv96It4611eSuBrn6YPjvDgYJsVHT
	1Zrh3PB1HDWdKj+g8+UE4lWpbt6RTUjtZUfJmpcSAA==
X-Google-Smtp-Source: ALg8bN5JdLacFwkXM1+jnro8kvoK/31NDdALvKfAdHKYGVQGUjbyACXhXWp1H9nQO/YtmRgrzcwbZJzEI3cA2PLyq/o=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr1417923iog.270.1547549488244; 
	Tue, 15 Jan 2019 02:51:28 -0800 (PST)
MIME-Version: 1.0
References: <7d48f265-39e9-663c-f229-8dadfc22083f@ikatu.com>
	<CAJTo0Lbpgpv98hiSdNV1Ja6TJQ-TV5CgjpQxYxhoyW4+-fL58Q@mail.gmail.com>
	<8297d115-346e-6f28-cd00-fee40b2893f6@ikatu.com>
In-Reply-To: <8297d115-346e-6f28-cd00-fee40b2893f6@ikatu.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Jan 2019 10:51:17 +0000
Message-ID: <CAJTo0LY_88cfT1gPBYzU0sv2YjfW4yhzwu8_GgQPXOu2ZbgNEw@mail.gmail.com>
To: Hector Almeida <hector@ikatu.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: systemd and sysvinit enabled in DISTRO_FEATURES
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
X-List-Received-Date: Tue, 15 Jan 2019 10:51:29 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 15 Jan 2019 at 01:12, Hector Almeida <hector@ikatu.com> wrote:
> For example, in connman's recipe, the 'connman' sysvinit script is installed if 'DISTRO_FEATURES' contains 'sysvinit'. But then, is there any other procedure that would delete this file from an image the chooses systemd as init manager?

Sorry, it was late and I didn't quite read your mail properly.

Packages are built once for all configurations.  If you want a single
configuration that builds two images, one using systemd and one using
sysvinit, then the packages you build will have both systemd units and
init scripts in so that the packages are usable under both.  systemd
will ignore the init scripts if a unit with the same name exists, and
sysvinit obviously ignores the units.

If you really want to delete the units in your sysv image to save
every byte, then you can use a rootfs post-process hook to delete
them.  We're talking a few kb, however.

Ross

