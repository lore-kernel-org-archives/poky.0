Received: from mail.socneth.com (mail.socneth.com [54.36.198.193])
 by mx.groups.io with SMTP id smtpd.web11.52407.1673521905696973552
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Jan 2023 03:11:46 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@beneth.fr header.s=mail header.b=KhRa1Xkh;
 spf=pass (domain: beneth.fr, ip: 54.36.198.193, mailfrom: bmauduit@beneth.fr)
From: =?UTF-8?B?QmVub8OudCBNYXVkdWl0?= <bmauduit@beneth.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=beneth.fr; s=mail;
	t=1673521903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S33HcobrN6BgdoGL04wgO+cdoD7W/O4vvIYGCsccrPE=;
	b=KhRa1XkhVdLId7vG0pMuODWw0uP067RFLKNbkyD42GEmW0P3R8VYan1FBQaVsTxJYi3jQ0
	FNNa6M73ZVtWz+CkDaZz2UQYC0ClsbXA2feipgbVtJpOnNaysDVP8ZLvgXpU2If7T2IOwy
	Gk733s7r6hrIeFNORxjImpNtlxwV2VjiVb2at+gMXoVq5sZ7SalNlY8xcWQB9MP1bE9rnJ
	5vVJwSog/SwjEZ3WP5nPOuc/eh8wTu0+Sw/x4sCHJlSai7jRRj0olMkigw3g4SVNVgjVCc
	g7oDmPOruK7HHoYHPu4Vlp1ebdZOj9HMNthvd+9ZvOBJ1o//8eWfTHZtn0mCbA==
To: poky@lists.yoctoproject.org
Cc: =?UTF-8?q?Beno=C3=AEt=20Mauduit?= <bmauduit@beneth.fr>
Subject: [PATCH 1/1] lib/oe/reproducible: Use git log without gpg signature
Date: Thu, 12 Jan 2023 12:11:02 +0100
Message-Id: <4415ab7387d6c4466b693b4fc7c2dd4438c1d6aa.1673521664.git.bmauduit@beneth.fr>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1673521664.git.bmauduit@beneth.fr>
References: <cover.1673521664.git.bmauduit@beneth.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Previously, if "showSignature" is present in user gitconfig, parsing
of the timestamp will fail.

Ideally we should replace this command with a git plumbing command.

Signed-off-by: Beno=C3=AEt Mauduit <bmauduit@beneth.fr>
---
 meta/lib/oe/reproducible.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/lib/oe/reproducible.py b/meta/lib/oe/reproducible.py
index 04a1810d4f2..9ac75c02e38 100644
--- a/meta/lib/oe/reproducible.py
+++ b/meta/lib/oe/reproducible.py
@@ -115,7 +115,8 @@ def get_source_date_epoch_from_git(d, sourcedir):
         return None
=20
     bb.debug(1, "git repository: %s" % gitpath)
-    p =3D subprocess.run(['git', '--git-dir', gitpath, 'log', '-1', '--p=
retty=3D%ct'], check=3DTrue, stdout=3Dsubprocess.PIPE)
+    p =3D subprocess.run(['git', '-c', 'log.showSignature=3Dfalse', '--g=
it-dir', gitpath, 'log', '-1', '--pretty=3D%ct'],
+                       check=3DTrue, stdout=3Dsubprocess.PIPE)
     return int(p.stdout.decode('utf-8'))
=20
 def get_source_date_epoch_from_youngest_file(d, sourcedir):
--=20
2.39.0

