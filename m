Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92365E0044D
	for <poky@yoctoproject.org>; Fri,  6 Apr 2012 10:40:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Apr 2012 10:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="126139474"
Received: from unknown (HELO [10.255.12.176]) ([10.255.12.176])
	by orsmga001.jf.intel.com with ESMTP; 06 Apr 2012 10:40:53 -0700
Message-ID: <4F7F2AA5.2010400@linux.intel.com>
Date: Fri, 06 Apr 2012 10:40:53 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Edison Next
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
X-List-Received-Date: Fri, 06 Apr 2012 17:40:57 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

There are plenty of folks still using Edison and bugs being filed 
against that release series so I've started pulling together a branch of 
fixes for another Edison point release.

So far I have:
* Several fixes for useradd
* A fix for building syslinux on hosts with 3.3 or newer kernels [YOCTO 
#2236]
* Fixes so that live images greater than 1GB in size can boot [YOCTO #2138]

If there are other fixes you would like to see in the Edison series 
please point me at bug numbers or, even better, patches.

My current branch can be seen here:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=josh/edison

Thanks,
Joshua
-- 
Joshua '贾詡' Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

