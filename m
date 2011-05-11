Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B89D04C80FEC
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:45 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="745544798"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 23:29:45 -0700
Message-Id: <34e1d77039ec52fa3e027269e02537ecd25be6de.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:25:49 +0800
Date: Wed, 11 May 2011 14:27:09 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 19/24] oprofile: update its patch's Upstream-Status and remove an unused patch
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
X-List-Received-Date: Wed, 11 May 2011 06:29:46 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

delete xml_callgraph_details.patch as it's not used at all.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../recipes-kernel/oprofile/oprofile/opstart.patch |    2 +
 .../oprofile/oprofile/xml_callgraph_details.patch  |  232 --------------------
 2 files changed, 2 insertions(+), 232 deletions(-)
 delete mode 100644 meta/recipes-kernel/oprofile/oprofile/xml_callgraph_details.patch

diff --git a/meta/recipes-kernel/oprofile/oprofile/opstart.patch b/meta/recipes-kernel/oprofile/oprofile/opstart.patch
index d61c300..c588deb 100644
--- a/meta/recipes-kernel/oprofile/oprofile/opstart.patch
+++ b/meta/recipes-kernel/oprofile/oprofile/opstart.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: oprofile/utils/Makefile.am
 ===================================================================
 --- oprofile.orig/utils/Makefile.am	2005-03-31 18:20:41.000000000 +0100
