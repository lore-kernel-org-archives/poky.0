Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF0D64C8109B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 10:33:01 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 393D12FE9F
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 11:32:53 -0500 (EST)
Message-Id: <cover.1295886689.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Mon, 24 Jan 2011 08:31:29 -0800
Date: Mon, 24 Jan 2011  8:32:48 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 393D12FE9F.090B7
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/2] sudo upgrade
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
X-List-Received-Date: Mon, 24 Jan 2011 16:33:01 -0000

Hi Saul,

This pull request performs a minor upgrade of the sudo recipe to
address a security advisory.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/sudo-upgrade
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/sudo-upgrade

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (2):
  sudo: upgrade to 1.7.4p6
  distro_tracking_fields: Updated sudo tracking data

 .../conf/distro/include/distro_tracking_fields.inc |    8 ++++----
 .../sudo/{sudo_1.7.4p4.bb => sudo_1.7.4p6.bb}      |    4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)
 rename meta/recipes-extended/sudo/{sudo_1.7.4p4.bb => sudo_1.7.4p6.bb} (52%)


