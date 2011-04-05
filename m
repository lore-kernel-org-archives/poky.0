Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7052E4C80AB1
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:20:59 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so347991gxk.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=KcIZtEi8mXmDIxZtH7xqcyU/1k3FWEFP+6SfkSTbdGo=;
	b=Cg9SZsEI5/9xqry5nwJQdy57qE8pC5QlqSu6Ty4hd1ssrHZBYf222n0Ho6qBctWtW6
	QL7EJ760p32abHwYiGPU4XPGmBVB8K1CBQtKlCIxEI0NZoeQrljPcHbMFXh4vBs2Cpfo
	hrLIriKTNGjRW8L10aj4q2hjS+YHmBiSulbcc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=bvG8KRGjtoeYKC+5iCm0G8xqv5zy86siSEPOMZ5mA9RBJ14TyBgiyFSHTBBeePfr2B
	VHCz8hjioS96QlWJ5k8Q7/D3G9WEZhldJlDhkTV0vG1z64dYPMyKYSN/knDI7jmOKx+C
	D0XfFvSd79U4ZgtqQ1DMtTDJGQwIWkllk9RZc=
Received: by 10.236.184.164 with SMTP id s24mr12112012yhm.260.1302027659011;
	Tue, 05 Apr 2011 11:20:59 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id l3sm52875yhn.13.2011.04.05.11.20.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:20:58 -0700 (PDT)
Message-Id: <c1041c92f4a71414598c8b441a010fa0cbfaf4d1.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 13:56:48 -0500
Date: Tue, 05 Apr 2011 13:20:55 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 04/15] documentation/poky-ref-manual/ref-bitbake.xml: removed 'varname' style
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
X-List-Received-Date: Tue, 05 Apr 2011 18:20:59 -0000

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


