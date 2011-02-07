Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 367C94C800A6
	for <poky@yoctoproject.org>; Sun,  6 Feb 2011 20:17:19 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Feb 2011 18:17:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,435,1291622400"; d="scan'208";a="655010499"
Received: from unknown (HELO [10.255.14.146]) ([10.255.14.146])
	by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2011 18:17:18 -0800
Message-ID: <4D4F562D.1090801@linux.intel.com>
Date: Sun, 06 Feb 2011 18:17:17 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: lttng-ust failure on QemuPPC
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
X-List-Received-Date: Mon, 07 Feb 2011 02:17:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Bruce, Darren:

Can you take a look at the failure in the qemuppc build against
the lttng-ust.

Looks like the definitions for CLOCK_TRACE and CLOCK_TRACE_FREQ are not 
available for ppc?  Is this a package that should not be built for PPC?

Thanks
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


