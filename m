Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f171.google.com (mail-iw0-f171.google.com
	[209.85.214.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 886614C80BCF
	for <poky@pokylinux.org>; Sun, 14 Nov 2010 10:01:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn38 with SMTP id 38so6467471iwn.2
	for <poky@pokylinux.org>; Sun, 14 Nov 2010 08:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=2XMioy6Slj1D668G6mXx5sC8+J5WtxUnnOOwo/SzOxs=;
	b=t49dR0BtYyPVlRffat2+w1A4TAdVBV6N4/RxS6RviJciwMLlcEPg3P5lv0qsyt4W0O
	fPTbVvsQmReVymA5Zow/KnWTR7UlGAjbs3VmGUwKM46Qakx3qUQSDQEXF0W/bHhzkOWi
	+QAP04kxn6ozTAkGVkT/Tf5A2DkXRhrIFo0LE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=GBv1YVrRyaHCZj1zNuX6wMMZITnGyQHO+kGhKpLsL0o7oinLKXh5bOIF5NJgN9qko8
	VPg93X8OGKy2qkAry19STEtZxdY5zEANqQfL0/PKIAPWScMrg11rPB1cw3f6NcCaLLgV
	WbsUCJeX//rdtDNWetMNXy2+O8QMnU0XnH76A=
MIME-Version: 1.0
Received: by 10.42.213.201 with SMTP id gx9mr475253icb.201.1289750468869; Sun,
	14 Nov 2010 08:01:08 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Sun, 14 Nov 2010 08:01:08 -0800 (PST)
In-Reply-To: <1289273912.1272.24.camel@rex>
References: <1289273912.1272.24.camel@rex>
Date: Sun, 14 Nov 2010 17:01:08 +0100
Message-ID: <AANLkTi=RZHYWsHncK=dAv2EFfSZxaWnWaWBwbgkHysEJ@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: poky <poky@pokylinux.org>
Subject: Re: Bitbake fetchers
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
X-List-Received-Date: Sun, 14 Nov 2010 16:01:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/11/9 Richard Purdie <rpurdie@linux.intel.com>:
> Hi,
>
> I've talked with various people about the bitbake fetchers and I think
> the time has come for an overhaul. I'm going to take the opportunity to
> write down all the various issues I've seen with the current approach so
> we can then come up with a plan and some changes to address this.
>
> Some things that currently bother me:
[...]

Interesting ideas & plans Richard!

What I miss is the possibility for a fetcher or a specific SRC_URI
entry to disable storing the results in downloads.
This typically seems to be an issue wrt cvs, where a change in the cvs
repo is not detected.
(or I am simply doing something wrong).

When rewriting perhaps adding a disable-save-local-copy flag would be nice.

Frans

