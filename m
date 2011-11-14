Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30539E00305
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 14:44:17 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAEMiF5L018132;
	Mon, 14 Nov 2011 22:44:15 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16583-05; Mon, 14 Nov 2011 22:44:10 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAEMi68t018126
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Nov 2011 22:44:09 GMT
Message-ID: <1321310649.26881.103.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
Date: Mon, 14 Nov 2011 22:44:09 +0000
In-Reply-To: <1321303717.1741.9.camel@lenny>
References: <1321145853.14976.12.camel@lenny>
	<1321177671.26881.44.camel@ted> <1321297575.1741.4.camel@lenny>
	<1321300592.26881.71.camel@ted> <1321303717.1741.9.camel@lenny>
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
X-List-Received-Date: Mon, 14 Nov 2011 22:44:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-14 at 15:48 -0500, Colin Walters wrote:
> On Mon, 2011-11-14 at 19:56 +0000, Richard Purdie wrote:
> 
> > The number of people who write cross safe autogen.sh scripts which do
> > everything we need is unfortunately low.
> 
> Can you elaborate on this?  What are some common cross-unsafe problems?

Well, I went and looked at the gnome-common autogen stuff. Its not a
cross specific problem in this case but it does seem to
reinvent/reimplement pieces of what autoconf/pkgconfig is supposed to
do. Compare/check autoconf version? automake version? pkg-config
dependencies present? Why? The whole point of autoconf was to avoid
having these scripts :(

Examples of cross unsafe issues we've seen are libtool macros not being
updated and old versions used for the reconf. Forcibly running configure
from the script with options we don't want (or not including options we
do need). We do have some autotools* flags we pass in ourselves too
since the autotools we're using are slightly tweaked to avoid certain
cross bugs. There is also confusion about whether to force copies of
file or not (we always do).

Using those scripts just adds so much unpredictability to the
system :(. 

> So concretely here with gtk-doc, since we don't actually want to build
> the documentation (because gtk-doc is native only for the exact same
> reasons gobject-introspection is, and we've talked about that one).
> 
> The GNOME autogen.sh scripts will run "gtkdocize", which pretty much
> just copies in gtk-doc.make and gtk-doc.m4.  We could reimplement that
> with dummy copies, or build a lobotomized gtk-doc (this will require
> perl-native but that's about it I think).

Our current hack is really the former approach - add dummy copies in.
Its just a little incomplete and we should enhance it deal with that so
we can run gtkdocize.

> I'm experimenting with this now.
> 
> >  I do appreciate the gnome
> > community may do better than others and things are improving over time.
> > I'd not yet at a point where I'd trust even 10% of the autogen.sh
> > scripts out there though.
> 
> The other thing we could do I guess is make it opt-in, like
> OE_RUN_AUTOGEN=1 or something in individual recipes using
> autotools.bbclass?

We could do that, yes. What is the advantage over our current class code
(which I'll be the first to admit has faults but does seem to work)?

Cheers,

Richard


