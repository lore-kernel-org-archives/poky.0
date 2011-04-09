Return-Path: <raj.khem@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C29BC4C80050
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 19:00:30 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so2121977ywo.35
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 17:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:subject:from:reply-to:to:cc:in-reply-to
	:references:content-type:organization:date:message-id:mime-version
	:x-mailer:content-transfer-encoding;
	bh=QT277XeQWZaf3whFEym5RAulFRJKflkfbLf/Z5jNCU8=;
	b=Jt4wkmfCwb3SjIbb0bL5GvKPBm5Q6f6uS1nh7sYTbwAXy/Exkl9fTvO8hky02WznrS
	UyxNS4RMr1TEDGdNl1Qr/LapqsF7DEeeZ8w7sI+FtguZye4XqwqJjSQewJZYK3BP65do
	etBfuDMcZR9wfmUYnK9pQSCV/GSfcjtqLFVvU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=subject:from:reply-to:to:cc:in-reply-to:references:content-type
	:organization:date:message-id:mime-version:x-mailer
	:content-transfer-encoding;
	b=lsbmVfglSrCW1KO6aKlVG+bJD0YkIenVwlYRCI6y5GXCBds6Eckbnp5RR88aTr/5HB
	2kVT02eNN+9kEdOzp8DUZ7egwPkCPCkrmXOjWTfyNY4SFxCdDtSiBR0A3QolH+VS8NHs
	1RCN4gfW5zY4bnzRlEeAf6hcg0WnJv19nAucA=
Received: by 10.100.248.4 with SMTP id v4mr1929646anh.83.1302307230513;
	Fri, 08 Apr 2011 17:00:30 -0700 (PDT)
Received: from [192.168.1.67] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id 23sm3454917ano.33.2011.04.08.17.00.27
	(version=SSLv3 cipher=OTHER); Fri, 08 Apr 2011 17:00:28 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: Colin Walters <walters@verbum.org>
In-Reply-To: <BANLkTimuR_V_bJtHw323iMgYmm71dsuvyA@mail.gmail.com>
References: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
	<20110324031944.GC20796@sakrah.homelinux.org>
	<AANLkTi=KnuGEbCL9SQFX6he5BU7v0+ygtAAL7HQwSDCT@mail.gmail.com>
	<BANLkTimuR_V_bJtHw323iMgYmm71dsuvyA@mail.gmail.com>
Organization: Sakrah
Date: Fri, 08 Apr 2011 17:00:13 -0700
Message-ID: <1302307214.15056.9.camel@leto>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Override do_compile to specify V=1 if project uses AM_V_GEN
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: raj.khem@gmail.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Apr 2011 00:00:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-08 at 17:07 -0400, Colin Walters wrote:
> On Fri, Mar 25, 2011 at 8:41 AM, Colin Walters <walters@verbum.org> wrote:
> > On Wed, Mar 23, 2011 at 11:19 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >
> >> usually package which use silent-rules they have --disable-silent-rules
> >> Did you try to pass this option ? May be try it with EXTRA_OECONF and
> >> see if that helps
> >
> > You're right, that's much better.  New patch attached:
> 
> Any opinion on the new patch?

Looks ok to me however it needs to be tested build atleast all packages
that use autotools


