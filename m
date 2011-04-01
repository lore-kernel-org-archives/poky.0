Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 124D94C80AC8
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 20:39:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so1600477ywo.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 18:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=041OSfJYbUhGh4iuvZJ+6lbgjRIQZ9CUFZgY8lCP6Ac=;
	b=G6hYwgyI15fMO5Oki0ZemE+BatdwAvL70kXGZjswBc8FZ6jpw5jRKvrUyEwhmydtZX
	BEYOTduBK6VZdu1aW07VguPaUeJrdQeoCHyMlFdicH2BTA39KTiNZfiosMyqCgdbecO6
	qVeKYHPlXn5h1n+GTSrRYJSYLtlhNp+E3Y23E=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=VltRB/4vAp8nuLbw/4dqp25UUSKHVR1/wQxKjeaaYlMNRpQcNQ2tZfBXGKG9u1T5MB
	T+8i/7cWtY4KpNcERJg9pgeIzA3wvN1N+AY7v1H5AnNKgq9+3bSEkXhMHHySkl1mZfEB
	ZhpduFuGvg1ADeslNSpaJ0bcy7PaNPgvhtFe4=
Received: by 10.150.74.2 with SMTP id w2mr3605629yba.346.1301621984714;
	Thu, 31 Mar 2011 18:39:44 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id b4sm121618ybn.23.2011.03.31.18.39.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 18:39:44 -0700 (PDT)
Message-Id: <cover.1301621769.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 20:36:09 -0500
Date: Thu, 31 Mar 2011 20:39:38 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/2] [DOCS] Poky Ref Updates
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
X-List-Received-Date: Fri, 01 Apr 2011 01:39:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the title page revision history table.  Also extensively 
commented out the chapter on Eclipse and Anjuta.  The information 
in this chapter can be referenced and is better documented in the 
ADT Manual.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/poky-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (2):
  documentation/poky-ref-manual/poky-ref-manual.xml: Updated
    rev-history table
  documentation/poky-ref-manual/development.xml: Edits for Eclipse and
    Anjuta

 documentation/poky-ref-manual/development.xml     |   46 +++++++++++++++++----
 documentation/poky-ref-manual/poky-ref-manual.xml |    4 +-
 2 files changed, 39 insertions(+), 11 deletions(-)


