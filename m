Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12E7B4C800AF
	for <poky@yoctoproject.org>; Fri,  6 May 2011 00:16:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p465GAgb011694
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 May 2011 22:16:10 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 5 May 2011 22:16:10 -0700
Message-ID: <cover.1304658653.git.kai.kang@windriver.com>
Old-Date: Fri, 6 May 2011 13:10:53 +0800
Date: Fri, 6 May 2011 13:15:58 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] Add gettext-runtime and libxml-sax-perl
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
X-List-Received-Date: Fri, 06 May 2011 05:16:12 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Hi Saul,

gettext is splitted, so add gettext-runtime to provide command gettext
Add libxml-sax-perl to resolve LSB olver test block issue

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (2):
  libxml-sax-perl: added for resolve LSB olver test
  task-core-lsb: add gettext-runtime and libxml-sax-perl

 .../perl/libxml-namespacesupport-perl_1.11.bb      |   22 ++++++++++++++++
 meta/recipes-extended/perl/libxml-sax-perl_0.96.bb |   26 ++++++++++++++++++++
 meta/recipes-extended/tasks/task-core-lsb.bb       |    4 ++-
 3 files changed, 51 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-extended/perl/libxml-namespacesupport-perl_1.11.bb
 create mode 100644 meta/recipes-extended/perl/libxml-sax-perl_0.96.bb


