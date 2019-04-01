Return-Path: <xavier.berger@bio-logic.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF4CFE00D2F; Mon,  1 Apr 2019 01:44:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [80.12.242.125 listed in list.dnswl.org]
X-Greylist: delayed 450 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Apr 2019 01:44:57 PDT
Received: from smtp.smtpout.orange.fr (smtp03.smtpout.orange.fr
	[80.12.242.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3FD5E00AA9
	for <poky@yoctoproject.org>; Mon,  1 Apr 2019 01:44:57 -0700 (PDT)
Received: from srvmail.bio-logic.net ([176.149.180.241]) by mwinf5d05 with ME
	id uwdR1z00W5Ctoqw03wdRc5; Mon, 01 Apr 2019 10:37:26 +0200
X-ME-Helo: srvmail.bio-logic.net
X-ME-Auth: YmlvLWxvZ2ljQHdhbmFkb28uZnI=
X-ME-Date: Mon, 01 Apr 2019 10:37:26 +0200
X-ME-IP: 176.149.180.241
Received: from ubuntu.bio-logic.loc (unknown [10.100.11.254])
	by srvmail.bio-logic.net (Postfix) with ESMTP id 70DBF800CA;
	Mon,  1 Apr 2019 10:37:25 +0200 (CEST)
From: Xavier Berger <xavier.berger@bio-logic.net>
To: poky@yoctoproject.org
Date: Mon,  1 Apr 2019 10:37:19 +0200
Message-Id: <cover.1554106752.git.xavier.berger@bio-logic.net>
X-Mailer: git-send-email 2.7.4
Subject: [PULL][PATCH 0/2] Implement debian packages GPG signing
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
X-List-Received-Date: Mon, 01 Apr 2019 08:44:58 -0000


The following patches add signing feature for debian packages.


The following changes since commit 3bc700a12d4f21a5c7a1575da0972f9f78b4a091:

  mesa: update 19.0.0 -> 19.0.1 (2019-03-29 08:28:53 +0000)

are available in the git repository at:

  git://push.yoctoproject.org/poky-contrib xberger/deb_sign

Xavier Berger (2):
  gpg-sign: Add parameters to gpg signature function
  package_manager: sign DEB package feeds

 meta/lib/oe/gpg_sign.py        |  6 +++++-
 meta/lib/oe/package_manager.py | 19 ++++++++++++++++---
 2 files changed, 21 insertions(+), 4 deletions(-)

-- 
2.7.4


