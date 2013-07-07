Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C9EE0156B
	for <poky@yoctoproject.org>; Sat,  6 Jul 2013 19:13:25 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id eh20so4191772obb.39
	for <poky@yoctoproject.org>; Sat, 06 Jul 2013 19:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=bVsp35DaonjYnasIn61Hjq312ISmCjvkKVvUWJSlVi8=;
	b=noeZjpBqzv5RJvDRF4QBpaFnsV1NWQRn+gXjc1h/JpwyxKqI5OTrYC4O0+VSpqEmh7
	bpT/JHNqJ40U8MmsYBjvOzxGnxu7jAAlnkIbRXpPaOfCQIsj9II55zK5BO5c5aqDmGsl
	WygXz8bmhFl2JL6ecMuIYn7oUEOWv+jukZs4druSs2XfW68dC3h5WisvrLQ2lmgFoSVx
	3UO8D932QqV8P2xTg8Trg+Jk+4lYtn0nD7su8aRPrLg9fZnjIkRhKfkhs/VmS5YPk1MI
	v3l7ePmD25sn8xJSzkPZF9sVuvyKk48KE23HmRxuC33O3sg+TzBSirXK5bN+aUD47ns5
	cK3Q==
X-Received: by 10.60.115.199 with SMTP id jq7mr16223647oeb.19.1373163204349;
	Sat, 06 Jul 2013 19:13:24 -0700 (PDT)
Received: from localhost.localdomain ([96.44.77.72])
	by mx.google.com with ESMTPSA id cp7sm25602779obb.0.2013.07.06.19.13.22
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 06 Jul 2013 19:13:23 -0700 (PDT)
Sender: Bruce Ashfield <bruce.ashfield@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sat,  6 Jul 2013 22:13:19 -0400
Message-Id: <cover.1373162883.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
Cc: simarpreet.singh@windriver.com, poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto-bsp: update 3.4 and 3.8 SRCREVs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 07 Jul 2013 02:13:27 -0000

Saul,

Updating the SRCREVs for the reference boards for both the 3.4
and 3.8 kernels.

The 3.4 change is updating to the 3.4.52 stable version, which
is the same update that the qemu* machines got for oe-core.

The 3.8 change addresses our routerstationpro boot issue. We
somehow managed to update its preferred kernel to 3.8, but not
update the SRCREVs. Simar managed to track down the missing change,
and I've gone ahead and updated all the reference boards (even
if they are not all currently setting their preferred kernel
to 3.8. I'll take care of that preferred kernel setting shortly
as well, but there's no reason to hold on this).

With this YOCTO #4566, should be addressed.

Cheers,

Bruce

The following changes since commit dd626321f93b7d145b05bedd54eba9d1947a1d6c:

  linux-yocto/3.4: update to v3.4.52 (2013-07-05 20:51:26 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto-bsp: update reference board SRCREVs

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend |    8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.7.10.4


