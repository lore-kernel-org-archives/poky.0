Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id E63254C80A70
	for <poky@pokylinux.org>; Wed, 20 Apr 2011 17:56:19 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QCgJm-0007De-AF
	for poky@pokylinux.org; Thu, 21 Apr 2011 00:56:18 +0200
Received: from ppp92-100-114-118.pppoe.avangarddsl.ru ([92.100.114.118])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 21 Apr 2011 00:56:18 +0200
Received: from yanok by ppp92-100-114-118.pppoe.avangarddsl.ru with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 21 Apr 2011 00:56:18 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Ilya Yanok <yanok@emcraft.com>
Date: Wed, 20 Apr 2011 22:56:06 +0000 (UTC)
Message-ID: <loom.20110421T004655-703@post.gmane.org>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
	<4DA758E6.7040606@intel.com>
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
X-List-Received-Date: Wed, 20 Apr 2011 22:56:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Saul,

Saul Wold <saul.wold@...> writes:
> I would like to get more details about which include files (.incs) you 
> are needing to modify.  I know that there was some discussion at ELC 
> this week about similar issues.  I also know that we have a "Layering 
> Tools" item on the 1.1 feature list to address these issues.

We had one problem with the recipes that need to include files from the main
layer. Thanks to the guy now I know that I just need to use the full path to
solve this.
Another problem was a strange one. It was about poky's distro includes. When I
started working on our distro I've just copied conf/distro/poky.conf to our new
layer with new name and changed it a bit. This worked but I got a bunch of
warnings about multiply providers. Then I've copied the conf/distro/include
directory into our layer and all these warnings gone. Unfortunately I can't
reproduce this behavior any more.

So, it looks like we have solved the problem with includes and now we are fine
with our own layer.

Thanks for your help, guys!

Regards, Ilya.



