Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7EFEC4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 19:14:24 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2H0EJMn011751;
	Thu, 17 Mar 2011 00:14:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11626-02; Thu, 17 Mar 2011 00:14:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2H0E9PS011745
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 17 Mar 2011 00:14:10 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D812FD5.5050504@linux.intel.com>
References: <4D812FD5.5050504@linux.intel.com>
Date: Thu, 17 Mar 2011 00:13:57 +0000
Message-ID: <1300320837.30423.1924.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 17 Mar 2011 00:14:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-16 at 14:47 -0700, Darren Hart wrote:
> The root cause of the matchbox-panel segfault is the same as for the 
> previous two bugs addressing the same issue:
> 
> o Bug 224 - [Netbook/emenlow] matchbox-panel segfault after X startup
> o Bug 738 - matchbox-panel segfault after X startup
> 
> There apparently is a bug in gcc which results in the omission of some 
> code leading to the segfault on core2. The following flags resolve the 
> problem.
> 
> FULL_OPTIMIZATION = "-fexpensive-optimizations -frename-registers -O2 
> -ggdb -feliminate-unused-debug-types"
> 
> We can continue to patch each new machine's gtk+ recipe that is based on 
> atom-pc.conf, or we can just add the above to tune-atom.conf. I've 
> tested both on both the n450 and a Toshiba NB305 netbook, and each 
> solution is effective.
> 
> Chaging it in tune-atom.conf likely fixes other bugs we either haven't 
> solved yet or simply haven't hit. It is also much more invasive, and we 
> may not be willing to accept that this close to 1.0. The patches follow, 
> and we can include one or the other.
> 
> Preferences?

I'm in favour of C which is to add this to tune-atom.inc:

FULL_OPTIMIZATION_pn-gtk+ = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"

:)

Cheers,

Richard



