Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A06D4E00738
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2013 12:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="302016246"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2013 12:04:14 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:03:56 -0500
Message-Id: <e34ebab81a8b9a8ea731d97173b54d87806f5ed4.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 02/18] yocto-bsp: update default custom kernel
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:15 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Update the default custom kernel to 3.8.y, the current stable kernel
available at this point.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../target/arch/common/recipes-kernel/linux/kernel-list.noinstall | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
index 2c180cc..2f9f106 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
@@ -2,22 +2,22 @@
 {{ input type:"boolean" name:"custom_kernel_remote" prio:"20" msg:"Is the custom kernel you'd like to use in a remote git repo? (y/n)" default:"y"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_remote == "y": }}
-{{ input type:"edit-git-repo" name:"custom_kernel_remote_path" prio:"20" msg:"Please enter the full URI to the remote git repo (the default corresponds to linux-stable v3.4.21)" default:"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"}}
+{{ input type:"edit-git-repo" name:"custom_kernel_remote_path" prio:"20" msg:"Please enter the full URI to the remote git repo (the default corresponds to linux-stable v3.8.1)" default:"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_remote == "n": }}
-{{ input type:"edit-git-repo" name:"custom_kernel_local_path" prio:"20" msg:"You've indicated that you're not using a remote git repo.  Please enter the full path to the local git repo you want to use (the default assumes a local linux-stable v3.4.21)" default:"/home/trz/yocto/kernels/linux-stable.git"}}
+{{ input type:"edit-git-repo" name:"custom_kernel_local_path" prio:"20" msg:"You've indicated that you're not using a remote git repo.  Please enter the full path to the local git repo you want to use (the default assumes a local linux-stable v3.8.1)" default:"/home/trz/yocto/kernels/linux-stable.git"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"boolean" name:"custom_kernel_need_kbranch" prio:"20" msg:"Do you need to use a specific (non-master) branch? (y/n)" default:"n"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_need_kbranch == "y": }}
-{{ input type:"edit" name:"custom_kernel_kbranch" prio:"20" msg:"Please enter the branch you want to use (the default branch corresponds to the linux-stable 'linux-3.4.y' branch):" default:"linux-3.4.y"}}
+{{ input type:"edit" name:"custom_kernel_kbranch" prio:"20" msg:"Please enter the branch you want to use (the default branch corresponds to the linux-stable 'linux-3.8.y' branch):" default:"linux-3.8.y"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"edit" name:"custom_kernel_srcrev" prio:"20" msg:"Please enter the SRCREV (commit id) you'd like to use (use '${AUTOREV}' to track the current HEAD):" default:"${AUTOREV}"}}
 
 {{ if kernel_choice == "custom": }}
-{{ input type:"edit" name:"custom_kernel_linux_version" prio:"20" msg:"Please enter the Linux version of the kernel you've specified:" default:"3.4.21"}}
+{{ input type:"edit" name:"custom_kernel_linux_version" prio:"20" msg:"Please enter the Linux version of the kernel you've specified:" default:"3.8.1"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"edit" name:"custom_kernel_linux_version_extension" prio:"20" msg:"Please enter a Linux version extension if you want (it will show up at the end of the kernel name shown by uname):" default:"-custom"}}
-- 
1.7.11.4


