Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75F0C4C804D9
	for <poky@pokylinux.org>; Tue,  7 Jun 2011 13:10:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jun 2011 11:10:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,333,1304319600"; d="scan'208";a="15100216"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2011 11:10:41 -0700
Message-ID: <4DEE69A1.8000909@linux.intel.com>
Date: Tue, 07 Jun 2011 11:10:41 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A5271FA9F@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A5271FA9F@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Fullpass Test Report for Yocto 1.1 M1 RC2 - 20110528
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
X-List-Received-Date: Tue, 07 Jun 2011 18:10:42 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit

On 06/06/2011 09:36 PM, Xu, Jiajun wrote:
> Hi all,
> 
> This is the fullpass test report for Yocto 1.1 M1 RC2 build. There are 3 
> new bugs found in this testing compared with weekly testing. Non-GPLv3 
> build could not work and one new LTP failure found with new kernel. The 
> 2 BLOCK issues on have been addressed and a new build is ready for QA 
> testing. Except for LTP and POSIX failures, there are 13 open bugs for 
> RC2 build. Grub installation fails on 3 intel BSPs. Graphics testing on 
> sugarbay is blocked because there are no mesa-demos and libSDL.so installed.
> 
Jiajun, Yi Zhao,

What's the status of the Beagleboard testing, you show blocked below,
but I thought we unblocked last week, so is there any update on the
status of beagleboard testing?  We need to know this since we have a
conditional GO decision based on these results.

I would like to also understand the sugarbay graphics testing, this is
not a blocker, it's a new requirement, correct?  We have not had
mesa-demos included in any past release.  I am going to add it to the
sato-sdk build only, will that be?

Sau!


