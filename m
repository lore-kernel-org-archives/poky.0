Return-Path: <walters@verbum.org>
Received: from out2.smtp.messagingengine.com (out2.smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC36EE00305
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 16:06:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute5.internal (compute5.nyi.mail.srv.osa [10.202.2.45])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 887C020EB5
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 19:06:00 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute5.internal (MEProxy); Mon, 14 Nov 2011 19:06:00 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:in-reply-to
	:references:content-type:content-transfer-encoding:message-id
	:mime-version; s=smtpout; bh=iUhvJjsT+m6ZRoHR+GXxctflUn8=; b=ttQ
	koYgDSIL/vKvh3Os4CA2G5t/aHg9joypfygE0/piZZGXBiYmq0MKHPTQyj1cCmbR
	Ypd39oo5fQ0X3VYdpgF0P3gyqX2jgsBrOhbKUylZuMSmLL1HSGAGqGjwZLcn7PHp
	Z6sU4iFf2fmQtSnQ/dq4s3kFSoS4tBCD59ZT0M9M=
X-Sasl-enc: 0DEXiV6SZyllQD6Gq74fnSQfWqZI8LD0YbI7+SzDDCA1 1321315560
Received: from [192.168.1.6] (c-65-96-172-131.hsd1.ma.comcast.net
	[65.96.172.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3F4888E00AD;
	Mon, 14 Nov 2011 19:06:00 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Mon, 14 Nov 2011 19:05:33 -0500
In-Reply-To: <1321310649.26881.103.camel@ted>
References: <1321145853.14976.12.camel@lenny>
	<1321177671.26881.44.camel@ted> <1321297575.1741.4.camel@lenny>
	<1321300592.26881.71.camel@ted> <1321303717.1741.9.camel@lenny>
	<1321310649.26881.103.camel@ted>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1321315533.1741.26.camel@lenny>
Mime-Version: 1.0
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
X-List-Received-Date: Tue, 15 Nov 2011 00:06:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-14 at 22:44 +0000, Richard Purdie wrote:

> Well, I went and looked at the gnome-common autogen stuff. Its not a
> cross specific problem in this case but it does seem to
> reinvent/reimplement pieces of what autoconf/pkgconfig is supposed to
> do. Compare/check autoconf version? automake version? pkg-config
> dependencies present? Why? The whole point of autoconf was to avoid
> having these scripts :(

They serve a few purposes; one is simply helping people who check out a
given module from git know they have compatible versions of the
autotools.  This used to be a major problem, nowadays it's been a long
time since any kind serious of autotools incompatibilities.

The still-relevant issue though is that autoreconf isn't extensible - in
GNOME for better or worse we have two things that follow the auto* style
(gtk-doc and intltool mainly) where they copy data into your system if
building from git, and get shipped in tarballs so you don't need them at
build time when building from tarballs.

But we have no way to tell autoreconf to run these tools currently.
Maybe the right thing is to extend autoreconf but even if we did that,
we'd have to wait some amount of time before assuming everyone had the
modified autoreconf.

> Our current hack is really the former approach - add dummy copies in.
> Its just a little incomplete and we should enhance it deal with that so
> we can run gtkdocize.

Hmmm...so we'd be patching autotools.bbclass to grep for e.g.
GTK_DOC_CHECK in configure.ac and if detected, copy in a dummy
gtk-doc.make and gtk-doc.m4?

(And the same for intltool?)

I wouldn't object too much to that I guess, but I'd still prefer the
solution where we opt-in to running autogen.sh for GNOME modules which
use gtk-doc and/or intltool.



