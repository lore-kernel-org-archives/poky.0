Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29A084C800A6
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:31:03 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 10:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="898738008"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 10:31:02 -0700
Message-Id: <2ffa6bac1c3756ab36cd11e4b144a44e73881a77.1300469401.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300469401.git.scott.m.rifenbark@intel.com>
References: <cover.1300469401.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 16 Mar 2011 11:03:08 -0600
Date: Fri, 18 Mar 2011 11:31:55 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/6] documentation/yocto-project-qs/style.css: Updated styles
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
X-List-Received-Date: Fri, 18 Mar 2011 17:31:03 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I updated the style sheet to use Yocto blue for the headings and got
rid of the green tip and note stuff.  This style matches the other
style sheet now.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/yocto-project-qs/style.css |   22 ++++++++++++++--------
 1 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/documentation/yocto-project-qs/style.css b/documentation/yocto-project-qs/style.css
index 2abfa7b..8b0c034 100644
--- a/documentation/yocto-project-qs/style.css
+++ b/documentation/yocto-project-qs/style.css
@@ -50,9 +50,13 @@ body {
   color: #333;
 }
 
+.reviewer {
+  color: red;
+}
+
 h1,h2,h3,h4,h5,h6,h7 {
   font-family: Arial, Sans;
-  color:#999999;
+  color: #00557D;
   clear: both;
 }
 
@@ -76,7 +80,7 @@ h2 {
   margin: 2em 0em 0.66em 0em;
   padding: 0.5em 0em 0em 0em;
   font-size: 1.5em;
-  font-weight: normal;
+  font-weight: bold;
 }
 
 h3.subtitle {
@@ -90,28 +94,28 @@ h3 {
   margin: 1em 0em 0.5em 0em;
   padding: 1em 0em 0em 0em;
   font-size: 140%;
-  font-weight: normal;
+  font-weight: bold;
 }
 
 h4 {
   margin: 1em 0em 0.5em 0em;
   padding: 1em 0em 0em 0em;
   font-size: 120%;
-  font-weight: normal;
+  font-weight: bold;
 }
 
 h5 {
   margin: 1em 0em 0.5em 0em;
   padding: 1em 0em 0em 0em;
-  font-size: 110.000%;
-  border-bottom: 1px solid black;
+  font-size: 110%;
+  font-weight: bold;
 }
 
 h6 {
   margin: 1em 0em 0em 0em;
   padding: 1em 0em 0em 0em;
   font-size: 80%;
-  font-weight: normal;
+  font-weight: bold;
 }
 
 .authorgroup {
@@ -132,6 +136,7 @@ h3.author {
   padding: 0em 0em 0em 0em;
   font-weight: normal;
   font-size: 100%;
+  color: #333;
   clear: both;
 }
 
@@ -154,6 +159,7 @@ h3.author {
 .list-of-examples,
 .list-of-figures {
   padding: 1.33em 0em 2.5em 0em;
+  color: #00557D;
 }
 
 .toc p,
@@ -941,7 +947,7 @@ table {
 
 .tip,
 .note {
-   background: #91ae35;
+   background: #666666;
    color: #fff;   
    padding: 20px;
    margin: 20px;
-- 
1.7.1


