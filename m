Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7884E4C80132
	for <poky@yoctoproject.org>; Sun, 20 Mar 2011 22:02:22 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2L32LHH029137
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 20 Mar 2011 20:02:21 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 20 Mar 2011 20:02:21 -0700
Message-ID: <cover.1300676026.git.kai.kang@windriver.com>
Old-Date: Mon, 21 Mar 2011 10:53:46 +0800
Date: Mon, 21 Mar 2011 10:59:50 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 0/1] msmtp: add link sendmail to pass LSB test
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
X-List-Received-Date: Mon, 21 Mar 2011 03:02:22 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB command check will test the exist of sendmail, so make sendmail
link to msmtp in order to pass the test. 
Update patch using update-alternatives class.
    
Related to [YOCTO #520]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  msmtp: add link sendmail for lsb command check

 meta/recipes-extended/msmtp/msmtp_1.4.23.bb |    9 +++++++--
 1 files changed, 7 insertions(+), 2 deletions(-)


