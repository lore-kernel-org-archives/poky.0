Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 064A0E004D1
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 15:18:27 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8UMOkVw013281; Fri, 30 Sep 2011 23:24:47 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id hQp8nvqvU22B; Fri, 30 Sep 2011 23:24:46 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8UMOghW013267
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 30 Sep 2011 23:24:44 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 30 Sep 2011 23:18:15 +0100
In-Reply-To: <4E8634D7.6050207@mlbassoc.com>
References: <20110930175612.667D21208F1C@gemini.denx.de>
	<1317417965.12332.234.camel@ted> <4E8634D7.6050207@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317421103.4454.3.camel@ted>
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: debian.o-hand.com unreachable ?
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
X-List-Received-Date: Fri, 30 Sep 2011 22:18:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-30 at 15:29 -0600, Gary Thomas wrote:
> On 2011-09-30 15:25, Richard Purdie wrote:
> > On Fri, 2011-09-30 at 19:56 +0200, Wolfgang Denk wrote:
> >> Hello,
> >>
> >> there are several parts of the Poky Handbok that refer to the
> >> OpenedHand repository at http://debian.o-hand.com/
> >>
> >> However, this site seems to be down, and has been unreachable for some
> >> time.
> >>
> >> Is there some alternative address for example for the Debian packages
> >> poky-depends and poky-scripts ?
> >
> > The packages that were in there were ancient and not likely of any use
> > on modern distros having not been maintained for a long time.
> >
> > If we had replacements and someone to maintain it we could reinstate
> > this but I'm not aware of having anything at this point. I thought the
> > references had been removed from the manual?
> 
> There are still a number of SRC_URI references to o-hand.com in master
> Is that site dead [in genera[]?

Pieces of o-hand are being relocated to new homes over time. Existing
references should still work.

Cheers,

Richard



