Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id B148F4C81220;
	Wed,  8 Dec 2010 08:08:41 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so1357043wwb.11
	for <multiple recipients>; Wed, 08 Dec 2010 06:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type;
	bh=nsMNIKb11MSrQqFf66L6qkLmOMCugWJOpZqCu21gZKg=;
	b=Kg1e7E5fO5DV/1XUhaMapaULAPQ3RJ0A8lP1noPyXUJDgbswcI8CACUVbfNwOT35+o
	wsuhjp3WdG3ZhOdZA8apILRhP5Ebrhp77ruSiet7N0dGT9gOTMH6A4B9s+VF0ArYDK/r
	X6wFeaBivHalXTCWBwBy0PijqAEQnErd0TGMY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=Pk8MmIE7strn1EB9RgJwiNhXlwu2dABiBpP8Q1oSDnlgHEJhHwnnb2yrKwu2GJKpVg
	QjJH6LEeoCiagVKe1gfPDaESJmi9Yo2tHeueCjvYOh0cxcGIY0QPhGmO7FrF7s7bMyXr
	sLV3rE1GPgS+2WbWUfSGTLJjB0YI389ooWsJM=
Received: by 10.216.154.8 with SMTP id g8mr48430wek.12.1291817320491; Wed, 08
	Dec 2010 06:08:40 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Wed, 8 Dec 2010 06:08:17 -0800 (PST)
In-Reply-To: <1291812548.1554.475.camel@rex>
References: <1291812548.1554.475.camel@rex>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 8 Dec 2010 07:08:17 -0700
X-Google-Sender-Auth: M-c1DZkCjtoYgkZu8XOAxuw7wTA
Message-ID: <AANLkTimCmmksmkyD+a6CaWuazDTRCM+xZ-c8aZmRBF_Q@mail.gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>, poky <poky@yoctoproject.org>
Subject: Re: Adding extra metadata to Yocto/Poky
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
X-List-Received-Date: Wed, 08 Dec 2010 14:08:42 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 8, 2010 at 5:49 AM, Richard Purdie <rpurdie@linux.intel.com> wrote:
> We're in a position where we have people wanting to extend Poky but
> wondering exactly how to add their own layer and make Poky useful for
> their specific use cases.
>
> This is a topic I want to work with the OE community on and have
> discussion about but equally, people are interested at the moment and we
> need something people can experiment with now so we can see what works
> and what doesn't.
>
> With this in mind I'm proposing we create a "poky-extras" repository
> which contains multiple user contributed layers.
>
> My proposed ground rules are:
>
> * it has the OE style open contributions model
> * consists of a set of layers, each clearly identified at the top level
> * each layer has a clearly named maintainer or maintainers
> * people respect the layer maintainers
> * layers are split into logical "topics" where at all possible
>
> Ultimately, the repo structure and some of the details could change but
> I'd like to experiment and see what we can come up with which is
> probably the only way we're going to move forward.
>
> Any comments, objections or better ideas? :)

This seems fine to me as an area to hash out good practices and
experiment, as long as we don't expect to use this structure long
term.  It makes sense for the core layers to be in one repo, but it
makes more sense to use one git repository per external layer, imo.
Is that the intent, or am I misunderstanding its purpose?
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

