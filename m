Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47C1BE00D79; Thu, 14 Dec 2017 02:08:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0879E00D72
	for <poky@yoctoproject.org>; Thu, 14 Dec 2017 02:07:59 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id f206so10219353wmf.5
	for <poky@yoctoproject.org>; Thu, 14 Dec 2017 02:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=SJTFzoBC5bxa/QMX2n0zcFrtVKXPFrO1Ig3LAYfPMmQ=;
	b=CW7lo3Jrc2fV6QtWGiQdP53goDZckh9kDuT9w30kSB8uMXyKIGma6l/HErlUZ4rHEX
	vgyHD6UzQ8dwsC1pQwG8V3jLDSlNwHwbuuGF0ThN0ItynPuBOISDO9Smj4EROyaxqPN9
	R9CmBRTgbkypuoSccBN3cTPSGCqFuPPr2pnoLPTpetZTLBWps0mNmsOCEcqXDljb9YIJ
	OlL3Z20aIIJK2q61Y4mTjiXXse+jwIzEYM96WQB7+yDynZCXIvYXoMyr0qiafBeED3ki
	det69jmZO2mghGy62KbSwAvXj+m/IK+AOpodfPMB1womKsekDAk8fS46D/0VL2lQQGhj
	aTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=SJTFzoBC5bxa/QMX2n0zcFrtVKXPFrO1Ig3LAYfPMmQ=;
	b=Sk0+r4ZfAP1L1TrWYN1pRsq/jYvoFZkPrWhVPEU0wqUFTtqn60eaiJ3MfHHSDkoWP6
	WVAD9e51w63eIVZipt/YW2nHEoPcHVHvsalz77jYTbBbo0RMC6ytLlR4PWWlVoIUaZ/c
	EHCmPXgatbi9zqdSC/L0s0vohi6lXdLTmBBLGFfzqSdUVCOCgVYBH//8o/Ys+suHK1tx
	lMmRQKSTex630gyhfH+5bSETlXIYz8H4oOwVYYsRHY2mzQKsBXV86DuPllRmOyZLUBZl
	eHf7/ZsSotoHFGboxr4zG36fW5cF9SshDeil754mtZ/+jUDzju4xFB6XhUMVjQxa3X2r
	oyuA==
X-Gm-Message-State: AKGB3mIMPUR3H6uQDKwIdPFcwsD3D/8ylCZG6faQ3NXeD00bfEhgy//h
	mPuTRNvVUPJOZnaUye6qcS3AVQ==
X-Google-Smtp-Source: ACJfBoswt+yFjHwRIW3TzQ+9g19sr6dB+I+lJ+X2r7PvWBuAaOEgCC52r7AupddgU1Ldb7SwTUoTMQ==
X-Received: by 10.28.196.194 with SMTP id u185mr1793681wmf.133.1513246078207; 
	Thu, 14 Dec 2017 02:07:58 -0800 (PST)
Received: from VPR-VM.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id
	127sm6539317wmk.14.2017.12.14.02.07.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 14 Dec 2017 02:07:57 -0800 (PST)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 14 Dec 2017 11:07:42 +0100
Message-Id: <1513246062-12341-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [Documentation][PATCH] Fix documentation makefile: add missing figures to mega-manuel tarball
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
X-List-Received-Date: Thu, 14 Dec 2017 10:08:00 -0000

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 documentation/Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/documentation/Makefile b/documentation/Makefile
index 9891095..244a84e 100644
--- a/documentation/Makefile
+++ b/documentation/Makefile
@@ -244,7 +244,10 @@ TARFILES = mega-manual.html mega-style.css \
 	figures/sdk-environment.png figures/sdk-installed-standard-sdk-directory.png \
 	figures/sdk-devtool-add-flow.png figures/sdk-installed-extensible-sdk-directory.png \
 	figures/sdk-devtool-modify-flow.png figures/sdk-eclipse-dev-flow.png \
-	figures/sdk-devtool-upgrade-flow.png figures/bitbake-build-flow.png
+	figures/sdk-devtool-upgrade-flow.png figures/bitbake-build-flow.png \
+	figures/yocto-project-transp.png figures/bash-oecore.png \
+	figures/add-variable.png figures/set-variable.png \
+	figures/variable-added.png
 	endif
 
 MANUALS = $(DOC)/$(DOC).html
-- 
2.7.4


