Return-Path: <walters@verbum.org>
Received: from out2.smtp.messagingengine.com (out2.smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB98DE00305
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 12:49:05 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id F0E55200D1
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 15:49:03 -0500 (EST)
Received: from frontend2.nyi.mail.srv.osa ([10.202.2.161])
	by compute4.internal (MEProxy); Mon, 14 Nov 2011 15:49:03 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:in-reply-to
	:references:content-type:content-transfer-encoding:message-id
	:mime-version; s=smtpout; bh=PSV9L6+urvJJaYdikEiKKP9Z2ME=; b=ZsB
	x7Jm86eZl9GlXSpbZgr3EfhTUpe7434R9/SnTtMw6eRg97jrcclQA7OGGDggKvSf
	oixv8siBBxLbBumZRbUgkJk169pz/azHlj3y0XER4rPbMALp+HoH+t2OYyGqLXAG
	7xLSbi2hZq7F2yJzk7PBiZHLFGNC0i8wVNViD8U0=
X-Sasl-enc: FEHYrudAkGBTNsKtZ4JJl/3JIYWP74dubMhWyguhrZau 1321303743
Received: from [192.168.1.6] (c-65-96-172-131.hsd1.ma.comcast.net
	[65.96.172.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id BAB7248250F;
	Mon, 14 Nov 2011 15:49:03 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Mon, 14 Nov 2011 15:48:36 -0500
In-Reply-To: <1321300592.26881.71.camel@ted>
References: <1321145853.14976.12.camel@lenny>
	<1321177671.26881.44.camel@ted> <1321297575.1741.4.camel@lenny>
	<1321300592.26881.71.camel@ted>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1321303717.1741.9.camel@lenny>
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
X-List-Received-Date: Mon, 14 Nov 2011 20:49:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-14 at 19:56 +0000, Richard Purdie wrote:

> The number of people who write cross safe autogen.sh scripts which do
> everything we need is unfortunately low.

Can you elaborate on this?  What are some common cross-unsafe problems?

So concretely here with gtk-doc, since we don't actually want to build
the documentation (because gtk-doc is native only for the exact same
reasons gobject-introspection is, and we've talked about that one).

The GNOME autogen.sh scripts will run "gtkdocize", which pretty much
just copies in gtk-doc.make and gtk-doc.m4.  We could reimplement that
with dummy copies, or build a lobotomized gtk-doc (this will require
perl-native but that's about it I think).

I'm experimenting with this now.

>  I do appreciate the gnome
> community may do better than others and things are improving over time.
> I'd not yet at a point where I'd trust even 10% of the autogen.sh
> scripts out there though.

The other thing we could do I guess is make it opt-in, like
OE_RUN_AUTOGEN=1 or something in individual recipes using
autotools.bbclass?



