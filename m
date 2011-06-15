Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D7D34C800FB
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 06:47:13 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWoYy-0007uk-HV
	for poky@pokylinux.org; Wed, 15 Jun 2011 13:47:12 +0200
Received: from 79.167.211.68 ([79.167.211.68])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 13:47:12 +0200
Received: from gmane by 79.167.211.68 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 13:47:12 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 15 Jun 2011 14:46:58 +0300
Organization: Reliable Embedded Systems
Message-ID: <ita63j$kig$1@dough.gmane.org>
References: <it8ite$i96$1@dough.gmane.org> <4DF80B84.9000304@linux.intel.com>
	<4DF890F0.1020307@reliableembeddedsystems.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.211.68
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DF890F0.1020307@reliableembeddedsystems.com>
Subject: Re: bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Wed, 15 Jun 2011 11:47:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I found some more info here:

http://thread.gmane.org/gmane.comp.hardware.beagleboard.user/20438/match=compile+u+boot+bb+xm+rev+b

Those are the patches, which we could search for/try:

MLO (upstream):
http://gitorious.org/x-loader/x-loader/commit/2efa178acd56d83c86210b5934895cfb9ea62125

u-boot (upstream):
http://git.denx.de/?p=u-boot.git;a=commitdiff;h=f6e593bb1255d1e15201cb5dec8c95264489e729
(reports unknown version, but works)

kernel:
http://gitorious.org/beagleboard-validation/linux/commit/bfca58987039791522d1821e0506f8a113a0c239
(looks like this one still needs to be cleaned up and submitted upstream
-- any help is useful here)

Regards,

Robert

...The significant problems we face cannot be solved at the same level
of thinking we were at when we created them. - Albert Einstein

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



