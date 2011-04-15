Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDE164C80A71
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 07:44:20 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 7so1519613gxk.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=L3DB7ALTKa4wlQFSZNShcRIlsKW0/F+RlNn7Rh9rWAg=;
	b=EvrqSvhmujOUAef2EZJQpPk6lbNmO4DcM48KSh2BUyXaEU14zP9fClqyU6v1GKrmrw
	+DwvUOcvP2rlEEzIFJRJA4KtxVcaX+Gm8I2DAjrON5YHA7yPNllR21kfsYBMNejfv2hj
	X/D3eE+cAP+gvWohdFUnGoKMsLhTfJIOtGeW4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=LIvOmSS2HP4wy1bg9pOJzX8mQDqw25hK7TC5DGlcTGnL/hGDqydzyo9ll4QtfO0Swv
	akKsHOpKoriKcoBMbtABUsYHRE7kLVPgIJTs/yvk43fRIaPTTeBzmOlb5vqvzrkPxhwl
	3A6zfnnEttUQ74G8zju5ATJDYLsPT6TOckD8M=
Received: by 10.150.237.10 with SMTP id k10mr2705976ybh.325.1302871459491;
	Fri, 15 Apr 2011 05:44:19 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id p33sm344000ybk.17.2011.04.15.05.44.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 05:44:19 -0700 (PDT)
Message-Id: <fc04ef1ed39840295598e121881957df8168fcb7.1302871028.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302871028.git.scott.m.rifenbark@intel.com>
References: <cover.1302871028.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 14 Apr 2011 11:39:53 -0500
Date: Fri, 15 Apr 2011 05:44:19 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 3/5] documentation/adt-manual/adt-eclipse.xml: Fixed link to autotools.
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
X-List-Received-Date: Fri, 15 Apr 2011 12:44:21 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The link to autotools was incorrect.  It had 'www' in the URL
when it should not have.  it is now
'http://download.eclipse.org/technology/linuxtools/update/'

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-eclipse.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
index 3e1596d..a81929b 100644
--- a/documentation/adt-manual/adt-eclipse.xml
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -99,7 +99,7 @@
                 “Remote System Explorer Extended SDK”, “Remote System Explorer User Actions”, 
                 “RSE Core”, “RSE Terminals UI”, and “Target Management Terminal”.</para></listitem>
                 <listitem><para><emphasis>Autotools</emphasis> – 
-                <ulink url='http://www.download.eclipse.org/technology/linuxtools/update/'></ulink>:
+                <ulink url='http://download.eclipse.org/technology/linuxtools/update/'></ulink>:
                 Expand the items under “Linux Tools” and select “Autotools support for 
                 CDT (Incubation)”.</para></listitem>
                 <listitem><para><emphasis>Yocto Plug-in</emphasis> – 
-- 
1.7.0.4


