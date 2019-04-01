Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21C30E00AB0; Mon,  1 Apr 2019 16:05:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95684E00798
	for <poky@lists.yoctoproject.org>; Mon,  1 Apr 2019 16:05:46 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id t17so1080024wrw.13
	for <poky@lists.yoctoproject.org>; Mon, 01 Apr 2019 16:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=zmu4OKpTU58M9uz1aHypOrXigZp2tVjuqRGZKPiDZ3g=;
	b=KdNxuWqzH8tl7WC2xd1ykhuv3UnkoPumUQ7gixCa5YVJzbTPKLtA0weZq286S4z41t
	VMmgFnJ5UDKX1+8e8ol4lFU+fRL/SKkZqdhDuMGDi2tEYsnn23TewAYZEYNhCaSISUOS
	XkvS0j2jsRAclHEqNB9ycDTrsttURUKmaRCdA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=zmu4OKpTU58M9uz1aHypOrXigZp2tVjuqRGZKPiDZ3g=;
	b=jrurK6gpKs/ntuY6OPI1V+2J2CnCGYK1OCVZYsxICx0F5ALgTeMygvrwe3CFnCMWLf
	lVt1dwH4I5z30ggJxQQigFrfyUOhdtDONmuq/neB7VXnVgr5GforNrcZq2d+J9EDYA5D
	gwrwtHtDL3pe9o+8MwtLuPN2kFnVERTTUKBZdI2HmSSzyyfkFQQaV+vKtxWdkaL4YIwY
	Y7mju4jrugArjyu2WkQJ++ZD77Glv7LSTgKP2yhnmjUW6vexmkzB5gZ2jZljXeY/2p7l
	s1Ql8+FpL+DB/YOhAz63VRAsy3D5HaAkgsVd9FpVMduWjALnorNjvyFsj+jsS0X+lK9P
	ZvSA==
X-Gm-Message-State: APjAAAUx9ZH718ytS6uyWldrV7oGbBOuEMNVabZZV4x5Ds7n4cSscCSO
	yeJFCuNt5/Ih7HTKczXmmLDFfzg37LDzeA==
X-Google-Smtp-Source: APXvYqwezaT3RNN38gchLSgRS0XpbEegNVclU+plpY79llhWw5NML3/A1wME61CGl1Q5FHBOmgs9sA==
X-Received: by 2002:adf:e74f:: with SMTP id c15mr28520537wrn.23.1554159945492; 
	Mon, 01 Apr 2019 16:05:45 -0700 (PDT)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	s2sm11577847wmc.7.2019.04.01.16.05.44
	for <poky@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Apr 2019 16:05:44 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Tue,  2 Apr 2019 00:05:44 +0100
Message-Id: <20190401230544.16761-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH] layer.conf: Update to warrior release name series
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
X-List-Received-Date: Mon, 01 Apr 2019 23:05:48 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/layer.conf      | 2 +-
 meta-yocto-bsp/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index b9b263716ab..0d74f4eaaf2 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
-LAYERSERIES_COMPAT_yocto = "thud"
+LAYERSERIES_COMPAT_yocto = "warrior"
 
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 53e8722e813..3c8f775bc42 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 LAYERVERSION_yoctobsp = "4"
-LAYERSERIES_COMPAT_yoctobsp = "thud"
+LAYERSERIES_COMPAT_yoctobsp = "warrior"
-- 
2.20.1


