Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6829FE00901; Mon, 13 Mar 2017 19:51:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, 
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04B83E00839
	for <poky@yoctoproject.org>; Mon, 13 Mar 2017 19:51:10 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id u48so22287665wrc.1
	for <poky@yoctoproject.org>; Mon, 13 Mar 2017 19:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=gAcPp/+eQykfi/9mTTLZ9gj+ncpQo7ggCUQPjcO4i84=;
	b=Bktt+esoioX0Mb/ejSLJIOEs2ez6s1UXXhk4FqOq6DivnDSr7Es2mallAD8DXbpaBn
	mlejCqaOBHaO2C3VzcShvQP4lToduWegtVICueseuhpkd05ogyg9pEkpSmEua2/li5Y9
	fTgdknD3Gi/rFuzKMUwD+zGuzfP85ubWioBJtod8IP26dETks3TX+Zlfyabt3NFdgzW0
	RPustA5TZCc8fBPjliRHou6Ro86SKv6kmUziqt1OunfevmGhZHsvEV8QJEqo3u3y7A+P
	o88DNqw86nxgpTKm4Cu4L1rIn9RUVKBgeskPdP1cnJQARPIzORDqACOCjasXuco8Pkmq
	hURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=gAcPp/+eQykfi/9mTTLZ9gj+ncpQo7ggCUQPjcO4i84=;
	b=a3rbTYJ1NO/hRWJ254eKhAJaG3wFin+nZftWzScCdTrCGDoH5FGeXkecLJc6tvjLu/
	+KRf8rTCnbTbruL+6FOx08NQhvKkY+b8OQVzp/PIxUPNwgFVtBCgjzykDjVEowRho3Bt
	VFZZ/OccuWSZr0keOEDC0lJFbYn5kBscuVrmOHNRUvsu3E/ysmWKGOh6sobiZZg2EymU
	V5b+r14hVFe5FpHFkVafdCdLAmW7CurAjQQyu2Pi8a/j195AEx/3BWx2J+38cQdr2Zj+
	quJrJdpGbeONcxnLxzH6XMM02+keaDaj+5FIL5IqSgccJrQwda7NZp8MuUTVng0ZgXcg
	OU6Q==
X-Gm-Message-State: AMke39kow4bJTWb8ycsVIy7TBCLvXGHynX+qcL5DU6w0zza8Sm4vvnkIX9CSKyxFSsNtjg==
X-Received: by 10.223.135.163 with SMTP id b32mr31398896wrb.170.1489459869451; 
	Mon, 13 Mar 2017 19:51:09 -0700 (PDT)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	w17sm27285682wra.28.2017.03.13.19.51.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Mar 2017 19:51:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	poky@yoctoproject.org
Date: Mon, 13 Mar 2017 19:51:00 -0700
Message-Id: <1489459860-15836-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] maintainers list: add self to libpcre2 as maintainer
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
X-List-Received-Date: Tue, 14 Mar 2017 02:51:14 -0000

From: Armin Kuster <akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index ab99cea..2265b48 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -378,6 +378,7 @@ RECIPE_MAINTAINER_pn-libpam = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpcap = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpciaccess = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libpcre = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-libpcre2 = "Armin Kuster  <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libpfm4 = "Matthew McClintock <msm@freescale.com>"
 RECIPE_MAINTAINER_pn-libpng = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpng12 = "Maxin B. John <maxin.john@intel.com>"
-- 
2.7.4


