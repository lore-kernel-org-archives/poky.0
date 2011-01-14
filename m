Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9479A4C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 01:27:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 23:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,321,1291622400"; d="scan'208";a="696770513"
Received: from unknown (HELO [10.255.14.72]) ([10.255.14.72])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2011 23:26:57 -0800
Message-ID: <4D2FFAB8.4000506@linux.intel.com>
Date: Thu, 13 Jan 2011 23:26:48 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Stability of Master (not looking good)
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
X-List-Received-Date: Fri, 14 Jan 2011 07:27:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

Based on what I am seeing on both local builds and on the autobuilder, I 
have to recommend that we stop making changes to master until we can 
stabilize it.

We need to start getting the builds green so that we can know where we 
are going into the final days of M3 and have a build that works.

We are getting closer, but there are definitely still some problem 
areas, as example, the distro-testing which has very little change 
failed to build eglibc.

So, I recommend that we only make changes that directly address the 
failures we currently have until we can resolve the failures and then 
work to ensure that any new items pulled into master are well tested!

I know this will slow things down, but we need to get stability happening.

Thoughts?

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


