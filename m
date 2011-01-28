Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D9354C812AE
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 11:21:19 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0SHNDZA031769; Fri, 28 Jan 2011 17:23:14 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ct6C7pQQBaZr; Fri, 28 Jan 2011 17:23:13 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0SHN60q031755
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 28 Jan 2011 17:23:08 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D42F9F1.3020002@linux.intel.com>
References: <20110127111132.C69A3B335@gemini.denx.de>
	<20110127114216.744AEB335@gemini.denx.de>
	<4D41F2D6.4040406@linux.intel.com>
	<20110128070520.31A2BD42A86@gemini.denx.de>
	<4D42F269.1080005@linux.intel.com>
	<20110128165100.656AAD42A99@gemini.denx.de>
	<4D42F9F1.3020002@linux.intel.com>
Date: Fri, 28 Jan 2011 17:20:59 +0000
Message-ID: <1296235259.13501.512.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: Serial console unusable with poky-image-sdk
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
X-List-Received-Date: Fri, 28 Jan 2011 17:21:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 09:16 -0800, Darren Hart wrote:
> On 01/28/2011 08:51 AM, Wolfgang Denk wrote:
> > Dear Darren Hart,
> >
> > In message<4D42F269.1080005@linux.intel.com>  you wrote:
> >>
> >> The serial console would show all the output of the boot process and
> >> then present a getty. It would accept my login and my password, but as
> >> soon as I was logged in, things went weird. Only every Nth character I
> >> typed made it to the console, where N was somewhere between 2 and 30.
> >
> > Indeed. And the reason for this behaviour is that you have two
> > processes reading from the console, so it depends on the scheduling
> > which of hem receives which characters.
> >
> >> I believe this had something to do with the automatic consoles the
> >> kernel will setup based on the console= parameters. By default, the last
> >
> > No, it does not.  You can test it by shutting down X11 (try:
> > "/etc/init.d/xserver-nodm stop"); this will also terminate the
> > dbus-launch process, and your login shell immediately works fine.
> >
> > Or try out the patch I posted.
> 
> 
> I'm not running X11, this is just a poky-image-minimal.
> 
> 
> >
> >> What I haven't been able to explain yet is why just omitting the getty
> >> from the tty doesn't result in console on the serial port due to the
> >> kernel's automatic console thing. So clearly there are some gaps in my
> >> explanation here, but please try this approach and let me know what your
> >> results are. Based on that, we can dig a bit more and figure out how to
> >> best setup the console= directives on the default images.
> >
> > THere is no problem with the console= settings.  It's two processes
> > reading from a single input stream. This can never work.  Try it ut if
> > you don't believe me.
> 
> Agreed on the two processes thing, that's clear. I believe the console= 
> settings impact which processes are started and which read from which 
> console devices.
> 
> And again, I can't try your patch, because I'm not running X.
> 
> Perhaps we are seeing similar problems caused by different things.

Regardless, I think we should take the patch since we have at least two
users seeing issues due to it.

Saul or I will ensure it gets in, I keep meaning to merge it but then
get distracted...

Cheers,

Richard



