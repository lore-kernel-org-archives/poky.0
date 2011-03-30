Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF1484C80050
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 21:03:16 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so456143yia.35
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 19:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=jnOjYLO1wyFxa6UKSSx0w5U6b1JzGyme/O0+CZIWToQ=;
	b=riQBm9XuX1+eHfQkVhayHrE9bIyyeSBiW9JHSXnV9IBsJHfTZ3JWMkfhOLgXOvX+R7
	an0xvpiTSfYGHvUyP+RT7+0SwAv4nRVgnUli75SqubyWV3hVITBbmZQxrXqYn+/EfjlE
	PXWXabjwNoUkiTwqEL4UWkjdW/lxfH6BELilk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=fiirjK4FLGc9k10uPc6aiN7wgoPlJkwS8oILurTLCroJ8yEC1Hq9L92HmteurEei5a
	eR++U9Sju/X4akDebAjD5ueGjgF1wqyxQVGqTZzbz3XOZD0bxx6D8qKld34cWkFfKmag
	OQIqA31RkxuWkpmN951thmiZ0RCV51qCBXrE4=
Received: by 10.236.190.1 with SMTP id d1mr693545yhn.399.1301450596289;
	Tue, 29 Mar 2011 19:03:16 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id u29sm2794080yhn.71.2011.03.29.19.03.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Mar 2011 19:03:15 -0700 (PDT)
Message-Id: <cover.1301450505.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 29 Mar 2011 21:01:45 -0500
Date: Tue, 29 Mar 2011 21:03:13 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] Quick Start edit
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
X-List-Received-Date: Wed, 30 Mar 2011 02:03:17 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I removed another occurance of "YP" as an acronymn.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/yocto-project-qs/yocto-project-qs.xml:  cleaned out
    another "YP"

 .../yocto-project-qs/yocto-project-qs.xml          |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)


