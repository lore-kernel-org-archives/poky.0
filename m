Received: from mail.schwermer.no (mail.schwermer.no [49.12.228.226])
 by mx.groups.io with SMTP id smtpd.web08.3343.1665044427547319874
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 01:20:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@svenschwermer.de header.s=mail header.b=S7TeBrWr;
 spf=pass (domain: svenschwermer.de, ip: 49.12.228.226, mailfrom: sven@svenschwermer.de)
X-Virus-Scanned: Yes
From: "Sven" <sven@svenschwermer.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=svenschwermer.de;
	s=mail; t=1665044423;
	bh=/5GcMv2pUy51UnZLycvn6/wH56IJPyUwVtxQFugwUoQ=;
	h=From:To:Cc:Subject;
	b=S7TeBrWrzOWmPB926Uofjh63R2MXHWuA72t8qfjzqtD+dCULDPTmzaOFrevfCpwxt
	 5piyvNaZDA5HCE6lofog3LGMmSs6sNR+vqyYo0JQx+3D8uSOQ2TB8ObSs54yhRyWcg
	 lCH/G6Ot5hl3TUgM4BBSABh8u8TV6mDEYy47vRh6PYWPKtYdCudHfDzSnqDQdiigOv
	 KArD4b9x5KTa2MB+azWAayTvgaxOOnMDwFhYu0saJi467a1B0RKqel/6meDOUrijGl
	 dqQYL3qrR/oiSWNH6PInfJMREqwJz3Waf6v6eS4W7PAvdt8QXFXlCYRk23/BIxtabn
	 7VjRHX7QKtZOQ==
To: poky@lists.yoctoproject.org
Cc: John Edward Broadbent <jebr@google.com>,
	Carson Labrado <clabrado@google.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH] externalsrc: git submodule--helper list unsupported
Date: Thu,  6 Oct 2022 10:20:00 +0200
Message-Id: <20221006082000.60867-1-sven@svenschwermer.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: John Edward Broadbent <jebr@google.com>

Git has removed support for "git submodule--helper list".
https://github.com/git/git/commit/31955475d1c283120d5d84247eb3fd55d9f5fdd=
9

This change provides an alternate method for gathering the submodules
information.

Tested:
Build recipes with and without submodules

(From OE-Core rev: 6d9364e5f3535954f65cbbc694ee7933ac1d664f)

Signed-off-by: Carson Labrado <clabrado@google.com>
Signed-off-by: John Edward Broadbent <jebr@google.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 0533edac277080e1bd130c14df0cbac61ba01a0c)
---

Notes:
    With git 2.38.0 externalsrc does not work anymore. I hope, we can
    backport this fix to stable branches as well.

 meta/classes/externalsrc.bbclass | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/meta/classes/externalsrc.bbclass b/meta/classes/externalsrc.=
bbclass
index 0e0a3ae89c..291fcf5653 100644
--- a/meta/classes/externalsrc.bbclass
+++ b/meta/classes/externalsrc.bbclass
@@ -225,15 +225,16 @@ def srctree_hash_files(d, srcdir=3DNone):
             env['GIT_INDEX_FILE'] =3D tmp_index.name
             subprocess.check_output(['git', 'add', '-A', '.'], cwd=3Ds_d=
ir, env=3Denv)
             git_sha1 =3D subprocess.check_output(['git', 'write-tree'], =
cwd=3Ds_dir, env=3Denv).decode("utf-8")
-            submodule_helper =3D subprocess.check_output(['git', 'submod=
ule--helper', 'list'], cwd=3Ds_dir, env=3Denv).decode("utf-8")
-            for line in submodule_helper.splitlines():
-                module_dir =3D os.path.join(s_dir, line.rsplit(maxsplit=3D=
1)[1])
-                if os.path.isdir(module_dir):
-                    proc =3D subprocess.Popen(['git', 'add', '-A', '.'],=
 cwd=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.DEVNULL, stderr=3Dsubpr=
ocess.DEVNULL)
-                    proc.communicate()
-                    proc =3D subprocess.Popen(['git', 'write-tree'], cwd=
=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.PIPE, stderr=3Dsubprocess.D=
EVNULL)
-                    stdout, _ =3D proc.communicate()
-                    git_sha1 +=3D stdout.decode("utf-8")
+            if os.path.exists(".gitmodules"):
+                submodule_helper =3D subprocess.check_output(["git", "co=
nfig", "--file", ".gitmodules", "--get-regexp", "path"], cwd=3Ds_dir, env=
=3Denv).decode("utf-8")
+                for line in submodule_helper.splitlines():
+                    module_dir =3D os.path.join(s_dir, line.rsplit(maxsp=
lit=3D1)[1])
+                    if os.path.isdir(module_dir):
+                        proc =3D subprocess.Popen(['git', 'add', '-A', '=
.'], cwd=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.DEVNULL, stderr=3Ds=
ubprocess.DEVNULL)
+                        proc.communicate()
+                        proc =3D subprocess.Popen(['git', 'write-tree'],=
 cwd=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.PIPE, stderr=3Dsubproce=
ss.DEVNULL)
+                        stdout, _ =3D proc.communicate()
+                        git_sha1 +=3D stdout.decode("utf-8")
             sha1 =3D hashlib.sha1(git_sha1.encode("utf-8")).hexdigest()
         with open(oe_hash_file, 'w') as fobj:
             fobj.write(sha1)
--=20
2.37.3

