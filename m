Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0974E00B05; Tue, 20 Jun 2017 04:58:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jeff.dagenais[at]gmail.com)
	*  0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation marks
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E3A5E009A0
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 04:58:14 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id f79so14473066ioi.2
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 04:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:subject:date:message-id:cc:to
	:mime-version; bh=2OT49Lx+PiLN1qE0rkxXIwr/WDdGw0+EzhQRMjWpI1A=;
	b=uiwhd7bCRy064QZb5tZjbzKExR4vcO+HBvyaX/Ab41KwHfnHVYslNU38gtdN5oKmJX
	Woe5DiCVgTPkrlkiVdV20M7mzbDTx5OqTScSXs0CSfFbm1mB3Un8ywqhjDC04lvcAQYn
	RyYdsnJqya+8jwrMG7TZ0rOq5TV71JmT1yK4IcWOPOiZ5DVGyG0+nm5ly5y3Mh2RmK/N
	1F/iouwy5B8Ezb38XB40m89Bt+7Wb8cVoe+FPK2QeJcZIOW60HmJLaHJ5OCbJCZqEVf6
	RChZw5d45mKLf68fMoLb/5HLbshmMYVNNPqktEXgHuOzL/MvflF4TTV2vphcurtbcbq1
	6bag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:subject:date
	:message-id:cc:to:mime-version;
	bh=2OT49Lx+PiLN1qE0rkxXIwr/WDdGw0+EzhQRMjWpI1A=;
	b=OcbuvpV60k8xY2OlTiD1h+RNPMOB09kqcm7QLCVrzHVHUMIZ/61kkh2xEWQjLWpz0d
	zEo7TolT/luf8mCjLagdCj8VdgFg0LB0b6U7V26vX1KTZthWwY7I57AyYXTVX++yqoV4
	CMiiNGpgAt459SjTIUW/uSbzU9nZKmEBtLVRxguGVQCTu1/4Eunl31xUvyd6DL8YVPdm
	02GFzOUgG8koglmLSFBLJNZETXpkqEM3xIVZajQ/JxAsLOOmgrb+5MhpICr8vDWlQTkQ
	Fawo+X9Q1yliFJ7VP+Of/FL2t50iGf4uNMBRoP3JmLosxpvTzcyzYaeZAhOozfjafH3p
	a0Pw==
X-Gm-Message-State: AKS2vOw6M8t8pjDTtzdr0+bjUokaydCf8+9H45602+JMrWteAOKJVsaW
	NXZbKPziIInt58cdQjRvKQ==
X-Received: by 10.107.205.130 with SMTP id d124mr26232894iog.27.1497959893510; 
	Tue, 20 Jun 2017 04:58:13 -0700 (PDT)
Received: from ?IPv6:2605:8d80:5e2:6d5f:d0b4:646e:32f1:4472?
	([2605:8d80:5e2:6d5f:d0b4:646e:32f1:4472])
	by smtp.gmail.com with ESMTPSA id
	h76sm5936451ith.24.2017.06.20.04.58.12
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 20 Jun 2017 04:58:12 -0700 (PDT)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Date: Tue, 20 Jun 2017 07:58:13 -0400
Message-Id: <FDD1C072-B0FB-4EC1-8461-A7F4484AB630@gmail.com>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [PATCH] wic: remove extra double-quote on documentation string
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
X-List-Received-Date: Tue, 20 Jun 2017 11:58:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Signed-off-by: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
---
scripts/lib/wic/ksparser.py | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/wic/ksparser.py b/scripts/lib/wic/ksparser.py
index d026caa..47afda4 100644
--- a/scripts/lib/wic/ksparser.py
+++ b/scripts/lib/wic/ksparser.py
@@ -114,7 +114,7 @@ def systemidtype(arg):
    return arg

class KickStart():
-    """"Kickstart parser implementation."""
+    """Kickstart parser implementation."""

    DEFAULT_EXTRA_SPACE = 10*1024
    DEFAULT_OVERHEAD_FACTOR = 1.3
-- 
2.1.4


