Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 471474C80AC6
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so1421083ywo.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=blNuYbBqW4doDjhbLXgWQYSr3r65TO56xW0YbyRmRNI=;
	b=sv2Cby7uJweyNQS8bCqkKJAawtPFejAI3lIl2N+QIZcg2X1Nd6KW12X5mikKqnCeV4
	kpzk39Ilfe6LwjyUga+8HDDfNE1IFYaU2qB384fxKTDVoLTs4UDMLCWbnmfPet6GLWvz
	7b8o7e83TGm4eDMbqqF3NjYs4E2/hRgHphwnk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=nPCCGXHuPrq5aK2nJmz2H5FSAV02LRpPj83f/ZuX5K7fYZD0oUOhTcCZDDOwxSKxQd
	fb3vZIJmNyQI5RprHPmHKAvP8LLtknOyA5nXZAmS+3xCLETTUVLUXLf0JeiXYfopIlfx
	qjIzwqu08nQdtADWoO0j7gR6UvL+W55nJOZt0=
Received: by 10.236.190.136 with SMTP id e8mr78936yhn.239.1301596305072;
	Thu, 31 Mar 2011 11:31:45 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id u65sm693684yhn.92.2011.03.31.11.31.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:44 -0700 (PDT)
Message-Id: <523b4cf286553d74565e79d23d4c27d6a169c0e5.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:23:35 -0500
Date: Thu, 31 Mar 2011 13:31:40 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 7/8] documentation/yocto-project-qs/yocto-project-qs-customization.xsl: Updated for PDF creation
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I had to remove the line that suppresses all the TOC generation stuff
to bring the Quick Start into line with the other Yocto Manuals.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs-customization.xsl             |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs-customization.xsl b/documentation/yocto-project-qs/yocto-project-qs-customization.xsl
index 8e6ea34..362ebed 100644
--- a/documentation/yocto-project-qs/yocto-project-qs-customization.xsl
+++ b/documentation/yocto-project-qs/yocto-project-qs-customization.xsl
@@ -3,6 +3,4 @@
   
   <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/docbook.xsl" />
 
-  <xsl:param name="generate.toc" select="'article nop'"></xsl:param>
-
 </xsl:stylesheet>
-- 
1.7.0.4


