Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BF544C8007E
	for <poky@lists.pokylinux.org>; Wed,  2 Feb 2011 18:21:39 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p130NhNg002102; Thu, 3 Feb 2011 00:23:43 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id lE13gn1Io4CZ; Thu,  3 Feb 2011 00:23:43 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p130NT7Z002090
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 3 Feb 2011 00:23:33 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D49D7FC.20303@mlbassoc.com>
References: <4D499346.4050800@mlbassoc.com>
	<4D49976E.5030800@linux.intel.com> <1296669636.1544.4238.camel@rex>
	<4D49A22F.6030003@mlbassoc.com>  <4D49D7FC.20303@mlbassoc.com>
Date: Thu, 03 Feb 2011 00:21:15 +0000
Message-ID: <1296692475.1544.5760.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky & armv5te
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
X-List-Received-Date: Thu, 03 Feb 2011 00:21:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-02 at 15:17 -0700, Gary Thomas wrote:
> On 02/02/2011 11:27 AM, Gary Thomas wrote:
> > On 02/02/2011 11:00 AM, Richard Purdie wrote:
> >> On Wed, 2011-02-02 at 09:42 -0800, Darren Hart wrote:
> >>> On 02/02/2011 09:24 AM, Gary Thomas wrote:
> >>>> I'd like to use Poky with my OMAP-L138 which is armv5te
> >>>> Sadly today, this just isn't a go because of GCC issues.
> >>>> I've tried all the combinations which are in the trees
> >>>> (main& contrib) with no luck:
> >>>> * 4.3.3 - fails to build GCC
> >>>> * 4.5.1 - everything builds but kernel crashes
> >>>> * 4.5.2 - fails to build GCC
> >>>>
> >>>> Am I totally out of luck?
> >>>
> >>> What are you running into? I've recently backported some changes in
> >>> support of the Beagleboard (armv7-a) which were necessary to build with
> >>> 4.5.1 and our 2.21 binutils.
> >>
> >> Those wouldn't affect armv5. What puzzles me is that qemuarm is
> >> effectively an armv5 like system and those do build and boot in qemu.
> >>
> >> When you managed images above for 4.5.1 did you try using a known good
> >> kernel with our userspace? I'm wondering if we can narrow it to a kernel
> >> issue?
> >
> > Not sure I got that far, but I'll check it out.
> 
> A simple test indicates that the user-space tools built in Poky
> do run fine on this hardware when built with GCC/4.5.1 and BINUTILS/2.21
> It's only the kernel that crashes hard with this combo.

Ok, thats positive in many ways :)

When you say the kernel crashes hard can you be any more specific about
where in the process its doing that? Any chance its using -Os anywhere
in the kernel build and that is causing the problem?

Cheers,

Richard






