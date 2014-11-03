Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EDC3E008D0; Mon,  3 Nov 2014 07:12:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 887A0E00874
	for <poky@yoctoproject.org>; Mon,  3 Nov 2014 07:12:45 -0800 (PST)
Received: from sangmingze-mail.local (ip5b42f21c.dynamic.kabel-deutschland.de
	[91.66.242.28])
	by mail.sysmocom.de (Postfix) with ESMTPSA id C4ACD858C7;
	Mon,  3 Nov 2014 15:12:44 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>)
	id 1XlJIo-0006om-Mn; Mon, 03 Nov 2014 16:12:18 +0100
Date: Mon, 3 Nov 2014 16:12:18 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20141103151218.GD6154@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan> <1414965815.5111.1.camel@ted>
	<20141103072256.GB6154@xiaoyu.lan> <1415001899.5111.3.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1415001899.5111.3.camel@ted>
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
X-List-Received-Date: Mon, 03 Nov 2014 15:12:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 03, 2014 at 08:04:59AM +0000, Richard Purdie wrote:

Dear Richard,

> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=678e8798ebe0f4fd1bd347db136f1499b8fe00c9

thanks a lot for explaining. I see how using the default sysroot
with external toolchains is going to cause issues. What is the
reasoning to have it for the canadian cross (hence meta-toolchain)?

E.g. when compiling U-Boot linking will fail when just passing
make CROSS_COMPILE=/opt/poky/1.7/.../arm-..- (not going through
the sourcing of the environment file) the linking wil fail due a
missing -lgcc but maybe I am doing something wrong as well.

  /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld.bfd   -g -Ttext 0xc100000 -o examples/standalone/hello_world -e hello_world examples/standalone/hello_world.o examples/standalone/libstubs.o -L . -lgcc
/opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld.bfd: cannot find -lgcc
gpl-uboot/examples/standalone/Makefile:67: recipe for target 'examples/standalone/hello_world' failed
make[2]: *** [examples/standalone/hello_world] Error 1


holger

