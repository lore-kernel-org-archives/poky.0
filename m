Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA77E00AE0; Thu, 20 Aug 2015 15:52:57 -0700 (PDT)
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
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3915FE00AD2
	for <poky@yoctoproject.org>; Thu, 20 Aug 2015 15:52:49 -0700 (PDT)
Received: by pacdd16 with SMTP id dd16so29270232pac.2
	for <poky@yoctoproject.org>; Thu, 20 Aug 2015 15:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=DJHO6DsolVJkdzIxhaMFhSYe0sqsVD3lhuHpqLY6LAw=;
	b=INNSUvrq6iL+VBVVMw54o02CnjUSStk72MVIvxLpbHPoQAD5uwYjGZ1t95En/z53kI
	wYUKKmskmrJRwQkXOiRdi2ZKMBCLyFojqueXD+epLxj5RmF+60D1qCc7omdyh8Pq/+A5
	vR9pK7mmHEEtB8kxkcJn1TTtM/xeCmzc1TMmtC4dIdM43/9B8tdJqhue40DDgPaz8XF+
	drodXBn1A3SLSeGNglMG9ChfrAdYqexAyFIniH54wLwZ1tDLsNov7PyZLfwrLW39agDv
	HZ49ljVkjF6FmIu2d0EeCgMT4eX3WLNtESgYxsI4kcFc8y0wCWRvtDAuyEg/yey/JCM2
	27Mw==
X-Received: by 10.66.66.225 with SMTP id i1mr11218653pat.4.1440111168881;
	Thu, 20 Aug 2015 15:52:48 -0700 (PDT)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	hv3sm5457943pbb.83.2015.08.20.15.52.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 20 Aug 2015 15:52:47 -0700 (PDT)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 20 Aug 2015 15:53:15 -0700
Message-Id: <cover.1440109497.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>
Subject: [FIDO] [PATCH 0/1] remove master as a branch option from fido
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
X-List-Received-Date: Thu, 20 Aug 2015 22:52:57 -0000

Toaster isn't designed to be forward compatible. As such,                                                                                                                            a release cannot build releases newer then it.                                                                                                                                                                                                                                                                                                                         
Particularly, "fido" cannot build "master", so we remove                                                                                                                             "master" from the list of supported releases in "fido"    


Alexandru DAMIAN (1):
  toasterconf: remove master for fido

 conf/toasterconf.json | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

-- 
1.9.1


