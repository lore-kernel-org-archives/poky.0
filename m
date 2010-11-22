Return-Path: <paul.eggleton@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EDAB4C80B6B
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 10:26:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Nov 2010 08:26:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="576340718"
Received: from unknown (HELO helios) ([10.255.16.138])
	by orsmga002.jf.intel.com with SMTP; 22 Nov 2010 08:26:53 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 22 Nov 2010 16:26:51 +0000
Message-Id: <cover.1290442820.git.paul.eggleton@intel.com>
From: Paul Eggleton <paul.eggleton@intel.com>
Date: Mon, 22 Nov 2010 16:20:20 +0000
To: poky@pokylinux.org
Subject: [PATCH 0/1] sstate.bbclass: delete sstate files when doing cleanall
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
X-List-Received-Date: Mon, 22 Nov 2010 16:26:58 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"

Single commit which fixes deleting sstate cache files when doing cleanall.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/sstate-clean-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sstate-clean-fix

Thanks,
    Paul Eggleton <paul.eggleton@intel.com>
---


Paul Eggleton (1):
  sstate.bbclass: delete sstate files when doing cleanall

 meta/classes/sstate.bbclass |   12 ++++++++----
 1 files changed, 8 insertions(+), 4 deletions(-)

-- 
1.7.3.1

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


