Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08BA84C804DC
	for <poky@yoctoproject.org>; Tue, 14 Jun 2011 20:43:08 -0500 (CDT)
Received: from localhost.localdomain (c-76-115-40-57.hsd1.or.comcast.net
	[76.115.40.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D4C2930500;
	Tue, 14 Jun 2011 21:43:01 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Jun 2011 18:42:54 -0700
Message-Id: <cover.1308101091.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.1
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D4C2930500.BFE6F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] bitbake wrapper: exit if python v3 is detected
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
X-List-Received-Date: Wed, 15 Jun 2011 01:43:08 -0000

Make sure we're not using python v3.x. This check can't go into
sanity.bbclass because bitbake's source code doesn't even pass
parsing stage when used with python v3, so we catch it here so we
can offer a meaningful error message.

This fixes bug [YOCTO #1128]

I did attempt to make changes to bitbake to get the source code to
parse under python v3, but there are issues which make it too
difficult to get the code to work with python v2 and v3. For example,
importing modules within a package has changed significantly in v3
in such a way that breaks compatability with v2.

The following changes since commit 7aa7673459376aff911cef820c9417c998d1aa96:

  meta-yocto/linux-yocto: update to match the renamed linux-yocto recipes (2011-06-14 09:21:32 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib sgarman/bb-python-v3
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/bb-python-v3

Scott Garman (1):
  bitbake wrapper: exit if python v3 is detected

 scripts/bitbake |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)


