Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id E33004C80AAF
	for <poky@pokylinux.org>; Wed, 20 Apr 2011 17:45:06 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QCg8u-0000uC-SK
	for poky@pokylinux.org; Thu, 21 Apr 2011 00:45:04 +0200
Received: from ppp92-100-114-118.pppoe.avangarddsl.ru ([92.100.114.118])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 21 Apr 2011 00:45:04 +0200
Received: from yanok by ppp92-100-114-118.pppoe.avangarddsl.ru with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 21 Apr 2011 00:45:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Ilya Yanok <yanok@emcraft.com>
Date: Wed, 20 Apr 2011 22:44:30 +0000 (UTC)
Message-ID: <loom.20110421T004300-962@post.gmane.org>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
	<1302817417.8711.2.camel@scimitar>
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
X-List-Received-Date: Wed, 20 Apr 2011 22:45:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Joshua,

Joshua Lock <josh@...> writes:
> > So far we have put our distro-related changes into a separate layer
> > but it seems that it was not so good idea: it looks like bitbake
> > can't include files from one layer to another and we have to copy
> > includes even if we don't want to change them.
> 
> You can you just have to use a path from the top of the BBPATH entry for

Thanks for the advice, this really does help.

Regards, Ilya.



