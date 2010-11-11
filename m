Return-Path: <saul.wold@intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 852E54C80B6B
	for <poky@lists.pokylinux.org>; Thu, 11 Nov 2010 16:30:51 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id AC34512EC27E; Thu, 11 Nov 2010 17:07:33 -0600 (CST)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by pug.o-hand.com (Postfix) with ESMTP id 8801D12EC117
	for <poky@o-hand.com>; Thu, 11 Nov 2010 17:07:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2010 14:30:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,185,1288594800"; d="scan'208";a="856664061"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by fmsmga001.fm.intel.com with ESMTP; 11 Nov 2010 14:30:50 -0800
Message-ID: <4CDC6E99.4030709@intel.com>
Date: Thu, 11 Nov 2010 14:30:49 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky >> \"poky@o-hand.com\"" <poky@o-hand.com>
Subject: Rough timing of rpm vs opkg rootfs builds
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
X-List-Received-Date: Thu, 11 Nov 2010 22:30:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Mark, Qing, Dongxiao:

Richard and I were talking the other day and I started a little 
experiment with checking the timing of RPM rootfs build vs OPKG. For the 
minimal and SDK images:

Minimal - OPKG
real	1m39.456s
user	1m18.693s
sys	0m4.188s

SDK - OPKG
real	10m50.784s
user	6m8.059s
sys	0m51.523s

Minimal - RPM
real	4m25.166s
user	6m14.503s
sys	0m27.534s

SDK - RPM
real	24m40.979s
user	7m29.856s
sys	4m25.561s

Clearly there is some work we can do with RPM, which takes more than 
double the time, yes, I know it's doing more work, but maybe there are 
some optimizations that can be done to improve the speed.

For the autobuilder, we build 7 SDK images, which is about 3 hours using 
RPM vs about 75 minutes for OPKG, the Sato and LSB images are not much 
faster so this is another place we should be looking to help our build time.

This is just another place for us to open dialog and figure out what's 
going on.


Sau!


