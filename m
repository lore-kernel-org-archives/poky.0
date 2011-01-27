Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4001A4C8123A
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 15:46:01 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RLlsFB022584; Thu, 27 Jan 2011 21:47:55 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ae0qjZCuHHpi; Thu, 27 Jan 2011 21:47:54 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RLlowq022580
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 21:47:52 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <95D49026-CF08-4DB9-9749-3C191C737414@dominion.thruhere.net>
References: <1295993245.27814.133.camel@rex>
	<A75EAA1D-9046-4CD6-B407-65AA43B9F3CC@dominion.thruhere.net>
	<1296140767.27814.7777.camel@rex>
	<95D49026-CF08-4DB9-9749-3C191C737414@dominion.thruhere.net>
Date: Thu, 27 Jan 2011 21:45:26 +0000
Message-ID: <1296164726.27814.8752.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Master stability update
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
X-List-Received-Date: Thu, 27 Jan 2011 21:46:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 16:35 +0100, Koen Kooi wrote:
> Op 27 jan 2011, om 16:06 heeft Richard Purdie het volgende geschreven:
> 
> > On Thu, 2011-01-27 at 13:45 +0100, Koen Kooi wrote:
> >> Op 25 jan 2011, om 23:07 heeft Richard Purdie het volgende geschreven:
> > It seems that autoconf.bbclass change is having a weird ripple effect
> > with the sstate packages. Can you clean sstate and then retry, just to
> > try and isolate the issues?
> > 
> > I agree having a simple change to autotools.bbclass ripple through
> > sstate like that isn't desirable btw, I just want to try and fix one
> > issue at a time.
> 
> I removed tmp, sstate-cache and pseudodone, then did 'bitbake
> console-image', which failed at the same point. I looked into
> '/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/', which had a lot files in it, but no autoconf, so I did 'bitbake autoconf-native', that (re)ran a lot of rm_work tasks.
> 
> 
> koen@dominion:/OE/tentacle$ ls /OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/
> tclConfig.sh*
> 
> so it removed pretty much everything from the sysroot!

Just to update on this, Koen is using distribute_sources which adds a
do_distribute_sources task. This is why things are working on master but
not for Koen.

That task runs later and causes do_setscene to rerun which cleans out
the sysroot rather helpfully assuming that all tasks for that recipe
will rerun which isn't true.

This branch has some proposed changes to make this work better:

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/misc2

and Koen is testing them to see how they work out.

Cheers,

Richard



