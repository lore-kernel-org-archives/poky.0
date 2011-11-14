Return-Path: <walters@verbum.org>
Received: from out2.smtp.messagingengine.com (out2.smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 838AFE00305
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 11:06:43 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute1.internal (compute1.nyi.mail.srv.osa [10.202.2.41])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 1B65F210B0
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 14:06:42 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute1.internal (MEProxy); Mon, 14 Nov 2011 14:06:42 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:in-reply-to
	:references:content-type:content-transfer-encoding:message-id
	:mime-version; s=smtpout; bh=plr3RZlOjwX7QvEILIEC7yJ3kvU=; b=NEv
	xh6iylyjDpQr8sLe60Gkrm4VlSZJfTQosNEOBXjCSSiKO48APpwtjdLuKBjgICe6
	IXKa01vDs5ZEWlaJa2JvG7x0YaNZZeKea4jwaGSo8ek1DD/TSVnHXXbBmAN3b3o9
	p9SS8AQledOdQ7XEhJS6LyIM3IWMibQiP2q25S48=
X-Sasl-enc: bl3zIt9wJtGvN4PPlKln7L5ncdrXMf25E7nF+KZayrm1 1321297601
Received: from [192.168.1.6] (c-65-96-172-131.hsd1.ma.comcast.net
	[65.96.172.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id D15588E009E;
	Mon, 14 Nov 2011 14:06:41 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Mon, 14 Nov 2011 14:06:14 -0500
In-Reply-To: <1321177671.26881.44.camel@ted>
References: <1321145853.14976.12.camel@lenny> <1321177671.26881.44.camel@ted>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1321297575.1741.4.camel@lenny>
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
X-List-Received-Date: Mon, 14 Nov 2011 19:06:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-11-13 at 09:47 +0000, Richard Purdie wrote:

> Totally agreed. We do have site cache files an a much better way of
> handling that issue would be to add the value to the site cache. In an
> ideal world I've have caught that patch and asked it to be a site entry,
> it looks like its slipped through. I'll certainly take a site file entry
> and change to drop the patch.

Ok, as I move forward I'll look at draining the patches here.  It'd be
nice if we could try harder to avoid adding new ones though - that was
my main goal with the mail.

> > Another thing that seems to be proliferating is gtk-doc workarounds.  If
> > it isn't working for you guys to --disable-gtk-doc, just tell me why and
> > I'll fix it.
> > 
> This is a mess of our own making :/. You'd probably get a bit of a shock
> if you look at our gtk-doc recipe. Since we reautoconf files, we need
> the gtk-doc .m4 file. We just provide a static copy of it. To handle the
> makefile, we just touch that.

Ah, I see.  Have you seen people.gnome.org/~walters/docs/build-api.txt ?

One of the reasons I wrote it is because in GNOME we need ./autogen.sh
scripts because there's no easy way to teach the autotools about
external dependencies.

What would you think about a patch to autotools.bbclass to just check
for autogen.sh and run it (instead of the big mess of autoreconf/etc.
hacks) if it exists?



