Return-Path: <michael.krasnyk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41AA9D3E18D
	for <webhook@archiver.kernel.org>; Fri, 18 Oct 2024 22:32:55 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.34164.1729290765275302396
 for <poky@lists.yoctoproject.org>;
 Fri, 18 Oct 2024 15:32:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YrPvyFHi;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: michael.krasnyk@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-288d74b3a91so1586093fac.0
        for <poky@lists.yoctoproject.org>; Fri, 18 Oct 2024 15:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729290764; x=1729895564; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7munNqxr9rjSXzDOYZctb9ImrHCkQYzRfgFVjXf76UU=;
        b=YrPvyFHidheChfhXN6IttAnTmXGEulrn3P2a0I/SHbD7NPFt1dhqujthDF1hMwKxdS
         savLrOgwdIU84sVjZv8DtsciZc9L1G47hawebSnnuOTEs2tfXEbHpygmeSqbFGFULNC+
         14Ffa7C/NrZWN6Xt+pIUaleZnFVWe02zq68E6wLRieKhKdBT10TquJdtU+CkNhFQYmby
         r6X0eOpvWIAtI4evXP5Ov/LTVnOqCGHr3Xc64VOutzdY67M9of9bSM8rXKbfcPYC/MMT
         AYE/Zn5/vaqtAtzCEIki0P54+SzV81Nzj5BdW7Ph8b8DLQhPKaljAfebSyLFUofTFoe4
         OoQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729290764; x=1729895564;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7munNqxr9rjSXzDOYZctb9ImrHCkQYzRfgFVjXf76UU=;
        b=mxRFkGnOMxyTIHBFGHhV/VvUZB+VC8J72U9WTrTQj1rOp8xZMOdPEOTzIt8Mp7LctP
         3DLfP5P7QGCHvP0PgiKpkJE5ipa6fX3vMDV22K9NSTggoCIquvoU45WsEMgMIQXX+aoE
         YxJTTJttw0T+4eXFLi0M8AsfhbZRSMPgsTafIvE+QFpKM8Z7NWpBkoufb/CP03EG+x3V
         lAdjx4uiQDdHcxAdU/efwqLtodMIBZVhP+wYJX7hUTjHYqlz4RhXqG2ZHnZLgtPDXGy/
         AjyYfWacig5m50YRoyhKPVivBIMu3H2aqj9T/8H5a5HuX98CAiJ10wr1CmlGQuv8oLXK
         GVzw==
X-Gm-Message-State: AOJu0YzVuinox7PfgUeKWi2GbXBqpJnWPRfONTBxWoYozEMijMeMc9W4
	QlYx1hn4iCnYNlRl9u5ZZz+lNjQf6wffdHRz9iZYq1P21zAKSk9Jj+zDvK8lR4jCpjJf+Wvcrse
	fVkOwgEEjWM4mYg8CDJhNxDSuAyNOHwbB
X-Google-Smtp-Source: AGHT+IFlEaKg6DcAgV2bwo6uJy0puNgwksw50zYt8weuDWTa42wSwkPbuUgt86KhLCxcG+Lb+yYZpvjGEtNXKDKxuzU=
X-Received: by 2002:a05:6870:b4a4:b0:288:2906:6882 with SMTP id
 586e51a60fabf-2892c49ea8emr3932908fac.29.1729290764531; Fri, 18 Oct 2024
 15:32:44 -0700 (PDT)
MIME-Version: 1.0
From: Michael Krasnyk <michael.krasnyk@gmail.com>
Date: Sat, 19 Oct 2024 00:32:33 +0200
Message-ID: <CAL-AFs1GQ+TFJwSax6s2CoVbqBou=BzcJNGYcNFvpffyCpziwQ@mail.gmail.com>
Subject: [PATCH] feat: don't use sub-processes to filter FIXME variables and
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bbc6c50624c7e11d"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 18 Oct 2024 22:32:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13458

