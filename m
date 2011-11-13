Return-Path: <walters@verbum.org>
Received: from out2.smtp.messagingengine.com (out2.smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1EE4E00304
	for <poky@yoctoproject.org>; Sat, 12 Nov 2011 16:58:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute6.internal (compute6.nyi.mail.srv.osa [10.202.2.46])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 6B825204BD
	for <poky@yoctoproject.org>; Sat, 12 Nov 2011 19:58:00 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute6.internal (MEProxy); Sat, 12 Nov 2011 19:58:00 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:content-type
	:content-transfer-encoding:message-id:mime-version; s=smtpout;
	bh=rTO5GvWmJXkSnQXzQ+QDDiObIBM=; b=NvEbgnqUtQUTjiJSdcp+KP5+JXbc
	3SOuR0UtLYyg6ut7i9YRYmQy5YKXXT1cMnV0dLuPiUcCSnOf7Mr35a6aB95qlG9G
	ooAc/va4KZ5zPkz2iCG/EaCgyOxgasXfCI1zKryAaOrR66NWNEq12OC10e3lep39
	bVFIzHm78HEBpRg=
X-Sasl-enc: 6v9RgWT6KDU1HE+0z4YCRvNoXcYUTGZiScnlfo92ITE5 1321145880
Received: from [192.168.1.6] (c-65-96-172-131.hsd1.ma.comcast.net
	[65.96.172.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id 32D8A8E00FE;
	Sat, 12 Nov 2011 19:58:00 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: poky@yoctoproject.org
Date: Sat, 12 Nov 2011 19:57:33 -0500
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1321145853.14976.12.camel@lenny>
Mime-Version: 1.0
Subject: non-upstreamed patches
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
X-List-Received-Date: Sun, 13 Nov 2011 00:58:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

So I've switched back to looking at Yocto again for a project, and the
Edison release works fine.  Thanks!

I work on GNOME (almost all of it), and I see quite a number of patches
in the Yocto tree that I think have been inappropriately categorized as
Upstream-Status: Inappropriate.

For example,
recipies-core/glib-2.0/glib-2.0/remove.test.for.qsort_r.patch

We definitely want upstream GLib to work for cross builds.  It was my
understanding that the better way to handle autoconf checks that require
running code was to pass a precomputed cache file:
http://www.gnu.org/s/hello/manual/autoconf/Site-Defaults.html

I think this makes sense to do for fundamental libraries like GLib;
hacking up the configure.ac isn't a good long term plan.

Another thing that seems to be proliferating is gtk-doc workarounds.  If
it isn't working for you guys to --disable-gtk-doc, just tell me why and
I'll fix it.

(The -Werror bit there is a total fuckup on our part, I will eventually
convince Owen to remove it...)

librsvg/librsvg-2.31.1/doc_Makefile.patch is also TOTALLY appropriate
upstream.  Why would you think it isn't?

gtk+/gtk+-2.24.6/run-iconcache.patch is another cross build issue that
I'm pretty sure we can solve better upstream.  gtk+ for example already
has an automake conditional:
AM_CONDITIONAL(CROSS_COMPILING, test $cross_compiling = yes)

We can just not run this code if that's true.

(And I am totally fine with just copying that conditional into every
single GNOME module).

hardcoded_libtool.patch is another one I think we can get upstream in a
better way; shouldn't it just be using $LIBTOOL ?

Finally, on the Upstream-Status: pending patches, can you guys please
add links to bugzilla?

Thanks!



