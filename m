Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64237E00306
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 16:19:39 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAF0Jb2x019025;
	Tue, 15 Nov 2011 00:19:37 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18650-03; Tue, 15 Nov 2011 00:19:33 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAF0JURb019019
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Nov 2011 00:19:31 GMT
Message-ID: <1321316374.26881.123.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
Date: Tue, 15 Nov 2011 00:19:34 +0000
In-Reply-To: <1321315533.1741.26.camel@lenny>
References: <1321145853.14976.12.camel@lenny>
	<1321177671.26881.44.camel@ted> <1321297575.1741.4.camel@lenny>
	<1321300592.26881.71.camel@ted> <1321303717.1741.9.camel@lenny>
	<1321310649.26881.103.camel@ted> <1321315533.1741.26.camel@lenny>
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
X-List-Received-Date: Tue, 15 Nov 2011 00:19:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-14 at 19:05 -0500, Colin Walters wrote:
> On Mon, 2011-11-14 at 22:44 +0000, Richard Purdie wrote:
> 
> > Well, I went and looked at the gnome-common autogen stuff. Its not a
> > cross specific problem in this case but it does seem to
> > reinvent/reimplement pieces of what autoconf/pkgconfig is supposed to
> > do. Compare/check autoconf version? automake version? pkg-config
> > dependencies present? Why? The whole point of autoconf was to avoid
> > having these scripts :(
> 
> They serve a few purposes; one is simply helping people who check out a
> given module from git know they have compatible versions of the
> autotools.  This used to be a major problem, nowadays it's been a long
> time since any kind serious of autotools incompatibilities.

I certainly remember those days and can appreciate why this kind of
thing exists (we have the same problem with the OE codebase in many
ways).

> The still-relevant issue though is that autoreconf isn't extensible - in
> GNOME for better or worse we have two things that follow the auto* style
> (gtk-doc and intltool mainly) where they copy data into your system if
> building from git, and get shipped in tarballs so you don't need them at
> build time when building from tarballs.
> 
> But we have no way to tell autoreconf to run these tools currently.
> Maybe the right thing is to extend autoreconf but even if we did that,
> we'd have to wait some amount of time before assuming everyone had the
> modified autoreconf.
> 
> > Our current hack is really the former approach - add dummy copies in.
> > Its just a little incomplete and we should enhance it deal with that so
> > we can run gtkdocize.
> 
> Hmmm...so we'd be patching autotools.bbclass to grep for e.g.
> GTK_DOC_CHECK in configure.ac and if detected, copy in a dummy
> gtk-doc.make and gtk-doc.m4?
> 
> (And the same for intltool?)
> 
> I wouldn't object too much to that I guess, but I'd still prefer the
> solution where we opt-in to running autogen.sh for GNOME modules which
> use gtk-doc and/or intltool.

FWIW, we already do this for intltool:

	if grep "^[[:space:]]*[AI][CT]_PROG_INTLTOOL" $CONFIGURE_AC >/dev/null; then
	  bbnote Executing intltoolize --copy --force --automake
	  intltoolize --copy --force --automake
	fi

so we might even use gtkdocize, but have modified files for it to place
into the system. Strange as it might sound I'd actually like to be able
to generate the docs if possible. It is completely the same as the
introspection case where we need to be able to run target binaries or
could a set of -native binaries get us through of most of the difficult
bits?

The reason I mention docs is that we generate -doc packages. I have an
idea of being able to generate the technical reference that would go
alongside a given image. Obviously the gtkdoc pieces would be an
important part of that. Creating the -doc packages is part of that, the
remaining tricky part would then be indexing them in a sane way that was
useful and accessible.

Cheers,

Richard


