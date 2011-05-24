Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D22A14C8016A
	for <poky@yoctoproject.org>; Tue, 24 May 2011 01:53:57 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 May 2011 23:53:57 -0700
X-ExtLoop1: 1
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga002.jf.intel.com with ESMTP; 23 May 2011 23:53:56 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 24 May 2011 14:58:29 +0800
Message-Id: <cover.1306220205.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] git fetcher: add doc for supported options
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
X-List-Received-Date: Tue, 24 May 2011 06:53:58 -0000

The following changes since commit 3504c3a9b1af5a3405e0a03a5ade50b82535b6dd:
  Scott Rifenbark (1):
        documentation/yocto-project-qs/yocto-project-qs.xml: fixed build env script

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib kyu3/git-doc
  http://git.pokylinux.org/cgit.cgi//log/?h=kyu3/git-doc

Yu Ke (1):
  fetcher2/git: add document for git fetcher supported options

 bitbake/lib/bb/fetch2/git.py |   37 ++++++++++++++++++++++++++++++++++---
 1 files changed, 34 insertions(+), 3 deletions(-)


