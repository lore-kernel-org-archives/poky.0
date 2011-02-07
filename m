Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C5CD4C800B7
	for <poky@yoctoproject.org>; Sun,  6 Feb 2011 21:52:43 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so4529327iwn.35
	for <poky@yoctoproject.org>; Sun, 06 Feb 2011 19:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=ifiM0MFk4JImeC7+iK08IdMDFR/ZPr7zGJJSOJiuImg=;
	b=b5fPllWbHE4DKp/e395awKT1xIFU8X7OjCaQGPhmRVMxB7DP8fCsGjDgKovR5cf04Q
	UEJBgfnCbwkvztDteKnwPaofDXIrbdIrlqLTc6htmXNB0FIpakx9qBzVe0ylXFP/iad3
	jLQ9QWMPnxYXLBu14EGfnLEcjkClNPod5qBiQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=C5lDERZLy7XUALMJQh1wd4hY5XggvVF02j4gT7jHSuF1DpfPpufBDOV6hKH1u9o9Ou
	yTchXaga8+7jL8r/LPP9Atjf1HLGC8omNtu+ktkUPF77FT5oX1lFnwTinaBz63jZFcG3
	CAYi3IGb7eBkksm4QW3FeB/CMwka1IIH0JbSY=
MIME-Version: 1.0
Received: by 10.42.171.4 with SMTP id h4mr3140470icz.188.1297050762861; Sun,
	06 Feb 2011 19:52:42 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Sun, 6 Feb 2011 19:52:42 -0800 (PST)
In-Reply-To: <4D4F562D.1090801@linux.intel.com>
References: <4D4F562D.1090801@linux.intel.com>
Date: Sun, 6 Feb 2011 22:52:42 -0500
Message-ID: <AANLkTik=PJZn7tA2zYyJ3Y0vW=-umQ7nCWb6ov6vqZVR@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: lttng-ust failure on QemuPPC
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
X-List-Received-Date: Mon, 07 Feb 2011 03:52:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 6, 2011 at 9:17 PM, Saul Wold <sgw@linux.intel.com> wrote:
>
> Bruce, Darren:
>
> Can you take a look at the failure in the qemuppc build against
> the lttng-ust.
>
> Looks like the definitions for CLOCK_TRACE and CLOCK_TRACE_FREQ are not
> available for ppc? =A0Is this a package that should not be built for PPC?

Hmmm, not much information here, is this logged somewhere that
covers basic triage ?

Has the package changed ? Was this building before and regressed ?

lttng ust is supposed to work for powerpc, but from a look at the source,
include/ust/clock.h looks wrong for powerpc, since the definitions you
mention are x86 only, but then used in an unprotected function.

commit 9c6bb08180ab0a65bbf3d47247a9d36e257fa44a in the lttng ust
tree looks to have made the change on January 12th. Which leads me
back to my 'was this building before' question .. I assume it was, which
then leads me to 'did this change' .. I see we did bump the revision
in commit e8f2bfcfdaee3cd5cbdb4cf10d48c91bfa741f00 9 days ago.

commit 9c6bb08180ab0a65bbf3d47247a9d36e257fa44a in the lttng ust
tree mentions:

    At runtime, UST checks if the LTTng clock source is available
    If not, CLOCK_MONOTONIC is the default fallback.

    This makes UST use the LTTng kernel clock source. With this
    clock support, LTTng and UST traces are perfectly synchronize.
    Traces from these two tracer can be merged for analysis.

    LTTng 0.240 or higher is needed for this new clock source.

That looks like a version mismatch. It definitely is for the 2.6.34 kernel,
and until my latest pull request is merged for the 2.6.37 kernel, its a
mismatch there as well.

A quick check with an updated 2.6.37 kernel shows that the error is
there regardless. So this just looks like a straight up issue with
the updated lttng ust.

Hope that helps,

Bruce



>
> Thanks
> =A0 =A0Sau!
>
> Saul Wold
> Yocto Component Wrangler @ Intel
> Yocto Project / Poky Build System
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

