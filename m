Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9325E01396
	for <poky@yoctoproject.org>; Mon,  7 May 2012 08:23:28 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q47FNMmJ028783;
	Mon, 7 May 2012 08:23:23 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon,  7 May 2012 11:23:18 -0400
Message-Id: <6ac1db88c0fab765723fa56611053abec73564ae.1336404072.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1336404072.git.bruce.ashfield@windriver.com>
References: <cover.1336404072.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1336404072.git.bruce.ashfield@windriver.com>
References: <cover.1336404072.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/3.0: mm/msync: tweak tmpfs patch for syscall msync
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
X-List-Received-Date: Mon, 07 May 2012 15:23:28 -0000

Bumping the routerstationpro SRCREV for the following fix:

    mm/msync: tweak tmpfs patch for syscall msync

    Commit 1c3ae5441 "mm: msync: fix issues of sys_msync on tmpfs"
    fixes the problem that sys_msync fails with tmpfs on MIPS CPU which
    has feature "cache alias".

    But it makes POSIX test cases mlockall/3-6 3-7 fail on MIPS.
    Case mlockall/3-6 creates a share memory, and maps it to memory.
      fd = shm_open(SHM_NAME, O_RDWR|O_CREAT, S_IRUSR|S_IWUSR);
      foo = mmap(NULL, BUF_SIZE, PROT_WRITE, MAP_SHARED, fd, 0);
    Then calls mlockall to lock all of the virtual address space:
      if (mlockall(MCL_CURRENT) == -1) {
    At last tests whether the virtual address spaces are locked:
      page_ptr = (void*) ((long)foo - ((long)foo % page_size));
      result = msync(page_ptr, page_size, MS_SYNC|MS_INVALIDATE);
    It espects msync returns -1 with EBUSY but returns 0.
    Case mlockall/3-7 creates a normal file to mmap, and it fails too.

    Tweak the patch to:
    1 Moved the CONFIG_TMPFS block down in the loop so that the normal
      vma flag checking will perform.
    2 There may be other VMAs in the list after this VMA which belongs
      to tmpfs file, and we should sync them after the tmpfs one. So
      remove the break loop clauses.

    Signed-off-by: Kang Kai <kai.kang@windriver.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 944f601..68c7cad 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -5,7 +5,7 @@ KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
 SRCREV_machine_atom-pc ?= "afdda882f902dd28693cd8701a7d497958290f09"
-SRCREV_machine_routerstationpro ?= "982522e3901fad56bb908565b22c498025ab536c"
+SRCREV_machine_routerstationpro ?= "220d89fcf345ee28fb0cdcf0f33f83b3dc7c460f"
 SRCREV_machine_mpc8315e-rdb ?= "83f422f718cf15633cb4c2d309aa041c3c354f65"
 SRCREV_machine_beagleboard ?= "8fd5a8eb4067c7032389e82d54f0e54e1e27f78c"
 
-- 
1.7.5.4


