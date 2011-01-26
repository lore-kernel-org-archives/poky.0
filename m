Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4546E4C80BCF
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 07:44:02 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5DDEA1660373; Wed, 26 Jan 2011 06:43:59 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 170F7166029C;
	Wed, 26 Jan 2011 06:43:59 -0700 (MST)
Message-ID: <4D40251F.5070906@mlbassoc.com>
Date: Wed, 26 Jan 2011 06:43:59 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: No joy on "standard" PC
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
X-List-Received-Date: Wed, 26 Jan 2011 13:44:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I finally got Poky to build for a standard PC (actually atom-pc
so I could build a live/bootable image).  Sadly, that's all I
have is an image as I can't get it to run anywhere :-(

* On my laptop (the point of this exercise) which is an older
Pentium-III machine, the kernel crashes almost immediately.

* On my brand new laptop (Core-i3), I couldn't get it to even
try...

* On a VirtualBox machine, it boots but then sits forever
"waiting for removable media"...

Oh well, back to my OMAP that at least boots :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

