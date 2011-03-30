Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4832C4C800A0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 09:33:33 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so686328ywo.35
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 07:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=bnIMxutkh/Gp9L2v1OwiGk95SnDdFg4U9OPtT601v6Q=;
	b=FY3DfL8W3piVVsa8Pckxwh425VblJh7S5llLS1dAN0T8Fc+8NW/SJAQBFcR+FQpmcr
	WItdfmmGBI2OQdInyAMv8Yi554EDJfh7C52SCdNdL4Q6K/Yr8qo/yTxCJ/Es1qqCx9Dz
	FOihLlv0sqpb9J53yuTjX3E2170TAOrq+fovA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=WS1U6XOVMFVKFF+0g2PlWtgcpaIWOtqIb+qNRNK9IZzG9tqcRc5wAm+9PCp2UU/wnM
	31v6tOn1JJoPoe3Gq4qMdnRa1GsCQTATvv2hKUm9dBAocwauF8keH4SdjqaNSaOiURuD
	ZtMI2RkbOY6V8vYcRRH3gVarWFkZBD9ZQ90IA=
Received: by 10.151.86.4 with SMTP id o4mr1571275ybl.339.1301495612871;
	Wed, 30 Mar 2011 07:33:32 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id t16sm90934ybe.19.2011.03.30.07.33.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 30 Mar 2011 07:33:31 -0700 (PDT)
Message-Id: <cover.1301495477.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 30 Mar 2011 09:31:17 -0500
Date: Wed, 30 Mar 2011 07:33:31 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [BUGID# 929] - [DOCS] Poky Reference Manual GPL Note
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
X-List-Received-Date: Wed, 30 Mar 2011 14:33:33 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 929] - In chapter 2 where we talk about building images I added 
a new note indicating that the user should not switch around using different
GPL versions when trying to rebuild an image as it can cause dependency
failures.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/poky-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/poky-ref-manual/usingpoky.xml:  [BUGID# 929] - Note
    added warning about switching up GPL versions

 documentation/poky-ref-manual/usingpoky.xml |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)


