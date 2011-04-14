Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5466F4C80A7E
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 11:45:55 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so762605gya.35
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 09:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=L3DB7ALTKa4wlQFSZNShcRIlsKW0/F+RlNn7Rh9rWAg=;
	b=lgekzIUU/Axx03tuHJFD7t1sJXwXdGhyP3Rix0Z8VHYf1IM0+zeKTU9Xa3JEVaAzhR
	IFBCw2fbnEe9tvdONnvB6cTs6n2Es2p3R+1Boawz9SY9xAxd5AVGTOiMH/N6o7rV/fTw
	jZnupmM9ui9l1k53Z6RVI1ZW2vzZfj1QMG9yI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=X8+OemQRx7HoZYgExRCTfl8rryWnJgpOlNBzvZXrOR9Jldb1m3iXTFL/rnIjNoDkYd
	qbCMJf8bNTAvBQpCd+/IO0Jy9Q2Nt5mhjgZBvdLFvbRLod46WZQNX2sLWfzfDLRK7iO5
	2XZhY+1BPnQMf087D+dfiec3uIwrJgIi2Ce+w=
Received: by 10.236.110.180 with SMTP id u40mr1245679yhg.149.1302799554599;
	Thu, 14 Apr 2011 09:45:54 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id u30sm845331yhl.54.2011.04.14.09.45.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Apr 2011 09:45:54 -0700 (PDT)
Message-Id: <fc04ef1ed39840295598e121881957df8168fcb7.1302799451.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302799451.git.scott.m.rifenbark@intel.com>
References: <cover.1302799451.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 14 Apr 2011 11:39:53 -0500
Date: Thu, 14 Apr 2011 11:45:52 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/adt-manual/adt-eclipse.xml: Fixed link to autotools.
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
X-List-Received-Date: Thu, 14 Apr 2011 16:45:55 -0000

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


