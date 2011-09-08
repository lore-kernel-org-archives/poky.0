Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7622E01213
	for <poky@yoctoproject.org>; Thu,  8 Sep 2011 06:52:23 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwe3 with SMTP id 3so768461wwe.11
	for <poky@yoctoproject.org>; Thu, 08 Sep 2011 06:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=A1n1xaKoE2gxkOO86CU4ufc7ctwr0POjDvMH4LP3uh4=;
	b=O03uFmGUGm4sRJTZADwZeUfwIX+OOG8knipELhoCgx9dFo0vusVAchZX6F/rDnkKv1
	yxAjqA4OcSTR2vO97iNbQOZGwyGqYntkGG1jbYOGiuE0WAUR2PWDM/iFYA0HCLKoBXGx
	h1FrFkSyoj+PKl9s9/hT78FbSkNNRGSHcOtOc=
Received: by 10.216.132.129 with SMTP id o1mr854969wei.3.1315489942174; Thu,
	08 Sep 2011 06:52:22 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.93.70 with HTTP; Thu, 8 Sep 2011 06:52:02 -0700 (PDT)
In-Reply-To: <4E68BB30.9070300@mlbassoc.com>
References: <4E68BB30.9070300@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 8 Sep 2011 06:52:02 -0700
X-Google-Sender-Auth: gC3HqMdcj02IgCNlYQlUhkoss9A
Message-ID: <CABcZANm-jTtg1Mb0=QTd0EpBsjj7AxA6Nb78qiWGLacoV=anUQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [OT] splitting GIT repositories
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
X-List-Received-Date: Thu, 08 Sep 2011 13:52:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 8, 2011 at 5:55 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> Sorry for the off-topic question, but I'm sure that I'm not the
> only Poky user out there that has a similar dilemma.
>
> When I started working with Poky (quite some years ago), I added
> my code/recipes/... to the Poky GIT tree locally. =C2=A0This let me
> keep my parts up to date with the global repository fairly easily.
> I've tried to keep things such that my changes are separated from
> the Poky master changes.
>
> Now that the layering system is working well, and indeed I could
> move from pure Yocto/Poky to oe-core, I'd like to split my files
> away from the Poky tree I've been using. =C2=A0I'd also like to keep
> history, etc, for my code as I do this.
>
> Is there some way to purge Poky master from my local tree? =C2=A0In
> other words, remove all the Yocto/Poky files & directories, including
> any history/commits/etc that go along with them?
>
> I've experimented some with clone + filter-branch which does
> strip away the parts I don't want, but the history is cluttered
> with Poky mainline commits. =C2=A0In the end, I'd like to end up with
> just my files and the commits that created them.

Make sure you pass --prune-empty to your filter-branch command. Unless
all your files are within a particular subdirectory (in which case you
can use subdirectory-filter), you may want to use an index-filter with
git rm --cached of the files you don't care about (perhaps by using
ls-files and grepping out the paths you know you care about).
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

