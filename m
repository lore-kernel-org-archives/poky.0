Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AEAB4C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 05:46:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2HAkahC019808;
	Thu, 17 Mar 2011 10:46:36 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19375-08; Thu, 17 Mar 2011 10:46:32 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2HAkRUb019802
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 17 Mar 2011 10:46:28 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <20110317021334.GA26323@kyu3-hedt>
References: <4D812FD5.5050504@linux.intel.com>
	<1300320837.30423.1924.camel@rex>  <20110317021334.GA26323@kyu3-hedt>
Date: Thu, 17 Mar 2011 10:46:13 +0000
Message-ID: <1300358773.30423.1930.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH A or B] Fix for bug #853 - matchbox-panel segfaults, X becomes unusable
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
X-List-Received-Date: Thu, 17 Mar 2011 10:46:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-03-17 at 10:13 +0800, Yu Ke wrote:
> On Mar 17, 00:13, Richard Purdie wrote:
> > I'm in favour of C which is to add this to tune-atom.inc:
> > 
> > FULL_OPTIMIZATION_pn-gtk+ = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
>
>
> I have an option D :)
> 
> i.e. in gtk+_2.22.1.bb, add:
> FULL_OPTIMIZATION_core2= "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
> 
> because this issue is caused by gcc optimization for core2 arch, so in theory, all machine with core2 arch setting will be affected, no only limited to atom machine

This wouldn't work as "core2" is PACKAGE_ARCH and PACKAGE_ARCH is not in
OVERRIDES. I did briefly discuss this over jabber and you could do:

FULL_OPTIMIZATION_i586= "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"

since TARGET_ARCH (i586) is in OVERRIDES but this would then affect
machines like qemux86 and I decided we didn't want to do that at this
point in the release cycle.

Cheers,

Richard


