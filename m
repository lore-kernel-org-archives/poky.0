Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 005A1E009AA; Tue, 24 Jul 2018 03:08:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6FDEE006F1
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 03:08:47 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id q11-v6so6450173oic.12
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 03:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qA0osyK04ReC6XqF5GqXg7/aGwpYyLgq6m/vmc5lgSw=;
	b=bouDasNDggQ0AQYw8ijPDKWn5fLrFAJZ3BP5iG+duhbeDH+iptzB9M70vd1MhtGbtj
	jnXFtHkIVilPh0yIJlDod/48QSeK/Mv6Q83JCMhj2i6ILnCHmA+coZRVxxpSvwWJcFks
	WtIksf8hZACEQZCvBL6tOl+hDCXK0Q/rSOCB5FG/bkzw7j7pBO4JfPYyGt2kR29bjK9o
	eLsKOkTBp2xDxKdgGCgZT3qcZrM3YoV+okpGvsmjulWH9lLejQ15fVLPkVXMF07zX7Zq
	QfP5xtcAnD2lRPpPSFdjwylITMexeQVtCGf6St+hTfm66mF08YU3JZ5fujKC0xRjW1q+
	5zHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qA0osyK04ReC6XqF5GqXg7/aGwpYyLgq6m/vmc5lgSw=;
	b=ZHBVhbRqd/pOr1e/P0+r5DD7yB0vjAV4N3nSdzgv8onEufejrExRNiVBWN03Tcarmc
	YGrMYigUe6sjlqqUsnlTRuMXMJcQ/y/5Scb9VNKBYw9Y7TyqIa3byMJV4X0cxlSAKrL3
	Bjztrjn3xT8UYi13DY/DwbiQtjj+XwrT1d5tOUjLzjmbgaod9lyHwFpT2q1VR+7hS9fZ
	E1FVoCl/dosPRGiaAHeE1e/yTUSgyRPeLcvx+aDftyrXr+Lt0LC26ei+xzpNh7x5euuz
	h/MA+b9ZIB069lcR+XajUWndmaKRUKhry5UnVd3Hp9L3Qq1ZJMz//EWKcFPS/hwdbo2f
	85eQ==
X-Gm-Message-State: AOUpUlFTRlopDTgth9UPqiOHHv+Ss0GANh2gZ/ArzwUNUJC6Qnp+hPdy
	glLfQa/XyeiBjZPyABbRuCQieUgepKwgQ/VGZLdEX1lU
X-Google-Smtp-Source: AAOMgpffWS7bZqptcoKSHxPPvytSO2l2tzOR0Wg/a6LRYzUFA1QNxqUtmQa+qzqXLHodcaBdP6BckBxZJcKZs+Az7ZI=
X-Received: by 2002:aca:4c8e:: with SMTP id
	z136-v6mr2687011oia.170.1532426926820; 
	Tue, 24 Jul 2018 03:08:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Tue, 24 Jul 2018 03:08:26
	-0700 (PDT)
In-Reply-To: <1354130903.1354552.1532420980242@mail.yahoo.com>
References: <1986949339.1309580.1532416272151.ref@mail.yahoo.com>
	<1986949339.1309580.1532416272151@mail.yahoo.com>
	<CAJTo0LbM4WH0JK4V7mYgMyNjf_S9v=uZEoWG_LMx-2B9mrjASA@mail.gmail.com>
	<1354130903.1354552.1532420980242@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Jul 2018 11:08:26 +0100
Message-ID: <CAJTo0LZmxDvvNUb_xztGwXjkMu3ukf+9AKY-A2xK7grwTUUjwA@mail.gmail.com>
To: hardik vala <hardik.vala@aumraj.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Build Error
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
X-List-Received-Date: Tue, 24 Jul 2018 10:08:49 -0000
Content-Type: text/plain; charset="UTF-8"

Poky contains openembedded-core, so you've got two versions of meta.
This is probably why it breaks.

Ross

On 24 July 2018 at 09:29, hardik vala <hardik.vala@aumraj.com> wrote:
> one meta provided by poky and other meta is openembedded-core/meta directory
>
> ________________________________
> From: "Burton, Ross" <ross.burton@intel.com>
> To: hardik vala <hardik.vala@aumraj.com>
> Cc: Poky Project <poky@yoctoproject.org>
> Sent: Tuesday, 24 July 2018 1:40 PM
> Subject: Re: [poky] Build Error
>
> On 24 July 2018 at 08:11, hardik vala <hardik.vala@aumraj.com> wrote:
>
>> meta
>> meta-poky
>> meta-yocto-bsp      = "sumo:96fbd39ba32362416c18d90bb7a81eb6a76912e0"
>> meta                = "master:ff0b682b807959521c85716296de7a1d26d7d18f"
>> meta-oe
>> meta-python
>> meta-networking      = "master:0aff7abedc1c7727c88029a123107f4faf5ba4f1"
>> meta-java            = "master:ecb637a8cf5eb0cbff67e9e568858f7bfed061fc"
>
>
> Why do you have meta twice, one with sumo and once with master?  What
> branch do you want to be using?
>
> Ross
>
>
>

