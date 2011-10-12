Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23CD7E01335
	for <poky@lists.yoctoproject.org>; Wed, 12 Oct 2011 06:40:55 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9CDlVcV005919
	for <poky@lists.yoctoproject.org>; Wed, 12 Oct 2011 14:47:32 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id X9cg7jAvPCJd for <poky@lists.yoctoproject.org>;
	Wed, 12 Oct 2011 14:47:31 +0100 (BST)
Received: from [192.168.1.66] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9CDlRnv005904
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Wed, 12 Oct 2011 14:47:29 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@lists.yoctoproject.org>
Date: Wed, 12 Oct 2011 14:40:45 +0100
X-Mailer: Evolution 3.1.91- 
Message-ID: <1318426854.23801.165.camel@ted>
Mime-Version: 1.0
Subject: [PATCH] clutter: Update bbappend after oe-core upgrade
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
X-List-Received-Date: Wed, 12 Oct 2011 13:40:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend b/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
index c7cc683..c7cc683 100644
--- a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
+++ b/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend



