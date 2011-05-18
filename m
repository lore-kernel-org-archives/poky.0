Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DF0E4C8016A
	for <poky@pokylinux.org>; Wed, 18 May 2011 17:31:47 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QMpHM-0008Ru-Um
	for poky@pokylinux.org; Thu, 19 May 2011 00:31:44 +0200
Received: from ppp079166115099.dsl.hol.gr ([79.166.115.99])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 19 May 2011 00:31:44 +0200
Received: from gmane by ppp079166115099.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 19 May 2011 00:31:44 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 19 May 2011 01:31:28 +0300
Organization: Reliable Embedded Systems
Message-ID: <ir1hc0$ua8$1@dough.gmane.org>
References: <4DD3EC1E.7090603@eml.cc>	<BANLkTintAKomO8L+tJvSO7MBB7zYAWSG+w@mail.gmail.com>
	<4DD40649.3070906@eml.cc>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166115099.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DD40649.3070906@eml.cc>
Subject: Re: Problems creating a new BSP
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 May 2011 22:31:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Tim,

On 05/18/2011 08:47 PM, Tim Cussins wrote:
> great - that's making progress now. fyi the kernel build itself is
> breaking now, but i reckon i can deal to that :)
> 
> Thanks heaps!
> T
> 

Once you get your kernel compiling would you mind making your working
solution available somewhere?
That could serve as a template for others (like myself) since what you
try to do is something people will try all the time.

At the moment I'm compiling kernels and boot loaders outside of poky,
just utilizing the cross toolchain, but if it's simple enough to add a
BSP I would give it a try.

Regards,

Robert..."Software is getting slower more rapidly than hardware becomes
faster." - Niklaus Wirth, who attributed it to Martin Reiser.

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



