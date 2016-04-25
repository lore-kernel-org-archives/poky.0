Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09FCBE00C7B; Mon, 25 Apr 2016 01:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D42E5E00C7B
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 01:50:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u3P8oKbN030330
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 01:50:20 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 25 Apr 2016 01:50:19 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 25 Apr 2016 01:50:18 -0700
Message-ID: <cover.1461574142.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.8.0
MIME-Version: 1.0
Subject: [PATCH 0/1] bblayers.conf.sample: update BBPATH to use BBPATH_EXTRA
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
X-List-Received-Date: Mon, 25 Apr 2016 08:50:26 -0000
Content-Type: text/plain

The following changes since commit a9b503b268e94d311f892fa00c5d6bd9ffdb228e:

  license.bbclass: make sure that image manifest dir exists (2016-04-22 16:28:57 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/bbpath
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/bbpath

Robert Yang (1):
  bblayers.conf.sample: update BBPATH to use BBPATH_EXTRA

 meta-poky/conf/bblayers.conf.sample | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.8.0


