Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E680BE00E61; Sat, 19 Sep 2015 17:51:47 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BED77E0086D
	for <poky@yoctoproject.org>; Sat, 19 Sep 2015 17:51:42 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so84528918pac.2
	for <poky@yoctoproject.org>; Sat, 19 Sep 2015 17:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=uZwU9rxUsT1F09BIgTIiks7JVgJIrBkLns1fFBx7HW4=;
	b=G1VOTeA9rW8aFJ7TIB/IJhUjeNK9U/lI15BZ6dus4Nbl48tlfI+LJgtjuh4mOhWLJY
	Xdsoqvko/IOgpGqclNd3HU1vjIozmlTjI5WcvW+n7bUZd5TZtp66OzSvmoeg+I7iK6ai
	s+pe4gEjw7PL9c4UfTKITmyUxkc4YXVUx9KnsCBZ7MdhN7a8ThsXoJH/dxiED5OzfnTs
	1eByjlB1kWc5krB1mbszxaVlWsK0X4k/hfDNXm9we3jWkU2VR1VyGCHrWQceoMHogI4H
	flF9VRTeQ6iPTaiDiEsRog+1UOQD86a6WxpTDu1SpXIHqovOnqT7R1gBCD2AzViIvaa9
	pcCg==
X-Received: by 10.69.26.38 with SMTP id iv6mr15665660pbd.151.1442710301915;
	Sat, 19 Sep 2015 17:51:41 -0700 (PDT)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	fm5sm16548181pab.24.2015.09.19.17.51.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 19 Sep 2015 17:51:41 -0700 (PDT)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Sat, 19 Sep 2015 17:53:02 -0700
Message-Id: <cover.1442710213.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 0/1] Create error recipe and error image, for testing
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
X-List-Received-Date: Sun, 20 Sep 2015 00:51:48 -0000

This provides an error recipe and error image in meta-selftest.  
It is not used by oeselftest at the moment. It's initial target
is for toaster selenium testing.

The following changes since commit 7b86c771c80d0759c2ca0e57c46c4c966f89c49e:

  bitbake: bitbake: bb.fetch2.git: Import errno module (2015-09-19 22:38:44 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib bavery/test/error-recipe
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=cow

brian avery (1):
  meta-selftest: add error recipe and error-image

 meta-selftest/recipes-test/error/error.bb        | 10 ++++++++++
 meta-selftest/recipes-test/images/error-image.bb |  8 ++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 meta-selftest/recipes-test/error/error.bb
 create mode 100644 meta-selftest/recipes-test/images/error-image.bb

-- 
1.9.1


