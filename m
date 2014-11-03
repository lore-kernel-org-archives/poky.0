Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F341E00881; Sun,  2 Nov 2014 23:23:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F7D5E0085F
	for <poky@yoctoproject.org>; Sun,  2 Nov 2014 23:23:23 -0800 (PST)
Received: from sangmingze-mail.local (ip5b42f21c.dynamic.kabel-deutschland.de
	[91.66.242.28])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 85B1783F55;
	Mon,  3 Nov 2014 07:23:22 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>)
	id 1XlBya-0008T5-Q4; Mon, 03 Nov 2014 08:22:56 +0100
Date: Mon, 3 Nov 2014 08:22:56 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20141103072256.GB6154@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan>
 <1414965815.5111.1.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1414965815.5111.1.camel@ted>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: gcc 4.9.1 and stdint.h
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
X-List-Received-Date: Mon, 03 Nov 2014 07:23:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 02, 2014 at 10:03:35PM +0000, Richard Purdie wrote:

Good Morning,

> What was the compiler commandline you used and did you specify the
> sysroot? Was this was master or dizzy?

that was with master. The command line for the compilation is:

arm-poky-linux-gnueabi-gcc -c -Os -Wall -mabi=aapcs-linux -DDM644x -DFLASH_TYPE_NAND -Dboard_sysmobts_v2 -DENABLE_BOOT_INTERRUPT   -c -o davinci.o davinci.c

Okay the Makefile didn't honor the CC variable from the environment.
How did that work before? Did gcc have a default sysroot?

holger

