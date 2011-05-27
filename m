Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gx0-f171.google.com (mail-gx0-f171.google.com
	[209.85.161.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCB274C800C1
	for <poky@pokylinux.org>; Fri, 27 May 2011 14:14:32 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk22 with SMTP id 22so1117044gxk.2
	for <poky@pokylinux.org>; Fri, 27 May 2011 12:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=/PA+K78QxzcxrsLaML9Gkr+ngymV5DlMeiHc3oC/JzA=;
	b=ZpxEvbQhYafzlzCEm+9FU1gl3GAyMDQORoYvlqiHadjQrrL9WFgAPGnmPDdLLzqV3k
	uf0juzkQcn17ELMOWxFzkmfw8a1nLVECBsOA/m3RE2ChZEcBdYUGbvztGiPbH8Q/qhjq
	IzGjcGRp6+UrBZpvLgGY0C/7G1mB6ACdTcgjI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=s7No9HBOrmGPDDXAaOXv8VvvfJVv1V2HZ/I4TcRasIX/di4MOkOonnCqxmBREIlTjt
	RygMcYxEVY6Rub3LwI9s4TRPVzzXLzu1BqixMWpeELzaygJPqMTMVB78lNUaFb8OD4Yf
	uZwHGf47A63X0o7zErnmlPG0fhm+CvMy9bArE=
MIME-Version: 1.0
Received: by 10.91.173.11 with SMTP id a11mr2359213agp.105.1306523672032; Fri,
	27 May 2011 12:14:32 -0700 (PDT)
Received: by 10.90.96.1 with HTTP; Fri, 27 May 2011 12:14:31 -0700 (PDT)
In-Reply-To: <loom.20110527T192603-897@post.gmane.org>
References: <loom.20110527T192603-897@post.gmane.org>
Date: Fri, 27 May 2011 15:14:31 -0400
Message-ID: <BANLkTik5JJDMYnJqyMYSO0faEtCTqwuChw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Holger Freyther <holger@freyther.de>
Cc: poky@pokylinux.org
Subject: Re: Impressions of using Poky to create a BSP
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
X-List-Received-Date: Fri, 27 May 2011 19:14:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, May 27, 2011 at 1:42 PM, Holger Freyther <holger@freyther.de> wrote=
:
> Hi all,
>
> I hope these impressions are useful. In the last two days I added a BSP f=
or a
> TI Davinci based system and I am afraid it was a bit harder than I think =
it
> should be. This is a summary of the underlying issues (without them being
> debugged or completely understood).
>
> meta-skeleton and BBFILES:
> =A0 - Maybe it would be nice if the file glob would list *.bbappend as I =
think
> =A0 =A0 many people want to use it.
>
> BBLAYERs and dependencies:
> =A0 =A0- I had changed BBFILES to list *.bbappend but the change didn't t=
ake
> =A0 =A0 =A0effect. I had to touch conf/local.conf to force a re-parse. So=
 somehow
> =A0 =A0 =A0the layers config didn't end up in dependencies.
>
> fetch vs. fetch2:
> =A0 =A0- I wanted to fetch my kernel from my internal git/ssh repository.=
 I was
> =A0 =A0 =A0not sure where to put the username (git://foo@bar or git://bar=
;user=3Dfoo)
> =A0 =A0 =A0so I was experimenting a bit. This triggered me being banned f=
rom my
> =A0 =A0 =A0server (fail2ban) so the git process on the buildhost got stuc=
k and I
> =A0 =A0 =A0backgrounded bitbake with CTRL+Z.
>
> =A0 =A0- Then I tried bitbake -cfetch virtual/kernel again and it didn't =
do anything,
> =A0 =A0 =A0it took me a while to think that it might wait on a lock. I th=
ink it would be
> =A0 =A0 =A0great if this could be printed somewhere (if my understanding =
of this is
> =A0 =A0 =A0correct).
>
> =A0 =A0- Also it was not obvious to find out which of the two fetchers ar=
e used..
>
>
> Adding a kernel:
> =A0 =A0 - So by default the linuxdummy is used, but I wanted to build my =
kernel,
> =A0 =A0 =A0 I started off by copying the yocto kernel recipes. This creat=
es a very funny
> =A0 =A0 =A0 bug. My kernel didn't have the meta branch, the task to test =
the branches
> =A0 =A0 =A0 executes git log for the branch and this is failing.
> =A0 =A0 =A0 The symptoms are not obvious at all. An empty log file is lef=
t behind.

Was this out of master ? There's been some commits and sanity checks
added just recently that emit clear messages if you don't have things like
the meta branch, or the right configuration. Auto creation of meta data is
also in the tree now.

This is also a failing of the docs if this wasn't clear, we can look into t=
hat
as well.

>
> =A0 =A0 - I was using the yocto kernel recipes incorrectly and ended up w=
ith a logfile
> =A0 =A0 =A0 that pointed to itself for details but nothing else.
>
> =A0 =A0 - In the end I used a minimal kernel recipe, it would be nice to =
either have
> =A0 =A0 =A0 an easy way to 'produce' a yocto like kernel of a simple kern=
el recipe in
> =A0 =A0 =A0 the skeletons.

There's a 1.1 feature for this, and it will actually be sent out
shortly. There's
the ability to auto create meta data, using any upstream source, and the
ability to build from arbitrary upstream repos.

Both of these are supposed to be transitional aids though, since if you are
basing something on the linux-yocto kernel(s), it's best to actually use th=
e
uptream kernel (branches and all) and create BSP branches on it.

>
> Python Exceptions:
> =A0 =A0 - Building something that is not provided gives a python exceptio=
n
> =A0 =A0 - Adding a task that does not exist gives a python exception
> =A0 =A0 - I think it would be nice to have meaningful error messages. Spe=
cially
> =A0 =A0 =A0 the laters runs into something like:
> =A0 =A0 =A0if not Data:
> =A0 =A0 =A0 =A0 =A0 print "BLA BLA"
> =A0 =A0 =A0use(data)
>
> Machine Extra Depends:
> =A0 =A0 - I was using the core-minimal-image but wanted to have some of m=
y
> =A0 =A0 =A0 kernel modules installed. After finding the name that task-co=
re-boot
> =A0 =A0 =A0 is using I tried to do bitbake -cclean task-core-boot; bitbak=
e the-image
> =A0 =A0 =A0 but this didn't end up with a task-core-boot to carry my depe=
nds.
> =A0 =A0 =A0 I had to resort to using bitbake -b task-core-boot.bb to buil=
d =A0it, I am not
> =A0 =A0 =A0 sure why it failed when running from within the normal bitbak=
e. IIRC it
> =A0 =A0 =A0 continued to be like this even after I removed tmp/cache.
>
> I hope this point of view is helpful.

It' definitely helps me, I think a lot has already been addressed, and this
should be a seamless process from the kernel build point of view.

cheers,

Bruce

>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

