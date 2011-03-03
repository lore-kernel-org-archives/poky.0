Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF0884C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 11:02:48 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p23H2miW003307
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 3 Mar 2011 09:02:48 -0800 (PST)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Thu, 3 Mar 2011 09:02:47 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 3 Mar 2011 11:02:42 -0600
Message-ID: <cover.1299171724.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 0/1] Fix sanity checking ELF size determination
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
X-List-Received-Date: Thu, 03 Mar 2011 17:02:48 -0000
Content-Type: text/plain

Fix the ELF size determination during sanity checking.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/bernard/fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/bernard/fixes

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  qa.py: Fix a typo when evaluating bitsize

 meta/lib/oe/qa.py |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.4


