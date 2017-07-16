Return-Path: <glep-poky@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B9FCE00C25; Sun, 16 Jul 2017 16:30:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_50,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4976]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 903 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Jul 2017 16:30:21 PDT
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4492E00BDA
	for <poky@yoctoproject.org>; Sun, 16 Jul 2017 16:30:21 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <glep-poky@m.gmane.org>) id 1dWskj-0006BI-Ki
	for poky@yoctoproject.org; Mon, 17 Jul 2017 01:15:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Sun, 16 Jul 2017 23:12:09 +0000 (UTC)
Message-ID: <okgrs9$cr9$1@blaine.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: Build core2 (i686) U-Boot for a core-i7 (amd64) image
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 16 Jul 2017 23:30:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On edison U-Boot is 32 bit. I'm building a 64 bit kernel + rootfs.

The only recipy that fails is U-Boot with:
undefined reference to `__normal___udivdi3'

Appearently, when building 32 bit U-Boot outside of yocto on a 64bit 
machine you need to install gcc-6-multilib.

How would I configure poke or change the recipy to do the same?


