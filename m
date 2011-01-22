Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE21B4C80FAD
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 18:27:49 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 85E1430502
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 19:27:44 -0500 (EST)
Message-Id: <cover.1295655857.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Fri, 21 Jan 2011 16:24:17 -0800
Date: Fri, 21 Jan 2011 16:27:35 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 85E1430502.B6A88
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] poky-extract-sdk bugfix for #670
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
X-List-Received-Date: Sat, 22 Jan 2011 00:27:49 -0000

Hi Saul,

This pull request includes a fix for the issue Diego Sueiro
reported where relative paths given to the poky-extract-sdk
script cause errors.

Josh: This is a low-risk commit that I'd like to see included
with our Laverne point-release.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/extract-sdk-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/extract-sdk-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  poky-extract-sdk: allow relative paths for extract-dir

 scripts/poky-extract-sdk |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)


