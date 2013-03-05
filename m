Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C46E01500
	for <poky@yoctoproject.org>; Tue,  5 Mar 2013 15:08:43 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Mar 2013 15:08:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,791,1355126400"; d="scan'208";a="295388285"
Received: from unknown (HELO helios.localnet) ([10.255.13.93])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2013 15:08:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Steven Grunza <sgrunza@ctdi.com>
Date: Tue, 05 Mar 2013 23:08:39 +0000
Message-ID: <1989805.uvpDmqKqlq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10 (Linux/3.5.0-24-generic; KDE/4.10.0; i686; ; )
In-Reply-To: <6A40B310D7EFC840A22CBF165D914E2902BE9264@WCEXCH3.ctdi.com>
References: <6A40B310D7EFC840A22CBF165D914E2902BE9264@WCEXCH3.ctdi.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Is there a guide for adding a board to the yocto system?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Mar 2013 23:08:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 05 March 2013 09:14:25 Steven Grunza wrote:
> I would like to add a board to the yocto system such that instead of
> having a line in build/conf/local.conf that reads
> 
> MACHINE ?= "beagleboard"
> 
> It would be
> 
> MACHINE ?= "my_board_name"
> 
> 
> Is there a guide on how to do this?

Certainly - see the "Board Support Package (BSP) Developer's Guide" available 
from the documentation page on the website:

https://www.yoctoproject.org/documentation/current

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