--000000000000bbc6c50624c7e11d
Content-Type: text/plain; charset="UTF-8"

From a75040b2a197c0ddb55a047dcc0d834606ddf284 Mon Sep 17 00:00:00 2001
From: Michael Krasnyk <michael.krasnyk@gmail.com>
Date: Fri, 18 Oct 2024 23:50:12 +0200
Subject: [PATCH] feat: don't use sub-processes to filter FIXME variables and
 use only Python

---
 meta/classes-global/staging.bbclass | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/meta/classes-global/staging.bbclass
b/meta/classes-global/staging.bbclass
index c0f5e3ebb6..896592fb7e 100644
--- a/meta/classes-global/staging.bbclass
+++ b/meta/classes-global/staging.bbclass
@@ -176,16 +176,26 @@ def staging_copydir(c, target, dest, seendirs):
         seendirs.add(dest)

 def staging_processfixme(fixme, target, recipesysroot,
recipesysrootnative, d):
-    import subprocess
-
     if not fixme:
         return
-    cmd = "sed -e 's:^[^/]*/:%s/:g' %s | xargs sed -i -e
's:FIXMESTAGINGDIRTARGET:%s:g; s:FIXMESTAGINGDIRHOST:%s:g'" % (target, "
".join(fixme), recipesysroot, recipesysrootnative)
-    for fixmevar in ['PSEUDO_SYSROOT', 'HOSTTOOLS_DIR', 'PKGDATA_DIR',
'PSEUDO_LOCALSTATEDIR', 'LOGFIFO']:
-        fixme_path = d.getVar(fixmevar)
-        cmd += " -e 's:FIXME_%s:%s:g'" % (fixmevar, fixme_path)
-    bb.debug(2, cmd)
-    subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
+
+    import re
+
+    fixme_vars = {re.escape("FIXME_" + fixmevar): 'd.getVar(fixmevar)' for
fixmevar in ['PSEUDO_SYSROOT', 'HOSTTOOLS_DIR', 'PKGDATA_DIR',
'PSEUDO_LOCALSTATEDIR', 'LOGFIFO']}
+    fixme_path = {"FIXMESTAGINGDIRTARGET": recipesysroot,
"FIXMESTAGINGDIRHOST": recipesysrootnative, **fixme_vars}
+    target_re = re.compile(r"^[^/]*(?=/)")
+    fixme_re = re.compile("|".join(fixme_path.keys()))
+    fixme_files = set()
+    # Read fixme files
+    for path in fixme:
+        with open(path) as fixme_file:
+            fixme_files.update(target_re.sub(target, line.strip()) for
line in fixme_file.readlines())
+    # Fix files in-place
+    for path in fixme_files:
+        with open(path, "r+") as fixed_file:
+            text = fixme_re.sub(lambda m:
fixme_path[re.escape(m.group(0))], fixed_file.read())
+            fixed_file.seek(0)
+            fixed_file.write(text)


 def staging_populate_sysroot_dir(targetsysroot, nativesysroot, native, d):
-- 
2.39.3 (Apple Git-146)

--000000000000bbc6c50624c7e11d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">From a75040b2a197c0ddb55a047dcc0d834606ddf284 Mon Sep 17 0=
0:00:00 2001<br>From: Michael Krasnyk &lt;<a href=3D"mailto:michael.krasnyk=
@gmail.com">michael.krasnyk@gmail.com</a>&gt;<br>Date: Fri, 18 Oct 2024 23:=
50:12 +0200<br>Subject: [PATCH] feat: don&#39;t use sub-processes to filter=
 FIXME variables and<br>=C2=A0use only Python<br><br>---<br>=C2=A0meta/clas=
