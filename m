Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AB50E0144C
	for <poky@yoctoproject.org>; Mon, 24 Sep 2012 08:22:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Sep 2012 08:22:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,476,1344236400"; d="scan'208";a="148440139"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.13])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Sep 2012 08:21:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>,
	poky@yoctoproject.org
Date: Mon, 24 Sep 2012 16:21:55 +0100
Message-Id: <e38b43e04744416581697673ecc4008fa8f517f8.1348499999.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1348499999.git.paul.eggleton@linux.intel.com>
References: <cover.1348499999.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1348499999.git.paul.eggleton@linux.intel.com>
References: <cover.1348499999.git.paul.eggleton@linux.intel.com>
Subject: [denzil][PATCH 2/2] bitbake: lib/bb/siggen.py: log when tainting the signature of a task
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
X-List-Received-Date: Mon, 24 Sep 2012 15:22:01 -0000

Log a note when applying a taint to a task signature (e.g. when using
the -f or -C command line options) so that the user knows this has been
done.

(Bitbake rev: 0fd960fdea83874eedb541cbc2920257e0f3fb81)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/siggen.py |    1 +
 1 file changed, 1 insertion(+)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 4a0af94..70ae062 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -254,6 +254,7 @@ class SignatureGeneratorBasicHash(SignatureGeneratorBasic):
         return ("%s.%s.%s.%s" % (stampbase, taskname, h, extrainfo)).rstrip('.')
 
     def invalidate_task(self, task, d, fn):
+        bb.note("Tainting hash to force rebuild of task %s, %s" % (fn, task))
         bb.build.write_taint(task, d, fn)
 
 def dump_this_task(outfile, d):
-- 
1.7.9.5


