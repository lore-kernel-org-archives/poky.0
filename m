Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC5DE00303
	for <poky@yoctoproject.org>; Sat,  7 Jan 2012 23:44:44 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q087igjs021209
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 7 Jan 2012 23:44:43 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 7 Jan 2012 23:44:42 -0800
Message-ID: <cover.1326007408.git.xiaofeng.yan@windriver.com>
Old-Date: Sun, 8 Jan 2012 15:23:28 +0800
Date: Sun, 8 Jan 2012 15:33:44 +0800
To: <poky@yoctoproject.org>, <mark.hatle@windriver.com>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
Subject: [OE-core][PATCH 0/1] Define variable "ARCHIVE_TYPE"
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
X-List-Received-Date: Sun, 08 Jan 2012 07:44:45 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

This variable is used for selecting the type of packaging source codes tree (src.rpm or tar.gz).
Source codes tree is a directory after unpacking and patching.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/conf
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/conf

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  local.conf.sample: Define variable "ARCHIVE_TYPE"

 meta-yocto/conf/local.conf.sample |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)


