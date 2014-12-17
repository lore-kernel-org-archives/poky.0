Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0995AE009A0; Tue, 16 Dec 2014 16:41:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DFB4E003AB
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 16:41:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2014 16:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,590,1413270000"; d="scan'208";a="648821928"
Received: from unknown (HELO localhost) ([10.255.13.117])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2014 16:41:10 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Dec 2014 18:41:00 -0600
Message-Id: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1418776404.git.tom.zanussi@linux.intel.com>
References: <cover.1418776404.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/9] yocto-bsp: Add a processing pass to get rid of 'strange' filenames
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
X-List-Received-Date: Wed, 17 Dec 2014 00:41:18 -0000

Operating systems that can't handle filenames containing anything but
uppercase letters don't like to see 'strange' characters in filenames
such as the file and directory names yocto-bsp uses as part of its
templating mechanism.  To fix this, we essentially add another level
of metadata into the template files themselves rather than into their
names, and add a processing pass that internally gives us what we had
before.  Specifically:

  - strange characters in filenames are moved inside the files they
    apply to, to the first line of the file prepended with '#
    yocto-bsp-filename {{...}} filename | this'

  - strange characters in directory names are moved inside a new file
    of the same name but ending in .noinstall and with the first (and
    only) line of the file prepended with '# yocto-bsp-dirname {{...}}
    dirname'

If the new filename contained in the yocto-bsp-* tag is 'this', the
filename is the existing name of the file.  For a dirname, this would
be the filename with .noinstall removed.

