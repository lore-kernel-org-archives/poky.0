Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF5684C811A7
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 10:21:05 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0IGL5bs000881
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 08:21:05 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 18 Jan 2011 08:21:05 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 18 Jan 2011 08:21:05 -0800
Message-ID: <4D35BDF0.5030507@windriver.com>
Date: Tue, 18 Jan 2011 10:21:04 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
References: <4D35BD84.6010201@windriver.com>
In-Reply-To: <4D35BD84.6010201@windriver.com>
X-OriginalArrivalTime: 18 Jan 2011 16:21:05.0209 (UTC)
	FILETIME=[B4A09290:01CBB72B]
Subject: [PATCH 1/1] sanity.bbclass: Disable TERMCMD checking with noop patching
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
X-List-Received-Date: Tue, 18 Jan 2011 16:21:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

If PATCHRESOLVE is set to "noop", then it isn't supposed to try and
resolve patches at all, and thus does not need TERMCMD. Therefore,
make sure Poky doesn't check for (and possibly fail at finding)
TERMCMD if it isn't needed in the first place.

Signed-off-by: Derek Buitenhuis <dbuitenh@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/sanity.bbclass |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 315fc34..ccf40fb 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -189,11 +189,12 @@ def check_sanity(e):
     if not data.getVar( 'DISPLAY', e.data, True ) and data.getVar( 'IMAGETEST',
e.data, True ) == 'qemu':
         messages = messages + 'qemuimagetest needs a X desktop to start qemu,
please set DISPLAY correctly (e.g. DISPLAY=:1.0)\n'

-    # Ensure we have the binary for TERMCMD, as when patch application fails
the error is fairly intimidating
-    termcmd = data.getVar("TERMCMD", e.data, True)
-    term = termcmd.split()[0]
-    if not check_app_exists(term, e.data):
-       messages = messages + "The console for use in patch error resolution is
not available, please install %s or set TERMCMD and TERMCMDRUN$
+    if data.getVar('PATCHRESOLVE', e.data, True) != 'noop':
+        # Ensure we have the binary for TERMCMD, as when patch application
fails the error is fairly intimidating
+        termcmd = data.getVar("TERMCMD", e.data, True)
+        term = termcmd.split()[0]
+        if not check_app_exists(term, e.data):
+            messages = messages + "The console for use in patch error
resolution is not available, please install %s or set TERMCMD and TERMC$

     if os.path.basename(os.readlink('/bin/sh')) == 'dash':
         messages = messages + "Using dash as /bin/sh causes various subtle
build problems, please use bash instead (e.g. 'dpkg-reconfigure da$
--
1.7.3.4

