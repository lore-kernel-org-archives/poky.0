Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 792E04C803BA;
	Wed, 25 May 2011 22:40:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2011 20:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,270,1304319600"; 
   d="scan'208";a="5055611"
Received: from unknown (HELO [10.255.12.84]) ([10.255.12.84])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2011 20:40:41 -0700
Message-ID: <4DDDCBB8.6090902@intel.com>
Date: Wed, 25 May 2011 20:40:40 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [Announcement] Bernard 5.0.1 Release
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
X-List-Received-Date: Thu, 26 May 2011 03:40:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

We are pleased to announce the first bug-fix release of Poky Bernard,
5.0.1. Release notes are available at:
http://www.yoctoproject.org/download/yocto/yocto-project-1.0.1-release-notes-poky-5.0.1

Details
=======
Download: http://autobuilder.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2
Mirror Download: http://mirrors.kernel.org/yocto/poky/poky-bernard-5.0.1.tar.bz2
Release Notes: http://www.yoctoproject.org/download/yocto/yocto-project-1.0.1-release-notes-poky-5.0.1
Git URL: git://git.yoctoproject.org/poky.git
Git Branch: bernard
Git Tag: bernard-5.0.1
Git Tag GPG Key: http://pgp.mit.edu:11371/pks/lookup?op=get&search=0xDACE10B1542E22BE

Features and Updates
====================

BitBake Updates
---------------
      - Improved usability of Shared State

Package Updates
---------------
      - Updates and patches to security
      - Builds supported for Fedora 14
      - Builds supported for Ubuntu 11.04
      - Fixed wrong or updated SRC_URI
      - Corrected bad MD5SUM

Documentation
-------------
      - Updates to the Poky Reference Manual
      - Updates to the Application Development Toolkit (ADT) Manual
      - Updates to the Kernel Architecture and Use Manual
      - Updates to the Yocto Project Quick Start
      - Machine-specific sysroot to allow customizations to be isolated to a machine

Known Issues
============

The Yocto project uses the bugzilla at http://bugzilla.yoctoproject.org to handle bug tracking. You should always
consult that source first when experiencing any issue with a Yocto Project release.

      - Bug 414 - [PPC] kernel panic when booting poky-image-sdk-qemuppc through UNFS. The issues are intermittent and do
not show up for many people.
      - Bug 970 - yocto 1.0 sato-sdk 336 errors from zypper verify.
      - Bug 1029 - The Beagleboard can not boot up with 20110506 build. This bug has been partially fixed - the
instructions for the BeagleBoard have been updated, please see README.hardware for details.
      - Drivers - qemu GL passthrough can have issues if a closed source nvidia driver is used on the host system. Some
S3 suspend state issues exist with Intel BSPs, which are documented in bugzilla.
      - Docs - The Release documents included in the Yocto Project tarball might differ from the same documents accessed
from the Yocto Project website. Differences exist due to freeze dates prior to the release date. For the most up-to-date
Yocto Project documentation, always refer to the Yocto Project website at http://www.yoctoproject.org.


Thanks to everyone who helped with reporting and fixing bugs!

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer


