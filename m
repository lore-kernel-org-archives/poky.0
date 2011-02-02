Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 051634C8007E
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 02:34:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2011 00:34:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,413,1291622400"; d="scan'208";a="598703418"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2011 00:34:06 -0800
Message-ID: <4D4916FD.9080008@linux.intel.com>
Date: Wed, 02 Feb 2011 00:34:05 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Garman, Scott A" <scott.a.garman@intel.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Openjade & docbook-utils failing
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
X-List-Received-Date: Wed, 02 Feb 2011 08:34:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Scott,

These two recipes are failing.  Check the build for the docbook-utils 
failure. This failure seems to be related to openjade-native getting errors:

http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/23/steps/shell_1/logs/stdio



For openjade, I believe that it is using a local copy of libtool when it 
should be using the poky specific libtool.  OpenJade-native builds
correctly, but the target version does not.

Thanks
	
-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


