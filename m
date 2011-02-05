Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AD3B4C800B7;
	Fri,  4 Feb 2011 18:26:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Feb 2011 16:26:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,428,1291622400"; d="scan'208";a="704246949"
Received: from unknown (HELO [10.255.14.116]) ([10.255.14.116])
	by orsmga001.jf.intel.com with ESMTP; 04 Feb 2011 16:26:02 -0800
Message-ID: <4D4C9919.6060708@intel.com>
Date: Fri, 04 Feb 2011 16:26:01 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [Announcement] Laverne 4.0.1 Release
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
X-List-Received-Date: Sat, 05 Feb 2011 00:26:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


We are pleased to announce the first bug-fix release of Poky Laverne,
4.0.1. This release is available at:

http://mirrors.kernel.org/yocto/poky/poky-laverne-4.0.1.tar.bz2

This release fixes issues with Poky Laverne on systems running
Fedora 14 and Opensuse 11.3, fixes issues with the poky-qemu script, and
fixes several other bugs. For a full list of bug fixes and known issues,
please see the Laverne 4.0.1 Errata at the bottom of this email.

Thanks to everyone who helped with reporting and fixing bugs!

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer


--------------------
Laverne 4.0.1 Errata
--------------------
Name: Laverne
Version: 4.0.1
MD5 Sum: 0564df3a756c7ccdf2b34e980e6f56d8
Tagged Rev: 45526f5ecfd7fec22ce8022b46c311e77ee0fa9f
Build Rev: fd7a07b3a2153826bedda2ef76b9a33ab2791680
Build Date: Jan 26 2011
Builder: autobuilder.pokylinux.org

Fixes
------------------------

    * Make 3.82, as shipped with Fedora 14, included parser bug fixes
that resulted in a much stricter parser. As a result, the Makefiles
could not be parsed for many of the software versions shipped with
Laverne. The Makefiles in the following recipes were fixed:

          o eglibc
          o busybox
          o procps
          o linux-libc-headers
          o gstreamer
          o gst-plugins
          o libowl-av
          o owl-video-widget
          o dates
          o contacts
          o web-webkit

    * The ability to build openssl-native on a system that has SELINUX
enabled was restored. (We disabled the execstack flag at compile time.)

    * A host-intrusion issue caused by a failure in QEMU to find zlib
headers during configure was fixed. The issue was causing qemu-native to
use the system zlib if it was present. If the system zlib was not
present the build would fail.

    * Stability and usability enhancements, which included handling
relative filesystem paths, were made to poky-qemu scripts.

    * The run-time remapping of package names when adding extra packages
to an image via the IMAGE_INSTALL mechanism were fixed.

    * The configure test in quilt for GNU patch was fixed to that it
correctly detects the version.

Known Issues
------------------------

    * The mpc3815e-rbd and routerstationpro machines were untested and
not a part of the official Laverne 4.0 release. These machines are still
unusable for this Laverne 4.0.1 release.
       o mpx3815e-rdb will not boot due to a kernel/uboot issue Bug #685
       o routerstation will not boot (by default) due to incorrect boot
         parameters Bug #681
       o routerstationpro debug messages related to the ethernet driver
         print during boot Bug #679

    * Shutdown/poweroff on qemuarm does not cleanly halt the virtual
machine. To workaround this issue use the reboot command. Using this
command avoids a "power-cycle" and instead cleanly shuts down the VM Bug
#684

    * Two "Connection Manager" icons appear in the Sato UI. This
duplication has been fixed in master. Note that you can use either icon
to launch the connectivity UI. Bug #683

    * The on-screen keyboard incorrectly launches in the qemumips
machine. This issue is due to a mis-configured formfactor file Bug #682

