Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BD964C80FB2
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 17:06:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 15:06:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,307,1288594800"; d="scan'208";a="581151256"
Received: from doubt.jf.intel.com (HELO [10.24.142.240]) ([10.24.142.240])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 15:06:41 -0800
Message-ID: <4CFD6C73.20006@linux.intel.com>
Date: Mon, 06 Dec 2010 15:06:27 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: PREEMPT_RT support
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
X-List-Received-Date: Mon, 06 Dec 2010 23:06:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm looking at how to best support PREEMPT_RT. We have a few things in 
the works which prevent the ideal scenario (which is just a new recipe 
using the preempt_rt branch in linux-yocto).

2.6.34 never had an -rt patch. The WR folks created one that builds and 
is undergoing review from tglx - but that doesn't appear to be near the 
top of his stack. 2.6.37 is still pending an -rt patch, also blocked on 
-tglx.

I'm thinking of creating a meta-rt layer which would provide a latest 
-rt kernel and the rt-tests suite along with a non-graphical image 
definition that facilitates latency detection and rt performance 
measurement. poky-image-rt-test or something along those lines.

Any objection to this approach? As we will eventually move these recipes 
into the core poky recipes, I'd suggest we put this in an 
"experimental/meta_rt" git repository.

Thoughts?

-- 
Darren Hart
Yocto Linux Kernel

