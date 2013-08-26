Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77E00E0155B
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 11:08:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7QI8j9X000877
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Aug 2013 11:08:45 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 26 Aug 2013 11:08:45 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 26 Aug 2013 14:08:34 -0400
Message-ID: <cover.1377540341.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: dvhart@linux.intel.com, poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto: make 3.10 the default kernel
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Aug 2013 18:08:53 -0000
Content-Type: text/plain

Richard/Saul,

This updates the default kernel to 3.10 and sets the qemu* machines
to the same preference.

The h/w reference boards with different requirements continue to
set their own preferred versions, but will be updated to 3.10 as
well (once boot tested).

Once the remaining reference to 3.8 are removed, I'll follow up
with the 3rd time lucky linux-yocto-3.8 recipe removal :)

Cheers,

Bruce

The following changes since commit dcc23c073ef936eccecdc16f973492f41c44def7:

  kern-tools: fix patch series to git tree validation (2013-08-26 13:57:20 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto: change default kernel to 3.10

 meta-yocto/conf/distro/poky.conf |   14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

-- 
1.7.10.4


