Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BDB54C80FAD
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 18:22:09 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D645430502
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 19:22:00 -0500 (EST)
Message-Id: <cover.1295655589.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Fri, 21 Jan 2011 16:19:49 -0800
Date: Fri, 21 Jan 2011 16:21:56 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D645430502.AB80D
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] send-pull-request bugfix
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
X-List-Received-Date: Sat, 22 Jan 2011 00:22:09 -0000

Hi Saul,

Darren Hart and I discovered that when $CC is set (which
our meta-toolchain environment script sets up), the value
leaks into the use of this script. Unsetting $TO as well
just to be thorough. This pull request fixes that.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/pull-request-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/pull-request-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  send-pull-request: unset $TO and $CC from environment

 scripts/send-pull-request |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


