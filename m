Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66E984C800A7
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:50:55 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p21Ios2E015206
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 1 Mar 2011 10:50:55 -0800 (PST)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Tue, 1 Mar 2011 10:50:54 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 1 Mar 2011 12:50:33 -0600
Message-ID: <8999c7e414ddc1b2d8700b9f7d2aeb58985637e4.1299005382.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1299005382.git.mark.hatle@windriver.com>
References: <cover.1299005382.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 1/1] insane.bbclass: Fix ELF bitsize comparison
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
X-List-Received-Date: Tue, 01 Mar 2011 18:50:55 -0000
Content-Type: text/plain

Fix the way the ELF size is compared to ensure that incorrectly
sized ELF binaries are captured during the file scan.

lib/oe/qa.py is changed to accept a bitsize as a parameter.  Instead
of previously defining true/false, it now takes "0" undefined, "32"
32-bit, and "64" 64-bit as the size argument.  This allows us to
preserve existing behavior of only loading one ELF type, while
allowing the function to be able to discover the size on it's own.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/insane.bbclass |   84 ++++++++++++++++++++++---------------------
 meta/lib/oe/qa.py           |   21 +++++++++--
 2 files changed, 60 insertions(+), 45 deletions(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index b376470..8124384 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -32,58 +32,58 @@ PACKAGEFUNCS += " do_package_qa "
 def package_qa_get_machine_dict():
     return {
             "darwin9" : { 
-                        "arm" :       (40,     0,    0,          True,          True),
+                        "arm" :       (40,     0,    0,          True,          32),
                       },
             "linux" : { 
-                        "arm" :       (40,    97,    0,          True,          True),
-                        "armeb":      (40,    97,    0,          False,         True),
-                        "powerpc":    (20,     0,    0,          False,         True),
-                        "i386":       ( 3,     0,    0,          True,          True),
-                        "i486":       ( 3,     0,    0,          True,          True),
-                        "i586":       ( 3,     0,    0,          True,          True),
-                        "i686":       ( 3,     0,    0,          True,          True),
-                        "x86_64":     (62,     0,    0,          True,          False),
-                        "ia64":       (50,     0,    0,          True,          False),
-                        "alpha":      (36902,  0,    0,          True,          False),
-                        "hppa":       (15,     3,    0,          False,         True),
-                        "m68k":       ( 4,     0,    0,          False,         True),
-                        "mips":       ( 8,     0,    0,          False,         True),
-                        "mipsel":     ( 8,     0,    0,          True,          True),
-                        "s390":       (22,     0,    0,          False,         True),
-                        "sh4":        (42,     0,    0,          True,          True),
-                        "sparc":      ( 2,     0,    0,          False,         True),
+                        "arm" :       (40,    97,    0,          True,          32),
+                        "armeb":      (40,    97,    0,          False,         32),
+                        "powerpc":    (20,     0,    0,          False,         32),
+                        "i386":       ( 3,     0,    0,          True,          32),
+                        "i486":       ( 3,     0,    0,          True,          32),
+                        "i586":       ( 3,     0,    0,          True,          32),
+                        "i686":       ( 3,     0,    0,          True,          32),
+                        "x86_64":     (62,     0,    0,          True,          64),
+                        "ia64":       (50,     0,    0,          True,          64),
+                        "alpha":      (36902,  0,    0,          True,          64),
+                        "hppa":       (15,     3,    0,          False,         32),
+                        "m68k":       ( 4,     0,    0,          False,         32),
+                        "mips":       ( 8,     0,    0,          False,         32),
+                        "mipsel":     ( 8,     0,    0,          True,          32),
+                        "s390":       (22,     0,    0,          False,         32),
+                        "sh4":        (42,     0,    0,          True,          32),
+                        "sparc":      ( 2,     0,    0,          False,         32),
                       },
             "linux-uclibc" : { 
-                        "arm" :       (  40,    97,    0,          True,          True),
-                        "armeb":      (  40,    97,    0,          False,         True),
-                        "powerpc":    (  20,     0,    0,          False,         True),
-                        "i386":       (   3,     0,    0,          True,          True),
-                        "i486":       (   3,     0,    0,          True,          True),
-                        "i586":       (   3,     0,    0,          True,          True),
-                        "i686":       (   3,     0,    0,          True,          True),
-                        "x86_64":     (  62,     0,    0,          True,          False),
-                        "mips":       (   8,     0,    0,          False,         True),
-                        "mipsel":     (   8,     0,    0,          True,          True),
-                        "avr32":      (6317,     0,    0,          False,         True),
-			"sh4":        (42,	 0,    0,          True,          True),
+                        "arm" :       (  40,    97,    0,          True,          32),
+                        "armeb":      (  40,    97,    0,          False,         32),
+                        "powerpc":    (  20,     0,    0,          False,         32),
+                        "i386":       (   3,     0,    0,          True,          32),
+                        "i486":       (   3,     0,    0,          True,          32),
+                        "i586":       (   3,     0,    0,          True,          32),
+                        "i686":       (   3,     0,    0,          True,          32),
+                        "x86_64":     (  62,     0,    0,          True,          64),
+                        "mips":       (   8,     0,    0,          False,         32),
+                        "mipsel":     (   8,     0,    0,          True,          32),
+                        "avr32":      (6317,     0,    0,          False,         32),
+			"sh4":        (42,	 0,    0,          True,          32),
 
                       },
             "uclinux-uclibc" : {
-                        "bfin":       ( 106,     0,    0,          True,         True),
+                        "bfin":       ( 106,     0,    0,          True,         32),
                       }, 
             "linux-gnueabi" : {
-                        "arm" :       (40,     0,    0,          True,          True),
-                        "armeb" :     (40,     0,    0,          False,         True),
+                        "arm" :       (40,     0,    0,          True,          32),
+                        "armeb" :     (40,     0,    0,          False,         32),
                       },
             "linux-uclibcgnueabi" : {
-                        "arm" :       (40,     0,    0,          True,          True),
-                        "armeb" :     (40,     0,    0,          False,         True),
+                        "arm" :       (40,     0,    0,          True,          32),
+                        "armeb" :     (40,     0,    0,          False,         32),
                       },
             "linux-gnuspe" : {
-                        "powerpc":    (20,     0,    0,          False,         True),
+                        "powerpc":    (20,     0,    0,          False,         32),
                       },
             "linux-uclibcspe" : {
-                        "powerpc":    (20,     0,    0,          False,         True),
+                        "powerpc":    (20,     0,    0,          False,         32),
                       },
 
        }
@@ -243,7 +243,7 @@ def package_qa_check_arch(path,name,d, elf):
         return True
 
     #if this will throw an exception, then fix the dict above
-    (machine, osabi, abiversion, littleendian, bits32) \
+    (machine, osabi, abiversion, littleendian, bits) \
         = package_qa_get_machine_dict()[target_os][target_arch]
 
     # Check the architecture and endiannes of the binary
@@ -251,6 +251,10 @@ def package_qa_check_arch(path,name,d, elf):
         error_msg = "Architecture did not match (%d to %d) on %s" % \
                  (machine, elf.machine(), package_qa_clean_path(path,d))
         sane = package_qa_handle_error(4, error_msg, name, path, d)
+    elif not bits == elf.abiSize():
+        error_msg = "Bit size did not match (%d to %d) on %s" % \
+                 (bits, elf.abiSize(), package_qa_clean_path(path,d))
+        sane = package_qa_handle_error(4, error_msg, name, path, d)
     elif not littleendian == elf.isLittleEndian():
         error_msg = "Endiannes did not match (%d to %d) on %s" % \
                  (littleendian, elf.isLittleEndian(), package_qa_clean_path(path,d))
@@ -445,14 +449,12 @@ def package_qa_walk(path, funcs, package,d):
     #if this will throw an exception, then fix the dict above
     target_os   = bb.data.getVar('TARGET_OS',   d, True)
     target_arch = bb.data.getVar('TARGET_ARCH', d, True)
-    (machine, osabi, abiversion, littleendian, bits32) \
-        = package_qa_get_machine_dict()[target_os][target_arch]
 
     sane = True
     for root, dirs, files in os.walk(path):
         for file in files:
             path = os.path.join(root,file)
-            elf = oe.qa.ELFFile(path, bits32)
+            elf = oe.qa.ELFFile(path)
             try:
                 elf.open()
             except:
diff --git a/meta/lib/oe/qa.py b/meta/lib/oe/qa.py
index 0181393..7adf4d0 100644
--- a/meta/lib/oe/qa.py
+++ b/meta/lib/oe/qa.py
@@ -25,9 +25,9 @@ class ELFFile:
             #print "'%x','%x' %s" % (ord(expectation), ord(result), self.name)
             raise Exception("This does not work as expected")
 
-    def __init__(self, name, bits32):
+    def __init__(self, name, bits = 0):
         self.name = name
-        self.bits32 = bits32
+        self.bits = bits
 
     def open(self):
         self.file = file(self.name, "r")
@@ -38,10 +38,20 @@ class ELFFile:
         self.my_assert(self.data[1], 'E')
         self.my_assert(self.data[2], 'L')
         self.my_assert(self.data[3], 'F')
-        if self.bits32 :
+        if self.bits == 0:
+            if self.data[ELFFile.EI_CLASS] == chr(ELFFile.ELFCLASS32):
+                self.bits == 32
+            elif self.data[ELFFile.EI_CLASS] == chr(ELFFile.ELFCLASS64):
+                self.bits == 64
+            else:
+                # Not 32-bit or 64.. lets assert
+                raise Exception("ELF but not 32 or 64 bit.")
+        elif self.bits == 32:
             self.my_assert(self.data[ELFFile.EI_CLASS], chr(ELFFile.ELFCLASS32))
-        else:
+        elif self.bits == 64:
             self.my_assert(self.data[ELFFile.EI_CLASS], chr(ELFFile.ELFCLASS64))
+        else:
+            raise Exception("Must specify unknown, 32 or 64 bit size.")
         self.my_assert(self.data[ELFFile.EI_VERSION], chr(ELFFile.EV_CURRENT) )
 
         self.sex = self.data[ELFFile.EI_DATA]
@@ -60,6 +70,9 @@ class ELFFile:
     def abiVersion(self):
         return ord(self.data[ELFFile.EI_ABIVERSION])
 
+    def abiSize(self):
+	return self.bits
+
     def isLittleEndian(self):
         return self.sex == "<"
 
-- 
1.7.4


