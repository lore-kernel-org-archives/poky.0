Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 657F24C8043A
	for <poky@yoctoproject.org>; Thu, 26 May 2011 04:31:28 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4Q9VMp1017654
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 26 May 2011 02:31:22 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 26 May 2011 02:31:22 -0700
Message-ID: <cover.1306400756.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 26 May 2011 17:05:56 +0800
Date: Thu, 26 May 2011 17:29:31 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1] sudo: Add directory "/var/lib" during do_install_prepend
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
X-List-Received-Date: Thu, 26 May 2011 09:31:28 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Hi Saul & Mark,

I submit this patch to fix [YOCTO #1092].
LSB Test Suite check access permission of directory "/var/lib". The current access permission is "0700".
This is because:

$(SHELL) $(srcdir)/mkinstalldirs -m 0700 $(DESTDIR)$(timedir) 

and the timedir=/var/lib/sudo

but if /var/lib doesn't exist, the mkinstalldirs would create it and set the
mode to 0700 recursively, so all of the /var, /var/lib and /var/lib/sudo would
be set to 0700, but what sudo needs is only set /var/lib/sudo to 0700.

So LSB Test Suite recognizes it as a bug. Other images including sudo could have no this problem because after installing sudo package other package operate on directory "/var/lib" but for lsb image sudo package is the last package which operate on directory "/var/lib" 


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: xiaofeng/sudo
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/sudo

Thanks,
    Xiaofeng Yan <xiaofeng.yan@windriver.com>
---


Xiaofeng Yan (1):
  sudo: Add directory "/var/lib" to sudo.inc in the stage of
    do_install_prepend

 meta/recipes-extended/sudo/sudo.inc |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


