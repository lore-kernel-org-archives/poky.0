Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f171.google.com (mail-gy0-f171.google.com
	[209.85.160.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C9244C80BD4
	for <poky@pokylinux.org>; Fri, 31 Dec 2010 04:02:01 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyg13 with SMTP id 13so6224059gyg.2
	for <poky@pokylinux.org>; Fri, 31 Dec 2010 02:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type;
	bh=XY144CQYCNMiDOZse1Jqu0tBX2qSk4oTBz6aBpWFwBI=;
	b=qrkPdc99lkqwp0sjP3YtaLJ2oy1Q0W/FnYQ029Jm9RtqxMX1n2GriAFnykAERJje8A
	yZNvh+kYL1+9hO+9MKnqDy+e0wuOsdot/VExxm5jq/5VKPCRQrvQv6vNogGtrwypAVnI
	Vv7Qip5twoimLhyKJHCPx+kNgh7JSNj1icsjg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=lehveUy33eETNboqloc2/5wOnufYD7SfVwvLkf/a4USGZoC5gMFPZTyiViOQ891XsP
	+oz8lIU7XsLXKt5zIlZ6yRmoyK2/Q8GvqHWJCn4OhO5XxZ1Hb8vjux14U3+Pk7x5d7+a
	Vw/tNOySSEalJJhqKDQbPlSPvk/hTZYPyM+e4=
Received: by 10.90.10.21 with SMTP id 21mr8523655agj.112.1293789720909; Fri,
	31 Dec 2010 02:02:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Fri, 31 Dec 2010 02:01:40 -0800 (PST)
In-Reply-To: <1293201465.17519.1428.camel@rex>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
	<1293201465.17519.1428.camel@rex>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 31 Dec 2010 02:01:40 -0800
Message-ID: <AANLkTi=w4gHiegVVMVCyoe4Qf29DCjW1UaPYuhMS_pr9@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: --with-gxx-include-dir and sysroot
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Dec 2010 10:02:01 -0000
Content-Type: text/plain; charset=UTF-8

> I really don't think its this simple.
>
> Looking at the gcc code, I propose we patch cppdefault.c so instead of
>
> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 0, 0
>
> is says
>
> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 1, 0

This looks ok fix if you take care of doing it only for case
when sysroot is set and its cross compiling.Although I wonder
if this will also alter the install location of the headers

