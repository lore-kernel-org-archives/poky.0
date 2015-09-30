Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F93BE00F6E; Wed, 30 Sep 2015 10:16:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F59BE00F2E
	for <poky@yoctoproject.org>; Wed, 30 Sep 2015 10:16:27 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so46379207pac.0
	for <poky@yoctoproject.org>; Wed, 30 Sep 2015 10:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=N6cmJ0TYzLaWlguMw93PkoQkXRCGjOpsergIiJ8TuvQ=;
	b=kFknm7ZY13a2ZSL2QJd9kmLicE/bTy8miWdYUliVVVIqvl2AaKkgeRuDgh/WMYcwV7
	MvmoNu4wTegtS3wrEXFUeWU0H8Q/b2GPFnc+vjK2VG8fn63XKbhSyw3V3FftKSdcOu7r
	Wh63A//y/TxGov/x9S+fiLzCSENN3n2KmQA1Qm6WXz/7Nja6+gWMBiUSr68Ek7jadnDy
	NFd8KpOodiXWA5PsagqwT09NvB/kQADbwVGMv06LhsBL4ar9jeInr3S6iHiXRTLu1MmP
	2auS92mXK9tE8iN4a7ORpH/7Wz4n4Cq8zPkrAtpDlgHCeEIcJc2kGtYF9w5ExkTnoAE3
	CMJw==
X-Received: by 10.68.206.40 with SMTP id ll8mr6304273pbc.62.1443633387483;
	Wed, 30 Sep 2015 10:16:27 -0700 (PDT)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	zc4sm1777283pbb.24.2015.09.30.10.16.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 30 Sep 2015 10:16:26 -0700 (PDT)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 30 Sep 2015 10:18:06 -0700
Message-Id: <cover.1443633265.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Michael Wood <michael.g.wood@intel.com>
Subject: [PATCH 0/1] meta-yocto: Special case the openembedded-core layer in toasterconf.json to avoid duplicates
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
X-List-Received-Date: Wed, 30 Sep 2015 17:16:34 -0000

I missed this part of the large toaster patch set because it lives outside of bitbake. 
This makes sure we have only 1 openembedded-core layer available in toaster.

The following changes since commit 4bc3f0994e68b3302a0523a3156dd0dca0cac7a0:

  bitbake: toaster: move clones into subdirectory (2015-09-29 14:11:39 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib toaster-next
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=toaster-next

Michael Wood (1):
  toaster: Special case the openembedded-core layer to avoid duplicates

 meta-yocto/conf/toasterconf.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.9.1


