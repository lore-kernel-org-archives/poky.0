Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 337654C80861
	for <poky@yoctoproject.org>; Mon, 30 May 2011 03:38:05 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4U8c52Q009770
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 30 May 2011 01:38:05 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 30 May 2011 01:38:05 -0700
Message-ID: <cover.1306726421.git.xiaofeng.yan@windriver.com>
Old-Date: Mon, 30 May 2011 11:33:41 +0800
Date: Mon, 30 May 2011 16:35:54 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 0/1]sudo.inc:Add directory "/var/lib" to sudo.inc in the stage of do_install_prepend
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
X-List-Received-Date: Mon, 30 May 2011 08:38:06 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Hi Saul & Richard
I have added some comment in the recipe about why this is necessary as
someone could easily look at it and decide it wasn't needed according to Richard's requirement.

Pervious email content:

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
  sudo.inc: Add do_install_prepend () to sudo.inc

 meta/recipes-extended/sudo/sudo.inc |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)


