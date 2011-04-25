Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54CF24C80ADD
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 16:14:26 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Apr 2011 14:14:25 -0700
Message-Id: <1bdc18$kc3a7u@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="683780357"
Received: from unknown (HELO localhost) ([10.255.12.226])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2011 14:14:25 -0700
Old-Date: Mon, 25 Apr 2011 16:08:40 -0500
Date: Mon, 25 Apr 2011 16:14:11 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/2] meta-intel: README fixes
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
X-List-Received-Date: Mon, 25 Apr 2011 21:14:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A couple of updates to meta-intel READMEs.

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/README-fixes-master
  Branch: tzanussi/README-fixes-master
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/README-fixes-master

Tom Zanussi (2):
  meta-emenlow: add hw blurb to README
  meta-crownbay: update documentation with hw and build details

 meta-crownbay/README |   42 +++++++++++++++++++++++++++++++-----------
 meta-emenlow/README  |    3 +++
 2 files changed, 34 insertions(+), 11 deletions(-)


