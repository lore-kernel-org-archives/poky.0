Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CBB4D4C800B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 13:39:28 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2IIdS2w015846
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:39:28 -0700 (PDT)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Fri, 18 Mar 2011 11:39:27 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 18 Mar 2011 13:39:21 -0500
Message-ID: <cover.1300473493.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 0/1] Fix a program with ".." in a DB patch's path.
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
X-List-Received-Date: Fri, 18 Mar 2011 18:39:29 -0000
Content-Type: text/plain

Fix a problem with ".." in a DB patch's path.

Likely this is not the final technically correct fix.. but we need it ASAP to avoid
build problems on Fedora 14.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/bernard/fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/bernard/fixes

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  db: Fix path of arm-thumb patch

 .../db/db/arm-thumb-mutex_db5.patch                |    4 ++--
 meta/recipes-support/db/db_5.1.19.bb               |    9 ++++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

-- 
1.7.4


