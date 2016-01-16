Return-Path: <florin@resin.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D34E00AB7; Sat, 16 Jan 2016 04:29:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82D84E0090C
	for <poky@yoctoproject.org>; Sat, 16 Jan 2016 04:29:25 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id u188so7516515wmu.0
	for <poky@yoctoproject.org>; Sat, 16 Jan 2016 04:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=resin.io; s=googledkim;
	h=from:to:cc:subject:date:message-id;
	bh=mezeKcsiblDpQWbGl7gp9V0deF9Lqu3wsoNRt3VI44M=;
	b=lAgsgjvXT0LgiQWz0GKzOvs9LoC/2WGrl6NL9zUSooi8SxTVWhlPdeU5hmDb3lIu+6
	MoKghhyLKbtnWP20XpwkUy9hEruhUJX/RijxMhUzaHOEA2s3awfql7IbaHj4rdmEgiia
	CQO7CcHLxsNNzTZ39tWC60cgjP7zNec8f0pJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mezeKcsiblDpQWbGl7gp9V0deF9Lqu3wsoNRt3VI44M=;
	b=d8Ko1xY3BvGz5tfEePcBIpLTQ/aoHVUSPPFdfpa0DunHJCGsu555y6K81elVswEv7N
	LHDh+quMkJ99ngUbC9XkRcHLngn62PhVKWe12QcsGeFG3Y33TG2amRl0Mo64E29Lcl1m
	BVaBRCdoh1UhCg+DspJwBUnco7BLSuJABZ0ap1yZLt8Fw7cyJmvv0MEx06kAnwCZY8N6
	29+WQGwGRHZcdw/QfU6/TtWErOd58WE58s9lamI6dzFYsDwDH5dxRDAkjUiAfsanp6kF
	DHoPgX5hMsRvs0g826+Yo/Y+ojCz+SPkYW4Cg3fyBefFuS6vK6Z1GpqzlAPZ4WdLtxku
	o0lA==
X-Gm-Message-State: ALoCoQkNrL9PPHWQvzQte7AgHR+6AeCPQ+0PACZDOy0Baf3eJ4Y65WIchMNlsNarnh+ADXAXLxM3o0bQXpOoLi9cXa6cwq7Y6A==
X-Received: by 10.194.250.39 with SMTP id yz7mr16800491wjc.92.1452947364839;
	Sat, 16 Jan 2016 04:29:24 -0800 (PST)
Received: from localhost.localdomain (5-13-166-210.residential.rdsnet.ro.
	[5.13.166.210]) by smtp.gmail.com with ESMTPSA id
	a126sm6750104wmh.0.2016.01.16.04.29.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 16 Jan 2016 04:29:23 -0800 (PST)
From: Florin Sarbu <florin@resin.io>
To: poky@yoctoproject.org
Date: Sat, 16 Jan 2016 14:28:04 +0200
Message-Id: <1452947285-13155-1-git-send-email-florin@resin.io>
X-Mailer: git-send-email 2.7.0.rc3
Subject: [PATCH] backport 3cb87724a5b21550e99c18e97b665d6604bb2fa9 from git://git.yoctoproject.org/poky
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
X-List-Received-Date: Sat, 16 Jan 2016 12:29:28 -0000

bitbake: cooker: Ensure bbappend files are processed in a
determistic order

self.appendlist is a dict and as such unordered. This can lead to cases
where appends with different names (e.g. x_%.bbappend vs. x_123.bbappend)
can be reordered in application which in turn reorders the variables
that those bbappend files might touch. Reorderd variables changes the sstate
cache signatures causing real world issues.

To avoid this, use a list for the append files instead.

This patch is conservative and just adds a new data structure alongside
the existing one and uses it to resolve the core issue. Later patches
(post release) can handle some of the wider but less problematic ones
(e.g. issues in bitbake-layers flatten).

[YOCTO #7511]

(Bitbake rev: f980f060cd0d1e7fe5011f3c325c1b254f05eccf)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Florin Sarbu <florin@resin.io>
---
 bitbake/lib/bb/cooker.py | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index f44a088..a2c9b10 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -1408,6 +1408,7 @@ class CookerExit(bb.event.Event):
 class CookerCollectFiles(object):
     def __init__(self, priorities):
         self.appendlist = {}
+        self.bbappends = []
         self.appliedappendlist = []
         self.bbfile_config_priorities = priorities
 
@@ -1502,6 +1503,7 @@ class CookerCollectFiles(object):
         # Build a list of .bbappend files for each .bb file
         for f in bbappend:
             base = os.path.basename(f).replace('.bbappend', '.bb')
+            self.bbappends.append((base, f))
             if not base in self.appendlist:
                self.appendlist[base] = []
             if f not in self.appendlist[base]:
@@ -1527,11 +1529,11 @@ class CookerCollectFiles(object):
         """
         filelist = []
         f = os.path.basename(fn)
-        for bbappend in self.appendlist:
+        for b in self.bbappends:
+            (bbappend, filename) = b
             if (bbappend == f) or ('%' in bbappend and bbappend.startswith(f[:bbappend.index('%')])):
                 self.appliedappendlist.append(bbappend)
-                for filename in self.appendlist[bbappend]:
-                    filelist.append(filename)
+                filelist.append(filename)
         return filelist
 
     def collection_priorities(self, pkgfns):
@@ -1551,10 +1553,10 @@ class CookerCollectFiles(object):
                 unmatched.add(regex)
 
         def findmatch(regex):
-            for bbfile in self.appendlist:
-                for append in self.appendlist[bbfile]:
-                    if regex.match(append):
-                        return True
+            for b in self.bbappends:
+                (bbfile, append) = b
+                if regex.match(append):
+                    return True
             return False
 
         for unmatch in unmatched.copy():
-- 
2.7.0.rc3


