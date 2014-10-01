Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCBB7E00877; Tue, 30 Sep 2014 21:53:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A720FE007DF
	for <poky@yoctoproject.org>; Tue, 30 Sep 2014 21:53:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s914rU56008027
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 30 Sep 2014 21:53:30 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Tue, 30 Sep 2014 21:53:30 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 1 Oct 2014 00:53:21 -0400
Message-ID: <cover.1412138833.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] meta-yocto*: BSP updates and default changes
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
X-List-Received-Date: Wed, 01 Oct 2014 04:53:34 -0000
Content-Type: text/plain

Richard,

Here is an update for the h/w reference BSPs to the latest 3.14 SRCREVs
to match the oe-core kernel version. This addressed YOCTO #6767.

I've been trying to decide what to do with the qemu* preferred kernel
version. When we collectively decided to go with 3.17 as the new kernel
for the 1.7 release, the timing of 6 weeks looked to be enough for full
linux release .. and that will still happen, but not until this weekend
at the earliest. I was waiting for that release to offer up the switch
of the default kernel for the qemu* BSPs.

I've been building and working with 3.17 since -rc1, and no runtime issues
have been found. Other people are also exercising it for qemu and h/w
reference boards .. again, with no significant issues being reported.

I leave whether or not you want to switch the default at this point 
in the release, since 3.14 LTSI is an acceptable default, and we will
still have 3.17 available for anyone that wants to use it (And it is
my default here).

My same warning applies: I'm out of the office for the next week, so
likely needs some testing before merging. I'll be checking in to see
if anything causes issues via my non-windriver email access.

Cheers,

Bruce


The following changes since commit eb8c936aec007c2fe418c97ea4d89233bce05113:

  perf: fix undefined pr_* routines (2014-10-01 00:28:48 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  yocto-bsps: update h/w reference boards to the latest 3.14 SRCREVs
  meta-yocto: make 3.17 the preferred qemu kernel version

 .../recipes-kernel/linux/linux-yocto_3.14.bbappend         | 10 +++++-----
 meta-yocto/conf/distro/poky.conf                           | 14 +++++++-------
 2 files changed, 12 insertions(+), 12 deletions(-)

-- 
1.8.1.2


