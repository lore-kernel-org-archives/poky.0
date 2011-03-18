Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C95E34C80AB4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:58:54 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Mar 2011 09:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="404782163"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by azsmga001.ch.intel.com with ESMTP; 18 Mar 2011 09:58:50 -0700
Message-Id: <e00a2cad9a642d219a350180fcdd04202272e24a.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 08:32:48 -0600
Date: Fri, 18 Mar 2011 10:59:43 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 04/15] documentation/poky-ref-manual/style.css: Updated to match other manuals
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
X-List-Received-Date: Fri, 18 Mar 2011 16:58:55 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I have updated some styles so that the GIT manuals are looking more
consistent and have better color schemes for the section headings.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/style.css |   22 ++++++++++++++--------
 1 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/documentation/poky-ref-manual/style.css b/documentation/poky-ref-manual/style.css
index 3564aff..138d485 100644
--- a/documentation/poky-ref-manual/style.css
+++ b/documentation/poky-ref-manual/style.css
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


