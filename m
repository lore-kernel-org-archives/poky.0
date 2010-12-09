Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-gx0-f169.google.com (mail-gx0-f169.google.com
	[209.85.161.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id D100F4C80A74
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 12:43:47 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk5 with SMTP id 5so1618023gxk.28
	for <poky@yoctoproject.org>; Thu, 09 Dec 2010 10:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type;
	bh=VdYWb2wCv/Guqc4Wnk8NwOeY6QGrc0Itzemw2pxhFN8=;
	b=sJp6R8AkaYyQit8MddvBGmMfC/KkgHUmzDgkcDkt1Mb7EV54P5AOiQU0C1knF/NUTI
	ZrmFvXfWsoDGkTmthqc67RU85j0c2LDBx4twWfAenmW1SLsf6+MX8xvzOOy0l8OIe/MY
	lI/gm9Yhpl5punuKQYpyRjz8RAQan4H56cZ6M=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=K5AKeZaj5THCeEMjISopg0I8iFRwfQQ2VC/sqQzUhswi2vTjQxkYUXXOI/aMPf4qTc
	Ym9ZiI/izWBtYsoWAJ3M995G87DThe+NxyLbtrX2rvPEmhwPjcniXMNxMApKC4S7C9bm
	N2KA0niEIhc/RihBNf5K+v7yY3qeGsSZLWhGc=
MIME-Version: 1.0
Received: by 10.231.182.13 with SMTP id ca13mr608462ibb.57.1291920227283; Thu,
	09 Dec 2010 10:43:47 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Thu, 9 Dec 2010 10:43:47 -0800 (PST)
In-Reply-To: <4D0120ED.6060801@linux.intel.com>
References: <4D0120ED.6060801@linux.intel.com>
Date: Thu, 9 Dec 2010 19:43:47 +0100
Message-ID: <AANLkTi=wXJsc=0ZjxF1tU8eZV=UWGOCR+5k4qXxC4w-H@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>, poky@yoctoproject.org
Subject: Re: Kernel recipe naming
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
X-List-Received-Date: Thu, 09 Dec 2010 18:43:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/12/9 Darren Hart <dvhart@linux.intel.com>:
> I asked Richard about recipe naming convention this morning. We were pressed for
> time, but this is what I took away from the discussion.
>
> For typical packages, the filename typically looks like:
>
> package-name_version.bb

For perl cpan recipes the policy in OE is:
if the package is called X::Y the recipe name becomes
libX-Y-perl_version.bb

poky has only a few perl cpan packages but they seem to follow the same pattern.
In any case I feel it is quite desirable that they have perl in the
name, so they are easily identifiable as such.

Frans

