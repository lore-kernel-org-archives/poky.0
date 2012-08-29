Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07EFAE0049B
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 22:09:38 -0700 (PDT)
Received: by eekd41 with SMTP id d41so46932eek.35
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 22:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LmNhORgCyuoxU8FhptBluh9V95wZFjsUXK2r4munjfM=;
	b=TBJx0mi5KfFGXK3t4gaeoaeJSkeXKCBAWcLbo4oiMAgdEjuLLkcswa1qxEp6UxpB4p
	MpcJEgqk70ZdGAnoDifJV8stPOsTIXTBEC+46Y4k2bFuA0LdNkFntK4ISx5jl7hzOPcq
	+aWvuITCWGU6pWpedzwWBYP+kDkczCoitgM4tUWZdCrJ60+WahZg/gSDdUONc2eWN0u5
	aNLZkRnVjQFyvwXQRQAFmzyuTS4xis9YqzGWPni8n2+PK5l8yeDKZRVdu+vhbAj5bBGd
	Aq8Sug4s97PoVsDtWAp49ABU4MwPuXWr3MHpZh6w0HPxZRpN8PeQwUD+WfovmvDU/jNF
	DfAQ==
Received: by 10.14.211.3 with SMTP id v3mr336369eeo.43.1346216977714; Tue, 28
	Aug 2012 22:09:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Tue, 28 Aug 2012 22:09:07 -0700 (PDT)
In-Reply-To: <1346216233.64654.YahooMailNeo@web194606.mail.sg3.yahoo.com>
References: <mailman.5.1346180401.14702.poky@yoctoproject.org>
	<1346216233.64654.YahooMailNeo@web194606.mail.sg3.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Aug 2012 22:09:07 -0700
Message-ID: <CAMKF1spFnWn67DYVO3n9e6QY1piEgwTrgi-SFgGqg9-2+3z5qg@mail.gmail.com>
To: Sparsh Wid hope <sparsh150847@yahoo.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky Digest, Vol 23, Issue 39
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Aug 2012 05:09:39 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 28, 2012 at 9:57 PM, Sparsh Wid hope <sparsh150847@yahoo.com> wrote:
> cc1: error: unrecognized command line option "-Wunused-but-set-variable"

this option means that the package is using a compiler commandline
option that is not supported by gcc version you are using. From logs
it looks like you are on bernhard which is using gcc 4.5 and I guess
the package you are trying to compile has since added this option to
its own build infrastructure.

You have to remove this option in the make system of the package
libvpx in your case.

