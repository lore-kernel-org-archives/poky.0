Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 506304C801BF
	for <poky@pokylinux.org>; Mon,  6 Jun 2011 04:21:22 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QTVzr-0003rB-NR
	for poky@pokylinux.org; Mon, 06 Jun 2011 11:21:19 +0200
Received: from 91-64-83-241-dynip.superkabel.de ([91.64.83.241])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Mon, 06 Jun 2011 11:21:19 +0200
Received: from holger by 91-64-83-241-dynip.superkabel.de with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Mon, 06 Jun 2011 11:21:19 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Holger Freyther <holger@freyther.de>
Date: Mon, 6 Jun 2011 09:21:00 +0000 (UTC)
Message-ID: <loom.20110606T111958-415@post.gmane.org>
References: <loom.20110606T110858-586@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 91.64.83.241 (Mozilla/5.0 (X11;
	Linux i686) AppleWebKit/534.26+ (KHTML, like Gecko) Version/5.0
	Safari/534.26+ Ubuntu/10.10 (2.30.6-1ubuntu5) Epiphany/2.30.6)
Subject: Re: udev/modutils issues with the system bringup
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
X-List-Received-Date: Mon, 06 Jun 2011 09:21:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Holger Freyther <holger@...> writes:

> #!/bin/sh -e
> ...
> if [ -e /etc/dev.tar ]; then 
>         (cd /; tar xf /etc/dev.tar 2>&1 | grep -v 'time stamp')
>         not_first_boot=1
> fi

Okay, it is efce51ec11cc2a908833e80b65d2f5db81bb2fec which only works
if the time is broken... I assume one wants to add an || true or such to the
command.


