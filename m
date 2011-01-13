Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 09A964C81069
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 01:44:23 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jan 2011 23:44:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,317,1291622400"; d="scan'208";a="877114599"
Received: from unknown (HELO [10.255.14.21]) ([10.255.14.21])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 23:43:23 -0800
Message-ID: <4D2EAD1A.2010001@linux.intel.com>
Date: Wed, 12 Jan 2011 23:43:22 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: PREEMPT_RT booting on atom-pc
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
X-List-Received-Date: Thu, 13 Jan 2011 07:44:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

After finding the botched (by me) kernel config meta data for the
atom-pc-preempt_rt configuration, I was able to build and boot
linux-yocto-rt_stablegit on the N405 (Black Sand).

root@atom-pc:~# uname -r
2.6.34.7-rt-yocto-preempt-rt

root@atom-pc:~# cyclictest -l 20000
policy: other/other: loadavg: 0.86 0.34 0.12 2/70 515
T: 0 (  515) P: 0 I:1000 C:  20000 Min:     27 Act:   30 Avg:   51 Max: 641

root@atom-pc:~# cyclictest -q -l 20000
T: 0 (  517) P: 0 I:1000 C:  20000 Min:     27 Act:   29 Avg:   32 Max: 126

I wanted to be able to report a few more tests, but I'm having
some boot media issues I'll need to sort out. Obviously cyclictest
should be run with -f PRIO.

So, it boots, that's something. :-) I'll have more data to share
in the near future.

-- 
Darren Hart
Yocto Linux Kernel

