Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id E69564C80AC3
	for <poky@pokylinux.org>; Wed, 20 Apr 2011 17:39:40 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QCg3f-00061I-5z
	for poky@pokylinux.org; Thu, 21 Apr 2011 00:39:39 +0200
Received: from ppp92-100-114-118.pppoe.avangarddsl.ru ([92.100.114.118])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 21 Apr 2011 00:39:39 +0200
Received: from yanok by ppp92-100-114-118.pppoe.avangarddsl.ru with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 21 Apr 2011 00:39:39 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Ilya Yanok <yanok@emcraft.com>
Date: Wed, 20 Apr 2011 22:39:26 +0000 (UTC)
Message-ID: <loom.20110421T003750-846@post.gmane.org>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
	<4DA758E6.7040606@intel.com>
	<BANLkTikLPSrRtUObRTSHFRdWS+h5pTuO0A@mail.gmail.com>
	<20110414211232.GM21027@jama.jama.net>
	<BANLkTingVKgsLe5vosf4yi3jWv9MA0zaKg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 92.100.114.118 (Mozilla/5.0 (compatible; Konqueror/4.4;
	Linux) KHTML/4.4.5 (like Gecko))
Subject: Re: Distro policy ?
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
X-List-Received-Date: Wed, 20 Apr 2011 22:39:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Chris,

Chris Larson <clarson@...> writes:
> > I guess he was talking about
> > require/include some.inc
> > used in recipe
> >
> > Then I had to copy some.inc to same folder there my recipe is. Even when
> > it's used in same path relative to layer top dir
> 
> Change the recipe to use require/include recipes/foo/bar.inc, relative
> to the top of the entry in BBPATH.

Yes, that's exactly the situation we have. Thanks for the tip!

Regards, Ilya.






