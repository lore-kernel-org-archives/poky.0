Return-Path: <walters@verbum.org>
Received: from out5.smtp.messagingengine.com (out5.smtp.messagingengine.com
	[66.111.4.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77948E0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 10:45:22 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 8017620C66
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 13:45:21 -0500 (EST)
Received: from frontend2.nyi.mail.srv.osa ([10.202.2.161])
	by compute4.internal (MEProxy); Tue, 03 Jan 2012 13:45:21 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:in-reply-to
	:references:content-type:content-transfer-encoding:message-id
	:mime-version; s=smtpout; bh=yPMdwx7Nl47KnqIsBYT3uo3NIUQ=; b=O32
	OWShLtQ4zwjo3sl5I9yjzMLKJhsvqO1ZmpPG5y8YK9/vgTpaonau9HaXhapEMivA
	V1FxTEyIM2cJxl7qQ2WLHi1aDvBal42geFqyF89iuW4pQG8ws8TY+0BrzBdpSQ0a
	Ykzb0n6nPR3pQZ+NFJsSAW6DA2p2HStwnQyphW1E=
X-Sasl-enc: OwyE3vI2svSff8IlQwxjwomCcwlTkOJ2N01q5vm2aszN 1325616321
Received: from [192.168.0.148] (c-76-24-220-150.hsd1.ma.comcast.net
	[76.24.220.150])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3DD1E4827D7;
	Tue,  3 Jan 2012 13:45:21 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 03 Jan 2012 13:45:04 -0500
In-Reply-To: <1321315533.1741.26.camel@lenny>
References: <1321145853.14976.12.camel@lenny>
	<1321177671.26881.44.camel@ted> <1321297575.1741.4.camel@lenny>
	<1321300592.26881.71.camel@ted> <1321303717.1741.9.camel@lenny>
	<1321310649.26881.103.camel@ted> <1321315533.1741.26.camel@lenny>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1325616304.23339.8.camel@lenny>
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
X-List-Received-Date: Tue, 03 Jan 2012 18:45:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

>> On Mon, 2011-11-14 at 22:44 +0000, Richard Purdie wrote:

> > Our current hack is really the former approach - add dummy copies in.
> > Its just a little incomplete and we should enhance it deal with that so
> > we can run gtkdocize.

Revisiting this thread - so I've now created in GNOME git a tiny new
module "gtk-doc-stub" which contains enough bits to build modules from
git with --disable-gtk-doc.

http://git.gnome.org/browse/gtk-doc-stub

It should be enough to add this to Yocto, and then hacking up GNOME
modules to remove GTK_DOC_CHECK from configure.ac etc. should be
unnecessary.  I'm using it now in my self-hosting OS build tool to avoid
wading into Docbook dependency hell.




