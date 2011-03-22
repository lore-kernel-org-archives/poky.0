Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52CA54C80132
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 04:20:59 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2M9KwsS010189
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 02:20:58 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 22 Mar 2011 02:20:57 -0700
Message-ID: <cover.1300785298.git.kai.kang@windriver.com>
Old-Date: Tue, 22 Mar 2011 17:14:58 +0800
Date: Tue, 22 Mar 2011 17:18:13 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 0/1] xdg-utils: add xdg-utils to pass LSB 4.1 command check
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
X-List-Received-Date: Tue, 22 Mar 2011 09:21:00 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

xdg-utils provides xdg-* scripts to pass the LSB 4.1 command check
Merge from OE and add DESCRIPTION, PR and LIC_FILES_CHKSUM.

(From OE-Core rev: 44985d56bc556786812a0a02d6219afd31a7381d)

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (1):
  xdg-utils: add xdg-utils to pass the lsb test

 meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb |   26 ++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb


