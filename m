Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D4BD4C8026D
	for <poky@yoctoproject.org>; Mon,  9 May 2011 11:51:57 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5BEED2FEF4
	for <poky@yoctoproject.org>; Mon,  9 May 2011 12:51:51 -0400 (EDT)
Message-Id: <cover.1304959844.git.scott.a.garman@intel.com>
Old-Date: Mon, 9 May 2011 09:50:44 -0700
Date: Mon, 09 May 2011  9:51:47 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5BEED2FEF4.6C8F5
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] gnome-doc-utils xsltproc fix
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
X-List-Received-Date: Mon, 09 May 2011 16:51:57 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

I missed some instances of xsltproc when adding -nonet in my
previous commit. This should take care of them all to fix
the compilation errors.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/gnome-doc-utils-fix-final
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/gnome-doc-utils-fix-final

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  gnome-doc-utils: Add additional missing -nonet options to xsltproc

 .../gnome/gnome-doc-utils/xsltproc_nonet.patch     |   70 +++++++++++++++++++-
 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.5.bb |    2 +-
 2 files changed, 69 insertions(+), 3 deletions(-)


