Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id E091B4C800A3
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 08:09:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywk9 with SMTP id 9so257117ywk.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 06:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=jMU2DlaOWWAUnBJ6c7MwfegA796xYrzRJidEAkf+M4Q=;
	b=hZnpPc1LqntbAjfMmdB2ueaQZ2vyyV2EAmd7zR9HW2CUhWtYGgouDrIXQY9xjgBYlk
	+oWVoqabgLOGZGbzqrm9Nb0oFTzW7xkS+LVde5YMFewywuH85Joo9xLDbEhRojYpTd6B
	qddqh00EPPdfd+s11RqJrm1vCmW9EVKVJTuIE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=gwr3m/iiY/oZUAq7g1kvH0W1Xu6YxZv1+6iqzUqAxvwsmLOUCg2F8mAiBq16OSh/z6
	O5Kjvj+d5yBmYyOczcm9NLgaBzcfr454hs5cdgfBRFa4AzUevXHgqItMHpUATqR7etqH
	k8TAaNc3pHXHava8jfrF2wzVQGV949ntksxxU=
Received: by 10.150.215.16 with SMTP id n16mr2435782ybg.224.1302872990137;
	Fri, 15 Apr 2011 06:09:50 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id t12sm1258730ybe.15.2011.04.15.06.09.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 06:09:49 -0700 (PDT)
Message-Id: <dae65eac72e9e87b22b7a3d554a49361c9dda26f.1302872863.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302872863.git.scott.m.rifenbark@intel.com>
References: <cover.1302872863.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 15 Apr 2011 07:57:12 -0500
Date: Fri, 15 Apr 2011 06:09:49 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/kernel-manual/kernel-how-to.xml: replaced 'pokylinux' with 'yoctoproject'
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
X-List-Received-Date: Fri, 15 Apr 2011 13:09:52 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 79c8526..96325fe 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1022,7 +1022,7 @@ That's it. Configure and build.
                     You can start with something in <filename>meta/conf/machine</filename> - <filename>
                     meta/conf/machine/atom-pc.conf</filename> for example.  Or, you can start with a machine 
                     configuration from any of the BSP layers in the meta-intel repository at 
-                    <ulink url='http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/'></ulink>, such as 
+                    <ulink url='http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/'></ulink>, such as 
                     <filename>meta-intel/meta-emenlow/conf/machine/emenlow.conf</filename>.
                 </para>
                 
@@ -1073,7 +1073,7 @@ That's it. Configure and build.
                     To create this branch first create a bare clone of the Yocto Project git repository.
                     Next, create a local clone of that:
                     <literallayout class='monospaced'>
-     $ git clone --bare git://git.pokylinux.org/linux-yocto-2.6.37.git
+     $ git clone --bare git://git.yoctoproject.org/linux-yocto-2.6.37.git
      linux-yocto-2.6.37.git
      $ git clone linux-yocto-2.6.37.git linux-yocto-2.6.37
                     </literallayout>
-- 
1.7.0.4