"Fixes" [YOCTO #5312].

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/engine.py | 173 +++++++++++++++++++++++++++++++++++++++++++++-
 scripts/lib/bsp/tags.py   |  12 ++--
 2 files changed, 177 insertions(+), 8 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 681720d..7d6be23 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -756,6 +756,8 @@ class CheckInputLine(ListValInputLine):
         return None
 
 
+dirname_substitutions = {}
+
 class SubstrateBase(object):
     """
     Base class for both expanded and unexpanded file and dir container
@@ -764,6 +766,7 @@ class SubstrateBase(object):
     def __init__(self, filename, filebase, out_filebase):
         self.filename = filename
         self.filebase = filebase
+        self.translated_filename = filename
         self.out_filebase = out_filebase
         self.raw_lines = []
         self.expanded_lines = []
@@ -869,6 +872,167 @@ class SubstrateBase(object):
 
         return self.expand_input_tag(tag, lineno)
 
+    def append_translated_filename(self, filename):
+        """
+        Simply append filename to translated_filename
+        """
+        self.translated_filename = os.path.join(self.translated_filename, filename)
+
+    def get_substituted_file_or_dir_name(self, first_line, tag):
+        """
+        If file or dir names contain name substitutions, return the name
+        to substitute.  Note that this is just the file or dirname and
+        doesn't include the path.
+        """
+        filename = first_line.find(tag)
+        if filename != -1:
+            filename += len(tag)
+        substituted_filename = first_line[filename:].strip()
+        this = substituted_filename.find(" this")
+        if this != -1:
+            head, tail = os.path.split(self.filename)
+            substituted_filename = substituted_filename[:this + 1] + tail
+            if tag == DIRNAME_TAG: # get rid of .noinstall in dirname
+                substituted_filename = substituted_filename.split('.')[0]
+
+        return substituted_filename
+
+    def get_substituted_filename(self, first_line):
+        """
+        If a filename contains a name substitution, return the name to
+        substitute.  Note that this is just the filename and doesn't
+        include the path.
+        """
+        return self.get_substituted_file_or_dir_name(first_line, FILENAME_TAG)
+
+    def get_substituted_dirname(self, first_line):
+        """
+        If a dirname contains a name substitution, return the name to
+        substitute.  Note that this is just the dirname and doesn't
+        include the path.
+        """
+        return self.get_substituted_file_or_dir_name(first_line, DIRNAME_TAG)
+
+    def substitute_filename(self, first_line):
+        """
+        Find the filename in first_line and append it to translated_filename.
+        """
+        substituted_filename = self.get_substituted_filename(first_line)
+        self.append_translated_filename(substituted_filename);
+
+    def substitute_dirname(self, first_line):
+        """
+        Find the dirname in first_line and append it to translated_filename.
+        """
+        substituted_dirname = self.get_substituted_dirname(first_line)
+        self.append_translated_filename(substituted_dirname);
+
+    def is_filename_substitution(self, line):
+        """
+        Do we have a filename subustition?
+        """
+        if line.find(FILENAME_TAG) != -1:
+            return True
+        return False
+
+    def is_dirname_substitution(self, line):
+        """
+        Do we have a dirname subustition?
+        """
+        if line.find(DIRNAME_TAG) != -1:
+            return True
+        return False
+
+    def translate_dirname(self, first_line):
+        """
+        Just save the first_line mapped by filename.  The later pass
+        through the directories will look for a dirname.noinstall
+        match and grab the substitution line.
+        """
+        dirname_substitutions[self.filename] = first_line
+
+    def translate_dirnames_in_path(self, path):
+        """
+        Translate dirnames below this file or dir, not including tail.
+        dirname_substititions is keyed on actual untranslated filenames.
+        translated_path contains the subsititutions for each element.
+        """
+        remainder = path[len(self.filebase)+1:]
+        translated_path = untranslated_path = self.filebase
+
+        untranslated_dirs = remainder.split(os.sep)
+
+        for dir in untranslated_dirs:
+            key = os.path.join(untranslated_path, dir + '.noinstall')
+            try:
+                first_line = dirname_substitutions[key]
+            except KeyError:
+                translated_path = os.path.join(translated_path, dir)
+                untranslated_path = os.path.join(untranslated_path, dir)
+                continue
+            substituted_dir = self.get_substituted_dirname(first_line)
+            translated_path = os.path.join(translated_path, substituted_dir)
+            untranslated_path = os.path.join(untranslated_path, dir)
+
+        return translated_path
+
+    def translate_file_or_dir_name(self):
+        """
+        Originally we were allowed to use open/close/assign tags and python
+        code in the filename, which fit in nicely with the way we
+        processed the templates and generated code.  Now that we can't
+        do that, we make those tags proper file contents and have this
+        pass substitute the nice but non-functional names with those
+        'strange' ones, and then proceed as usual.
+
+        So, if files or matching dir<.noinstall> files contain
+        filename substitutions, this function translates them into the
+        corresponding 'strange' names, which future passes will expand
+        as they always have.  The resulting pathname is kept in the
+        file or directory's translated_filename.  Another way to think
+        about it is that self.filename is the input filename, and
+        translated_filename is the output filename before expansion.
+        """
+        # remove leaf file or dirname
+        head, tail = os.path.split(self.filename)
+        translated_path = self.translate_dirnames_in_path(head)
+        self.translated_filename = translated_path
+
+        # This is a dirname - does it have a matching .noinstall with
+        # a substitution?  If so, apply the dirname subsititution.
+        if not os.path.isfile(self.filename):
+            key = self.filename + ".noinstall"
+            try:
+                first_line = dirname_substitutions[key]
+            except KeyError:
+                self.append_translated_filename(tail)
+                return
+            self.substitute_dirname(first_line)
+            return
+
+        f = open(self.filename)
+        first_line = f.readline()
+        f.close()
+
+        # This is a normal filename not needing translation, just use
+        # it as-is.
+        if not first_line or not first_line.startswith("#"):
+            self.append_translated_filename(tail)
+            return
+
+        # If we have a filename substitution (first line in the file
+        # is a FILENAME_TAG line) do the substitution now.  If we have
+        # a dirname substitution (DIRNAME_TAG in dirname.noinstall
+        # meta-file), hash it so we can apply it when we see the
+        # matching dirname later.  Otherwise we have a regular
+        # filename, just use it as-is.
+        if self.is_filename_substitution(first_line):
+            self.substitute_filename(first_line)
+        elif self.is_dirname_substitution(first_line):
+            self.translate_dirname(first_line)
+        else:
+            self.append_translated_filename(tail)
+
     def expand_file_or_dir_name(self):
         """
         Expand file or dir names into codeline.  Dirnames and
@@ -878,7 +1042,7 @@ class SubstrateBase(object):
         """
         lineno = 0
 
-        line = self.filename[len(self.filebase):]
+        line = self.translated_filename[len(self.filebase):]
         if line.startswith("/"):
             line = line[1:]
         opentag_start = -1
@@ -897,7 +1061,6 @@ class SubstrateBase(object):
                 self.parse_error("No close tag found for open tag", lineno, line)
             # we have a {{ tag i.e. code
             tag = line[opentag_start + len(OPEN_TAG):end].strip()
-
             if not tag.lstrip().startswith(IF_TAG):
                 self.parse_error("Only 'if' tags are allowed in file or directory names",
                                  lineno, line)
@@ -933,6 +1096,7 @@ class SubstrateBase(object):
         Expand the file or dir name first, eventually this ends up
         creating the file or dir.
         """
+        self.translate_file_or_dir_name()
         self.expand_file_or_dir_name()
 
 
@@ -955,6 +1119,9 @@ class SubstrateFile(SubstrateBase):
         self.read()
 
         for lineno, line in enumerate(self.raw_lines):
+            # only first line can be a filename substitition
+            if lineno == 0 and line.startswith("#") and FILENAME_TAG in line:
+                continue # skip it - we've already expanded it
             expanded_line = self.expand_tag(line, lineno + 1) # humans not 0-based
             if not expanded_line:
                 expanded_line = NormalLine(line.rstrip())
@@ -1141,7 +1308,7 @@ def gather_inputlines(files):
     for file in files:
         if isinstance(file, SubstrateFile):
             group = None
-            basename = os.path.basename(file.filename)
+            basename = os.path.basename(file.translated_filename)
 
             codeline = conditional_filename(basename)
             if codeline:
diff --git a/scripts/lib/bsp/tags.py b/scripts/lib/bsp/tags.py
index 6d5feb0..3719427 100644
--- a/scripts/lib/bsp/tags.py
+++ b/scripts/lib/bsp/tags.py
@@ -25,11 +25,13 @@
 # Tom Zanussi <tom.zanussi (at] intel.com>
 #
 
-OPEN_TAG =    "{{"
-CLOSE_TAG =   "}}"
-ASSIGN_TAG =  "{{="
-INPUT_TAG =   "input"
-IF_TAG =      "if"
+OPEN_TAG =     "{{"
+CLOSE_TAG =    "}}"
+ASSIGN_TAG =   "{{="
+INPUT_TAG =    "input"
+IF_TAG =       "if"
+FILENAME_TAG = "yocto-bsp-filename"
+DIRNAME_TAG =  "yocto-bsp-dirname"
 
 INDENT_STR =  "    "
 
-- 
1.9.3


