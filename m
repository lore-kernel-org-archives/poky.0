Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3D65E00D67; Thu, 30 May 2019 23:56:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58EF5E0043B
	for <poky@yoctoproject.org>; Thu, 30 May 2019 23:56:00 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x4V6spIa022953
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 May 2019 23:55:02 -0700
Received: from msp-lpggp1.wrs.com (172.25.34.110) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.439.0;
	Thu, 30 May 2019 23:54:34 -0700
From: <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 31 May 2019 02:54:27 -0400
Message-ID: <20190531065430.7717-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [meta-poky][PATCH v5 0/3] Make systemd as default init manager and configure wired network
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
X-List-Received-Date: Fri, 31 May 2019 06:56:00 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

v5:
* set 'sysvinit' by default for musl
* replace += with _append

v4:
* move the configures to poky.conf. Introduce a new variable
  'POKY_INIT_MANAGER' whose value should be either 'systemd' or 'sysvinit'
  to configure the init manager setting.

Kai Kang (3):
  poky.conf: make systemd as default init manager
  poky-tiny.conf: not backfill distro feature systemd
  systemd-conf: configure wired network with dhcp

 meta-poky/conf/distro/poky-tiny.conf                 |  2 +-
 meta-poky/conf/distro/poky.conf                      | 12 ++++++++++++
 meta-poky/conf/local.conf.sample.extended            |  9 ---------
 meta/recipes-core/systemd/systemd-conf/wired.network |  9 +++++++++
 meta/recipes-core/systemd/systemd-conf_242.bb        |  6 ++++++
 5 files changed, 28 insertions(+), 10 deletions(-)
 create mode 100644 meta/recipes-core/systemd/systemd-conf/wired.network

-- 
2.20.0


