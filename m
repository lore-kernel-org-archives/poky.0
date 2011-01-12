Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 791E54C810C1
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 03:02:38 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jan 2011 01:02:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,312,1291622400"; d="scan'208";a="876750164"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 01:02:37 -0800
Message-ID: <4D2D6E2D.4040604@intel.com>
Date: Wed, 12 Jan 2011 01:02:37 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>, 
	"Garman, Scott A" <scott.a.garman@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: current Autobuilder failure
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
X-List-Received-Date: Wed, 12 Jan 2011 09:02:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Jiajun, Scott

Seems like there is a sanity test failure mode that then cascades to the 
next build target or 2 or 3!  Can you look into this to determine what's 
happening and resolve it.

It seems to start with a timeout but then cause problems for the reset 
of the build of that arch.

Thanks
     Sau!


