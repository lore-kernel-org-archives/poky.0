Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C0ED4C800A7
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:50:54 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p21IosYs015201
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 1 Mar 2011 10:50:54 -0800 (PST)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Tue, 1 Mar 2011 10:50:53 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 1 Mar 2011 12:50:32 -0600
Message-ID: <cover.1299005382.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 0/1] Fix insane class ELF bitsize checks
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
X-List-Received-Date: Tue, 01 Mar 2011 18:50:55 -0000
Content-Type: text/plain

The insane class was not checking the ELF bitsize, in fact if it wasn't
correct it was skipping all of the QA checks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/insane
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/insane

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  insane.bbclass: Fix ELF bitsize comparison

 meta/classes/insane.bbclass |   84 ++++++++++++++++++++++---------------------
 meta/lib/oe/qa.py           |   21 +++++++++--
 2 files changed, 60 insertions(+), 45 deletions(-)

-- 
1.7.4


