Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E81014C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 20:36:29 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2I1aTpZ012248
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 18:36:29 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 17 Mar 2011 18:36:28 -0700
Message-ID: <cover.1300411762.git.kai.kang@windriver.com>
Old-Date: Fri, 18 Mar 2011 09:29:22 +0800
Date: Fri, 18 Mar 2011 09:34:30 +0800
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
X-List-Received-Date: Fri, 18 Mar 2011 01:36:30 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB command check will test the exist of sendmail, so make sendmail
link to msmtp in order to pass the test. 
msmtp has been added to replace sendmail.
    
Related to [YOCTO #520]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  msmtp: add link sendmail for lsb command check

 meta/recipes-extended/msmtp/msmtp_1.4.23.bb |   12 +++++++++++-
 1 files changed, 11 insertions(+), 1 deletions(-)


