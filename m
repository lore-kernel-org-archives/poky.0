Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB3554C80A70
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:32:59 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so148820gya.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=KcIZtEi8mXmDIxZtH7xqcyU/1k3FWEFP+6SfkSTbdGo=;
	b=UDR9bKstw08jOhz3PizZa3GlhmIKo4DjktwgwXNwYny3I/9XDB8I4rKbxe9DuLDlFV
	bM/PxiVXkTjJZmS9Lp4PvuzVwCGJ3WrdcaFjCHfBbE6uswHHiWmt52DLv7t8dQxHwNvB
	w2qa2vx+1LFAg/aoTcxzLmg/nUAiZv3IlwcMs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=g4w10OTpQQ9qjZw4i3d+e2mYQyI+pBlDFq3u24gm9UGSp8ex0wcfWWQ499EIhpGpGN
	ItB7af1OTJz3T14Ky+eLQ/xhHG3bBkSIOlMyOilT3tam3FWzdmp0zTQT3rZKcy7F5D9P
	atBSSQCl6XgTuKDYVt8Q1OsOmFo8dzyeBVmYw=
Received: by 10.150.47.2 with SMTP id u2mr582031ybu.340.1302010379507;
	Tue, 05 Apr 2011 06:32:59 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id t16sm2684703ybe.4.2011.04.05.06.32.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:32:58 -0700 (PDT)
Message-Id: <3532e3a5b5363a80d2f8729c5b4b8bdef890d2c4.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 13:56:48 -0500
Date: Tue, 05 Apr 2011 06:32:58 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 06/16] documentation/poky-ref-manual/ref-bitbake.xml: removed 'varname' style
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
X-List-Received-Date: Tue, 05 Apr 2011 13:32:59 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I replaced varname style with filename style.  Looks better.  We have
too many styles.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 1a98b04..8076066 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -34,7 +34,7 @@
         <para>
             The first thing BitBake does is look for the <filename>bitbake.conf</filename> file.
             Poky keeps this file in <filename class="directory">meta/conf/</filename>.
-            BitBake finds it by examining the <varname>BBPATH</varname> environment 
+            BitBake finds it by examining the <filename>BBPATH</filename> environment 
             variable and looking for the <filename class="directory">meta/conf/</filename> 
             directory.
         </para>
@@ -42,7 +42,7 @@
         <para>
             In Poky, <filename>bitbake.conf</filename> lists other configuration 
             files to include from a <filename class="directory">conf/</filename> 
-            directory below the directories listed in <varname>BBPATH</varname>. 
+            directory below the directories listed in <filename>BBPATH</filename>. 
             In general the most important configuration file from a user's perspective 
             is <filename>local.conf</filename>, which contains a user's customized 
             settings for Poky. 
@@ -70,7 +70,7 @@
             <glossterm><link linkend='var-INHERIT'>INHERIT</link></glossterm>
             variable are also inculded. 
             Class files are searched for in a classes subdirectory 
-            under the paths in <varname>BBPATH</varname> in the same way as
+            under the paths in <filename>BBPATH</filename> in the same way as
             configuration files.
         </para>
 
-- 
1.7.0.4


