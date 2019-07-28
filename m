Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7E2CE00A21; Sun, 28 Jul 2019 05:00:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D544E009CF
	for <poky@yoctoproject.org>; Sun, 28 Jul 2019 05:00:49 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id w9so41049766wmd.1
	for <poky@yoctoproject.org>; Sun, 28 Jul 2019 05:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=76dLrWPkq9I450qmi9kwUwOyU8YD0gzCK79y7uPsoFE=;
	b=HNBFRWfYZlCllbRRsKKPhQW6CxxUk7bbSzPNA9Ao2SjcN8nPsw3rIPVZVU/875oOvx
	5yG2gQUB+nfIbScEzXhMkWAyFAmSUwPy/EaGFilCI8LIgo973KBMYQ4qTChYBLuwn0tB
	cGsqm5q82WBqmBk0fQCvcjZeiOu03kXrVP+h8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=76dLrWPkq9I450qmi9kwUwOyU8YD0gzCK79y7uPsoFE=;
	b=B6ARb4cEeE6TpfawL8LzS3KlNMk9hehCWEmmkLLxtGLzCu4N6lOEoQXEok61u+ZCV9
	+hOeyamKoFJdRhQuSGi+9ZTigmIQGHMC6GrCjSNQ9013FMs4FmpoJJveWehS67tKO97t
	FB62riH9lL5qJs3drHgFrsa3RY74gB6HxONk95fTGYBwXRkejWxOsL3Yd5Dk6S89SsXS
	kWYEP6br6mAmcRriZd+8YYvHcDvmHtCZftzrpGnFgABo9gty6Hh5pY9Zevb8vHxnC+uJ
	EjzY3bl2JIqJmABZ0ipUK4AGpr8zaT7PtTIvh+hrJb7pztHN8lAoCyaSVx6mkGgqaGUh
	lXPQ==
X-Gm-Message-State: APjAAAXDkllwhm2JTk/UWTRQgvcOwO2loO7XkfBUVAtU+ENu/LtpodXW
	53lZDgD4oFKOBiEF10e1URHTqw==
X-Google-Smtp-Source: APXvYqzmydXo/YluzlyPt9tuJHOFf3EzVxvjppVyeNnLjaNRhopLOmn4UJ8rSm0EK1AQEIqJUh5QTA==
X-Received: by 2002:a1c:9e90:: with SMTP id h138mr98145193wme.67.1564315249189;
	Sun, 28 Jul 2019 05:00:49 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	x83sm63204383wmb.42.2019.07.28.05.00.48
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 28 Jul 2019 05:00:48 -0700 (PDT)
Message-ID: <0615b5d88e12e73a3532e03aa3a44e451415c119.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bas Mevissen <abuse@basmevissen.nl>, poky@yoctoproject.org
Date: Sun, 28 Jul 2019 13:00:47 +0100
In-Reply-To: <ed152bc4-5d75-7651-8cc1-3a48bc6b09a9@basmevissen.nl>
References: <20190718115351.2754-1-ross.burton@intel.com>
	<ed152bc4-5d75-7651-8cc1-3a48bc6b09a9@basmevissen.nl>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: [PATCH] conf/poky: add Fedora 30 and Opensuse Leap 15.1 to supported distributions
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
X-List-Received-Date: Sun, 28 Jul 2019 12:00:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2019-07-28 at 13:14 +0200, Bas Mevissen wrote:
> On 18/07/2019 13:53, Ross Burton wrote:
> > Signed-off-by: Ross Burton <ross.burton@intel.com>
> > ---
> >   meta-poky/conf/distro/poky.conf | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> > poky/conf/distro/poky.conf
> > index 2d155d0de18..ac6368ddab1 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -56,11 +56,13 @@ SANITY_TESTED_DISTROS ?= " \
> >               ubuntu-18.04 \n \
> >               fedora-28 \n \
> 
> Better remove Fedora 28 as it is no longer supported. So probably it
> is hardly used any more, hence regressions will go undetected.

This list matches the machines we actually test builds on:

https://autobuilder.yoctoproject.org/typhoon/#/workers

so we do still test f28 right now. We're in the process of bringing up
some new hardware and removing older machines so as that happens we'll
update the list.

> 
> >               fedora-29 \n \
> > +            fedora-30 \n \
> >               centos-7 \n \
> >               debian-8 \n \
> >               debian-9 \n \
> >               debian-10 \n \
> >               opensuse-42.3 \n \
> > +            opensuseleap-15.1 \n \
> >               "
> >   #
> >   # OELAYOUT_ABI allows us to notify users when the format of
> > TMPDIR changes in
> > 
> 
> In general, I think that EOL distro versions should be removed after
> a while. Somewhere between 3 months (short-lived versions) and 6
> months for long term supported versions.
> 
> It will not prohibit people from using older distro versions, but at 
> least it gives a message that regressions or breakage is to be
> expected.

We try and ensure this list matches what we're actually testing.

Cheers,

Richard



