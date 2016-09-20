Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B14DE00BCE; Tue, 20 Sep 2016 04:57:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE56FE00B9C;
	Tue, 20 Sep 2016 04:57:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8KBvIHH023105
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Sep 2016 04:57:18 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 04:57:17 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 19:54:45 +0800
Message-ID: <20160920115445.157131-9-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920115445.157131-1-kexin.hao@windriver.com>
References: <20160920115445.157131-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel 6/6] MIPS: OCTEON: mangle-port: fix build failure with VDSO code
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
X-List-Received-Date: Tue, 20 Sep 2016 11:57:20 -0000
Content-Type: text/plain

From: Aaro Koskinen <aaro.koskinen@iki.fi>

Patch got from https://patchwork.linux-mips.org/patch/14039/

Commit 1685ddbe35cd ("MIPS: Octeon: Changes to support readq()/writeq()
usage.") added bitwise shift operations that assume that unsigned long
is always 64-bits. This broke the build of VDSO code, as it gets compiled
also in "faked" 32-bit mode. Althought the failing inline functions are
never executed in 32-bit mode, they still need to pass the compilation.
Fix by using 64-bit types explicitly.

The patch fixes the following build failure:

  CC      arch/mips/vdso/gettimeofday-o32.o
In file included from los/git/devel/linux/arch/mips/include/asm/io.h:32:0,
                 from los/git/devel/linux/arch/mips/include/asm/page.h:194,
                 from los/git/devel/linux/arch/mips/vdso/vdso.h:26,
                 from los/git/devel/linux/arch/mips/vdso/gettimeofday.c:11:
los/git/devel/linux/arch/mips/include/asm/mach-cavium-octeon/mangle-port.h: In function '__should_swizzle_bits':
los/git/devel/linux/arch/mips/include/asm/mach-cavium-octeon/mangle-port.h:19:40: error: right shift count >= width of type [-Werror=shift-count-overflow]
  unsigned long did = ((unsigned long)a >> 40) & 0xff;
                                        ^~

Fixes: 1685ddbe35cd ("MIPS: Octeon: Changes to support readq()/writeq() usage.")
Signed-off-by: Aaro Koskinen <aaro.koskinen@iki.fi>
Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 arch/mips/include/asm/mach-cavium-octeon/mangle-port.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/include/asm/mach-cavium-octeon/mangle-port.h b/arch/mips/include/asm/mach-cavium-octeon/mangle-port.h
index 0cf5ac1f7245..8ff2cbdf2c3e 100644
--- a/arch/mips/include/asm/mach-cavium-octeon/mangle-port.h
+++ b/arch/mips/include/asm/mach-cavium-octeon/mangle-port.h
@@ -15,8 +15,8 @@
 static inline bool __should_swizzle_bits(volatile void *a)
 {
 	extern const bool octeon_should_swizzle_table[];
+	u64 did = ((u64)(uintptr_t)a >> 40) & 0xff;
 
-	unsigned long did = ((unsigned long)a >> 40) & 0xff;
 	return octeon_should_swizzle_table[did];
 }
 
@@ -29,7 +29,7 @@ static inline bool __should_swizzle_bits(volatile void *a)
 
 #define __should_swizzle_bits(a)	false
 
-static inline bool __should_swizzle_addr(unsigned long p)
+static inline bool __should_swizzle_addr(u64 p)
 {
 	/* boot bus? */
 	return ((p >> 40) & 0xff) == 0;
-- 
2.9.3


