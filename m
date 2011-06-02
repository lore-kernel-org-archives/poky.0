Return-Path: <kergoth@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A074B4C800A1
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 09:17:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so1072006vws.35
	for <poky@yoctoproject.org>; Thu, 02 Jun 2011 07:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=A49DA0Qw0Y2s+IIBgZnlyDUQAFomnIExvv0bLsrkLD8=;
	b=untChaoBGJutQNnhJY8p9ju6pcXBy4SAuGgJ1xEyH3Vwi2DFJz71aIu3RTHn+mTZm1
	r7TAX1VntGlnyqBSlHD6vwnSW95pMpIvQcThdrV9pzXcWwaSpupqkZxR/Pt1TGI5zkYB
	wX6yOQHUy3pXFPnN+Yk1ZEsaalAgi96UZpoHE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=IECh1bgK21s/ZcOp6++xpBMfACGJdgC9mEzuDprupBdvM3IuSt3ddKp/77PvD4Q5D2
	/z44Vm2mgqggj9mcdPhLZqhn7WoAMJVZYg47yp7Ac3c7qamA4CdZyb+B8NGp8RdJ7msI
	fOi+f1Dn0GZqv+0/bRkedz0U4mMb0zBWKHLo8=
Received: by 10.52.75.193 with SMTP id e1mr962189vdw.195.1307024241099; Thu,
	02 Jun 2011 07:17:21 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.101.134 with HTTP; Thu, 2 Jun 2011 07:17:01 -0700 (PDT)
In-Reply-To: <4DE79508.7010305@mlbassoc.com>
References: <4DE79508.7010305@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 2 Jun 2011 07:17:01 -0700
X-Google-Sender-Auth: p9EbXcy3RdMzDGlkLdojF6Bwhvc
Message-ID: <BANLkTikZXYszA=Z_amB+-m-TV+Bru4my0A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Duplicated error messages
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
X-List-Received-Date: Thu, 02 Jun 2011 14:17:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 2, 2011 at 6:50 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I just ran 'bitbake core-image-minimal' on a new machine, running a fresh
> install of
> Fedora 15. =C2=A0I got some errors at the start about missing pieces, but=
 the
> build carried on:
> =C2=A0ERROR: =C2=A0Poky's config sanity checker detected a potential misc=
onfiguration.
> =C2=A0 =C2=A0Either fix the cause of this error or at your own risk disab=
le the
> checker (see sanity.conf).
> =C2=A0 =C2=A0Following is the list of potential problems / advisories:
>
> =C2=A0 =C2=A0Please install following missing utilities: help2man,texi2ht=
ml,hg,chrpath
>
> Fair enough, I'll install those. =C2=A0As I said, the build carried on, b=
ut

This is my fault -- at least, the continuing on is. As a part of
working on improving the exception handling in bitbake, the behavior
of exceptions in event handlers was changed.  We should likely change
it back for the SystemExit case, or add a more explicit method for
event handlers to communicate with bitbake proper. Sorry about that.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

