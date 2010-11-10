Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B1FC4C80BCF
	for <poky@yoctoproject.org>; Wed, 10 Nov 2010 03:00:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Nov 2010 01:00:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,177,1288594800"; d="scan'208";a="676064120"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by orsmga001.jf.intel.com with ESMTP; 10 Nov 2010 01:00:20 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PG6T7-0008FF-BR
	for poky@yoctoproject.org; Wed, 10 Nov 2010 16:55:49 +0800
Date: Wed, 10 Nov 2010 16:55:49 +0800
From: Qing He <qing.he@intel.com>
To: poky@yoctoproject.org
Message-ID: <20101110085549.GA31687@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [PULL] fixes of libnss-mdns and license checksum
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
X-List-Received-Date: Wed, 10 Nov 2010 09:00:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The libnss-mdns patch fixes bug 510
The other fix the license checksum that was effectively disabled by a
typo.

Thanks,
Qing
---
 meta/classes/insane.bbclass                               |    4 ++--
 meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb |    5 +++--
 2 files changed, 5 insertions(+), 4 deletions(-)

Qing He (2):
      libnss-mdns: fix package removal
      insane.bbclass: fix qa_configure and qa_staging

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

