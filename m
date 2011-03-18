Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98C474C80FE1
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:01:06 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 09:59:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="668767483"
Received: from unknown (HELO helios) ([10.255.12.183])
	by fmsmga002.fm.intel.com with SMTP; 18 Mar 2011 09:59:29 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 18 Mar 2011 16:59:31 +0000
Message-Id: <cover.1300467183.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 16:53:03 +0000
Date: Fri, 18 Mar 2011 16:59:31 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] Update README.hardware
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
X-List-Received-Date: Fri, 18 Mar 2011 17:01:11 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Updates README.hardware for the 1.0 release. 

Note that this removes a number of sections for machines that have been moved
to meta-extras. I have created a separate README.hardware.extras file for these
to be included in meta-extras, which I will post separately.

Unfortunately we are still missing instructions for the Freescale MPC8315E-RDB;
hopefully these can be sourced and added in time.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/readme-hardware
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/readme-hardware

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  README.hardware: update for 1.0 release

 README.hardware |  575 ++++++++++++++++--------------------------------------
 1 files changed, 171 insertions(+), 404 deletions(-)


