Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5E44E00566
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 07:59:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Sep 2011 07:59:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,467,1312182000"; d="scan'208";a="69064179"
Received: from unknown (HELO helios.localnet) ([10.252.120.157])
	by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2011 07:59:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 30 Sep 2011 15:59:43 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
MIME-Version: 1.0
Message-Id: <201109301559.43728.paul.eggleton@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Beagleboard XM rev B test
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
X-List-Received-Date: Fri, 30 Sep 2011 14:59:45 -0000
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I also ran a test today of 1.1 on core-image-sato on my BeagleBoard XM rev B 
(self-built image from edison branch, revision 7eb193fc4994b880c). I tested 
the following:

* Boot into X
* USB (mouse)
* Ethernet (remote login via ssh)
* HDMI video out
* Audio (ogg file playback)
* Ran a few other applications (Contacts, File Manager, etc.)

Some notes:
* The graphical artifacts under X (random colour blotches especially on and 
around text) reported earlier are still present
* The default ALSA mixer settings don't give you any audio, we should probably 
try to fix this ("headset" mute options are set)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

