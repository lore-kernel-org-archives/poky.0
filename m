Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA0A64C80479
	for <poky@pokylinux.org>; Fri, 24 Jun 2011 05:56:09 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1Qa43U-0002Fl-6Y
	for poky@pokylinux.org; Fri, 24 Jun 2011 12:56:08 +0200
Received: from ppp92-100-107-10.pppoe.avangarddsl.ru ([92.100.107.10])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 24 Jun 2011 12:56:08 +0200
Received: from yanok by ppp92-100-107-10.pppoe.avangarddsl.ru with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 24 Jun 2011 12:56:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: IlyaYanok <yanok@emcraft.com>
Date: Fri, 24 Jun 2011 10:55:55 +0000 (UTC)
Message-ID: <loom.20110624T125343-935@post.gmane.org>
References: <4DFA2CFF.6020003@emcraft.com> <4DFA5335.9030102@windriver.com>
	<BANLkTin40ecGy8RBEbfaRKEXY6Lu-YrALA@mail.gmail.com>
	<201106171144.00118.paul.eggleton@linux.intel.com>
	<BANLkTinYzLcQnH3msGfivi8BAB_MPfjucQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 92.100.107.10 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/534.30 (KHTML, like Gecko)
	Chrome/12.0.742.100 Safari/534.30)
Subject: Re: bbappend and require
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
X-List-Received-Date: Fri, 24 Jun 2011 10:56:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,

Chris Larson <clarson@...> writes:
> > I think it's clear from Ilya's message that he means the require command. To
> > me it's not clear however whether using "require" (or "include" for that
> > matter) means that bbappends should also be included. I can certainly see how
> > someone could assume that they would be.

Thanks for the explanation guys! That's what I wanted to hear.

Regards, Ilya.




