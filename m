Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id C15154C800A1
	for <poky@yoctoproject.org>; Thu, 21 Jul 2011 14:00:42 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3CEFE16603F5; Thu, 21 Jul 2011 13:00:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DB9C816603EF;
	Thu, 21 Jul 2011 13:00:41 -0600 (MDT)
Message-ID: <4E287759.3050806@mlbassoc.com>
Date: Thu, 21 Jul 2011 13:00:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: meta-toolchain question
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
X-List-Received-Date: Thu, 21 Jul 2011 19:00:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

When I build the meta-toolchain for my armv5te target, I see
some confusing paths.  For example, why is the environment script named
   /opt/poky/1.00+snapshot/environment-setup-armv5te-poky-linux-gnueabi
but the sysroot is named
   /opt/poky/1.00+snapshot/sysroots/arm-poky-linux-gnueabi
Why isn't it
   /opt/poky/1.00+snapshot/sysroots/armv5te-poky-linux-gnueabi

I even see some stranger paths, like these
   /opt/poky/1.00+snapshot/sysroots/i686-pokysdk-linux/usr/lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi

I would think it should be armv5te-poky-linux-gnueabi everywhere.

If I wanted to also have a meta-toolchain for armv7a, there would
be a clash since they both use the same sysroots.

Note: I sort of asked this question yesterday and the answer was
"use ADT".  I don't see that ADT will solve this and I also find
ADT much to heavyweight for my customers who just want a simple
toolchain that matches their Poky-built system.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

