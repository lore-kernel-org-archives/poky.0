Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51BD34C800A0
	for <poky@lists.pokylinux.org>; Wed,  9 Mar 2011 17:50:37 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p29NoZKb000480
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@lists.pokylinux.org>; Wed, 9 Mar 2011 15:50:35 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 9 Mar 2011 15:50:34 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@lists.pokylinux.org>
Date: Wed, 9 Mar 2011 17:50:50 -0600
Message-ID: <cover.1299714512.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 0/1] Fix debug package generation in gcc-runtime
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
X-List-Received-Date: Wed, 09 Mar 2011 23:50:37 -0000
Content-Type: text/plain

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/bernard/fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/bernard/fixes

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  gcc-runtime: Ensure that gcc-runtime builds a debug package

 meta/recipes-devtools/gcc/gcc-package-runtime.inc |    3 +++
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb    |    2 +-
 2 files changed, 4 insertions(+), 1 deletions(-)

-- 
1.7.3.4


