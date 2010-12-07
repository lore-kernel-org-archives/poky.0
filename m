Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5A604C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 19:58:54 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 17:58:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="865232549"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 17:58:54 -0800
Message-ID: <4CFD94DD.7010906@intel.com>
Date: Mon, 06 Dec 2010 17:58:53 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Master Stability
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
X-List-Received-Date: Tue, 07 Dec 2010 01:58:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

We had a rash of changes that have broken master, I am trying to resolve 
the last few breakages, which mostly are in meta-toolchain-sdk build. I 
realized that this is not in our normal test build path.

I have fixes for most of the break (I hope), there are still a couple of 
items that we need to address.

There is a failure for libatomics on mips, there may be a configuration 
issue.

Please be sure to verify your builds before makeing pull requests.


Thanks
	Sau!





