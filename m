Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6AE8E00CE7; Sun, 15 Jul 2018 12:29:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A734E0044F
	for <poky@lists.yoctoproject.org>; Sun, 15 Jul 2018 12:29:38 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id s198-v6so71008520oih.11
	for <poky@lists.yoctoproject.org>; Sun, 15 Jul 2018 12:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u1QthfTIOZfhGeCY5YeVsCEzotGVUpBroyNQOQLeZRc=;
	b=BMsHJTTD4YhO7O050ZBWxBxxsxrUEil/Vt1IeqmBVxegw8M1TLaApxuHZ0GWKFZYdw
	1ejbPHO/Xb1HBHeCITb9lOnGjuaKgrxje0BKSI5FflUK4WeI3svc1ld1ha5rXocPqCY9
	FaCkc8Wafa6vQlrHYq0NLt29b4U3NVJuOHPmqeQmenXk16mQ850qhTC6BHzJFxgUpOks
	brXEa4j2dTZ+M5ZPQ9SE9QREmTrShkE2Z/+YPBzqKrLa2eGj1q0AOISw3Y+pu1ekthLb
	Dm4syC8tcMrMYqJVeQh240zQ3UDaGCgL3oRGrV7j5PeFo102dh7WiXijZ0i3ttYsiqqb
	lP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u1QthfTIOZfhGeCY5YeVsCEzotGVUpBroyNQOQLeZRc=;
	b=TJw2keuYJ77e+hHLAkmHkyyic1W9PG+BqPVnnnJmRrOKcwtr0wZIlslz/HL4zJH/Iq
	4LlutnrrtC6P+L4E85yXTQEgRrtKxDOojO5H1r1M4QOsrhJ4KHkRvgD2QC7T5Rbs1hZu
	RtM4mZ8iHAYW7Ph/rCrNWll15OcZ+SFjf55XOyPW/+vr57iBpzoRZkvJYq1xn0jlYe8N
	6XuqInWTWFYPugN1KAshmYz32jKTu58thpd5OA6Sm/dgpH9D/z61cw8CHYXsgVeKcVym
	j5iHIXNwNvlE6tAMh+uTSUA5hyk4c6N4iZB49IpKwTvABuylt+GNIgJcrA/9Toi2ApQn
	XuXQ==
X-Gm-Message-State: AOUpUlH2dQyPZ4SNqCp7937PQn9vk44e5KSiWJbtWTfqAVGximjWxFM7
	2KhWtRvw12XzAHOkFAUsrhC29Fw0nwSMrIech9hxUg==
X-Google-Smtp-Source: AAOMgpdewcRqpd9+q8bEhPKGT+Ae1mN6YltecvWUbx135aDnA2G2NNiD4YlqWkMZ4BNhx2ZN5eSA0q9mxnPJHfY+QZc=
X-Received: by 2002:aca:4c8e:: with SMTP id
	z136-v6mr16393788oia.170.1531682977850; 
	Sun, 15 Jul 2018 12:29:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Sun, 15 Jul 2018 12:29:17
	-0700 (PDT)
In-Reply-To: <20180715151719.16899-1-richard.purdie@linuxfoundation.org>
References: <20180715151719.16899-1-richard.purdie@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 15 Jul 2018 20:29:17 +0100
Message-ID: <CAJTo0LYnL+aP4_Fd0jbHxmL2LJaZiMhYOF4mA19h1JfZnqNwbw@mail.gmail.com>
To: poky-bounces@yoctoproject.org
Cc: poky@lists.yoctoproject.org
Subject: Re: [PATCH] oeqa/selftest/systemd_boot: Never use cleansstate in QA tests without special handling of SSTATE_DIR
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
X-List-Received-Date: Sun, 15 Jul 2018 19:29:40 -0000
Content-Type: text/plain; charset="UTF-8"

On 15 July 2018 at 16:17,  <poky-bounces@yoctoproject.org> wrote:
> Removing things straight from the live sstate directory is prone to issues
> since other builds may be relying on the artefact presence.
>
> Also, cleansstate is very slow on the huge sstate that the autobuilder has
> on slow NFS drives. This may well be causing long buildtimes in oe-selftest
> as the time taken to remove the artefact by be long.

Argh, I thought we vetted selftest for this sort of thing already.

Does the test still do the right thing with this?  Several instances
where it really wanted to build in the past I've replaced with bitbake
foo -C unpack or similar.

Ross

