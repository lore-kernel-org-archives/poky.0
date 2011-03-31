Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BA584C80ABA
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:38 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so1426884yia.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=CRpg+E5dqEsqOhM8KPoWEobkm0lc0m/k4V5EhMlRo4E=;
	b=Ivl2I5RotumJj7oO/iLg86rOkjdpQiO3ba3umm6CYhXQUdxOgXKq0lWWzRMc3kDCbx
	fQ2Zxy7FGkEDDNmkRiVnuWfeJkELcMvf86YMp0Jk0eTlNFOYNSw7xptji4saWpbsgLEy
	STOHDLFQpaBoHJnDl4ZO+pd8v7g04mByv7VHQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=gEqzX4tuEso9tO7GhVI2LJi54/M1R5hthmFHwxkDFxjS6YEdKp+DA/f2APjf76sGz2
	6RZKSg7gYA5eIa5leQnRSD1HV1YVL+OaFTar7BJz7BL3KnO3s/n84kVvVON9wmsrrR+S
	8ASA4G4XA5DpxNhxOAHymkPu+KbqhGyWFfShk=
Received: by 10.90.234.4 with SMTP id g4mr3328419agh.139.1301596297834;
	Thu, 31 Mar 2011 11:31:37 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id u20sm1432476anu.40.2011.03.31.11.31.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:36 -0700 (PDT)
Message-Id: <147f0441bc971c6c5ca0fdd748c462ffe780bb0a.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:18:51 -0500
Date: Thu, 31 Mar 2011 13:31:32 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 4/8] documentation/yocto-project-qs/figures/ypqs-title.png: New title image
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:38 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Part of the PDF scheme is a PNG file that contains the title of the
manual and the transparent version of the Yocto Project logo.  I had
to introduce this new figure to the Yocto Project QS with the
requirement of a PDF manual.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/figures/ypqs-title.png        |  Bin 0 -> 11324 bytes
 1 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 documentation/yocto-project-qs/figures/ypqs-title.png

diff --git a/documentation/yocto-project-qs/figures/ypqs-title.png b/documentation/yocto-project-qs/figures/ypqs-title.png
new file mode 100644
index 0000000000000000000000000000000000000000..b624d5ccdd955946a94ce2c78bb99a837c3f644a
GIT binary patch
literal 11324
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
C4e`PN

literal 0
HcmV?d00001

-- 
1.7.0.4


