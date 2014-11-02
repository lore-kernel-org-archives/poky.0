Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E444E00899; Sun,  2 Nov 2014 12:11:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 320 seconds by postgrey-1.32 at yocto-www;
	Sun, 02 Nov 2014 12:11:27 PST
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05946E00873
	for <poky@yoctoproject.org>; Sun,  2 Nov 2014 12:11:27 -0800 (PST)
Received: from sangmingze-mail.local (ip5b42f21c.dynamic.kabel-deutschland.de
	[91.66.242.28])
	by mail.sysmocom.de (Postfix) with ESMTPSA id D4E9A83557
	for <poky@yoctoproject.org>; Sun,  2 Nov 2014 20:05:58 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>) id 1Xl1P0-00022Y-7C
	for poky@yoctoproject.org; Sun, 02 Nov 2014 21:05:30 +0100
Date: Sun, 2 Nov 2014 21:05:30 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: poky@yoctoproject.org
Message-ID: <20141102200530.GE6886@xiaoyu.lan>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: gcc 4.9.1 and stdint.h
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
X-List-Received-Date: Sun, 02 Nov 2014 20:11:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I have a small piece of initial bootloader and it fails to compile
using master (f19b4e995ea47f9243f152b39337330307453c9f). The code
does include "stdint.h" which ends up with a failure like this:

tmp/sysroots/i686-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/include/stdint.h:9:26: fatal error: stdint.h: No such file or directory
|  # include_next <stdint.h>
|                           ^
| compilation terminated.


So somehow gcc doesn't know how to find the glibc version of
stdint.h. With edison and dora the #include_next will move to
the sysroot.

Is this a regression of gcc-4.9? is this a wanted change?

kind regards
	holger

