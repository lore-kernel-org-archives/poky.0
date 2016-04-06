Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6882E00C62; Wed,  6 Apr 2016 03:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D438E00C43
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 03:56:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id A43E62E143
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:06 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id oWk0mY5-ejAt for <poky@yoctoproject.org>;
	Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 35A062E119
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 2024C1731
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 1597714F8
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 0AACE1057
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 12:56:03 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id u36Au28j004141
	for <poky@yoctoproject.org>; Wed, 6 Apr 2016 12:56:02 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id u36Au2bN004140
	for poky@yoctoproject.org; Wed, 6 Apr 2016 12:56:02 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: poky@yoctoproject.org
Date: Wed,  6 Apr 2016 12:56:00 +0200
Message-Id: <cover.1459940000.git.pkj@axis.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH 0/1] Make it possible to overrride EXTRA_IMAGE_FEATURES
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
X-List-Received-Date: Wed, 06 Apr 2016 10:56:09 -0000

This makes it possible to specify EXTRA_IMAGE_FEATURES in auto.conf.

//Peter

The following changes since commit c1157400ab6f5cb0f057bd07e55c4790499107ed:

  bitbake: fetch2/git.py: remove .indirectiondir workaround (2016-04-06 10:29:47 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib pkj/extra_image_features
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=pkj/extra_image_features

Peter Kjellerstedt (1):
  local.conf.sample: Make it possible to override EXTRA_IMAGE_FEATURES

 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.1.0


