Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F40E4C80039;
	Fri, 14 Jan 2011 10:12:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Jan 2011 08:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,323,1291622400"; d="scan'208";a="696897722"
Received: from unknown (HELO [10.255.14.72]) ([10.255.14.72])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2011 08:12:10 -0800
Message-ID: <4D3075D9.40804@intel.com>
Date: Fri, 14 Jan 2011 08:12:09 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: ANNOUNCE: Poky / Yocto Core Metadata 1.0 Milestone 2 Status
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
X-List-Received-Date: Fri, 14 Jan 2011 16:12:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On December 24th the Yocto Project team completed Milestone 2 for Poky / 
Yocto Core Metadata.  The milestone tar ball is availbe at:

    http://autobuilder.pokylinux.org/milestone/20101218-1/

This milestone contains a number of new features including:

   - Linux Kernel Version 2.6.37-rc5
   - introduced linux-yocto-stable recipe at 2.6.34
   - Updated Recipes
   - World Cleanup (World will build for most arches)
   - LIC_FILES_CHKSUM required for recipes
   - SRC_URI Checksums added to recipes
   - Kernel Tracing
   - Updated Documentation
   - SDK and Installer Enhancments
   - Linaro: meta-linaro layer added in poky-extras


The test results indicated the following issues, which are being worked 
on to resolve before the 1.0 release occurs:

[multimedia] No sound from machine when playing audio files
http://bugzilla.pokylinux.org/show_bug.cgi?id=616
[multimedia] video player reports error when open video files
http://bugzilla.pokylinux.org/show_bug.cgi?id=615

   - Issue with upgrading libowl-av and interaction with playbin, this 
is being actively investigated.

[Blacksand]system cannot enter S3 standby mode
http://bugzilla.pokylinux.org/show_bug.cgi?id=613
[emenlow] system cannot enter S3 standby mode
http://bugzilla.pokylinux.org/show_bug.cgi?id=503

   - These are related and possibly duplicated, just for different 
hardware platforms.

no rootfs and dtb file in qemumpc8315e-rdb milestone build
http://bugzilla.pokylinux.org/show_bug.cgi?id=610

- This issue is related to the autobuilder not correctly moving files to 
the milestone directory tree. It has been resolved in the Autobuilder now.

[RouterStation] The timestamp of new file created under /home/root 
doesn't correct after adjusting the time
http://bugzilla.pokylinux.org/show_bug.cgi?id=609

   - Being investigated

[Blacksand] Some error information prompted when run dmesg command
http://bugzilla.pokylinux.org/show_bug.cgi?id=607

   - This bug will be closed, as it is a normal error based on EDID not 
being available depending on the monitor connector (or no monitor connected)

[toolchain]Build c program failed with arm toolchain
http://bugzilla.pokylinux.org/show_bug.cgi?id=604

- Fixed and commited in M3, needs to be verified

[Netbook]Connection preferences did not enable wireless networks
http://bugzilla.pokylinux.org/show_bug.cgi?id=603

   - Need to get updated status on this

qemumips shutdown cause host console warning
http://bugzilla.pokylinux.org/show_bug.cgi?id=322

- minor bug that displays warning due to bad qemu emulations of ethernet 
driver.

[poky] kernel interactive build does not work via ssh
http://bugzilla.pokylinux.org/show_bug.cgi?id=598

   - Fix was commited and tested in M3, but a psuedo issue seems to have
cropped up.

[poky] qemu running with KVM needs root permission
http://bugzilla.pokylinux.org/show_bug.cgi?id=599

- This was fixed in M3 and has been verified

[LTP] LTP default test suite cannot fully pass
http://bugzilla.pokylinux.org/show_bug.cgi?id=169
[POSIX] POSIX default test suite cannot fully pass
http://bugzilla.pokylinux.org/show_bug.cgi?id=172

- These are place holder bugs, we know that LTP and Posix testing will 
not completely pass, we are working to identify and document the 
failures in order to use future testing for regressions verification.



Zypper/RPM Bugs, these are known issues that are currently being addressed.

[zypper] uname -m and repo arch difference
http://bugzilla.pokylinux.org/show_bug.cgi?id=489

[zypper] installation failure on arm
http://bugzilla.pokylinux.org/show_bug.cgi?id=490

[zypper] package removal failure
http://bugzilla.pokylinux.org/show_bug.cgi?id=491

zypper encounter segfault when startup with qemuppc
http://bugzilla.pokylinux.org/show_bug.cgi?id=443

[rpm/zypper] remove_packaging_data_files makes rpm/zypper install/remove 
not work in minimal image
http://bugzilla.pokylinux.org/show_bug.cgi?id=608

