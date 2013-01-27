Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E5BBE0144D
	for <poky@yoctoproject.org>; Sun, 27 Jan 2013 15:42:07 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B6BCE2FD91
	for <poky@yoctoproject.org>; Sun, 27 Jan 2013 18:41:58 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Sun, 27 Jan 2013 15:41:21 -0800
Message-Id: <61e3cf42a8886bfe90207c05976569f909b2fbf1.1359330023.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1359330023.git.scott.a.garman@intel.com>
References: <cover.1359330023.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1359330023.git.scott.a.garman@intel.com>
References: <cover.1359330023.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B6BCE2FD91.6D3A0
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/7] bitbake: command: Add missing import traceback
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
X-List-Received-Date: Sun, 27 Jan 2013 23:42:07 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Without this, if an exception occurs the server will silently crash
with no feedback to the user about why (since traceback isn't imported).

(Bitbake rev: e637a635bf7b5a9a2e9dc20afc18aceec98d578f)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/command.py |    1 +
 1 file changed, 1 insertion(+)

diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
index 00b854e..c08e2ce 100644
--- a/bitbake/lib/bb/command.py
+++ b/bitbake/lib/bb/command.py
@@ -69,6 +69,7 @@ class Command:
             except CommandError as exc:
                 return None, exc.args[0]
             except Exception:
+                import traceback
                 return None, traceback.format_exc()
             else:
                 return result, None
-- 
1.7.9.5


