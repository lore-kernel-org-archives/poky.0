Return-Path: <wbourque@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A019CE00CB9; Fri,  8 Feb 2019 13:35:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wbourque[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 071F0E00C8A
	for <poky@yoctoproject.org>; Fri,  8 Feb 2019 13:35:55 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id e12so8320700otl.5
	for <poky@yoctoproject.org>; Fri, 08 Feb 2019 13:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=641MkKHggUoTDE9qab1tlStObJ/dwcs+WHRELd4MQog=;
	b=ZbEDKv8wFAL4nK27L48TuG+nxtLeIOc9GZZ1K1cqK2U3sOVYj0YBNx2hSHR7+fRo/r
	KP6maInJ+dt2RWbZFlYEA12opn2qDTaw3G731XDMw4rljBKpBCNzq4OYZSzjLOH+ZRK/
	DXndBk2yrezhBi5gXdMHflsR3Likz1sy2h24hktfgyIAgZxmdZ7F59IHie7624MN4FsU
	K1+ua0V1a8xHSkRoyiLeCRMV71W/T3wtg72qZGNuA6J6OK2x/ylPfpDQPsv+Aqy34z21
	OwGar4x9OUZsSHW+4G/lfgF5WpkdCe8LG3v0zPd2XXQ61Gj0YwYU1/4EPCzk7UP1PIRP
	DN/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=641MkKHggUoTDE9qab1tlStObJ/dwcs+WHRELd4MQog=;
	b=HIXyILrWSCcBUV6g69LtyV7SQaJ6KfArDW0YCVH1/C5SoRggPlbJf18Uq2HCHvkB2P
	/ZuujOE9fBKH/PPBPpUM4jafcWvW51Z0UkSgi0eP1kA4Z82JNCbNHxr7xMAknIZIhCAM
	G1UG9EFBYfoCpcMZcHx6u8h85TG+0snsVBzPijYKb6tO6a2yQM4W0uKXeNlJWm70P5Gx
	9SLCe5hcWct3Lzt1Vtdj+rNmnLfPEUkg/ZJG0x4sESFdrx9ZFlvrUFZAWERaKUf0Lzq7
	WZrJCa2+/BZQ9gkwkrB86cL9PckfGXRE5Hl2r5RXcp3H/RYzLhDDzIjpI6OhqU5xE/Pz
	QpOQ==
X-Gm-Message-State: AHQUAuZ1f/UsldPJtI4G6VqFBTtzAXfY/cNeifS+Xe++H+Fd+e83wrAe
	0kTK4c/GioOitwJQoDwVPF66L+nyv6L++XxW5qsqN2kI
X-Google-Smtp-Source: AHgI3IZIyzh3xTuEc1why2XywwrNNJOayGja2xiv/w8IEirO0kmehFRS6EG8YMCPeKYcl4dBmIX0GImUN9kATf/RvB0=
X-Received: by 2002:a9d:748f:: with SMTP id t15mr15158082otk.93.1549661754945; 
	Fri, 08 Feb 2019 13:35:54 -0800 (PST)
MIME-Version: 1.0
From: William Bourque <wbourque@gmail.com>
Date: Fri, 8 Feb 2019 16:35:43 -0500
Message-ID: <CANBSh+ND=jB8ho1Y1KdE2hPC2NjE=DBUumefoAmzrGn3LU-QZg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH] wic: Various improvement in engine PATH
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
X-List-Received-Date: Fri, 08 Feb 2019 21:35:56 -0000
Content-Type: text/plain; charset="UTF-8"

- Load PATH from environment variable PATH first
before falling back to hardcoded list.
This is required for users that would need to load
different e2fsprogs binaries if their system's ones
are not recent enought

- Use path to get system "echo" (typically /bin/echo)
instead of one internal to the shell.
System echo is safer to use since a lot of
distribution use minimal (ex: /bin/dash) that does not
support "-e" argument to echo.

Signed-off-by: William Bourque <wbourque@gmail.com>
---
 scripts/lib/wic/engine.py | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/scripts/lib/wic/engine.py b/scripts/lib/wic/engine.py
index 4662c66..eef5309 100644
--- a/scripts/lib/wic/engine.py
+++ b/scripts/lib/wic/engine.py
@@ -244,8 +244,13 @@ class Disk:
         self._psector_size = None
         self._ptable_format = None

-        # find parted
-        self.paths = "/bin:/usr/bin:/usr/sbin:/sbin/"
+        # read paths from $PATH environment variable
+        # if it fails, use hardcoded paths
+        try:
+            self.paths = os.environ['PATH']
+        except KeyError:
+            self.paths = "/bin:/usr/bin:/usr/sbin:/sbin/"
+
         if native_sysroot:
             for path in self.paths.split(':'):
                 self.paths = "%s%s:%s" % (native_sysroot, path, self.paths)
@@ -285,7 +290,7 @@ class Disk:
     def __getattr__(self, name):
         """Get path to the executable in a lazy way."""
         if name in ("mdir", "mcopy", "mdel", "mdeltree", "sfdisk", "e2fsck",
-                    "resize2fs", "mkswap", "mkdosfs", "debugfs"):
+                    "resize2fs", "mkswap", "mkdosfs", "debugfs", "echo"):
             aname = "_%s" % name
             if aname not in self.__dict__:
                 setattr(self, aname, find_executable(name, self.paths))
@@ -331,8 +336,8 @@ class Disk:
     def copy(self, src, pnum, path):
         """Copy partition image into wic image."""
         if self.partitions[pnum].fstype.startswith('ext'):
-            cmd = "echo -e 'cd {}\nwrite {} {}' | {} -w {}".\
-                      format(path, src, os.path.basename(src),
+            cmd = "{} -e 'cd {}\nwrite {} {}' | {} -w {}".\
+                      format(self.echo, path, src, os.path.basename(src),
                              self.debugfs, self._get_part_image(pnum))
         else: # fat
             cmd = "{} -i {} -snop {} ::{}".format(self.mcopy,
-- 
2.7.4

