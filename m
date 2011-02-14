Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 810EA4C8090F
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 09:47:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2011 07:47:05 -0800
Message-Id: <1bdc18$jj1o9p@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="657514818"
Received: from unknown (HELO localhost) ([10.255.14.181])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2011 07:47:04 -0800
Old-Date: Sat, 12 Feb 2011 22:53:14 -0600
Date: Mon, 14 Feb 2011  9:46:52 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] Revert "nmi-safe-kernel/x86_64-page-fault-nmi-safe"
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Feb 2011 15:47:05 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This reverts commit 722d3ee9d6a5149cd6a22f19a44db301966fb711.

It might be nmi-safe, but it hangs the box in non-nmi context -
debugging shows it faulting forever at the same address.

Revert it since it's causing problems in non-tracing contexts.  Until
it gets fixed, I guess the thing to do is avoid tracing nmis.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 arch/x86/mm/fault.c |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/arch/x86/mm/fault.c b/arch/x86/mm/fault.c
index 5494537..0030984 100644
--- a/arch/x86/mm/fault.c
+++ b/arch/x86/mm/fault.c
@@ -361,7 +361,6 @@ void vmalloc_sync_all(void)
  */
 static noinline __kprobes int vmalloc_fault(unsigned long address)
 {
-	unsigned long pgd_paddr;
 	pgd_t *pgd, *pgd_ref;
 	pud_t *pud, *pud_ref;
 	pmd_t *pmd, *pmd_ref;
@@ -378,8 +377,7 @@ static noinline __kprobes int vmalloc_fault(unsigned long address)
 	 * happen within a race in page table update. In the later
 	 * case just flush:
 	 */
-	pgd_paddr = read_cr3();
-	pgd = __va(pgd_paddr) + pgd_index(address);
+	pgd = pgd_offset(current->active_mm, address);
 	pgd_ref = pgd_offset_k(address);
 	if (pgd_none(*pgd_ref))
 		return -1;
-- 
1.7.0.4


