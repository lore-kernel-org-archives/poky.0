Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99A2D4C811E8
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 10:46:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Dec 2010 08:46:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="360961093"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 08:46:44 -0800
Message-Id: <9d7a01adc82d2db42d1808edac50750e7dc25108.1292258655.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1292258655.git.nitin.a.kamble@intel.com>
References: <cover.1292258655.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Tue, 7 Dec 2010 08:49:26 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/6] patch-2.6.1: implement new patch recipe with latest upstream
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
X-List-Received-Date: Mon, 13 Dec 2010 16:46:46 -0000

This commit patch recipe based on latest upstream code. This is GPLv3
code based. Hence the earlier patch-2.5.9 recipe is left intact for
GPLv2 needs.

Patches from 2.5.9 patch recipe are rebased to this new recipe except
these exceptions:

unified-reject-files.diff: dropped
  This patch implements this new parameter:
     "  --unified-reject-files  Create unified reject files."
  And upstream has implemented very similar parameter like this:
     "  --reject-format=FORMAT  Create 'context' or 'unified' rejects."
  Hence this patch is dropped for the 2.6.1 recipe.

global-reject-file.diff: rebased
  This patch is rebased to the newer upstream codebase.

install.patch: dropped
  Newer upstream code now includes code form this patch.

debian.patch: dropped
  This huge (10k lines) patch was specific for 2.5.9 version of GPLv2 patch.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../patch/patch-2.6.1/global-reject-file.diff      |  186 ++++++++++++++++++++
 meta/recipes-devtools/patch/patch_2.6.1.bb         |   14 ++
 2 files changed, 200 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/patch/patch-2.6.1/global-reject-file.diff
 create mode 100644 meta/recipes-devtools/patch/patch_2.6.1.bb

