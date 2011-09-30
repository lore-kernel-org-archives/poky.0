Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B55DE004E4
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 08:54:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 30 Sep 2011 08:54:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,468,1312182000"; d="scan'208";a="22182270"
Received: from unknown (HELO helios.localnet) ([10.252.120.157])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Sep 2011 08:54:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 30 Sep 2011 16:54:48 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <201109301559.43728.paul.eggleton@linux.intel.com>
	<4E85E004.1080604@linux.intel.com>
In-Reply-To: <4E85E004.1080604@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201109301654.48992.paul.eggleton@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: Beagleboard XM rev B test
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
X-List-Received-Date: Fri, 30 Sep 2011 15:54:54 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Friday 30 September 2011 16:28:04 Darren Hart wrote:
> beagleboard-audio.bb works on the C4 and xM rev A (or did at one point).
> Would you have time to make the one line change to the beagleboard-audio
> init script and send that along? I can prepare the patch and try to get
> it upstream, but since I don't have a rev B to test, I'd like the file
> change to come from you.

Actually it was pretty trivial, beagleboard-audio was using RDEPENDS instead 
of RDEPENDS_${PN}, so (at least for an rpm rootfs) alsa-utils-amixer was not 
getting installed. I'm about to send a patch to fix this this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

