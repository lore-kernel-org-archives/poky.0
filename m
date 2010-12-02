Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 560334C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 13:40:00 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 11:39:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="863716602"
Received: from unknown (HELO [10.255.13.208]) ([10.255.13.208])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 11:39:59 -0800
Message-ID: <4CF7F60C.9050003@linux.intel.com>
Date: Thu, 02 Dec 2010 11:39:56 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	Richard Purdie <rpurdie@linux.intel.com>
Subject: Rename meta-demo layer to meta-dlna
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
X-List-Received-Date: Thu, 02 Dec 2010 19:40:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The meta-demo layer provides packages for rygel and mediatomb and 
supporting libraries. "meta-demo" was chosen for the Yocto Project 0.9 
launch event demo, but isn't a good name going forward. As the layer is 
still generally useful, perhaps "meta-dlna" would be a better name.

It does contain the basic NAS recipe as well, but I believe that could 
either construed as supporting the dlna layer, or moved to a more 
appropariate layer - core poky maybe?

Richard, could you rename meta-demo to meta-dlna ?

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

