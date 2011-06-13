Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D65C4C80052
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 16:15:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5DLEwU7003714;
	Mon, 13 Jun 2011 22:14:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03119-07; Mon, 13 Jun 2011 22:14:54 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5DLEjxR003706
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 13 Jun 2011 22:14:49 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4DF67C8D.4010907@intel.com>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>
	<4DF67C8D.4010907@intel.com>
Date: Mon, 13 Jun 2011 22:14:26 +0100
Message-ID: <1307999666.15712.286.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Git/perl build problems
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
X-List-Received-Date: Mon, 13 Jun 2011 21:15:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-06-13 at 14:09 -0700, Saul Wold wrote:
> On 06/13/2011 02:04 PM, Jeff Mitchell wrote:
> > On 06/13/2011 04:42 PM, Saul Wold wrote:
> >> Understood, but not fixed yet!
> >>
> >> The workaround at this point is to
> >>
> >> "bitbake -c cleansstate autoconf-native automake-native"
> >>
> >> Thanks should resolve this issue.
> >
> > Running that now, seems to be working. Would a simple revision bump to
> > those two packages fix the problem for any others?
> >
> That's my thought, but this issue is that it now uses the host perl, not 
> any perl built by poky, so I am concerned that it also really need to 
> inherit perlnative and I have not completely tested that yet.

No, everything is fine and working as intended and they should not need
perl-native. We should have bumped PR in hindsight and still could do
so, that would be fine.

Cheers,

Richard


