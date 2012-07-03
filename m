Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F3DDE0145B
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:32 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=pSw/AwTUsdCoCfKeW31FtQmC+1ylw30IW93LyOvolrs=;
	b=r8ZDihn/W5Z+izLevAMY2EktXwWjBvdK7BiqG2++Fdzq8/lFUOEmHKe3ImcZ0rVmjo
	qRVf3f8WwAM9h11J3AFZ3qmkCTWDwg5GqdVDi0+H6PtFdRO6DRN98R3EwnE/KEFd2Ize
	iVyKwtE1uLRH2CblyhZNdCRiiEnexsqVXH8aheF5LbVDxz1WDp+xyWwBNzWBazXuStIX
	/0ydlpu8CJ/u66/om+EA7+x2aieXCdgbg2J/US/o69rzb1uKhu87z8qEdgaECPGx4ltM
	DAONxfKi0NrgxXKnSMEIsTi903a9Yhe5fetDLNF9hXfkl52uFoJcMe49enLvjYtNmziN
	hlqA==
Received: by 10.68.192.97 with SMTP id hf1mr9326638pbc.132.1341354752480;
	Tue, 03 Jul 2012 15:32:32 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:31 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:04 -0700
Message-Id: <64df5f948e435f04ea876e881582e077cbfd4c48.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 3/9] bitbake: fetch2: Fix error handling in uri_replace()
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:32 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(From Poky rev: 1bfba28a583cb167f60e05ecdf34d0786dc1eec5)

(Bitbake rev: aa7467a764ddcbc7d65af99e88cf093b6ec6d24e)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index b19c84a..3e96282 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -174,7 +174,8 @@ def encodeurl(decoded):
 
 def uri_replace(ud, uri_find, uri_replace, d):
     if not ud.url or not uri_find or not uri_replace:
-        logger.debug(1, "uri_replace: passed an undefined value, not replacing")
+        logger.error("uri_replace: passed an undefined value, not replacing")
+        return None
     uri_decoded = list(decodeurl(ud.url))
     uri_find_decoded = list(decodeurl(uri_find))
     uri_replace_decoded = list(decodeurl(uri_replace))
-- 
1.7.9.5


