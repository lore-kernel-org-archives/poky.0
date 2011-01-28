Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C33594C812BD
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 10:59:38 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0SH1aSB030550; Fri, 28 Jan 2011 17:01:37 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 9SwSz-2YEv5b; Fri, 28 Jan 2011 17:01:36 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0SH1W7b030537
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 28 Jan 2011 17:01:34 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <B9B61B12-0508-4734-8F9E-96F8DF59081C@dominion.thruhere.net>
References: <1295993245.27814.133.camel@rex>
	<A75EAA1D-9046-4CD6-B407-65AA43B9F3CC@dominion.thruhere.net>
	<1296140767.27814.7777.camel@rex>
	<95D49026-CF08-4DB9-9749-3C191C737414@dominion.thruhere.net>
	<1296164726.27814.8752.camel@rex>
	<B9B61B12-0508-4734-8F9E-96F8DF59081C@dominion.thruhere.net>
Date: Fri, 28 Jan 2011 16:59:25 +0000
Message-ID: <1296233965.13501.439.camel@rex>
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
X-List-Received-Date: Fri, 28 Jan 2011 16:59:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 08:56 +0100, Koen Kooi wrote:
> Op 27 jan 2011, om 22:45 heeft Richard Purdie het volgende geschreven:
> 
> > On Thu, 2011-01-27 at 16:35 +0100, Koen Kooi wrote:
> >> Op 27 jan 2011, om 16:06 heeft Richard Purdie het volgende geschreven:
> >> koen@dominion:/OE/tentacle$ ls /OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/
> >> tclConfig.sh*
> >> 
> >> so it removed pretty much everything from the sysroot!
> > 
> > Just to update on this, Koen is using distribute_sources which adds a
> > do_distribute_sources task. This is why things are working on master but
> > not for Koen.
> > 
> > That task runs later and causes do_setscene to rerun which cleans out
> > the sysroot rather helpfully assuming that all tasks for that recipe
> > will rerun which isn't true.
> > 
> > This branch has some proposed changes to make this work better:
> > 
> > http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/misc2
> > 
> > and Koen is testing them to see how they work out.
> 
> That fixes both the setscene and machine switching issues. Everything works as expected again!

Those fixes have been merged into master now.

Cheers,

Richard


