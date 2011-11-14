Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34A0DE00305
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 11:56:37 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAEJuZmg015780;
	Mon, 14 Nov 2011 19:56:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15395-04; Mon, 14 Nov 2011 19:56:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAEJuSJO015773
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Nov 2011 19:56:29 GMT
Message-ID: <1321300592.26881.71.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
Date: Mon, 14 Nov 2011 19:56:32 +0000
In-Reply-To: <1321297575.1741.4.camel@lenny>
References: <1321145853.14976.12.camel@lenny>
	<1321177671.26881.44.camel@ted> <1321297575.1741.4.camel@lenny>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: non-upstreamed patches
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
X-List-Received-Date: Mon, 14 Nov 2011 19:56:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-14 at 14:06 -0500, Colin Walters wrote:
> On Sun, 2011-11-13 at 09:47 +0000, Richard Purdie wrote:
> 
> > Totally agreed. We do have site cache files an a much better way of
> > handling that issue would be to add the value to the site cache. In an
> > ideal world I've have caught that patch and asked it to be a site entry,
> > it looks like its slipped through. I'll certainly take a site file entry
> > and change to drop the patch.
> 
> Ok, as I move forward I'll look at draining the patches here.  It'd be
> nice if we could try harder to avoid adding new ones though - that was
> my main goal with the mail.

Believe me, we're trying *very* hard to get the number of patches down!

> > > Another thing that seems to be proliferating is gtk-doc workarounds.  If
> > > it isn't working for you guys to --disable-gtk-doc, just tell me why and
> > > I'll fix it.
> > > 
> > This is a mess of our own making :/. You'd probably get a bit of a shock
> > if you look at our gtk-doc recipe. Since we reautoconf files, we need
> > the gtk-doc .m4 file. We just provide a static copy of it. To handle the
> > makefile, we just touch that.
> 
> Ah, I see.  Have you seen people.gnome.org/~walters/docs/build-api.txt ?
> 
> One of the reasons I wrote it is because in GNOME we need ./autogen.sh
> scripts because there's no easy way to teach the autotools about
> external dependencies.
> 
> What would you think about a patch to autotools.bbclass to just check
> for autogen.sh and run it (instead of the big mess of autoreconf/etc.
> hacks) if it exists?

The number of people who write cross safe autogen.sh scripts which do
everything we need is unfortunately low. I do appreciate the gnome
community may do better than others and things are improving over time.
I'd not yet at a point where I'd trust even 10% of the autogen.sh
scripts out there though.

I'm prepared to stick my neck out and state that the reautoconf we do
doesn't cause that much of a problem at this point and that class works
pretty well. The process for reautoconf'ing a package is pretty standard
when you get down to it. We did used to have a lot more hacky recipe
specific do_configure functions and we've managed to just have
the .bbclass code in most cases now too which is an achievement in
itself.

Cheers,

Richard