diff --git a/meta/recipes-kernel/oprofile/oprofile/xml_callgraph_details.patch b/meta/recipes-kernel/oprofile/oprofile/xml_callgraph_details.patch
deleted file mode 100644
index e5ab3d9..0000000
--- a/meta/recipes-kernel/oprofile/oprofile/xml_callgraph_details.patch
+++ /dev/null
@@ -1,232 +0,0 @@
-Work in Progress- This patch breaks output_symbol_bytes
----
- ChangeLog                     |    9 +++++++++
- libpp/callgraph_container.cpp |   10 ++++++++--
- libpp/callgraph_container.h   |   14 ++++++++++----
- libpp/format_output.cpp       |   30 +++++++++++++++++++++++++-----
- libpp/format_output.h         |    6 +++---
- pp/opreport.cpp               |    5 +++--
- pp/opreport_options.cpp       |    4 ++--
- 7 files changed, 60 insertions(+), 18 deletions(-)
-
-Index: oprofile1/pp/opreport.cpp
-===================================================================
---- oprofile1.orig/pp/opreport.cpp	2007-05-24 15:32:20.000000000 +0100
-+++ oprofile1/pp/opreport.cpp	2007-05-24 20:07:14.000000000 +0100
-@@ -555,10 +555,11 @@ int opreport(options::spec const & spec)
- 
- 		output_diff_symbols(pc1, pc2, multiple_apps);
- 	} else if (options::callgraph) {
--		callgraph_container cg_container;
-+		callgraph_container cg_container(options::debug_info,
-+						 options::details);
- 		cg_container.populate(options::archive_path, iprofiles,
- 			options::extra_found_images,
--			options::debug_info, options::threshold,
-+			options::threshold,
- 			options::merge_by.lib, options::symbol_filter);
- 
- 		output_cg_symbols(cg_container, multiple_apps);
-Index: oprofile1/ChangeLog
-===================================================================
---- oprofile1.orig/ChangeLog	2007-05-24 18:30:47.000000000 +0100
-+++ oprofile1/ChangeLog	2007-05-24 20:07:14.000000000 +0100
-@@ -1,5 +1,14 @@
- 2007-05-24  Richard Purdie  <rpurdie@openedhand.com>
- 
-+	* libpp/callgraph_container.cpp:
-+	* libpp/callgraph_container.h:
-+	* libpp/format_output.cpp:
-+	* libpp/format_output.h:
-+	* pp/opreport.cpp:
-+	* pp/opreport_options.cpp: Add callgraph XML detail support
-+
-+2007-05-24  Richard Purdie  <rpurdie@openedhand.com>
-+
- 	* events/arm/xscale1/events:
- 	* events/arm/xscale2/events: Add extra Xscale PMU event definitions
- 
-Index: oprofile1/libpp/callgraph_container.cpp
-===================================================================
---- oprofile1.orig/libpp/callgraph_container.cpp	2007-05-24 15:32:20.000000000 +0100
-+++ oprofile1/libpp/callgraph_container.cpp	2007-05-24 20:07:14.000000000 +0100
-@@ -391,15 +391,21 @@ const symbol_collection & arc_recorder::
- 	return cg_syms;
- }
- 
-+callgraph_container::callgraph_container(bool debug_info, bool need_details)
-+	:
-+	pc(debug_info, need_details),
-+	debug_info(debug_info)
-+{
-+}
-+
- 
- void callgraph_container::populate(string const & archive_path, 
-    list<inverted_profile> const & iprofiles,
--   extra_images const & extra, bool debug_info, double threshold,
-+   extra_images const & extra, double threshold,
-    bool merge_lib, string_filter const & sym_filter)
- {
- 	// non callgraph samples container, we record sample at symbol level
- 	// not at vma level.
--	profile_container pc(debug_info, false);
- 
- 	list<inverted_profile>::const_iterator it;
- 	list<inverted_profile>::const_iterator const end = iprofiles.end();
-Index: oprofile1/libpp/callgraph_container.h
-===================================================================
---- oprofile1.orig/libpp/callgraph_container.h	2007-05-24 15:32:20.000000000 +0100
-+++ oprofile1/libpp/callgraph_container.h	2007-05-24 20:07:14.000000000 +0100
-@@ -19,8 +19,8 @@
- #include "symbol.h"
- #include "symbol_functors.h"
- #include "string_filter.h"
-+#include "profile_container.h"
- 
--class profile_container;
- class inverted_profile;
- class profile_t;
- class extra_images;
-@@ -103,6 +103,8 @@ private:
-  */
- class callgraph_container {
- public:
-+	callgraph_container(bool debug_info, bool need_details);
-+
- 	/**
- 	 * Populate the container, must be called once only.
- 	 * @param archive_path  oparchive prefix path
-@@ -118,9 +120,8 @@ public:
- 	 */
- 	void populate(std::string const & archive_path,
- 		      std::list<inverted_profile> const & iprofiles,
--		      extra_images const & extra, bool debug_info,
--		      double threshold, bool merge_lib,
--		      string_filter const & sym_filter);
-+		      extra_images const & extra, double threshold,
-+		      bool merge_lib, string_filter const & sym_filter);
- 
- 	/// return hint on how data must be displayed.
- 	column_flags output_hint() const;
-@@ -131,6 +132,9 @@ public:
- 	// return all the cg symbols
- 	const symbol_collection & get_symbols() const;
- 
-+	// profile container callgraph is based on
-+	profile_container pc;
-+
- private:
- 	/**
- 	 * Record caller/callee for one cg file
-@@ -162,6 +166,8 @@ private:
- 		      profile_container const & pc, bool debug_info,
- 		      bool merge_lib);
- 
-+	bool debug_info;
-+
- 	/// record all main symbols
- 	void add_symbols(profile_container const & pc);
- 
-Index: oprofile1/pp/opreport_options.cpp
-===================================================================
---- oprofile1.orig/pp/opreport_options.cpp	2007-05-24 15:32:20.000000000 +0100
-+++ oprofile1/pp/opreport_options.cpp	2007-05-24 20:07:14.000000000 +0100
-@@ -165,8 +165,8 @@ void check_options(bool diff)
- 
- 	if (callgraph) {
- 		symbols = true;
--		if (details) {
--			cerr << "--callgraph is incompatible with --details" << endl;
-+		if (details && !xml) {
-+			cerr << "--callgraph is incompatible with --details without --xml" << endl;
- 			do_exit = true;
- 		}
- 
-Index: oprofile1/libpp/format_output.cpp
-===================================================================
---- oprofile1.orig/libpp/format_output.cpp	2007-05-24 15:32:20.000000000 +0100
-+++ oprofile1/libpp/format_output.cpp	2007-05-24 20:07:14.000000000 +0100
-@@ -594,9 +594,9 @@ xml_formatter::
- xml_formatter(profile_container const * p,
- 		symbol_collection & s)
- 	:
-+	need_details(false),
- 	profile(p),
--	symbols(s),
--	need_details(false)
-+	symbols(s)
- {
- 	if (profile)
- 		counts.total = profile->samples_count();
-@@ -673,8 +673,8 @@ void xml_formatter::output_symbol_data(o
- 			if (name.size() > 0 && name[0] != '?') {
- 				output_attribute(out, datum, ff_vma, STARTING_ADDR);
- 
--				if (need_details)
--					xml_support->output_symbol_bytes(bytes_out, symb, sd_it->second);
-+				//if (need_details)
-+				//	xml_support->output_symbol_bytes(bytes_out, symb, sd_it->second);
- 			}
- 			out << close_element();
- 
-@@ -843,7 +843,7 @@ output_attribute(ostream & out, field_da
- xml_cg_formatter::
- xml_cg_formatter(callgraph_container const * cg, symbol_collection & s)
- 	:
--	xml_formatter(0, s),
-+	xml_formatter(&cg->pc, s),
- 	callgraph(cg)
- {
- 	counts.total = callgraph->samples_count();
-@@ -946,6 +946,26 @@ output_symbol(ostream & out,
- 
- 	out << init_attr(ID_REF, indx);
- 
-+	if (need_details) {
-+		ostringstream details;
-+		symbol_details_t & sd = symbol_details[indx];
-+		size_t const detail_lo = sd.index;
-+
-+		string detail_str = output_symbol_details(symb, sd.index, lo, hi);
-+
-+		if (detail_str.size() > 0) {
-+			if (sd.id < 0)
-+				sd.id = indx;
-+			details << detail_str;
-+		}
-+
-+		if (sd.index > detail_lo) {
-+			sd.details = sd.details + details.str();
-+			out << init_attr(DETAIL_LO, detail_lo);
-+			out << init_attr(DETAIL_HI, sd.index-1);
-+		}
-+	}
-+
- 	out << close_element(NONE, true);
- 
- 	out << open_element(CALLERS);
-Index: oprofile1/libpp/format_output.h
-===================================================================
---- oprofile1.orig/libpp/format_output.h	2007-05-24 15:32:20.000000000 +0100
-+++ oprofile1/libpp/format_output.h	2007-05-24 20:07:14.000000000 +0100
-@@ -249,6 +249,9 @@ public:
- 	// output SymbolData XML elements
- 	void output_symbol_data(std::ostream & out);
- 
-+	/// true if we need to show details for each symbols
-+	bool need_details;
-+
- private:
- 	/// container we work from
- 	profile_container const * profile;
-@@ -256,9 +259,6 @@ private:
- 	// ordered collection of symbols associated with this profile
- 	symbol_collection & symbols;
- 
--	/// true if we need to show details for each symbols
--	bool need_details;
--
- 	// count of DetailData items output so far
- 	size_t detail_count;
- 
-- 
1.7.2


