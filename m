Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22EF84C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 16:47:27 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 14:47:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="613873863"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2011 14:47:26 -0700
Message-ID: <4D812FD5.5050504@linux.intel.com>
Date: Wed, 16 Mar 2011 14:47:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH A or B] Fix for bug #853 - matchbox-panel segfaults, X becomes unusable
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
X-List-Received-Date: Wed, 16 Mar 2011 21:47:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The root cause of the matchbox-panel segfault is the same as for the 
previous two bugs addressing the same issue:

o Bug 224 - [Netbook/emenlow] matchbox-panel segfault after X startup
o Bug 738 - matchbox-panel segfault after X startup

There apparently is a bug in gcc which results in the omission of some 
code leading to the segfault on core2. The following flags resolve the 
problem.

FULL_OPTIMIZATION = "-fexpensive-optimizations -frename-registers -O2 
-ggdb -feliminate-unused-debug-types"

We can continue to patch each new machine's gtk+ recipe that is based on 
atom-pc.conf, or we can just add the above to tune-atom.conf. I've 
tested both on both the n450 and a Toshiba NB305 netbook, and each 
solution is effective.

Chaging it in tune-atom.conf likely fixes other bugs we either haven't 
solved yet or simply haven't hit. It is also much more invasive, and we 
may not be willing to accept that this close to 1.0. The patches follow, 
and we can include one or the other.

Preferences?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

