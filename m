Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ww0-f41.google.com (mail-ww0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 044B6E00307
	for <poky@pokylinux.org>; Fri,  4 Nov 2011 12:15:22 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf27 with SMTP id 27so2436407wwf.2
	for <poky@pokylinux.org>; Fri, 04 Nov 2011 12:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xtzUbQ4CEs/zvhpGB7AwpZpQph7OT2p+fvay+Z9Kwjs=;
	b=v4wqET4KMgKAP2fMWkvTo6McO6h1FkK0HtbD3S6zpNeCzzsZFlRdiBOFtNm7C8YTaj
	kXommm+Px1jpXrz9dC6nxTMw7cUd/31qfTmw09N1yS/L5s3iwgTRPHP4UV2izUALfB8b
	hEz4L+JUpWQfIlfjilEkx7pWmM/u+uCmx7Rpg=
MIME-Version: 1.0
Received: by 10.180.95.134 with SMTP id dk6mr224523wib.59.1320434121739; Fri,
	04 Nov 2011 12:15:21 -0700 (PDT)
Received: by 10.180.96.169 with HTTP; Fri, 4 Nov 2011 12:15:21 -0700 (PDT)
In-Reply-To: <j9172o$j0s$1@dough.gmane.org>
References: <j9172o$j0s$1@dough.gmane.org>
Date: Fri, 4 Nov 2011 15:15:21 -0400
Message-ID: <CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: poky@pokylinux.org
Subject: Re: workflow - kernel config
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
X-List-Received-Date: Fri, 04 Nov 2011 19:15:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Nov 4, 2011 at 1:23 PM, Robert Berger
<gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> I'm playing with poky-edison-6.0 and the default 2.6.37.6 kernel on a
> beagle board with core-image-sato-sdk.
>
> Interestingly enough there is user space support e.g. for oprofile, but
> oprofile is not configured in the kernel.
>
> The same for lacencytop and powertop,...

We have feature descriptions for all of the above as components in the
linux-yocto
kernel repository, but they do need to be turned on and tested on a per board
basis.

We can trigger kernel options based on userspace packages being enabled or
disabled, but that still wouldn't be a guarantee that they'd work. The
options that
are within the tree are a documentation of what has actually been tested.

The 2.6.37 tree was a transition point,and we've continued standardizing the
options and feature set in the later kernels. For yocto 1.2 we'll have a better
defined and consistent set of feature blocks. It's a building process
and we move
forward.

As others will point out there are other/deeper beagle board BSPs and layers
(i.e. meta-texasinstruments) that likely already have support for these options\
(but I haven't checked recently), so that's an avenue to explore as well.

>
> So I was wondering what's the preferred workflow to start with the
> "yocto-default" kernel config and add kernel configuration options
> afterwards.
>
> What's I've tried so far is:
>
> bitbake virtual/kernel -c clean
> bitbake virtual/kernel -c configure
> bitbake virtual/kernel -c menuconfig
> bitbake virtual/kernel -c compile
> bitbake virtual/kernel -c deploy

This is one flow that will work to make changes to the default kernel, and
test them on a board. I use something like:

 bitbake -f -c configure linux-yocto
 bitbake -f -c menuconfig
 bitbake -c linux-yocto

after I've done an initial build/configure phase if I'm updating options.
But that's likely not the most efficient workflow either (I've got liberal
use of -f in there, since I'm a bit paranoid).

>
> Once I'll have a kernel config I'm happy with I would like to use a
> config file instead of menuconfig.

If you take the set of kernel options you are interested in, and put them
in a config fragment. i.e. my_options.cfg, you can simply add this to
the SRC_URI and those options will be applied to the kernel after all the
default ones have been applied.

Hope that helps a bit.

Bruce

>
> Please advise,
>
> Regards,
>
> Robert
> ...WANTED: Schroedinger's Cat. Dead or Alive.
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
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

