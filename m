Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FBB24C80AA5
	for <poky@pokylinux.org>; Wed,  1 Jun 2011 16:37:40 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Jun 2011 14:37:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; 
   d="scan'208";a="5508686"
Received: from unknown (HELO [10.255.13.41]) ([10.255.13.41])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2011 14:37:24 -0700
Message-ID: <4DE6B113.1000904@linux.intel.com>
Date: Wed, 01 Jun 2011 14:37:23 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Liu, Song" <song.liu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A5262D035@shsmsx501.ccr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A010675@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A010675@ORSMSX101.amr.corp.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Weekly Test Report for Yocto 1.1 M1 RC2 - 20110528
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
X-List-Received-Date: Wed, 01 Jun 2011 21:37:40 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

On 06/01/2011 12:03 PM, Liu, Song wrote:
> I don’t see anyone reply to this. Which bug is opened for the 
> Beagleboard BSP build failure? It seem to be a critical issue.
> 
> Tom, shall you or someone else look into this?
> 
Darren and I are looking into this, the 3 beagleboard bugs are
1) qt4-x11-free does not compile, which blocks -sdk images, there is a
gcc patch that I am working to integrate today (1130), which has been
know about and I had a partial work around that was rejected.

2) Wrong terminal is getting set someplace, Darren and Beth are looking
at that. (1131)

3) qemu-config blocks non-gplv3 build, this was know and a fix just went
into master.

more below.

> Song
> 
> *From:*poky-bounces@yoctoproject.org 
> [mailto:poky-bounces@yoctoproject.org] *On Behalf Of *Xu, Jiajun
> *Sent:* Tuesday, May 31, 2011 8:41 AM
> *To:* poky@pokylinux.org; yocto@yoctoproject.org
> *Subject:* [poky] Weekly Test Report for Yocto 1.1 M1 RC2 - 20110528
> 
> Hi all,
> 
> This is the weekly test report for Yocto 1.1 M1 RC2 build. There is no 
> new bugs found in this testing. 3 BLOCK issues found in RC1 are fixed. 
> The only one block issue is beagleboard build failed on autobuilder. 
> There are still 9 old open bugs. Grub installation fail on 3 intel BSPs. 
> Graphics testing on sugarbay is blocked.
> 
One question about the sugarbay, was how was this tested before, or is
this a new requirement?  If it's new then it's not really blocking, the
question is should mesa-demos be on all environments or just on targets
that need them?  In which case this should be added to a sugarbay
specific build.

> For bug fixing, the keyboard not work issue and toolchain not built out 
> issue are fixed. Meanwhile, the cvs compile issue is marked as INVALID 
> because it also fails on native. We also remove sudoku-savant compile 
> test in qemu because such error may be caused by limited memory in qemu.
> 
> If there is no new build for M1, QA will continue fullpass testing 
> against RC2.
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
> Build failed
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
> GOOD
> 
> 	
> 
> Everything runs well
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
> 55
> 
> 	
> 
> 0
> 
> 	
> 
> 53
> 
> 	
> 
> 1 (bug 1101)
> 
> 	
> 
> 1 (bug 1112)
> 
> 	
> 
> *Crownbay Sato-SDK*
> 
> 	
> 
> 54
> 
> 	
> 
> 0
> 
> 	
> 
> 49
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
> *n450 Sato-SDK*
> 
> 	
> 
> 54
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
> 2 (bug 613, 1099)
> 
> 	
> 
> 4
> 
> 	
> 
> *eMenlow Sato-SDK*
> 
> 	
> 
> 54
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
> 4
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
> 27
> 
> 	
> 
> 0
> 
> 	
> 
> 27
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
> 30
> 
> 	
> 
> 0
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
> 0
> 
> 	
> 
> *Qemux86 Sato*
> 
> 	
> 
> 27
> 
> 	
> 
> 0
> 
> 	
> 
> 27
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
> 30
> 
> 	
> 
> 0
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
> *Total*
> 
> 	
> 
> 589
> 
> 	
> 
> 0
> 
> 	
> 
> 563
> 
> 	
> 
> 11
> 
> 	
> 
> 15
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
> ** The failed/blocked case number is listed with failed cases’ bug number.
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
> Not specified
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
> Verified Fixed Bugs:
> 
> 1.Bug 1100 <http://bugzilla.pokylinux.org/show_bug.cgi?id=1100>: 
> [emenlow/crownbay-noemgd] X window could not start up with sato-sdk image
> 
> 2.Bug 1108 <http://bugzilla.pokylinux.org/show_bug.cgi?id=1108>: 
> keyboard could not work in qemux86/x86-64
> 
> 3.Bug 1093 <http://bugzilla.pokylinux.org/show_bug.cgi?id=1093>: 
> meta-toolchain-gmae: eglibc fails to build with 4.6
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

