Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2A534C80889
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:42 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yx0-f176.google.com with SMTP id 5so1427403yxd.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=v9M26yZw/yAXUF3XsBTmSV34P5F0pUUrpKaJjAqbki0=;
	b=JREBYWxN7Ybkz62uU2q2OK4nTmWkczQxzfwR7TZ9RTP6oorbK2DQ5+ulkZ4TUp8xoA
	5VxRXilAXCayM8S2afMRJdwH6lmUm9psC3lkDnhxdwxkQcTMpO+oAJK8Ccjgg6A59qBx
	CHGISXuKMVyEV9d2pdPh5MXvcJ5sYLS8u88lU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=QICFc03Qu+UaiWSrFrhirX8TDX1rNua3w0jNR2ftwIgeNoTz56ghAu7+gMmMVCy8pc
	uvf5qok3QGMOBczgSsMAqy2pAuoGxmjykrsFAVNEObmkfFIUVRWK1zxYPcR5qqB2X0Gz
	E+DKZd+M5aqjm5JCM66kvT0woC7gTaQdqx+d0=
Received: by 10.150.210.1 with SMTP id i1mr3180288ybg.120.1301596302647;
	Thu, 31 Mar 2011 11:31:42 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id b1sm418385ybn.16.2011.03.31.11.31.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:41 -0700 (PDT)
Message-Id: <c076291714b74d48bc6d8a232697f30b5e6e9ddd.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:22:10 -0500
Date: Thu, 31 Mar 2011 13:31:37 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 6/8] documentation/yocto-project-qs/style.css: Updates for PDF generation
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:42 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The .authorgroup style needed to be updated to use the new title
image PNG file.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/yocto-project-qs/style.css |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/yocto-project-qs/style.css b/documentation/yocto-project-qs/style.css
index 21caf85..abc6203 100644
--- a/documentation/yocto-project-qs/style.css
+++ b/documentation/yocto-project-qs/style.css
@@ -122,13 +122,13 @@ h6 {
   background-color: transparent;
   background-repeat: no-repeat;
   padding-top: 256px;
-  background-image: url("../figures/yocto-project-bw.png");
-  background-position: top;
+  background-image: url("figures/ypqs-title.png");
+  background-position: left top;
   margin-top: -256px;
   padding-right: 50px;
-  margin-left: 50px;
-  text-align: center;
-  width: 600px;
+  margin-left: 0px;
+  text-align: right;
+  width: 740px;
 }
 
 h3.author {
-- 
1.7.0.4


