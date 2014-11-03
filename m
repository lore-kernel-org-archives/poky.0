Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 546FFE00899; Mon,  3 Nov 2014 00:05:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46426E00862
	for <poky@yoctoproject.org>; Mon,  3 Nov 2014 00:05:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA384QGa030573; Mon, 3 Nov 2014 08:04:26 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id UeV7tcEn5oyz; Mon,  3 Nov 2014 08:04:26 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA384O86030570
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Mon, 3 Nov 2014 08:04:26 GMT
Message-ID: <1415001899.5111.3.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Mon, 03 Nov 2014 08:04:59 +0000
In-Reply-To: <20141103072256.GB6154@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan> <1414965815.5111.1.camel@ted>
	<20141103072256.GB6154@xiaoyu.lan>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
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
X-List-Received-Date: Mon, 03 Nov 2014 08:05:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-11-03 at 08:22 +0100, Holger Hans Peter Freyther wrote:
> On Sun, Nov 02, 2014 at 10:03:35PM +0000, Richard Purdie wrote:
> 
> Good Morning,
> 
> > What was the compiler commandline you used and did you specify the
> > sysroot? Was this was master or dizzy?
> 
> that was with master. The command line for the compilation is:
> 
> arm-poky-linux-gnueabi-gcc -c -Os -Wall -mabi=aapcs-linux -DDM644x -DFLASH_TYPE_NAND -Dboard_sysmobts_v2 -DENABLE_BOOT_INTERRUPT   -c -o davinci.o davinci.c
> 
> Okay the Makefile didn't honor the CC variable from the environment.
> How did that work before? Did gcc have a default sysroot?

Yes.

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=678e8798ebe0f4fd1bd347db136f1499b8fe00c9

Cheers,

Richard


