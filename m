Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 305BCE006D9
	for <poky@yoctoproject.org>; Fri, 29 Jun 2012 10:59:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Jun 2012 10:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="159804482"
Received: from unknown (HELO envy.home) ([10.255.13.25])
	by orsmga001.jf.intel.com with ESMTP; 29 Jun 2012 10:59:49 -0700
Message-ID: <4FEDECBA.9010902@linux.intel.com>
Date: Fri, 29 Jun 2012 10:58:18 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1340942930.git.dvhart@linux.intel.com>
	<4263ffefaa6f3b0069bc41c0f7578d36717edcfc.1340942930.git.dvhart@linux.intel.com>
	<5b45f71fee3c593e5420a5a9b36ba947c429a397.1340942930.git.dvhart@linux.intel.com>
	<CAMKF1sopV66-Rohk5HYMygcSamkcxDgOM8bfruF7VWR0ZAXpnQ@mail.gmail.com>
	<4FED4226.30700@linux.intel.com>
	<CAMKF1sojfidUA9mne_RfXz+tE8d3pRboHbGxJL-dLD5wkeKVRw@mail.gmail.com>
	<4FED47D7.7080107@linux.intel.com>
	<CAMKF1sqm=A5za70vND38jdyUdUUyB017+OuoCWwpwBX3w6WWqA@mail.gmail.com>
	<4FEDAA70.3070009@windriver.com> <4FEDAF4F.5070104@linux.intel.com>
	<4FEDB4B3.7040802@windriver.com>
	<CAMKF1srHwbxOQYNHcvdXinqdJ95ZKO4U7V8vg6+z2dd5Umdphg@mail.gmail.com>
In-Reply-To: <CAMKF1srHwbxOQYNHcvdXinqdJ95ZKO4U7V8vg6+z2dd5Umdphg@mail.gmail.com>
X-Enigmail-Version: 1.4.2
Cc: Poky <poky@yoctoproject.org>, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 3/4] kernel: Add kernel-headers package for target module build
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
X-List-Received-Date: Fri, 29 Jun 2012 17:59:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/29/2012 10:52 AM, Khem Raj wrote:

> I think packaging more into -dev is OK upgrade wise so let's use
> kernel-dev and.put it in usr/src/kernel

OK. I'm working on building and testing now. I'm thinking kernel-misc
probably needs to go away as it now conflicts with kernel-dev. I'm not
sure what the comment about needing it for staging is about.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



