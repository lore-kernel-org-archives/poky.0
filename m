Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2400F4C80AB4
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:06 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f48.google.com with SMTP id 28so348872yia.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=nK7Ssu/LvwgUrmV0rn2d7Q3KKohvl5qlwNYPt5Jbei0=;
	b=fMhk/mctIXbAxy832hzwmVvak++yOnhkGPCHZW/hbctnCm2QwQYtx7pPFTHgUOpFyt
	uqy8Phq6BhB53u1JAQ/OQqsYAridJc9pqt71QPd49FlDJOYwvQFtlh1//prUzm3aDG0v
	IijpR0PdyTQaFK/+Gia8nNtO/dzFvP6FVI0O8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=Gx+j5CelStdhn5PfrmbuSsMA40uzQJ34kLhn/FGndiwAHFu1lP1+FE3oCrzgzcsK+1
	BBQbLsgMedqpgEpoGhvKpwt2gD0xCdtvDWT+ev39/k7f5xQy2cFVZyJhy0dfdg+jL3Rm
	I/OURqr5OIYDWt2HV6DUz9DvAyA9hHzyTlczQ=
Received: by 10.236.181.227 with SMTP id l63mr11352yhm.1.1302027666042;
	Tue, 05 Apr 2011 11:21:06 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id g31sm2957834yhd.26.2011.04.05.11.21.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:05 -0700 (PDT)
Message-Id: <0d14b2bbb908351ae0021a8237986e0e8ce7bb97.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 15:25:15 -0500
Date: Tue, 05 Apr 2011 13:21:03 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 07/15] document/poky-ref-manual/ref-classes.xml: removed <function> tag
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:06 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I got rid of the <function> tag and replaced with <filename>.  We
have too many styles.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index d7cfb6e..9082aa7 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -35,7 +35,7 @@
         (empty by default). These are often overridden or extended by other classes 
         such as <filename>autotools.bbclass</filename> or 
         <filename>package.bbclass</filename>. The class also contains some commonly
-        used functions such as <function>oe_runmake</function>.
+        used functions such as <variable>oe_runmake</variable>.
     </para>
 </section>
 
-- 
1.7.0.4


