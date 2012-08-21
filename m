Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F2C4E01304
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 15:11:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7LMBLqH017167;
	Tue, 21 Aug 2012 23:11:21 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15911-06; Tue, 21 Aug 2012 23:11:17 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7LMBBYG017161
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 21 Aug 2012 23:11:12 +0100
Message-ID: <1345587073.3907.101.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Aug 2012 23:11:13 +0100
In-Reply-To: <CAMKF1sqHnvv0863VfSeXA00q2wR0+5hxmooSuP=MH8MeMjPZmQ@mail.gmail.com>
References: <1345533440.3907.43.camel@ted>
	<CAMKF1sqHnvv0863VfSeXA00q2wR0+5hxmooSuP=MH8MeMjPZmQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: atom-pc: Drop glibc --with-tls option, its now the only option for glibc
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 22:11:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-08-21 at 10:40 -0700, Khem Raj wrote:
> On Tue, Aug 21, 2012 at 12:17 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > This option is unused by (e)glibc since 2011 and is the default. It has been
> > shown to interact badly with the configure option in ia32-base.inc from meta-intel
> > causing a rebuild of the whole system despite the only change being an
> > assignment with += vs =. The easiest fix is simply to drop it.
> 
> yes, is TLS disabled got atompc somehow ?

No, one has GLIBC_EXTRA_OECONF = "--with-tls" and the other
GLIBC_EXTRA_OECONF = " --with-tls" so bitbake sees them as different and
rebuilds things it shouldn't.

I was going to move this to the eglibc recipe but since its not needed
at all, its simpler just to drop it.

Cheers,

Richard


> >
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > ---
> > diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
> > index 38db414..92d5938 100644
> > --- a/meta-yocto/conf/machine/atom-pc.conf
> > +++ b/meta-yocto/conf/machine/atom-pc.conf
> > @@ -35,7 +35,6 @@ IMAGE_FSTYPES ?= "ext3.lzma live"
> >  APPEND += "usbcore.autosuspend=1"
> >
> >  GLIBC_ADDONS = "nptl"
> > -GLIBC_EXTRA_OECONF = "--with-tls"
> >
> >  EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
> >


