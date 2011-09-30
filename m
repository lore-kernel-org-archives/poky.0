Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3135EE004E4
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 08:28:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Sep 2011 08:28:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,467,1312182000"; d="scan'208";a="69075474"
Received: from unknown (HELO envy.home) ([10.255.14.197])
	by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2011 08:28:04 -0700
Message-ID: <4E85E004.1080604@linux.intel.com>
Date: Fri, 30 Sep 2011 08:28:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <201109301559.43728.paul.eggleton@linux.intel.com>
In-Reply-To: <201109301559.43728.paul.eggleton@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 30 Sep 2011 15:28:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/30/2011 07:59 AM, Paul Eggleton wrote:
> Hi all,
> 

Hi Paul, thanks for testing!

> I also ran a test today of 1.1 on core-image-sato on my BeagleBoard XM rev B 
> (self-built image from edison branch, revision 7eb193fc4994b880c). I tested 
> the following:
> 
> * Boot into X
> * USB (mouse)
> * Ethernet (remote login via ssh)
> * HDMI video out
> * Audio (ogg file playback)
> * Ran a few other applications (Contacts, File Manager, etc.)
> 
> Some notes:
> * The graphical artifacts under X (random colour blotches especially on and 
> around text) reported earlier are still present
> * The default ALSA mixer settings don't give you any audio, we should probably 
> try to fix this ("headset" mute options are set)

beagleboard-audio.bb works on the C4 and xM rev A (or did at one point).
Would you have time to make the one line change to the beagleboard-audio
init script and send that along? I can prepare the patch and try to get
it upstream, but since I don't have a rev B to test, I'd like the file
change to come from you.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

