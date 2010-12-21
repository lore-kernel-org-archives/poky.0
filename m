Return-Path: <raj.khem@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id C072A4C811BA
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 03:27:57 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi12 with SMTP id 12so1014990pxi.28
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 01:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer:in-reply-to:references;
	bh=wwZ3kIDk/RCjVHF+UbiwBOse9uF8RU98VGn7WlwGBd8=;
	b=x9Uh4w43UY/dRF8R58nwABYnIkrw9XHzfMB441PUf5ezQx7AqKB9Q2/pTQSYVHzBU3
	5LAIVyBtREIuCxBmK5P77K/mloLpa+8aFi0DkFUQVfB3mo26+jy7f6CXfk0LEo+LkMx3
	+q6L3O07cWjEjlIojFxv3j0fp3NdyBQh2hzkc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	b=TQboy+1IgBDI5ai8Bz9nBHm1wU/d/G7OkzgcYfnDOm47Zricda3HnrtnHNWCH7GwNX
	9Q7p7cxkX0E3T+XwhUGH+pdNCgMMowJo0lYqhsxQdNWWfRtr0xsvQ4S3sEq2lWAuK8cn
	CWsGhZrRilepNFacgxidK7gxvA/YTwOZ8LBKs=
Received: by 10.142.193.13 with SMTP id q13mr4302925wff.178.1292923677353;
	Tue, 21 Dec 2010 01:27:57 -0800 (PST)
Received: from localhost.localdomain
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id x18sm7242942wfa.11.2010.12.21.01.27.55
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 21 Dec 2010 01:27:56 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue, 21 Dec 2010 01:27:41 -0800
Message-Id: <d495bbc8758a04c6e61a71469a881f0b64e620d0.1292920702.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1292920700.git.raj.khem@gmail.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
Subject: [PATCH 2/3] poky-default.inc: Set GCCVERSION and SDKGCCVERSION to 4.5.2 now
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
X-List-Received-Date: Tue, 21 Dec 2010 09:27:58 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta/conf/distro/include/poky-default.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default.inc b/meta/conf/distro/include/poky-default.inc
index e5dd647..c1f4cfc 100644
--- a/meta/conf/distro/include/poky-default.inc
+++ b/meta/conf/distro/include/poky-default.inc
@@ -15,8 +15,8 @@ PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-initial = "${POKYLIBC}-initial"
 PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-for-gcc-nativesdk ?= "${POKYLIBC}-nativesdk"
 
 
-GCCVERSION ?= "4.5.1"
-SDKGCCVERSION ?= "4.5.1"
+GCCVERSION ?= "4.5.2"
+SDKGCCVERSION ?= "4.5.2"
 BINUVERSION ?= "2.20.1"
 GLIBCVERSION ?= "2.10.1"
 LINUXLIBCVERSION ?= "2.6.36"
-- 
1.7.1


