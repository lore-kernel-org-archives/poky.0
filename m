Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C4C034C80287
	for <poky@lists.pokylinux.org>; Thu,  4 Nov 2010 03:02:15 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Nov 2010 01:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,294,1286175600"; d="scan'208";a="854057448"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga001.fm.intel.com with ESMTP; 04 Nov 2010 01:02:13 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PDuhh-0000GB-5H
	for poky@lists.pokylinux.org; Thu, 04 Nov 2010 15:57:49 +0800
Date: Thu, 4 Nov 2010 15:57:49 +0800
From: Qing He <qing.he@intel.com>
To: poky@lists.pokylinux.org
Message-ID: <20101104075749.GA993@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [PULL] bzip2 security upgrade
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 08:02:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Upgrade bzip2 to 1.0.6 to fix CVE-2010-0405:
   http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2010-0405

Thanks,
Qing

---
 meta/recipes-extended/bzip2/bzip2-1.0.5/Makefile.am  |   41 -------------------
 meta/recipes-extended/bzip2/bzip2-1.0.5/configure.ac |   14 ------
 meta/recipes-extended/bzip2/bzip2-1.0.6/Makefile.am  |   41 +++++++++++++++++++
 meta/recipes-extended/bzip2/bzip2-1.0.6/configure.ac |   14 ++++++
 meta/recipes-extended/bzip2/bzip2_1.0.5.bb           |   26 ------------
 meta/recipes-extended/bzip2/bzip2_1.0.6.bb           |   26 ++++++++++++
 6 files changed, 81 insertions(+), 81 deletions(-)

Qing He (1):
      bzip2: upgrade to version 1.0.6

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

