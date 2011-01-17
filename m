Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4B694C8109B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 01:53:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Jan 2011 23:53:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="375521240"
Received: from unknown (HELO [10.255.14.85]) ([10.255.14.85])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2011 23:53:34 -0800
Message-ID: <4D33F57D.2030009@intel.com>
Date: Sun, 16 Jan 2011 23:53:33 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: QemuARM Boot Failure
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
X-List-Received-Date: Mon, 17 Jan 2011 07:53:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Bruce,

Did you test the latest systemtap update on ARM?  I am just curious 
based on the current failure that we are having with qemuarm.  If so, 
against what revision of master? This might help us narrow down the issue.


I tried both the systemtap version and the older version and both 
failed.  The last known good qemuarm was 2 weeks ago, there have been a 
number of kernel updates in that time along with a loads of userspace 
changes, but no qemu updates since the first of the year.  I am not sure 
about the userspace changes yet, need to review them more deeply.

I will be tied up tomorrow, but will try bisecting tomorrow evening if 
there is no update before then.

Thanks
    Sau!


