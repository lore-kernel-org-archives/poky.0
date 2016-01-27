Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 120EEE00C1B; Wed, 27 Jan 2016 09:33:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B8DE00C1C
	for <poky@yoctoproject.org>; Wed, 27 Jan 2016 09:33:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 380C118135;
	Wed, 27 Jan 2016 18:23:45 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id mAmYYL3L2M9y; Wed, 27 Jan 2016 18:23:41 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bastet.se.axis.com (Postfix) with ESMTP id D811318108;
	Wed, 27 Jan 2016 18:23:41 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id B9C8C1586;
	Wed, 27 Jan 2016 18:23:41 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id AE91B1335;
	Wed, 27 Jan 2016 18:23:41 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by thoth.se.axis.com (Postfix) with ESMTP id ABD313414B;
	Wed, 27 Jan 2016 18:23:41 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id u0RHNfNh001793;
	Wed, 27 Jan 2016 18:23:41 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id u0RHNfLA001792;
	Wed, 27 Jan 2016 18:23:41 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: bitbake-devel@lists.openembedded.org, poky@yoctoproject.org
Date: Wed, 27 Jan 2016 18:23:26 +0100
Message-Id: <cover.1453915249.git.pkj@axis.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH 0/5] Make BBMASK support multiple regular expressions
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
X-List-Received-Date: Wed, 27 Jan 2016 17:33:03 -0000

[ This is a bitbake change, but since the documentation is all over
  Poky I am cross-posting to the Poky list as well. ]

This series of patches changes BBMASK so that it can contain multiple,
whitespace separated regular expressions. It should be fully backwards
compatible with any existing values in BBMASK.

The first two patches are for bitbake, the third is for yocto-docs,
the fourth is for OE-Core, and the fifth is for meta-yocto...

//Peter

The following changes since commit 3d2c0f5902cacf9d8544bf263b51ef0dd1a7218c:

  cmake: update to 3.4.2 (2016-01-26 22:49:40 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib pkj/bbmask_multiple_re
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=pkj/bbmask_multiple_re

Peter Kjellerstedt (5):
  cooker: Allow BBMASK to contain multiple regular expressions
  bitbake-user-manual-ref-variables: Update the help for BBMASK
  ref-manual: Update the help for BBMASK
  documentation.conf: Update the help for BBMASK
  local.conf.sample.extended: Update the info about BBMASK

 .../bitbake-user-manual-ref-variables.xml          | 20 ++++++++---------
 bitbake/lib/bb/cooker.py                           | 17 ++++++++++++--
 documentation/ref-manual/ref-variables.xml         | 26 +++++++++-------------
 meta-yocto/conf/local.conf.sample.extended         |  4 ++--
 meta/conf/documentation.conf                       |  2 +-
 5 files changed, 37 insertions(+), 32 deletions(-)

-- 
2.1.0


