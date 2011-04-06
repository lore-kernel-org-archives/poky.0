Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A6964C80050
	for <poky@pokylinux.org>; Wed,  6 Apr 2011 14:25:06 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1Q7YLg-0006rx-Cu
	for poky@pokylinux.org; Wed, 06 Apr 2011 21:25:04 +0200
Received: from 79.167.110.181 ([79.167.110.181])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 06 Apr 2011 21:25:04 +0200
Received: from gmane by 79.167.110.181 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 06 Apr 2011 21:25:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 06 Apr 2011 22:22:31 +0300
Organization: Reliable Embedded Systems
Message-ID: <inieho$3ht$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.110.181
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: webkit with poky(yocto) on top of directfb and not X11
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
X-List-Received-Date: Wed, 06 Apr 2011 19:25:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to figure out how to get a webkit with yocto/poky built
without X11, but directfb instead.

Grepping through the poky tree that's what I see:

sato contains a webkit, which depends on gtk+, which runs on x11/clutter.

... but there is also a qt4-embedded package, which seems to run on top
of directfb and has a dependency with webkit.

Does this mean, that if I build/install qt4-embedded and kill the
X-server on a sato image that I'll have a webkit on top of directfb?

Is this supposed to be the right way to achieve webkit over directfb?

Please advise.

Regards,

Robert..."The IQ of the group is the lowest IQ of a member of the group
divided by the number of people in the group." - unknown

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



