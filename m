Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D9C04C805A8
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 04:12:29 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Apr 2011 02:12:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,231,1301900400"; d="scan'208";a="911015091"
Received: from unknown (HELO helios.localnet) ([10.255.12.202])
	by fmsmga001.fm.intel.com with ESMTP; 18 Apr 2011 02:12:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Mon, 18 Apr 2011 10:12:13 +0100
User-Agent: KMail/1.13.5 (Linux/2.6.35-28-generic-pae; KDE/4.6.1; i686; ; )
References: <cover.1302886579.git.paul.eggleton@linux.intel.com>
	<4DA8CA18.3000801@mlbassoc.com> <4DA8CE4A.6090408@linux.intel.com>
In-Reply-To: <4DA8CE4A.6090408@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201104181012.13920.paul.eggleton@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 2/3] netbase: automatically bring up usb0 on beagleboard
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
X-List-Received-Date: Mon, 18 Apr 2011 09:12:29 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Saturday 16 April 2011 00:01:30 Darren Hart wrote:
> On 04/15/2011 03:43 PM, Gary Thomas wrote:
> > eth1 yes, but doesn't the BeagleBoard xM have eth0?
> 
> No. The onboard device is usb0.

Looks like we're not the only ones confused by this:

https://bugs.launchpad.net/linux-linaro/+bug/622429

-- 

Paul Eggleton
Intel Open Source Technology Centre (UK)

