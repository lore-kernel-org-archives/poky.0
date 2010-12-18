Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69E324C80B70;
	Fri, 17 Dec 2010 22:03:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Dec 2010 20:03:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,192,1291622400"; d="scan'208";a="637738797"
Received: from unknown (HELO [10.255.14.40]) ([10.255.14.40])
	by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2010 20:03:15 -0800
Message-ID: <4D0C3282.2060000@linux.intel.com>
Date: Fri, 17 Dec 2010 20:03:14 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Milestone 2 Update
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
X-List-Received-Date: Sat, 18 Dec 2010 04:03:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


The M2 branch has had a minor change to back out the 2.6.37 Kernel for 
the QEMU ARM and PPC arches due to some issue with that version.  The 
problem are related to the mouse on ARM and a very slow boot on Qemu PPC.

We will move forward with the M2 build starting tonight or tomorrow 
morning, which will provide a QA window starting on Monday in China.

Thanks to all members of the community and team for their support in 
making this release happen.


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


