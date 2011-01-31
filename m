Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 374E54C8006D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 21:04:25 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jan 2011 19:04:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,402,1291622400"; d="scan'208";a="652699906"
Received: from unknown (HELO [10.255.14.122]) ([10.255.14.122])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 19:04:24 -0800
Message-ID: <4D4626B8.1030209@linux.intel.com>
Date: Sun, 30 Jan 2011 19:04:24 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Purdie, Richard" <richard.purdie@intel.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: do_package_ipkg failure during incremental build
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
X-List-Received-Date: Mon, 31 Jan 2011 03:04:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard & Others:

Seems we have a failure with the incremental build in which 
package-split file is missing or there is a Lockfile problem.

I have not dug into this yet.

NOTE: package task-poky-standalone-gmae-sdk-target-1.0-r12: task 
do_package_write_ipk: Started
ERROR: Lockfile destination directory 
'/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/task-poky-standalone-gmae-sdk-target-1.0-r12/packages-split' 
does not exist
ERROR: Function 'do_package_ipk' failed
ERROR: Logfile of failure stored in: 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/task-poky-standalone-gmae-sdk-target-1.0-r12/temp/log.do_package_write_ipk.22200
Log data follows:
| ERROR: Lockfile destination directory 
'/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/task-poky-standalone-gmae-sdk-target-1.0-r12/packages-split' 
does not exist
| ERROR: Function 'do_package_ipk' failed
| Lockfile destination directory 
'/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/task-poky-standalone-gmae-sdk-target-1.0-r12/packages-split' 
does not exist
| Function 'do_package_ipk' failed
NOTE: package task-poky-standalone-gmae-sdk-target-1.0-r12: task 
do_package_ipk: Failed

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


