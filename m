Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CCD74C800A0
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 07:52:13 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Apr 2011 05:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,287,1299484800"; d="scan'208";a="412789128"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2011 05:52:09 -0700
Message-ID: <4D971BF9.7050707@intel.com>
Date: Sat, 02 Apr 2011 20:52:09 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: How to append inc file
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
X-List-Received-Date: Sat, 02 Apr 2011 12:52:14 -0000
Content-Type: text/plain; charset=GB18030; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

bbappend file can be used to append content to bb file, and it is very 
useful in BSP meta data. Today I just find the *.inc file is also need 
to be appended, so I wonder if there is similar incappend file that can 
append content to inc file?

I meet this requirement when trying to fix bug 896 
(http://bugzilla.yoctoproject.org/show_bug.cgi?id=896). To make 
poky-image-clutter build pass in n450, the clutter.inc need to be 
appended to change the COMPATIBLE_MACHINE.

Regards
Ke

