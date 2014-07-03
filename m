Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A548E006F1; Wed,  2 Jul 2014 23:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6789E0043F
	for <poky@yoctoproject.org>; Wed,  2 Jul 2014 23:43:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s636hXgE017718
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 2 Jul 2014 23:43:33 -0700 (PDT)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 2 Jul 2014 23:43:32 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 3 Jul 2014 14:58:15 +0800
Message-ID: <cover.1404370591.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Subject: [PATCH 0/2] fix no newline at end of file
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
X-List-Received-Date: Thu, 03 Jul 2014 06:43:45 -0000
Content-Type: text/plain

The following changes since commit 0ed5a13f5f9478e2c22f517fb3504b738422f85c:

  python3: fix builtins imports (2014-06-30 16:36:44 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/poky_noeol
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/poky_noeol

Robert Yang (2):
  documentation: fix no newline at end of file
  scripts: fix no newline at end of file

 documentation/template/division.title.xsl                               | 2 +-
 documentation/template/formal.object.heading.xsl                        | 2 +-
 .../lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
1.8.3.1


