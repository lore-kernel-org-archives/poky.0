Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15BA94C801BF
	for <poky@pokylinux.org>; Wed, 20 Oct 2010 04:00:32 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2010 02:00:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,354,1283756400"; d="scan'208";a="618491702"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 20 Oct 2010 02:00:32 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1P8UTC-0003pI-7b
	for poky@pokylinux.org; Wed, 20 Oct 2010 16:56:26 +0800
Date: Wed, 20 Oct 2010 16:56:26 +0800
From: Qing He <qing.he@intel.com>
To: poky@pokylinux.org
Message-ID: <20101020085626.GA14696@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [PULL] fixes for bash and nfs-utils
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
X-List-Received-Date: Wed, 20 Oct 2010 09:00:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

this fixes bug 483 and bug 387.

Thanks,
Qing

---
 meta/recipes-connectivity/nfs-utils/nfs-utils/nfsserver |    6 +++---
 meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.2.bb  |    2 +-
 meta/recipes-extended/bash/bash.inc                     |    2 +-
 meta/recipes-extended/bash/bash_3.2.48.bb               |    2 +-
 meta/recipes-extended/bash/bash_4.1.bb                  |    2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

Qing He (2):
      bash: fix job control
      nfs-utils: fix nfs server initscript

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

