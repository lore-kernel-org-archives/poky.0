Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FD124C80052
	for <poky@yoctoproject.org>; Fri, 13 May 2011 02:56:40 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4D7udqG002535
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 May 2011 00:56:40 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 13 May 2011 00:56:39 -0700
Message-ID: <cover.1305266909.git.kai.kang@windriver.com>
Old-Date: Fri, 13 May 2011 14:08:29 +0800
Date: Fri, 13 May 2011 15:55:52 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/4] Add some packages for LSB test
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
X-List-Received-Date: Fri, 13 May 2011 07:56:40 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Because gettext is splitted, so add gettext-runtime to provide command gettext.
Add libxml-sax-perl to help creating olver test report.
Add foomatic-filters to lsb image.
Recreate locale fr_FR to pass LSB libstdc++ test.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kangkai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Thanks,
    Kang Kai <kai.kang@windriver.com>
---


Kang Kai (4):
  libxml-sax-perl: added to create LSB olver test report
  foomatic-filters: add a link to pass LSB printing test
  task-core-lsb: add packages into lsb image
  lsbsetup: recreate locale fr_FR

 .../foomatic/foomatic-filters_4.0.7.bb             |    9 ++++++-
 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh    |    1 +
 meta/recipes-extended/lsb/lsbsetup_0.9.bb          |    2 +-
 .../perl/libxml-namespacesupport-perl_1.11.bb      |   22 ++++++++++++++++
 meta/recipes-extended/perl/libxml-sax-perl_0.96.bb |   26 ++++++++++++++++++++
 meta/recipes-extended/tasks/task-core-lsb.bb       |    5 +++-
 6 files changed, 62 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-extended/perl/libxml-namespacesupport-perl_1.11.bb
 create mode 100644 meta/recipes-extended/perl/libxml-sax-perl_0.96.bb


