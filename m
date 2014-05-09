Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDC6FE0073D; Fri,  9 May 2014 13:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F878E0070F
	for <poky@yoctoproject.org>; Fri,  9 May 2014 13:50:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s49Ko7JM004013
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 May 2014 13:50:07 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Fri, 9 May 2014 13:50:06 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 9 May 2014 16:50:03 -0400
Message-ID: <cover.1399668374.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org, steve.long@windriver.com, denys@ti.com
Subject: [PATCH 0/1] meta-yocto-bsps: add maintainers section for hardware reference boards
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
X-List-Received-Date: Fri, 09 May 2014 20:50:15 -0000
Content-Type: text/plain

Richard,

As has been previously discussed, Kevin Hao from Wind River is going to 
keep an eye on the meta-yocto-bsp hardware reference boards.

To make this clear, I've added his name to the README.hardware file.
I also added my name, since I'll be a backup and watching as well.

If you'd rather this in another file, let me know, and I'll respin the
patch.

Denys: I wasn't sure if you wanted a reference for the beaglebone black,
if you do, let me know and I'll update it with your name.

cc: Kevin Hao <kexin.hao@windriver.com>
cc: Denys Dmytriyenko <denys@ti.com>

Cheers,

Bruce


The following changes since commit 646b089c38623cebe4a6b22c6798d21453fe5257:

  bitbake: toaster: modify SQL data type constraints (2014-05-08 16:18:12 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Bruce Ashfield (1):
  README: add maintainers section for hardware reference boards

 README.hardware | 7 +++++++
 1 file changed, 7 insertions(+)

-- 
1.8.1.2


