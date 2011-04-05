Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F3A74C80A70
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:32:56 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so149126yia.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=tPvQSHnNrsqDeZxAYaCQXWk0h+ndVQ9udu2nhq0MEXE=;
	b=kZQhZ5dFpagMYaJ+Qt6zo6H+MGLjT736SqQ9btRFiWFhYc+9vcGCeJdYDrnSGswhz5
	ESZrDWVD+SyuGKxLxxiZ1usArlr4h2V/6a75XG3aBoWHBK5S0GO4/q6fj7/2TTTf77T6
	GTY/9XCn3y8IHTSLwKyysRviLO5PAsEgm/mno=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=VJzfM8rZh9eXkD4HT4vEoeHENJJKroHhDTHk8ccJxqKQfIQJmp5wYlpj3U+W4dxS99
	8ITUpJvpN5zH8YYGS59Z2s1tPEn/mS3P0MJdEM8m2+agggIWdzQobuE0FSe5xR0IIb7H
	ntUoMQP74uQtG2kwYi7b6nLHtG6Vl5OhRDghA=
Received: by 10.236.106.198 with SMTP id m46mr11832792yhg.191.1302010376287;
	Tue, 05 Apr 2011 06:32:56 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id x61sm2834566yhn.48.2011.04.05.06.32.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:32:55 -0700 (PDT)
Message-Id: <48959817202a9a21629458c25ec00a21f0e2bdaf.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 11:50:37 -0500
Date: Tue, 05 Apr 2011 06:32:55 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 05/16] documentation/poky-ref-manual/ref-structure.xml: bitbake section updated
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
X-List-Received-Date: Tue, 05 Apr 2011 13:32:56 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section A.1.1 (bitbake/) contained two URLs.  One supposedly went to
a BitBake site and the other to the BitBake online manual.  In reality,
they both went to the online manual.  I removed the one referencing
the site.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-structure.xml |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-structure.xml b/documentation/poky-ref-manual/ref-structure.xml
index 74687c5..7ebf9bd 100644
--- a/documentation/poky-ref-manual/ref-structure.xml
+++ b/documentation/poky-ref-manual/ref-structure.xml
@@ -32,9 +32,8 @@
         </para>
 
         <para>
-            For more information on BitBake, see the BitBake project site at 
-            <ulink url="http://bitbake.berlios.de/"/> 
-            and the BitBake on-line manual at <ulink url="http://bitbake.berlios.de/manual/"/>.
+            For more information on BitBake, see the BitBake on-line manual at 
+            <ulink url="http://bitbake.berlios.de/manual/"/>.
         </para>
     </section>
 
-- 
1.7.0.4


