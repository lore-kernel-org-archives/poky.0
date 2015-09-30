Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BDDDE00CFC; Tue, 29 Sep 2015 19:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 267A5E00A3C
	for <poky@yoctoproject.org>; Tue, 29 Sep 2015 19:29:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t8U2Th84003147
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 Sep 2015 19:29:43 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (147.11.178.22) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Tue, 29 Sep 2015 19:29:42 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 30 Sep 2015 10:29:33 +0800
Message-ID: <1443580173-15179-1-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.4.3
MIME-Version: 1.0
Subject: [PATCH] kernel.bbclass: fix the bug of checking the existing sections in do_strip()
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
X-List-Received-Date: Wed, 30 Sep 2015 02:29:51 -0000
Content-Type: text/plain

Ross reported the following waring when building edgerouter BSP:
    WARNING: Section not found: .comment

The reason is that the testing of the existing sections in do_strip()
returned the wrong value. Please see the following code in do_strip():
                for str in ${KERNEL_IMAGE_STRIP_EXTRA_SECTIONS}; do {
                        if [ "$headers" != *"$str"* ]; then
                                bbwarn "Section not found: $str";
                        fi

                        "$CROSS_COMPILE"strip -s -R $str ${KERNEL_OUTPUT}
                }; done

The "*" doesn't have special meaning in the if string test, so it will
return true even the $str is a substring of $headers. Fix this issue
by replacing it with "! (echo "$headers" | grep -q "^$str$")".

Reported-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta/classes/kernel.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index dfbdfd2..5e8b6cf 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -413,7 +413,7 @@ do_strip() {
 			  gawk '{print $1}'`
 
 		for str in ${KERNEL_IMAGE_STRIP_EXTRA_SECTIONS}; do {
-			if [ "$headers" != *"$str"* ]; then
+			if ! (echo "$headers" | grep -q "^$str$"); then
 				bbwarn "Section not found: $str";
 			fi
 
-- 
2.0.1


