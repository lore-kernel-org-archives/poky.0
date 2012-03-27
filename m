Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BB7EE0070C
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 11:36:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Mar 2012 11:36:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="122324446"
Received: from unknown (HELO [10.255.12.50]) ([10.255.12.50])
	by orsmga001.jf.intel.com with ESMTP; 27 Mar 2012 11:36:51 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20120327182201.96C5E2002FF@gemini.denx.de>
References: <4F71D17B.2030200@mlbassoc.com> <1332859973.3854.15.camel@elmorro>
	<20120327174316.CB8CB2002FF@gemini.denx.de>
	<1332870781.20140.12.camel@elmorro>
	<20120327182201.96C5E2002FF@gemini.denx.de>
Date: Tue, 27 Mar 2012 13:37:19 -0500
Message-ID: <1332873439.20140.22.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Strange file names
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
X-List-Received-Date: Tue, 27 Mar 2012 18:36:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-27 at 20:22 +0200, Wolfgang Denk wrote:
> Dear Tom Zanussi,
> 
> In message <1332870781.20140.12.camel@elmorro> you wrote:
> >
> > > Arghhh... This is totally broken. Do not do this.
> > 
> > Why do you say so - they're legal filenames and useful for this purpose?
> 
> Not anything that is legal (in the sense that it stretches the
> technical possibilities to the limit) actually makes sense.
> 
> Yes, Unix allows nearly arbitrary file names.  Yes, it is technically
> possible to store the source code of a program or a script in a file
> name.  The fact that nobody does this should make you think if this is
> a clever approach that nobody else could figure out, or if it is just
> plain ......
> 

Yeah, as I mentioned, the motivation was that it seemed the most
straightforward thing to do, notwithstanding the ugliness of the file
names.

> Please consider the mental welfare of the people who have to maintain
> that code after you, who have to type file names like "{{ if
> kernel_choice == "linux-yocto-rt_3.2": }} linux-yocto-rt_3.2.bbappend".
> 

Believe me, I did consider it, since I was the one who had to time them
in in the first place. ;-).

And I have to agree, it is a pain to edit them, mainly because of the
need for quotes - actually I finally resorted to using Nautilus which
made it much easier.

In the end, I balanced that against the fact that it would be very few
people editing these files very rarely (once a release basically), and
decided to do it anyway.

> Even standard commands like "ls" produce output that make my toe nails
> roll up:
> 
> $ ls scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/
> files
> {{ if kernel_choice == "linux-yocto_3.0": }} linux-yocto_3.0.bbappend
> {{ if kernel_choice == "linux-yocto_3.2": }} linux-yocto_3.2.bbappend
> {{ if kernel_choice == "linux-yocto-rt_3.0": }} linux-yocto-rt_3.0.bbappend
> {{ if kernel_choice == "linux-yocto-rt_3.2": }} linux-yocto-rt_3.2.bbappend
> kernel-list.noinstall
> $
> 
> PLEASE do not to this!
> 

If everyone really hates this, I'm perfectly happy with getting rid of
it - it's supposed to be a usability tool after all, and I definitely
don't want to be doing the opposite...

Tom

> Best regards,
> 
> Wolfgang Denk
> 



