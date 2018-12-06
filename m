Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31FBBE00A1A; Thu,  6 Dec 2018 05:32:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0972BE009AA
	for <poky@yoctoproject.org>; Thu,  6 Dec 2018 05:32:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wB6DWQqG011992
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 6 Dec 2018 05:32:42 -0800
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Thu, 6 Dec 2018 05:32:19 -0800
From: <kai.kang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 6 Dec 2018 20:53:16 +0800
Message-ID: <cover.1544102766.git.kai.kang@windriver.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Subject: [meta-poky][PATCH 0/1] local.conf.sample: make systemd as default init manager
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
X-List-Received-Date: Thu, 06 Dec 2018 13:32:56 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Test with build and login with
$ for m in qemuarm qemuarm64 qemumips qemumips64 qemuppc qemux86 qemux86-64; do echo $m; MACHINE=$m bitbake core-image-sato; done

and sdk
$ for m in qemuarm qemuarm64 qemumips qemumips64 qemuppc qemux86 qemux86-64; do echo $m; MACHINE=$m bitbake core-image-sato -c populate_sdk; done

The following changes since commit aa93957c8353d222961f08e54fe8d4095dad72c1:

  tcl: Upgrade to 8.6.9 (2018-12-05 22:30:19 +0000)

are available in the Git repository at:

  git://git.pokylinux.org/poky-contrib kangkai/systemd
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/systemd

Kai Kang (1):
  local.conf.sample: make systemd as default init manager

 meta-poky/conf/local.conf.sample          | 8 ++++++++
 meta-poky/conf/local.conf.sample.extended | 8 --------
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.19.0.rc2