> Helltest and Crashme could pass 24 hours testing on Jasperforest. Idle 
> power consumption of sugarbay and crownbay are 40.12W and 18.72W 
> respectively. LTP and POSIX testing is finished but the result analysis 
> is still on-going.
> 
> *Test Summary*
> 
> *---------------------------------------*
> 
> 						
> 
> 										
> 
> 														
> 
> 																
> 																				
> 																								
> 
> *Test Result Summary*
> 
> 	
> 
> *Component*
> 
> 	
> 
> *Target*
> 
> 	
> 
> *Status*
> 
> 	
> 
> *Comments*
> 
> 	
> 
> *BSP*
> 
> 	
> 
> SugarBay
> 
> 	
> 
> GOOD
> 
> 	
> 
> Graphics testing is blocked; soft keyboard will be triggered with 
> terminal icon;
> 
> 	
> 
> 　
> 
> 	
> 
> CrownBay
> 
> 	
> 
> GOOD
> 
> 	
> 
> Grub installation failed;
> 
> 	
> 
> 　
> 
> 	
> 
> JasperForest
> 
> 	
> 
> GOOD
> 
> 	
> 
> Everything runs well
> 
> 	
> 
> 　
> 
> 	
> 
> Blacksand
> 
> 	
> 
> GOOD
> 
> 	
> 
> Grub installation failed; S3 does not work;
> 
> 	
> 
> 　
> 
> 	
> 
> eMenlow
> 
> 	
> 
> GOOD
> 
> 	
> 
> System installation failed; S3 does not work;
> 
> 	
> 
> 　
> 
> 	
> 
> Beagleboard
> 
> 	
> 
> BLOCK
> 
> 	
> 
> Build failed; A new build is ready and QA is doing testing for it;
> 
> 	
> 
> 　
> 
> 	
> 
> Routerstationpro
> 
> 	
> 
> GOOD
> 
> 	
> 
> Everything runs well
> 
> 	
> 
> 　
> 
> 	
> 
> Mpc8315e-rdb
> 
> 	
> 
> Buggy
> 
> 	
> 
> USB does not work
> 
> 	
> 
> *QEMU*
> 
> 	
> 
> qemux86
> 
> 	
> 
> GOOD
> 
> 	
> 
> Everything runs well
> 
> 	
> 
> 　
> 
> 	
> 
> qemux86-64
> 
> 	
> 
> GOOD
> 
> 	
> 
> Everything runs well
> 
> 	
> 
> 　
> 
> 	
> 
> qemuarm
> 
> 	
> 
> GOOD
> 
> 	
> 
> Everything runs well
> 
> 	
> 
> 　
> 
> 	
> 
> qemuppc
> 
> 	
> 
> GOOD
> 
> 	
> 
> unfs does not work with qemuppc
> 
> 	
> 
> 　
> 
> 	
> 
> qemumips
> 
> 	
> 
> GOOD
> 
> 	
> 
> Everything runs well
> 
> 	
> 
> *Core Build System*
> 
> 	
> 
> 　
> 
> 	
> 
> Buggy
> 
> 	
> 
> non-GPLv3 build failed
> 
> 	
> 
> *Power/Performance*
> 
> 	
> 
> 　
> 
> 	
> 
> GOOD
> 
> 	
> 
> Power consumption of sugarbay and crownbay are 40.12W and 18.72W 
> respectively
> 
> 	
> 
> *Compliance*
> 
> 	
> 
> 　
> 
> 	
> 
> In analysis
> 
> 	
> 
> LTP result: https://wiki.pokylinux.org/wiki/LTP_result
> POSIX result: https://wiki.pokylinux.org/wiki/Posix_result
> 
> 	
> 
> *Stress*
> 
> 	
> 
> 　
> 
> 	
> 
> GOOD
> 
> 	
> 
> Helltest and crashme could pass 24 hours testing
> 
> 	
> 
> *ADT*
> 
> 	
> 
> 　
> 
> 	
> 
> Buggy
> 
> 	
> 
> unfs does not work with qemuppc
> 
> 	
> 
> 																													
> 
> **
> 
> 　
> 
> 	
> 
> Critical bugs, more than 50% test cases are blocked
> 
> 	
> 
> 　
> 
> 	
> 
> Only Normal, Minor or Enhancement bugs, less than 10% test cases failed
> 
> 	
> 
> 　
> 
> 	
> 
> Normal, Major and Critical bugs, more than 10% test cases failed
> 
> 	
> 
> 							
> 													
> 
> *Detailed Test Result for each component*
> 
> 	
> 
> *Target*
> 
> 	
> 
> *Total TCs***
> 
> 	
> 
> *Not Run*
> 
> 	
> 
> *Passed***
> 
> 	
> 
> *Failed***
> 
> 	
> 
> *Not testable (Blocked)***
> 
> 	
> 
> *Sugarbay Sato-SDK*
> 
> 	
> 
> 64
> 
> 	
> 
> 0
> 
> 	
> 
> 60
> 
> 	
> 
> 1 (bug 1101)
> 
> 	
> 
> 3 (bug 1112, 883)
> 
> 	
> 
> *Crownbay Sato-SDK*
> 
> 	
> 
> 60
> 
> 	
> 
> 0
> 
> 	
> 
> 55
> 
> 	
> 
> 1 (bug 1099)
> 
> 	
> 
> 4
> 
> 	
> 
> *Jasperforest LSB-SDK*
> 
> 	
> 
> 34
> 
> 	
> 
> 0
> 
> 	
> 
> 34
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *n450 Sato-SDK*
> 
> 	
> 
> 60
> 
> 	
> 
> 0
> 
> 	
> 
> 52
> 
> 	
> 
> 2 (bug 613, 1099)
> 
> 	
> 
> 6 (bug 613)
> 
> 	
> 
> *eMenlow Sato-SDK*
> 
> 	
> 
> 60
> 
> 	
> 
> 0
> 
> 	
> 
> 48
> 
> 	
> 
> 2 (bug 1099, 503)
> 
> 	
> 
> 6 (bug 503)
> 
> 	
> 
> *Routerstationpro Sato-SDK*
> 
> 	
> 
> 29
> 
> 	
> 
> 0
> 
> 	
> 
> 29
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Mpc8315e-rdb Sato-SDK*
> 
> 	
> 
> 30
> 
> 	
> 
> 0
> 
> 	
> 
> 26
> 
> 	
> 
> 4 (bug 766)
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemux86-64 Sato*
> 
> 	
> 
> 28
> 
> 	
> 
> 0
> 
> 	
> 
> 28
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemux86-64 Sato-SDK*
> 
> 	
> 
> 31
> 
> 	
> 
> 0
> 
> 	
> 
> 31
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemux86 Sato*
> 
> 	
> 
> 28
> 
> 	
> 
> 0
> 
> 	
> 
> 28
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemux86 Sato-SDK*
> 
> 	
> 
> 31
> 
> 	
> 
> 0
> 
> 	
> 
> 31
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemumips Sato*
> 
> 	
> 
> 26
> 
> 	
> 
> 0
> 
> 	
> 
> 26
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemumips Sato-SDK*
> 
> 	
> 
> 32
> 
> 	
> 
> 0
> 
> 	
> 
> 32
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemuppc Sato*
> 
> 	
> 
> 20
> 
> 	
> 
> 0
> 
> 	
> 
> 19
> 
> 	
> 
> 0
> 
> 	
> 
> 1 (bug 414)
> 
> 	
> 
> *Qemuppc Sato-SDK*
> 
> 	
> 
> 26
> 
> 	
> 
> 0
> 
> 	
> 
> 25
> 
> 	
> 
> 0
> 
> 	
> 
> 1 (bug 414)
> 
> 	
> 
> *Qemuarm Sato*
> 
> 	
> 
> 26
> 
> 	
> 
> 0
> 
> 	
> 
> 26
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Qemuarm Sato-SDK*
> 
> 	
> 
> 32
> 
> 	
> 
> 0
> 
> 	
> 
> 32
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Core Build System*
> 
> 	
> 
> 8
> 
> 	
> 
> 0
> 
> 	
> 
> 7
> 
> 	
> 
> 1 (bug 1133)
> 
> 	
> 
> 0
> 
> 	
> 
> *ADT*
> 
> 	
> 
> 6
> 
> 	
> 
> 0
> 
> 	
> 
> 5
> 
> 	
> 
> 1 (bug 414)
> 
> 	
> 
> 0
> 
> 	
> 
> *Power/Performance*
> 
> 	
> 
> 4
> 
> 	
> 
> 0
> 
> 	
> 
> 4
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Stress*
> 
> 	
> 
> 2
> 
> 	
> 
> 0
> 
> 	
> 
> 2
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> *Total*
> 
> 	
> 
> 637
> 
> 	
> 
> 0
> 
> 	
> 
> 600
> 
> 	
> 
> 12
> 
> 	
> 
> 21
> 
> 	
> 
> 																			
> 
> **
> 
> 							
> 													
> 																			
> 																			
> 
> * You can check the detailed test result in attachment for each target.
> 
> ** The failed/blocked case number is listed with failed cases¨ bug number.
> 
> *Commit Information*
> 
> *---------------------------------------*
> 
> Tree/Branch: Poky/1.1_M1
> 
> Poky Commit: 4ff7af11ef69849ef9c16f585eae58ac920b222b
> 
> Meta Branch: 1.1_M1
> 
> Meta Commit: fc719f0cd6530ce15148b4aa274f1644b461b298
> 
> *Issue Summary*
> 
> *---------------------------------------*
> 
> *Component*
> 
> 	
> 
> *Bug Number*
> 
> 	
> 
> *Target Milestone*
> 
> *System & Core OS*
> 
> 	
> 
> *Installation & Boot*
> 
> 	
> 
> Bug 1006: [mpc8315e-rdb & routerstationpro] minimal,sato,sato-sdk images 
> boot failed (nightly build 20110423-1)
> 
> 	
> 
> 1.1
> 
> Bug 1099: [blacksand/emenlow/crownbay] grub install failed with sato-sdk 
> live image
> 
> 	
> 
> 1.1 M2
> 
> *Power Mangement*
> 
> 	
> 
> Bug 613: [Blacksand]system cannot enter S3 standby mode
> 
> 	
> 
> 1.1
> 
> Bug 503: [emenlow] system cannot enter S3 standby mode
> 
> 	
> 
> 1.1
> 
> *Others*
> 
> 	
> 
> Bug 766: [mpc8315e-rdb] USB does not work on mpc8315e-rdb
> 
> 	
> 
> 1.0 M4
> 
> Bug 1101: keyboard pop up when clicking terminal icon
> 
> 	
> 
> 1.0 M2
> 
> Bug 1107: Open or add person in contacts may segfault on sugarbay/blacksand
> 
> 	
> 
> 1.1 M2
> 
> Bug 1097: The mouse can not click accurate to the icons in qemumips X
> 
> 	
> 
> 1.1 M2
> 
> *Graphics*
> 
> 	
> 
> Bug 1112: [sugarbay] mesa-demos should be added into sato image for 
> graphics testing
> 
> 	
> 
> 1.1 M2
> 
> Bug 883: [Sugarbay] GFX 3D game test fail to run with sugarbay BSP image 
> due to libsdl.so
> 
> 	
> 
> 1.1
> 
> *Multimedia*
> 
> 	
> 
> Works well in sugarbay/n450/eMenlow/crownbay
> 
> 	
> 
> 　
> 
> *Core Build System*
> 
> 	
> 
> New!Bug 1136: do_menuconfig for linux-yocto needs ${B} exists
> 
> New!Bug 1133: No provider for core-image-minimal/basic for non-GPLv3 build
> 
> 	
> 
> 1.1M2
> 
> 1.1 M2
> 
> *Compliance*
> 
> 	
> 
> Compliance testing is finished, but result is still under analysis. LTP 
> test result is on https://wiki.pokylinux.org/wiki/LTP_result
> 
> POSIX test result is on https://wiki.pokylinux.org/wiki/Posix_result
> 
> A new LTP failure is found and reported as bug 1138: [LTP] Some 
> growfiles cases failed with Yocto 1.1 M1 build.
> 
> 	
> 
> 　
> 
> *Stress*
> 
> 	
> 
> Helltest and Crashme could pass 24 hours testing
> 
> 	
> 
> 　
> 
> *ADT*
> 
> 	
> 
> Bug 414: [PPC] kernel panic when booting poky-image-sdk-qemuppc through UNFS
> 
> 	
> 
> 1.1 M3
> 
> Best Regards,
> 
> Jiajun
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

