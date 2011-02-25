Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D77474C8090C
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 17:40:16 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1PNeGMf029268
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 15:40:16 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 25 Feb 2011 15:40:16 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 25 Feb 2011 17:39:12 -0600
Message-ID: <cover.1298677071.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 0/3] Correct RPM related problems
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
X-List-Received-Date: Fri, 25 Feb 2011 23:40:17 -0000
Content-Type: text/plain

Correct 3 rpm related issues.  The first is a defect found when trying to
install packages on the target.  Second on the use of prelink by RPM on the target.
The third on how the rpm-dbg file was being generated.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/rpm
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/rpm

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (3):
  rootfs_rpm: Fix rootfs generation using RPM packages
  rpm: Fix rpm usage of prelink on the target
  rpm: Fix rpm-dbg package split

 meta/classes/image-prelink.bbclass           |    2 +-
 meta/classes/package_rpm.bbclass             |   15 +++++++++------
 meta/classes/populate_sdk_rpm.bbclass        |   13 +++++++++++--
 meta/classes/rootfs_rpm.bbclass              |    5 +++--
 meta/recipes-devtools/prelink/prelink_git.bb |    8 +++++---
 meta/recipes-devtools/rpm/rpm_5.4.0.bb       |    7 +++----
 6 files changed, 32 insertions(+), 18 deletions(-)

-- 
1.7.3.4


