Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web09.16236.1663277154089868926
 for <poky@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 14:25:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@waymo.com header.s=20210112 header.b=XV/wJnjp;
 spf=pass (domain: google.com, ip: 209.85.219.54, mailfrom: jcreedon@google.com)
Received: by mail-qv1-f54.google.com with SMTP id l14so6788150qvq.8
        for <poky@lists.yoctoproject.org>; Thu, 15 Sep 2022 14:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waymo.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=nMxTd3WqbrFS55Ps6gyZZTHTN2O3J6Pn9lxs4IiL0Ew=;
        b=XV/wJnjpLuZyQD6AyACJgBTQMlFL1z2td4mlugmaVo9nsBzGqZnbN4xE+ZeFgTfTHI
         UYk5ONpbdE62mrcP+tR5IhI8eVTZHgyrx1oOKKeiyyL9xn+ewGQtor0BeyreAPm5Ajx4
         a+rJ+2Ksh1D8TJbpkmhH+CvApikdUG/j6y8Dr87hDTnaoMGnkbwh4QE5YnW93Dc5HdW6
         3N5o6uqDEymIp92XhG3qpqYoPUbPWXVuHXGd0DhXF7eUvzQR4v/f9JTeXjN7LeYTYdQ7
         QNcjqm3gS1a1wRqoxIaZWKg6hgmaASS9MLcldYhGBRPWymqb/ar/GVDd6hKl+WsedSCY
         hG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=nMxTd3WqbrFS55Ps6gyZZTHTN2O3J6Pn9lxs4IiL0Ew=;
        b=INVK90NjAl2DvRUIn9+yyLFHBkasAjjXG+9aVrL0eG7j27TaNE2idwHOAg/LiSp9/l
         Wo26ZYZnjLkzRGGg1TdvUrbCbZkzWCDSKXnI+sjF05Kpx+0f4zS771yPO9H/IuYWHS6I
         817nmh42HYj0Y+G6zedk6qr2GDPrI4sYHCct17uFqmadXMpmxHdoOho+23BtEu2l9dUy
         r22zu1Kd2eADIXZNsYtBvHI72SW3HPfzmrTOQFNblWji2NaY8pGw9rTnce+7h2zk2U+r
         85i/Y2yyCz7RIYpENh6UfspvfyrsUcXSBzOiEgcdKkC5NiZ9soIn+VqyepUlhueFHgIu
         cqEA==
X-Gm-Message-State: ACrzQf2pJ6UAeMxyfSBxp0onoA7N6U7K8jd1n60CQwtOxW1+E8ibEHGh
	L4aiuI/8u/Feavx1XbmCZ8gQfMXwXaowzofM/LcUr8eCgdAcew==
X-Google-Smtp-Source: AMsMyM4FrH/9tKmLeDu7nwwrV1EAOrptaoSGcIfUug+1IetBJcdAj+vy5trUoBwHq5D0c3ANrcDbk/GNCETiHCEZuv0=
X-Received: by 2002:a0c:f5c4:0:b0:4a7:f6cb:9e39 with SMTP id
 q4-20020a0cf5c4000000b004a7f6cb9e39mr1892475qvm.9.1663277153009; Thu, 15 Sep
 2022 14:25:53 -0700 (PDT)
MIME-Version: 1.0
Reply-To: jcreedon@waymo.com
From: "Jacob Creedon" <jcreedon@waymo.com>
Date: Thu, 15 Sep 2022 14:25:42 -0700
Message-ID: <CAEZLVp62cB9iaft34MZaV6ZRKh22K1Pv4oKtATB+p2b1p_T_dA@mail.gmail.com>
Subject: [PATCH] externalsrc: remove submodule--helper list call
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

This removes a call to an undocumented and now deprecated subcommand of
submodule--helper and replaces it with a supported command that gives an
equivalent list.

Signed-off-by: Jacob Creedon <jcreedon@google.com>
---
 meta/classes/externalsrc.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/externalsrc.bbclass b/meta/classes/externalsrc.bbclass
index 3d6b80bee2..0401c75fa9 100644
--- a/meta/classes/externalsrc.bbclass
+++ b/meta/classes/externalsrc.bbclass
@@ -217,7 +217,7 @@ def srctree_hash_files(d, srcdir=None):
             env['GIT_INDEX_FILE'] = tmp_index.name
             subprocess.check_output(['git', 'add', '-A', '.'],
cwd=s_dir, env=env)
             git_sha1 = subprocess.check_output(['git', 'write-tree'],
cwd=s_dir, env=env).decode("utf-8")
-            submodule_helper = subprocess.check_output(['git',
'submodule--helper', 'list'], cwd=s_dir, env=env).decode("utf-8")
+            submodule_helper = subprocess.check_output(['git',
'submodule', '--quiet', 'foreach', 'echo $sm_path'], cwd=s_dir,
env=env).decode("utf-8")
             for line in submodule_helper.splitlines():
                 module_dir = os.path.join(s_dir, line.rsplit(maxsplit=1)[1])
                 if os.path.isdir(module_dir):
--
2.37.3
