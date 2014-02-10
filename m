Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91C5EE006F6
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 11:15:35 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id F10FD7DB; Mon, 10 Feb 2014 20:15:40 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from localhost (128-79-216-6.hfc.dyn.abo.bbox.fr [128.79.216.6])
	by mail.free-electrons.com (Postfix) with ESMTPSA id B1D3F7BE;
	Mon, 10 Feb 2014 20:15:40 +0100 (CET)
Date: Mon, 10 Feb 2014 20:15:33 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Olof Johansson <olof.johansson@axis.com>
Message-ID: <20140210191533.GC3194@piout.net>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
	<20140210094605.GI23583@axis.com> <20140210095533.GB3194@piout.net>
	<20140210145748.GM23583@axis.com>
MIME-Version: 1.0
In-Reply-To: <20140210145748.GM23583@axis.com>
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
X-List-Received-Date: Mon, 10 Feb 2014 19:15:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 10/02/2014 at 15:57:49 +0100, Olof Johansson wrote :
> On 14-02-10 10:55 +0100, Alexandre Belloni wrote:
> > What if a minor distro actually breaks ? :)
> 
> Debian have policies that limit the type of changes entering a
> stable point release, and it is my opinion that we can assume
> that a new point release doesn't break anything (to the level of
> insanity --- this is SANITY_TESTED_DISTROS we are talking about
> here), and then react to this not being the case instead of the
> other way around.
> 

I completely agree with you that a point release is unlikely to break
anything and continuing to update SANITY_TESTED_DISTROS is probably more
costly (that was the point of my smiley).

> It's quite unfortunate that we have to update it ~every other
> month. These changes are usually not backported to the stable
> branch of poky, and as such, people using it will have warnings
> about using a non-supported host distribution, even though this
> isn't the case.
> 

Anyway, I was under the feeling that people using poky to generate
production systems would even want to restrict what was in
SANITY_TESTED_DISTROS to make sure their developers are all using their
locally tested distribution.

-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

