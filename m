Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A26B4C80579
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 07:29:21 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2011 05:29:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,219,1301900400"; d="scan'208";a="679508342"
Received: from unknown (HELO helios.localnet) ([10.255.12.218])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2011 05:29:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 15 Apr 2011 13:29:16 +0100
User-Agent: KMail/1.13.5 (Linux/2.6.35-28-generic-pae; KDE/4.6.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201104151329.17014.paul.eggleton@linux.intel.com>
Subject: NFS root & shutdown/reboot
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
X-List-Received-Date: Fri, 15 Apr 2011 12:29:21 -0000
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I have been working on smoothing out some things to do with NFS root this week 
and I have come across one situation that I'm not quite sure of. 

At the moment when you shut down a Poky NFS root-based system or reboot it, it 
gets all the way to the end and then hangs, with an error "nfs: server 
myserver not responding, still trying". I tracked this down to the -i option 
that is passed to the final call to shutdown and reboot which is supposed to 
shut down all network interfaces - if you remove this then it works fine.

I'm not sure of the reason for having the -i option, but it was suggested to 
me that it might be in order to release DHCP leases where applicable; also 
some systems might otherwise leave their network adapters powered up when the 
system is shut down in order to receive wake-on-LAN requests, and if you're 
not using that feature you're just wasting power. I'm guessing for most 
situations we would want to retain -i. However, where the system is running 
from an NFS root it would seem that we would have to omit this option, unless 
there is another solution I'm not aware of.

I've done some googling and not come up with anything concrete in terms of how 
this should be handled correctly. Any suggestions?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre (UK)