ses-global/staging.bbclass | 26 ++++++++++++++++++--------<br>=C2=A01 file =
changed, 18 insertions(+), 8 deletions(-)<br><br>diff --git a/meta/classes-=
global/staging.bbclass b/meta/classes-global/staging.bbclass<br>index c0f5e=
3ebb6..896592fb7e 100644<br>--- a/meta/classes-global/staging.bbclass<br>++=
+ b/meta/classes-global/staging.bbclass<br>@@ -176,16 +176,26 @@ def stagin=
g_copydir(c, target, dest, seendirs):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
seendirs.add(dest)<br>=C2=A0<br>=C2=A0def staging_processfixme(fixme, targe=
t, recipesysroot, recipesysrootnative, d):<br>- =C2=A0 =C2=A0import subproc=
ess<br>-<br>=C2=A0 =C2=A0 =C2=A0if not fixme:<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return<br>- =C2=A0 =C2=A0cmd =3D &quot;sed -e &#39;s:^[^/]*/:%s/:=
g&#39; %s | xargs sed -i -e &#39;s:FIXMESTAGINGDIRTARGET:%s:g; s:FIXMESTAGI=
NGDIRHOST:%s:g&#39;&quot; % (target, &quot; &quot;.join(fixme), recipesysro=
ot, recipesysrootnative)<br>- =C2=A0 =C2=A0for fixmevar in [&#39;PSEUDO_SYS=
ROOT&#39;, &#39;HOSTTOOLS_DIR&#39;, &#39;PKGDATA_DIR&#39;, &#39;PSEUDO_LOCA=
LSTATEDIR&#39;, &#39;LOGFIFO&#39;]:<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0fixme_p=
ath =3D d.getVar(fixmevar)<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0cmd +=3D &quot; =
-e &#39;s:FIXME_%s:%s:g&#39;&quot; % (fixmevar, fixme_path)<br>- =C2=A0 =C2=
=A0bb.debug(2, cmd)<br>- =C2=A0 =C2=A0subprocess.check_output(cmd, shell=3D=
True, stderr=3Dsubprocess.STDOUT)<br>+<br>+ =C2=A0 =C2=A0import re<br>+<br>=
+ =C2=A0 =C2=A0fixme_vars =3D {re.escape(&quot;FIXME_&quot; + fixmevar): &#=
39;d.getVar(fixmevar)&#39; for fixmevar in [&#39;PSEUDO_SYSROOT&#39;, &#39;=
HOSTTOOLS_DIR&#39;, &#39;PKGDATA_DIR&#39;, &#39;PSEUDO_LOCALSTATEDIR&#39;, =
&#39;LOGFIFO&#39;]}<br>+ =C2=A0 =C2=A0fixme_path =3D {&quot;FIXMESTAGINGDIR=
TARGET&quot;: recipesysroot, &quot;FIXMESTAGINGDIRHOST&quot;: recipesysroot=
native, **fixme_vars}<br>+ =C2=A0 =C2=A0target_re =3D re.compile(r&quot;^[^=
/]*(?=3D/)&quot;)<br>+ =C2=A0 =C2=A0fixme_re =3D re.compile(&quot;|&quot;.j=
oin(fixme_path.keys()))<br>+ =C2=A0 =C2=A0fixme_files =3D set()<br>+ =C2=A0=
 =C2=A0# Read fixme files<br>+ =C2=A0 =C2=A0for path in fixme:<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0with open(path) as fixme_file:<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0fixme_files.update(target_re.sub(target, line.strip=
()) for line in fixme_file.readlines())<br>+ =C2=A0 =C2=A0# Fix files in-pl=
ace<br>+ =C2=A0 =C2=A0for path in fixme_files:<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0with open(path, &quot;r+&quot;) as fixed_file:<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0text =3D fixme_re.sub(lambda m: fixme_path[re.escap=
e(m.group(0))], fixed_file.read())<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0fixed_file.seek(0)<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fixe=
d_file.write(text)<br>=C2=A0<br>=C2=A0<br>=C2=A0def staging_populate_sysroo=
t_dir(targetsysroot, nativesysroot, native, d):<br>-- <br>2.39.3 (Apple Git=
-146)<br><br></div>

--000000000000bbc6c50624c7e11d--

