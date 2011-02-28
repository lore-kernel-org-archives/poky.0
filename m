Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6DEC4C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 13:50:15 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1SJoFXo006753
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 11:50:15 -0800 (PST)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Mon, 28 Feb 2011 11:50:14 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 28 Feb 2011 13:50:09 -0600
Message-ID: <cover.1298922394.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 0/1] Fix SDK construction
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
X-List-Received-Date: Mon, 28 Feb 2011 19:50:16 -0000
Content-Type: text/plain

There was a race condition caused by the absense of a lock during SDK
creation.  Bug 776.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/rpm
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/rpm

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  populate_sdk_rpm.bbclass: Add the necessary solvedb lock

 meta/classes/populate_sdk_rpm.bbclass |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

-- 
1.7.4


