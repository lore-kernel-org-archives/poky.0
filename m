Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DB344C80FA8
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 19:38:53 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 17:38:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869147163"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 17:38:41 -0800
Received: from [10.255.14.50] (10.255.14.50) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 16 Dec 2010 18:38:40 -0700
Message-ID: <4D0ABF1C.6090706@intel.com>
Date: Thu, 16 Dec 2010 17:38:36 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@pokylinux.org>
Subject: Shared state prebuild copy bug report (bug #602)
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
X-List-Received-Date: Fri, 17 Dec 2010 01:38:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I did a build of poky-image-lsb from Poky master today and tried copying 
the shared state prebuilds (sstate-cache) to my laptop. Things looked 
good for a while as it populated my sysroot area from the prebuilds, but 
then it started building autoconf-native and ran into the following 
error during do_compile:

Can't locate Data/Dumper.pm in @INC (@INC contains: ../lib
/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
/toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl/5.8.8
/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl /toastssd/
poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
/toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
/toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl .) at
../lib/Autom4te/C4che.pm line 33.

"/toastssd" is a path specific to the original build machine, but does 
not exist on my laptop.

I have reported this as bug #602.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

