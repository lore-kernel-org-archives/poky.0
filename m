Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C35BE00707; Sat,  8 Aug 2015 09:31:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BADBAE00343
	for <poky@yoctoproject.org>; Sat,  8 Aug 2015 09:31:09 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t78GV5h2018276; Sat, 8 Aug 2015 17:31:05 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id EQIUAdkNl3Cs; Sat,  8 Aug 2015 17:31:05 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t78GUiaA018269
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 8 Aug 2015 17:30:59 +0100
Message-ID: <1439051443.30467.56.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Freyther <holger@freyther.de>
Date: Sat, 08 Aug 2015 09:30:43 -0700
In-Reply-To: <5331BB7A-0C6A-42AE-BA46-4E7A9D970FB4@freyther.de>
References: <5331BB7A-0C6A-42AE-BA46-4E7A9D970FB4@freyther.de>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Odd log messages for apps using autotools and __FILE__
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
X-List-Received-Date: Sat, 08 Aug 2015 16:31:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2015-08-07 at 20:26 +0200, Holger Freyther wrote:
> Hi,
> 
> in the Osmocom software and rauc and probably many applications that use __FILE__ in a
> log statement the log output is now:
> 
> 	/home/hfreyther/images/poky/build/tmp/work/sysmobts_v2-poky-linux-gnueabi/rauc/0+gitAUTOINC+d44adb0079-r4/git/src/install.c:811 I will unmount /mnt/rauc/rootfs.0
> 
> where it used to be:
> 
> 	install.c:811 I will unmount /mnt/rauc/rootfs.0
> 
> 
> I know I can use __BASE_FILE__ in gcc to get back to install.c but I wonder where this is
> coming from? Is this a side-effect of using B!=S? Is there another config that was made to
> pass the full path to the compiler?

I can confirm that this is from the B != S change.

We've kept meaning to go and look at how gcc generates these paths to
maybe try and add the option to remove a prefix for example. The .debug
src paths have a rewrite mechanism and we could use this for other paths
too?

Cheers,

Richard


