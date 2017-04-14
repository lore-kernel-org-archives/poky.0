Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F2EFE00AFD; Fri, 14 Apr 2017 02:26:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48C39E00AF6
	for <poky@yoctoproject.org>; Fri, 14 Apr 2017 02:26:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v3E9QndE008977
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 14 Apr 2017 02:26:49 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 14 Apr 2017 02:26:47 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 14 Apr 2017 02:26:46 -0700
Message-ID: <cover.1492161897.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Subject: [PATCH 0/1] documentation: update examples for oe-run-native
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
X-List-Received-Date: Fri, 14 Apr 2017 09:26:52 -0000
Content-Type: text/plain

The following changes since commit 0bf9cb2272448adb25d0d9786d069cb004c6c21b:

  meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs (2017-04-14 09:47:32 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/rss_doc
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/rss_doc

Robert Yang (1):
  documentation: update examples for oe-run-native

 documentation/dev-manual/dev-manual-common-tasks.xml | 2 +-
 documentation/dev-manual/dev-manual-start.xml        | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.10.2


