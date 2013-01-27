Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2A0AE01456
	for <poky@yoctoproject.org>; Sun, 27 Jan 2013 15:42:13 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5B3D42FD93
	for <poky@yoctoproject.org>; Sun, 27 Jan 2013 18:42:04 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Sun, 27 Jan 2013 15:41:22 -0800
Message-Id: <b8313242810b55bb4ab9bc0f231ff1fe85274af8.1359330023.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1359330023.git.scott.a.garman@intel.com>
References: <cover.1359330023.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1359330023.git.scott.a.garman@intel.com>
References: <cover.1359330023.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5B3D42FD93.A36A0
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 7/7] bitbake: command: Fix getCmdLineAction bugs
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
X-List-Received-Date: Sun, 27 Jan 2013 23:42:13 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Executing "bitbake" doesn't get a sane message since the None return value
wasn't being handled correctly. Also fix msg -> cmd_action['msg'] as
otherwise an invalid variable is accessed which then crashes the server
due to the previous bug.

(Bitbake rev: c6211291ae07410832031a5274690437cc2b09a6)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/command.py |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
index c08e2ce..a143aed 100644
--- a/bitbake/lib/bb/command.py
+++ b/bitbake/lib/bb/command.py
@@ -148,8 +148,10 @@ class CommandsSync:
         Get any command parsed from the commandline
         """
         cmd_action = command.cooker.commandlineAction
-        if cmd_action['msg']:
-            raise CommandError(msg)
+        if cmd_action is None:
+            return None
+        elif 'msg' in cmd_action and cmd_action['msg']:
+            raise CommandError(cmd_action['msg'])
         else:
             return cmd_action['action']
 
-- 
1.7.9.5


