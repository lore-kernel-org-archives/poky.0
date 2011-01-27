Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD3D54C8123A
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:22:40 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:22:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597175949"
Received: from doubt.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:22:40 -0800
Message-ID: <4D41FE3A.7080407@linux.intel.com>
Date: Thu, 27 Jan 2011 15:22:34 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: quilt-native failing with clean master
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
X-List-Received-Date: Thu, 27 Jan 2011 23:22:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Trying to build poky-image-sato-live for atom-pc out of current master:

	021cf7dabf891316a1e909d3972a5232ca53ec80

Results in the following for me:

ERROR: Error executing a python function in 
/home/dvhart/source/poky.git/meta/recipes-devtools/quilt/quilt-native_0.48.bb:
NameError: global name 'f' is not defined

Is anyone seeing something similar? I've just replaced the memory in 
this machine after discovering it was bad, I suppose it's possible I 
have a corrupted python interpreter or something like that.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

