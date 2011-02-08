Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E95F34C8009E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 08:00:38 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so6266810iyb.35
	for <poky@yoctoproject.org>; Tue, 08 Feb 2011 06:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=X5Ca3yLqOT6UbZu/IRazAVtqTA9fF9AArS8lYxKxCu8=;
	b=TcFDSd++OwXzmOwi/JIGCV6Ynxxwm7lT1CJ3cmP3uNlHTfTNhWjQCo5ibfBAXxDy9C
	3ZvwEiQ8INegkYhYTWODNeuLMxGLfo96AnJbAJZvKqszEG5PIhrX+rBv/k/ksPvOETsf
	2YPrJ1AueGWRJj7ZEQ/Zxa6A4Vpq5crlATzlc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=JvbEEkmA3WlOb6G35D7WmGESpls5v7avVDa6i8JMjImo5HDQgOfGYzzbFfAmk3Ow0u
	nWEimEhCUSA0i2SqsoJ74VDoezm8r2P4EhDK6+YkbDtvgZK31eQSUkyEI90YPK663Z06
	iSvvxnUDwFaiU3gzXNYHg+05ROzF6llfrqlA4=
MIME-Version: 1.0
Received: by 10.231.35.131 with SMTP id p3mr18887270ibd.87.1297173583591; Tue,
	08 Feb 2011 05:59:43 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 8 Feb 2011 05:59:43 -0800 (PST)
In-Reply-To: <1297162143.1350.25883.camel@rex>
References: <1297162143.1350.25883.camel@rex>
Date: Tue, 8 Feb 2011 08:59:43 -0500
Message-ID: <AANLkTimnuNqCeUnegEMrH9Vquf1fLsZ-j7Er9_DT-Ksg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky <poky@yoctoproject.org>
Subject: Re: Chasing fetcher issues in circles
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
X-List-Received-Date: Tue, 08 Feb 2011 14:00:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Feb 8, 2011 at 5:49 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Hi Bruce,
>
> I've been chasing a fetcher issue around in circles, I have something
> concrete to report back now.
>
> We need to have the fetcher code work for the kernel recipes without
> network access. The problem is that the kernel git recipe is complex,
> has multiple branches and supports a variety of configurations. The root
> of some of the problems is the chunk of anonymous python in
> kernel-yocto.bbclass.
>
> The trouble is we have a race between the variable PV being expanded
> *anywhere* and that anonymous python running. The race is that other
> anonymous python may run before the recipes anonymous python and that
> other code can touch trigger an expansion of PV.
>
> What happens if PV is expanded first?
>
> Basically, the fetcher variables aren't setup and it falls back to the
> UNDEFINED machine, the revisions are then set based on the undefined
> machine rather that the true machine branch and confusion ensues. Worse
> again, the fetcher can cache the first set of values it calculates.
>
> One symptom of this and how it triggers a network access is that
> SRCREV_machine can be set to "yocto/standard/base". I added:
>
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=32dbc70e86c3b186658dcaa84a8c7cd76a50e069
>
> a short while ago so at least this is something resolvable (the fetcher
> would do a "git ls-remote" on this) but it still means a network access
> and it still means the fetcher config is broken at some point and at
> risk of being cached.
>
> So firstly, to fulfil our network access concerns when the kernel is
> used with an undefined machine, we need one more SRCREV to be added to
> poky-default-revisions.inc. I've done this in the following rfc commit:
>
> http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/kernelchange&id=3e7e2a6d2c144a4f45e3cc37a75f78285987d1f9
>
>
> That is a valid fix we need regardless but I think this race window is
> what has been causing various people (like Darren and Tom) a lot of pain
> and I really want to stop that *ever* happening again.
>
> Even with the above change, it just stops us hitting the network, the
> race still happens and the data is inconsistent.
>
> So the takeaway is that the anonymous python isn't working. As far as I
> can tell we can do one of two things:
>
> a) If we really need some python code, there is a nasty way we can hack
> it in and ensure it runs before SRCPV is expanded. This is hacktastic
> but the patch is:
>
> http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/kernelchange&id=8c2105e563e1aa2271201b27242b2936b265c72d
>
> and I've confirmed this does actually work as intended.
>
> b) The other option is we reduce the amount of anonymous python and use
> other means to set the require variables.
>
> For example, the 2.6.34 bits could be turned into a separate class which
> overrides the default options and is only included by the 2.6.34
> recipe(s). For the branch manipulations performed in code it does look a
> little backwards since it looks like KMACHINE is following the old style
> kernel still. Shouldn't we be detecting the old style and converting
> that to new in the 2.6.34 case rather than converting existing variables
> to the .37 style?
>
> My worry here is that manipulating variables behind the user's back
> tends to confuse them so its fine for upgrading to a new version but
> doing it for our new default version is a little concerning.

I already have a complete re-factored set of kernel recipes here,
I was holding them back since I wasn't sure about introducing
churn in the 1.0 end of cycle. Sounds like I should dust them
off.

The anonymous python exists for one reason only:

  - to keep the fetcher happy, in particular when you try and build
    a new board.

Now that the fetcher has changed, the complexity can go. I'll try
and spin some re-worked classes shortly.

Cheers,

Bruce

>
> Anyhow, there is some food for thought here. The patches above did turn
> out a lot nicer looking than I thought they would when I started writing
> the email!
>
> Cheers,
>
> Richard
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

