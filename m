Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A33BE4C808B6
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 00:09:50 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 22:09:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,240,1288594800"; d="scan'208";a="629423368"
Received: from unknown (HELO [10.255.13.161]) ([10.255.13.161])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 22:09:49 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 23 Nov 2010 00:09:54 -0600
Message-ID: <1290492594.2784.148.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [KERNEL][PATCH 0/1] add blktrace feature
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
X-List-Received-Date: Tue, 23 Nov 2010 06:09:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Kernel config needed for blktrace package.

Tom Zanussi (1):
  wrs_meta: add blktrace feature

 .../kernel-cache/features/blktrace/blktrace.cfg    |    1 +
 .../kernel-cache/features/blktrace/blktrace.scc    |    1 +
 wrs/cfg/kernel-cache/ktypes/standard/standard.scc  |    3 +++
 3 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
 create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.scc




