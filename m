Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89C704C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 17:17:28 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 15:17:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,307,1288594800"; d="scan'208";a="865181386"
Received: from doubt.jf.intel.com (HELO [10.24.142.240]) ([10.24.142.240])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 15:17:28 -0800
Message-ID: <4CFD6EFA.8050503@linux.intel.com>
Date: Mon, 06 Dec 2010 15:17:14 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Proper recipe naming and PV definition
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
X-List-Received-Date: Mon, 06 Dec 2010 23:17:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm having trouble determining what the best practice is for naming a 
linux kernel recipe.

The meta-linaro layer contains a linux-linaro recipe, and eventually I'd 
like it to contain two. One for the stable kernel and one for the 
development kernel. These are currently 2.6.35 and 2.6.37 respectively. 
I currently have:

linux-linaro-2.6.35_git.bb
PV=2.6.35

This results in directory names in the build tree like:
linux-linaro-2.6.36_2.6.35 (or similar, with the version duplicated). As 
I understand it, the PV _must_ contain a standard Linux kernel version 
along the lines of 2.6.[0-9]+-* (and parsing fails without it).

In order to both track the version and distinguish between stable and 
dev, would something like the following be appropriate? This also 
replaces _git with _KERNELVER (as proposed by Marcin).

linux-linaro-stable_2.6.35.bb
PV=2.6.35+git${SRCREV}

linux-linaro-dev_2.6.37.bb
PV=2.6.37+git${SRCREV}

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

