Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F36ACE0129D
	for <poky@yoctoproject.org>; Wed, 22 May 2013 09:20:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 May 2013 09:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,722,1363158000"; d="scan'208";a="317834430"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.181])
	by orsmga001.jf.intel.com with ESMTP; 22 May 2013 09:20:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 22 May 2013 17:20:26 +0100
Message-Id: <cover.1369239589.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [dylan][PATCH 0/1] Cherry-picks from master for poky dylan branch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 May 2013 16:20:30 -0000

This has been tested on the Yocto Project autobuilder.


The following change since commit 3faa5039c8147d0bf9e352dc5ad1e9e12cf2086a:

  kern-tools: refresh and make dash compliant (2013-05-22 17:14:05 +0100)

is available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/poky-dylan-next
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/poky-dylan-next

Saul Wold (1):
  poky-lsb: Ensure kernel nfsd module is enabled

 meta-yocto/conf/distro/poky-lsb.conf | 3 +++
 1 file changed, 3 insertions(+)

-- 
1.8.1.2


