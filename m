Return-Path: <kergoth@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE38B4C8005F
	for <poky@yoctoproject.org>; Mon,  6 Jun 2011 11:06:55 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so4829417vws.35
	for <poky@yoctoproject.org>; Mon, 06 Jun 2011 09:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=WOQAhlKfGJRrlDtDDFpO6sNeTzaFIaz9IuL3a4qu/QA=;
	b=xxROKx0wXZym4AQpS23M6+U8Pn0IPvv0cayTHtYaWWtA7hFoncqLVPyuO7+Jl0kT6T
	V63WEEK2AouxkUacONX5L6K4XRPDipqmMSKAeh+z9UasdFLN216KErXMERh6v6AEQ2CZ
	x+3O9bVDud9EvzzXLAkCvkG42L9QQI+Mc9djA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=YtleesQodOaeSKmG0Kduj5JiWqt9bnivSsGaK5navxyMGaGA0UQpXR/gLXY+RYXeMK
	CJpS7FIAIRhQS3Dr+LWVj1Fz4ak3ofeMxywr53tByljqVd0Op65d+jejC+FTxcFNIdn4
	okBq/RMf0/1zAA7kICoWaOW6j5osvG8xX2ABg=
Received: by 10.52.106.166 with SMTP id gv6mr3573248vdb.275.1307376415092;
	Mon, 06 Jun 2011 09:06:55 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.101.134 with HTTP; Mon, 6 Jun 2011 09:06:35 -0700 (PDT)
In-Reply-To: <4DE922E7.9020008@mlbassoc.com>
References: <4DE922E7.9020008@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 6 Jun 2011 09:06:35 -0700
X-Google-Sender-Auth: b9tamBT6FYp9lkQU__kqVxERB3E
Message-ID: <BANLkTi=MpQUF-cCY8oyH9yu_jCzhiSa_dw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Some native packages reference build tree
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
X-List-Received-Date: Mon, 06 Jun 2011 16:06:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 3, 2011 at 11:07 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> Maybe I'm confused, but it would seem to me that the contents of
> SSTATE (cache, etc) should be usable even if the tmp working
> directory that was used to create it no longer exists. =C2=A0At least
> my thinking is that I could build the SSTATE cache files and pass
> them to my customers, along with the basic Poky tree, in a bundle
> which they could then use to speed up Poky builds.
>
> This doesn't seem to work, at least for git-native (one of the
> problems I've been tracing for a couple of days). =C2=A0Here's how
> I found this problem.
>

It's not uncommon to have this sort of relocation issue. I know we had
to fix quite a few of them for our use of packaged-staging. Generally
you have to tackle them individually, at least for the cases where the
automatic sed bits don't cover it.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

