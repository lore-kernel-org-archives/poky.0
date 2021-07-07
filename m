Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
 by mx.groups.io with SMTP id smtpd.web10.19455.1625654450898767887
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 03:40:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=dwrobel@ertelnet.rybnik.pl header.s=ertelnet header.b=a308P98C;
 spf=pass (domain: ertelnet.rybnik.pl, ip: 136.143.188.14, mailfrom: dwrobel@ertelnet.rybnik.pl)
ARC-Seal: i=1; a=rsa-sha256; t=1625654447; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RqGvgU8RUfOSW4OXKTlbSKKJeOkc/cmvPqJ6xDur5yjTOZp0ghvyVw5eTz8Piu18iUMz0/GdjWBiNSvHO1JgpajGJqAL/Vh5hK/u/svGU+yA0Xlke5CN1vCTo6SjSTEAjtIwkMWAlEzhaC7Y0tfiklSJ9PAFN3q6esS9RWhJ//4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1625654447; h=Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
	bh=xViwJVKq2PaNihOrgkVImAvMvkoI4pfYvpHL9wC8VJk=; 
	b=Y86c9nOhtNHJN4MIPUEVcAE4pn3xde4+defmYrqd8Z60x+D42invRNhVPKqxB2t9LvybTiWG4xdUZaiCxzciT9jWmU7KU1IDfA4OOKLOdbEt2Kt/XkZY5OIVLNkWdOowB17k0F2ASVlQhcbJWia/05gLqghRNjhBpJmitoK7ing=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ertelnet.rybnik.pl;
	spf=pass  smtp.mailfrom=dwrobel@ertelnet.rybnik.pl;
	dmarc=pass header.from=<dwrobel@ertelnet.rybnik.pl>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1625654447;
	s=ertelnet; d=ertelnet.rybnik.pl; i=dwrobel@ertelnet.rybnik.pl;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
	bh=xViwJVKq2PaNihOrgkVImAvMvkoI4pfYvpHL9wC8VJk=;
	b=a308P98C/BQAGisdwTZeIZLevtm0pUdH3B+ggcnipfsH+wyIzBhdL+FoU+OWEOKG
	DMNUT7YIa1gUjkUJ5PYscztRlltIPhTr7dqitgzPxZE3fE3qBadD7Tzuyz0lpqkVk6G
	rm8tfyTjDOhXot812f6gZ8+cUFaEID8ZHTk/ILYY=
Received: from dell.adbgroup.pl (178.217.216.129 [178.217.216.129]) by mx.zohomail.com
	with SMTPS id 1625654445230274.96435964432794; Wed, 7 Jul 2021 03:40:45 -0700 (PDT)
From: "Damian Wrobel" <dwrobel@ertelnet.rybnik.pl>
To: poky@lists.yoctoproject.org
Cc: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>,
	Adam Romanek <romanek.adam@gmail.com>
Subject: [PATCH] bitbake: fetch2/git: run gc in foreground to avoid race with tar
Date: Wed,  7 Jul 2021 12:40:04 +0200
Message-Id: <20210707104004.2490664-1-dwrobel@ertelnet.rybnik.pl>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-ZohoMailClient: External
Content-Transfer-Encoding: 8bit

From: Adam Romanek <romanek.adam@gmail.com>

It looks like git gc can interrupts the package creation when
BB_GENERATE_MIRRORS_TARBALL is in use.

Log excerpts:

tar -czf TOPDIR/../downloads/git2_bitbucket.name-hidden.git.tar.gz . failed with exit code 1, output:
tar: ./objects/pack/pack-89a1d76f6c08f53172ef1d02ff851d90564362c4.pack: file changed as we read it
tar: ./objects/pack/pack-b4a48ada355d333630fdf6b4f67205b7c264dc2c.idx: File removed before we read it

Auto packing the repository in background for optimum performance.
See "git help gc" for manual housekeeping.

Signed-off-by: Adam Romanek <romanek.adam@gmail.com>
Signed-off-by: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
---
 bitbake/lib/bb/fetch2/git.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 5e65c83c63..488f4c7414 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -231,7 +231,7 @@ class Git(FetchMethod):
             for name in ud.names:
                 ud.unresolvedrev[name] = 'HEAD'
 
-        ud.basecmd = d.getVar("FETCHCMD_git") or "git -c core.fsyncobjectfiles=0"
+        ud.basecmd = d.getVar("FETCHCMD_git") or "git -c core.fsyncobjectfiles=0 -c gc.autoDetach=false"
 
         write_tarballs = d.getVar("BB_GENERATE_MIRROR_TARBALLS") or "0"
         ud.write_tarballs = write_tarballs != "0" or ud.rebaseable
-- 
2.31.1

