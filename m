Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF9224C80AB0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 07:54:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Mar 2011 05:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="898650581"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 05:54:41 -0700
Message-Id: <d7537e10154bad74a05964e0a9003eed4f329033.1300452791.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300452791.git.scott.m.rifenbark@intel.com>
References: <cover.1300452791.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 13:25:03 -0600
Date: Fri, 18 Mar 2011  6:55:34 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 3/4] documentation/bsp-guide/style.css: Updated Style Sheet
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
X-List-Received-Date: Fri, 18 Mar 2011 12:54:42 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I updated the HTML style sheet to match that of the other online
manuals.  Section heads are now in Yocto blue and tip box
color is inline with Yocto color schemes.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/style.css |   24 +++++++++++++++---------
 1 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/documentation/bsp-guide/style.css b/documentation/bsp-guide/style.css
index c5c8f58..9d068a0 100644
--- a/documentation/bsp-guide/style.css
+++ b/documentation/bsp-guide/style.css
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
@@ -124,7 +128,7 @@ h6 {
   padding-right: 50px;
   margin-left: 0px;
   text-align: right;
-  width: 700px;
+  width: 740px;
 }
 
 h3.author {
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
@@ -930,7 +936,7 @@ table {
 
 .tip,
 .note {
-   background: #91ae35;
+   background: #666666;
    color: #fff;   
    padding: 20px;
    margin: 20px;
-- 
1.7.1


