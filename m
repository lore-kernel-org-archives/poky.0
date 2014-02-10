Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 720E4E00764
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 01:55:38 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id B55AD845; Mon, 10 Feb 2014 10:55:40 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from localhost (128-79-216-6.hfc.dyn.abo.bbox.fr [128.79.216.6])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 68C007CA;
	Mon, 10 Feb 2014 10:55:40 +0100 (CET)
Date: Mon, 10 Feb 2014 10:55:34 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Olof Johansson <olof.johansson@axis.com>
Message-ID: <20140210095533.GB3194@piout.net>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
	<20140210094605.GI23583@axis.com>
MIME-Version: 1.0
In-Reply-To: <20140210094605.GI23583@axis.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: Add Debian-7.4 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 10 Feb 2014 09:55:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 10/02/2014 at 10:46:05 +0100, Olof Johansson wrote :
> On 14-02-10 10:37 +0100, Olof Johansson wrote:
> > Signed-off-by: Olof Johansson <olof.johansson@axis.com>
> > ---
> >  meta-yocto/conf/distro/poky.conf | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> > index 9f45b6c..b04c597 100644
> > --- a/meta-yocto/conf/distro/poky.conf
> > +++ b/meta-yocto/conf/distro/poky.conf
> > @@ -86,6 +86,7 @@ SANITY_TESTED_DISTROS ?= " \
> >              Debian-7.1 \n \
> >              Debian-7.2 \n \
> >              Debian-7.3 \n \
> > +            Debian-7.4 \n \
> >              SUSE-LINUX-12.2 \n \
> >              openSUSE-project-12.3 \n \
> >              "
> 
> Is somebody working on wildcards in SANITY_TESTED_DISTROS? Would
> be nice for Debian-7.x :-).
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5265
> 

What if a minor distro actually breaks ? :)

Then you won't get a warning until someone updates the regex to
explicitly exclude that minor version.

I would agree that hte chances are quite small but they do exist ;)

-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