diff --git a/meta/recipes-devtools/patch/patch-2.6.1/global-reject-file.diff b/meta/recipes-devtools/patch/patch-2.6.1/global-reject-file.diff
new file mode 100644
index 0000000..cd3a600
--- /dev/null
+++ b/meta/recipes-devtools/patch/patch-2.6.1/global-reject-file.diff
@@ -0,0 +1,186 @@
+Index: patch-2.6.1/patch.man
+===================================================================
+--- patch-2.6.1.orig/patch.man
++++ patch-2.6.1/patch.man
+@@ -557,6 +557,15 @@ instead of the default
+ .B \&.rej
+ file.  When \fIrejectfile\fP is \fB\-\fP, discard rejects.
+ .TP
++.BI \*=global\-reject\-file= rejectfile
++Put all rejects into
++.I rejectfile
++instead of creating separate reject files for all files that have rejects. The
++.I rejectfile
++will contain headers that identify which file each reject refers to. Note that
++the global reject file is created even if \-\-dry\-run is specified (while
++non-global reject files will only be created without \-\-dry\-run).
++.TP
+ \fB\-R\fP  or  \fB\*=reverse\fP
+ Assume that this patch was created with the old and new files swapped.
+ (Yes, I'm afraid that does happen occasionally, human nature being what it
+Index: patch-2.6.1/src/patch.c
+===================================================================
+--- patch-2.6.1.orig/src/patch.c
++++ patch-2.6.1/src/patch.c
+@@ -52,6 +52,7 @@ static void reinitialize_almost_everythi
+ static void remove_if_needed (char const *, int volatile *);
+ static void usage (FILE *, int) __attribute__((noreturn));
+ 
++static void reject_header (const char *filename);
+ static void abort_hunk (bool, bool);
+ static void abort_hunk_context (bool, bool);
+ static void abort_hunk_unified (bool, bool);
+@@ -83,6 +84,7 @@ static int Argc;
+ static char * const *Argv;
+ 
+ static FILE *rejfp;  /* reject file pointer */
++static char *global_reject;
+ 
+ static char const *patchname;
+ static char *rejname;
+@@ -159,6 +161,10 @@ main (int argc, char **argv)
+     /* Make sure we clean up in case of disaster.  */
+     set_signals (false);
+ 
++    /* initialize global reject file */
++    if (global_reject)
++      init_reject ();
++
+     if (inname && outfile)
+       {
+ 	apply_empty_patch = true;
+@@ -205,8 +211,9 @@ main (int argc, char **argv)
+ 	    init_output (TMPOUTNAME, exclusive, &outstate);
+ 	  }
+ 
+-	/* initialize reject file */
+-	init_reject ();
++	/* initialize per-patch reject file */
++	if (!global_reject)
++	  init_reject ();
+ 
+ 	/* find out where all the lines are */
+ 	if (!skip_rest_of_patch)
+@@ -295,6 +302,8 @@ main (int argc, char **argv)
+ 			|| ! where
+ 			|| ! apply_hunk (&outstate, where))))
+ 	      {
++		if (!failed)
++		  reject_header(outname);
+ 		abort_hunk (! failed, reverse);
+ 		failed++;
+ 		if (verbosity == VERBOSE ||
+@@ -331,7 +340,8 @@ main (int argc, char **argv)
+ 		    fclose (outstate.ofp);
+ 		    outstate.ofp = 0;
+ 		  }
+-		fclose (rejfp);
++		if (!global_reject)
++		  fclose (rejfp);
+ 		continue;
+ 	      }
+ 
+@@ -430,13 +440,13 @@ main (int argc, char **argv)
+ 	struct stat rejst;
+ 
+ 	if ((failed && fstat (fileno (rejfp), &rejst) != 0)
+-	    || fclose (rejfp) != 0)
++	    || (( !global_reject && fclose (rejfp) != 0)))
+ 	    write_fatal ();
+ 	if (failed) {
+ 	    somefailed = true;
+ 	    say ("%d out of %d hunk%s %s", failed, hunk, "s" + (hunk == 1),
+ 		 skip_rest_of_patch ? "ignored" : "FAILED");
+-	    if (outname && (! rejname || strcmp (rejname, "-") != 0)) {
++	    if (!global_reject && outname && (! rejname || strcmp (rejname, "-") != 0)) {
+ 		char *rej = rejname;
+ 		if (!rejname) {
+ 		    /* FIXME: This should really be done differnely!  */
+@@ -485,6 +495,23 @@ main (int argc, char **argv)
+       }
+       set_signals (true);
+     }
++    if (global_reject)
++      {
++	struct stat rejst;
++
++	if ((somefailed && fstat (fileno (rejfp), &rejst) != 0)
++	    || fclose (rejfp) != 0)
++	  write_fatal ();
++	if (somefailed)
++	  {
++	  say (" -- saving rejects to file %s\n", quotearg (global_reject));
++	  /*if (! dry_run)
++	    {*/
++	      move_file (TMPREJNAME, &TMPREJNAME_needs_removal,
++			 &rejst, global_reject, 0644, false);
++	    /*}*/
++	  }
++      }
+     if (outstate.ofp && (ferror (outstate.ofp) || fclose (outstate.ofp) != 0))
+       write_fatal ();
+     cleanup ();
+@@ -572,6 +599,7 @@ static struct option const longopts[] =
+   {"posix", no_argument, NULL, CHAR_MAX + 7},
+   {"quoting-style", required_argument, NULL, CHAR_MAX + 8},
+   {"reject-format", required_argument, NULL, CHAR_MAX + 9},
++  {"global-reject-file", required_argument, NULL, CHAR_MAX + 10},
+   {NULL, no_argument, NULL, 0}
+ };
+ 
+@@ -636,6 +664,7 @@ static char const *const option_help[] =
+ "",
+ "  -d DIR  --directory=DIR  Change the working directory to DIR first.",
+ "  --reject-format=FORMAT  Create 'context' or 'unified' rejects.",
++"  --global-reject-file=file  Put all rejects into one file.",
+ "  --binary  Read and write data in binary mode.",
+ "",
+ "  -v  --version  Output version info.",
+@@ -852,6 +881,9 @@ get_some_switches (void)
+ 		else
+ 		  usage (stderr, 2);
+ 		break;
++	    case CHAR_MAX + 10:
++		global_reject = savestr (optarg);
++		break;
+ 	    default:
+ 		usage (stderr, 2);
+ 	}
+@@ -1512,6 +1544,37 @@ similar (register char const *a, registe
+     }
+ }
+ 
++ static char *
++format_timestamp (char timebuf[37], bool which)
++{
++  time_t ts = pch_timestamp(which);
++  if (ts != -1)
++    {
++      struct tm *tm = localtime(&ts);
++      strftime(timebuf, 37, "\t%Y-%m-%d %H:%M:%S.000000000 %z", tm);
++    }
++  else
++    timebuf[0] = 0;
++  return timebuf;
++}
++
++/* Write a header in a reject file that combines multiple hunks. */
++static void
++reject_header (const char *outname)
++{
++    char timebuf0[37], timebuf1[37];
++    if (!global_reject)
++      return;
++    if (diff_type == UNI_DIFF)
++	fprintf(rejfp, "--- %s.orig%s\n+++ %s%s\n",
++		outname, format_timestamp(timebuf0, reverse),
++		outname, format_timestamp(timebuf1, !reverse));
++    else
++	fprintf(rejfp, "*** %s.orig%s\n--- %s%s\n",
++		outname, format_timestamp(timebuf0, reverse),
++		outname, format_timestamp(timebuf1, !reverse));
++}
++
+ /* Make a temporary file.  */
+ 
+ #if HAVE_MKTEMP && ! HAVE_DECL_MKTEMP && ! defined mktemp
diff --git a/meta/recipes-devtools/patch/patch_2.6.1.bb b/meta/recipes-devtools/patch/patch_2.6.1.bb
new file mode 100644
index 0000000..8d07a78
--- /dev/null
+++ b/meta/recipes-devtools/patch/patch_2.6.1.bb
@@ -0,0 +1,14 @@
+require patch.inc
+LICENSE = "GPLv3"
+
+PR = "r0"
+
+SRC_URI += " file://global-reject-file.diff;patch=1 "
+
+SRC_URI[md5sum] = "d758eb96d3f75047efc004a720d33daf"
+SRC_URI[sha256sum] = "ecb5c6469d732bcf01d6ec1afe9e64f1668caba5bfdb103c28d7f537ba3cdb8a"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+acpaths = "-I ${S}/gl/m4 -I ${S}/m4 "
+
-- 
1.7.2.2


