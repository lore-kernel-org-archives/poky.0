Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73E3A4C8085F
	for <poky@pokylinux.org>; Mon, 17 Jan 2011 18:00:06 -0600 (CST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1PeyzV-000429-18
	for poky@pokylinux.org; Tue, 18 Jan 2011 01:00:05 +0100
Received: from ppp92-100-104-77.pppoe.avangarddsl.ru ([92.100.104.77])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 18 Jan 2011 01:00:05 +0100
Received: from yanok by ppp92-100-104-77.pppoe.avangarddsl.ru with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 18 Jan 2011 01:00:05 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Ilya Yanok <yanok@emcraft.com>
Date: Mon, 17 Jan 2011 23:55:45 +0000 (UTC)
Message-ID: <loom.20110118T004536-689@post.gmane.org>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-3-git-send-email-aalonso@secretlab.ca>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 92.100.104.77 (Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20110107 Iceweasel/3.5.16 (like Firefox/3.5.16))
Subject: Re: [PATCH 03/25] gcc: crosssdk unset TARGET_FPU
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
X-List-Received-Date: Tue, 18 Jan 2011 00:00:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Adrian,

Adrian Alonso <aalonso@...> writes:

> 
> * Configure fails due that --with-float=soft
>   flag isn't supportted by powerpc arch

That's not true. PowerPC support soft-float (and we actually need this for
MPC8308 which has e300c3 core without FPU).

For me, configure fails with the same message but that's not because PowerPC
lacks support for soft-float but cause gcc-crosssdk recipe passes wrong
--target= option to the configure script (for me it's x86_86-pokysdk-linux, I'm
building on the x86_64 host).

> * Unsetting TARGET_FPU this flag to not try to use
>   this flag

So please do NOT unset TARGET_FPU, some targets really need it. I'm looking
forward to see a correct solution for this issue.

Regards, Ilya.



