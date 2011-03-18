Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 111354C80AB3
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:45:41 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IGgWvc008890;
	Fri, 18 Mar 2011 16:42:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08466-07; Fri, 18 Mar 2011 16:42:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IGgMFw008884
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 16:42:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4D837763.7060009@de-haardt.com>
References: <4D83700C.1000402@de-haardt.com>
	<1300460171.30423.2202.camel@rex>  <4D837763.7060009@de-haardt.com>
Date: Fri, 18 Mar 2011 16:42:05 +0000
Message-ID: <1300466525.30423.2204.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: problem with serial interface laverne
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
X-List-Received-Date: Fri, 18 Mar 2011 16:45:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 16:16 +0100, Gerard van den Bosch wrote:
> On 03/18/2011 03:56 PM, Richard Purdie wrote:
> > On Fri, 2011-03-18 at 15:45 +0100, Gerard van den Bosch wrote:
> >> Hello,
> >>
> >> I have changed from green to laverne release.
> >> But now I have a problem with the serial interface.
> >> The booting process goes good but when asked for the login name I can
> >> enter root and press enter.
> >> Then I am presented with the shell but can't type anything anymore, only
> >> some enters seem to get through.
> >> Is there changed anything concerning the serial interface and or
> >> settings for this in the laverne release?
> >>
> >> I have kept my machine settings and kernel the same.
> > I'm reminded of this bug:
> >
> > http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=97d80dd99021d975f40304f8327c330fe1a1f71b
> >
> > Could you try that and let us know if it helps?
> >
> > If so, I'll ensure we add that the laverne branch so it would make any
> > future point release of laverne.
> >
> > Cheers,
> >
> > Richard
> >
> This fixes the problem, thanks!

I've added the fix to the laverne branch, thanks.

Richard


