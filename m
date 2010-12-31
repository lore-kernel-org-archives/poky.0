Return-Path: <alees@google.com>
Received: from smtp-out.google.com (smtp-out.google.com [216.239.44.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81AF04C80039
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 07:22:34 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(512-bit key; insecure key) header.i=@google.com;
	x-dkim-adsp=none (insecure policy)
Received: from kpbe13.cbf.corp.google.com (kpbe13.cbf.corp.google.com
	[172.25.105.77]) by smtp-out.google.com with ESMTP id oBVDMXU1027010
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 05:22:33 -0800
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1293801753; bh=fTv+4Aq4KqaT7b+kw/AfZ7WNkqQ=;
	h=MIME-Version:Sender:In-Reply-To:References:From:Date:Message-ID:
	Subject:To:Cc:Content-Type;
	b=UeRrAW7ysQaCzHhas7jiQp0s4a6s1qqBpDSSYd+1ZxAMV7yTJy/Go+gUQsQdxZicZ
	HQVk4W5z72wWIZiP/6kOg==
Received: from vws20 (vws20.prod.google.com [10.241.21.148])
	by kpbe13.cbf.corp.google.com with ESMTP id oBVDMVm8017416
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 05:22:32 -0800
Received: by vws20 with SMTP id 20so4619233vws.10
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 05:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=beta;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type;
	bh=shnWBzhg8goRqCJ+HLyf1cIoG2+7a9/y0B3zt4ERe/8=;
	b=VbI8+Zo6iAYAfhvI3rbvprTwgBOT3ymPqX5QaZ4bBI3uefESg6DsghnH7kl5y+Czz8
	JFPzWFOW4ufvN1lze4uw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=google.com; s=beta;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=gD5JMg+HIgi3QS79gCEMYU9YhybTal/p7lE3NMHQcqWymU13jfcAD9cEieqMkkzStI
	oCkw/5MpmSo102jK94qQ==
Received: by 10.220.176.11 with SMTP id bc11mr4680969vcb.149.1293801751735;
	Fri, 31 Dec 2010 05:22:31 -0800 (PST)
MIME-Version: 1.0
Sender: alees@google.com
Received: by 10.220.180.199 with HTTP; Fri, 31 Dec 2010 05:22:11 -0800 (PST)
In-Reply-To: <1293799575.17519.12488.camel@rex>
References: <AANLkTimxU1u-NZUuAft=BqVXZuphRNi06OxH_cw55Hae@mail.gmail.com>
	<1293799575.17519.12488.camel@rex>
From: Angus Lees <guslees@gmail.com>
Date: Sat, 1 Jan 2011 00:22:11 +1100
X-Google-Sender-Auth: WLQOyQdHjStRHnL4d5OrMIYzY9Y
Message-ID: <AANLkTikQF8=jApjfskB0DwWTqsKf=0WrykkW7tsMtmSF@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-System-Of-Record: true
Cc: poky@yoctoproject.org
Subject: Re: question re gcc-runtime vs libgcc
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
X-List-Received-Date: Fri, 31 Dec 2010 13:22:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Dec 31, 2010 at 23:46, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> gcc-runtime is build process for bits that can be built standalone like
> libstdc++. For pieces of gcc that can't be built separately like libgcc,
> we take a stashed version of it from gcc-cross and only package it as
> part of gcc-runtime.

ok, but where should libgcc be during the linking of libstdc++?

As far as I can see, at this point in a clean build libgcc only exists
in the temporary gcc-build-internal-* directory, which isn't in the
gcc search path.  libgcc doesn't make it out into the sysroot until
_after_ libstdc++, libssp, etc are built and gcc-runtime is installed.
 Where should gcc-cross be finding libgcc when linking libstdc++ and
friends?

 - Gus

