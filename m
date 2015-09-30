Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1539E00F6E; Wed, 30 Sep 2015 10:16:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (avery.brian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEF82E00C02
	for <poky@yoctoproject.org>; Wed, 30 Sep 2015 10:16:35 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so46382099pac.0
	for <poky@yoctoproject.org>; Wed, 30 Sep 2015 10:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=mcHXIZM1/7NMy22634/Hcxej+tV0rBlZF4YSgjLNoLw=;
	b=EBYtvIZy6br8HOT7w6lWQsW+ASJpoJGRLCTmXDZ8/pTLljPNSzmpIjZOnd60Vimf98
	wuuekySWXPvUKiI0DnLeOcPANS6gPMeypQYDHRHz9EAl2WWVoX9O9HqwWuPU8X/wd39e
	s9aYtzsTl4yT5vBwDNBz9syaLEt9T8MBSopRDtP/+MFd81azdEvmluj3vwrf3ywhX9s2
	Q9ju6+MbCWLIXJecBUDU3jPzmZq3MXQ0RxssUe8n6Owe/Ftzr96Jdz1HdjGJNj/YiJGK
	NyoBgEq/Qm4qnRYQM+ukIQij1OeMlafn8SR05vDoIPE0vdXssaEqN7yACWM+7zrQvksz
	LigQ==
X-Received: by 10.68.184.5 with SMTP id eq5mr6242650pbc.130.1443633395587;
	Wed, 30 Sep 2015 10:16:35 -0700 (PDT)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id sj6sm1798673pbc.7.2015.09.30.10.16.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 30 Sep 2015 10:16:34 -0700 (PDT)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 30 Sep 2015 10:18:15 -0700
Message-Id: <4220ebce223fa7cd0865c793b7dd3ffe07b8e130.1443633265.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443633265.git.avery.brian@gmail.com>
References: <cover.1443633265.git.avery.brian@gmail.com>
Cc: Michael Wood <michael.g.wood@intel.com>
Subject: [PATCH 1/1] toaster: Special case the openembedded-core layer to avoid duplicates
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
X-List-Received-Date: Wed, 30 Sep 2015 17:16:39 -0000

From: Michael Wood <michael.g.wood@intel.com>

If the openembedded-core layer is specified in the toasterconf we need
to treat it differently because we may also get this layer either from
the layerindex source or I can also be provided locally.

Signed-off-by: Michael Wood <michael.g.wood@intel.com>
Signed-off-by: brian avery <avery.brian@gmail.com>
---
 meta-yocto/conf/toasterconf.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf.json
index c455276..9e45ff0 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-yocto/conf/toasterconf.json
@@ -12,7 +12,7 @@
             "name": "Local Yocto Project",
             "sourcetype": "local",
             "apiurl": "../../",
-            "branches": ["HEAD", "master", "fido", "dizzy"],
+            "branches": ["HEAD" ],
             "layers": [
                 {
                     "name": "openembedded-core",
-- 
1.9.1


