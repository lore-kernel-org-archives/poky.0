Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A296EE00930; Thu,  2 Apr 2015 01:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A11D3E008DC
	for <poky@yoctoproject.org>; Thu,  2 Apr 2015 01:16:22 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t328GMVe004746
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 2 Apr 2015 01:16:22 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.236) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.224.2; Thu, 2 Apr 2015 01:16:21 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 2 Apr 2015 16:16:22 +0800
Message-ID: <cover.1427962523.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH 0/1] meta-yocto-bsp: add "core" to LAYERDEPENDS
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
X-List-Received-Date: Thu, 02 Apr 2015 08:16:23 -0000
Content-Type: text/plain

The following changes since commit 9e4adec98db325112ca7a8b9dd95722d4d0ab642:

  distro_alias.inc: update/sort alias information. (2015-03-31 22:54:54 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib ChenQi/yocto-bsp-conf
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/yocto-bsp-conf

Chen Qi (1):
  meta-yocto-bsp: add "core" to LAYERDEPENDS

 meta-yocto-bsp/conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

-- 
1.9.1


