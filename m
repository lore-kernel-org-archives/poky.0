Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web10.5060.1588767979589102369
 for <poky@lists.yoctoproject.org>;
 Wed, 06 May 2020 05:26:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f+Zzkrvc;
 spf=pass (domain: gmail.com, ip: 209.85.166.47, mailfrom: jan.vermaete@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id j8so1842640iog.13
        for <poky@lists.yoctoproject.org>; Wed, 06 May 2020 05:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pBMTP7EJgsVq+FTmw2gPRTzl+pLVooorg+tm+p0kqfg=;
        b=f+Zzkrvc0inTMLQ1zyzv1Kix8e/QmWthujXm8ArsrEU65g8q40jwHxo6854D/mkekL
         aFL+d4xT4jndQgwllHpkLaEDr/qKmmFBbmyqK4JHNNGDi0l1y3VaLiqnvtPwHUcNqtdC
         l+fFFfXOOZgRWSdnDZ9kMfo7ts6ODlYEw1mMy1ZsBYZDovI/Rr5wbARGJ8CoVRa+elZ6
         XSukQlmXtJZaKTeCTYyQWrUCoUYMG6aQUGQyTbJvghCfDdK4VjLg28csAgEBBXfmpTvG
         u3ghD8JBQsXmWT2c3VxGFmgxwj/e/QYGLB0vp+NeVm5v/VLnO+fAVC8NoqzbIbWeex5h
         XUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pBMTP7EJgsVq+FTmw2gPRTzl+pLVooorg+tm+p0kqfg=;
        b=ZNdCwhfWVgUw6jFpz9tWfJ3Ng8Yl+tSo1wPoYofu/2iaAiJkmxFhe/i3W63MXGQtSE
         WgUmYRQzhgA8ch5xuIMJEOtrPAcA3zhzG8Twu4yDwRWqCfFJb0eebcJVUpWhL7zi8xTg
         WJ7shvylkLhJNri/ntBAZpK2ldDR6iSfcVrqaw/QErufPi6ol0IQP11tNGXql1H25Sza
         65vufVdxFlalJISsqEqsR9ahAqKiSBnub0bSvaCbax8JN+jMzHwKzFOZg1ApQbRfL/oD
         u/yDreEbmnqPG4EJS5BTbnB+TSPo1NYOx8Gi7bNVX1zkzTYP1Fu0kHhmSDYg8rokgmYM
         cxeQ==
X-Gm-Message-State: AGi0PublUSx/FMi9pR5PgH51IGA98wpGceYy6gz8d/A+2V9FvBHwdq6Y
	0HDjSJSIYMA6rduCjWVwcOa5psuNz9FUiaqDwmlPoXGOmGc=
X-Google-Smtp-Source: APiQypJx3T4OUZgN80xPjNApzpBRRKhnnts6ap03tGzoF20+q6lMCtAMTA/XAkq8rlNldLCS7IDanO9z6AqjFhZubZQ=
X-Received: by 2002:a02:cbc6:: with SMTP id u6mr8440869jaq.27.1588767978837;
 Wed, 06 May 2020 05:26:18 -0700 (PDT)
MIME-Version: 1.0
From: "jan" <jan.vermaete@gmail.com>
Date: Wed, 6 May 2020 14:26:08 +0200
Message-ID: <CABF_=yiD+dm2E2ZfWLiz3hqVVrUo+ht00F4agh5z1eyX504BTw@mail.gmail.com>
Subject: [poky][PATCH][scripts] Allowing to work ksize also with built-in.a
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000025da705a4f9dffd"

--000000000000025da705a4f9dffd
Content-Type: text/plain; charset="UTF-8"

From b128294905083f8efe1acffac4ad9ac41f950526 Mon Sep 17 00:00:00 2001
From: Jan Vermaete <jan.vermaete@gmail.com>
Date: Wed, 6 May 2020 14:07:17 +0200
Subject: [PATCH 1/1] Newer Linux kernels are producing built-in.a files.

In the past the file was named 'built-in.o'.
Nowadays it is 'built-in.a'.

The script is modified to work with both.  I expect
it will not happen that there are built-in.a and built-in.o
files in the same kernel.

Signed-off-by: Jan Vermaete <jan.vermaete@gmail.com>
---
 scripts/tiny/ksize.py | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/tiny/ksize.py b/scripts/tiny/ksize.py
index 8316b85cb1..144b3a3ae8 100755
--- a/scripts/tiny/ksize.py
+++ b/scripts/tiny/ksize.py
@@ -4,7 +4,7 @@
 #
 # SPDX-License-Identifier: GPL-2.0-or-later
 #
-# Display details of the kernel build size, broken up by built-in.o. Sort
+# Display details of the kernel build size, broken up by built-in.[o,a].
Sort
 # the objects by size. Run from the top level kernel build directory.
 #
 # Author: Darren Hart <dvhart@linux.intel.com>
@@ -48,7 +48,7 @@ class Report:
         r = Report(filename, title)
         path = os.path.dirname(filename)

-        p = Popen("ls " + str(path) + "/*.o | grep -v built-in.o",
+        p = Popen("ls " + str(path) + "/*.o | grep -v built-in.o | grep -v
build-in.a",
                   shell=True, stdout=PIPE, stderr=PIPE,
universal_newlines=True)
         glob = ' '.join(p.communicate()[0].splitlines())
         oreport = Report(glob, str(path) + "/*.o")
@@ -59,7 +59,7 @@ class Report:
             p = Popen("ls " + subglob, shell=True, stdout=PIPE,
stderr=PIPE, universal_newlines=True)
             for f in p.communicate()[0].splitlines():
                 path = os.path.dirname(f)
-                r.parts.append(Report.create(f, path, str(path) +
"/*/built-in.o"))
+                r.parts.append(Report.create(f, path, str(path) +
"/*/built-in.[o,a]"))
             r.parts.sort(reverse=True)

         for b in r.parts:
@@ -139,7 +139,7 @@ def main():
         else:
             assert False, "unhandled option"

-    glob = "arch/*/built-in.o */built-in.o"
+    glob = "arch/*/built-in.[o,a] */built-in.[o,a]"
     vmlinux = Report.create("vmlinux",  "Linux Kernel", glob)

     vmlinux.show()
-- 
2.17.1

--000000000000025da705a4f9dffd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>From b128294905083f8efe1acffac4ad9ac41f950526 Mon Sep=
 17 00:00:00 2001<br>From: Jan Vermaete &lt;<a href=3D"mailto:jan.vermaete@=
gmail.com">jan.vermaete@gmail.com</a>&gt;<br>Date: Wed, 6 May 2020 14:07:17=
 +0200<br>Subject: [PATCH 1/1] Newer Linux kernels are producing built-in.a=
 files.<br><br>In the past the file was named &#39;built-in.o&#39;.<br>Nowa=
days it is &#39;built-in.a&#39;.<br><br>The script is modified to work with=
 both.=C2=A0 I expect<br>it will not happen that there are built-in.a and b=
uilt-in.o<br>files in the same kernel.<br><br>Signed-off-by: Jan Vermaete &=
lt;<a href=3D"mailto:jan.vermaete@gmail.com">jan.vermaete@gmail.com</a>&gt;=
<br>---<br>=C2=A0scripts/tiny/ksize.py | 8 ++++----<br>=C2=A01 file changed=
, 4 insertions(+), 4 deletions(-)<br><br>diff --git a/scripts/tiny/ksize.py=
 b/scripts/tiny/ksize.py<br>index 8316b85cb1..144b3a3ae8 100755<br>--- a/sc=
ripts/tiny/ksize.py<br>+++ b/scripts/tiny/ksize.py<br>@@ -4,7 +4,7 @@<br>=
=C2=A0#<br>=C2=A0# SPDX-License-Identifier: GPL-2.0-or-later<br>=C2=A0#<br>=
-# Display details of the kernel build size, broken up by built-in.o. Sort<=
br>+# Display details of the kernel build size, broken up by built-in.[o,a]=
. Sort<br>=C2=A0# the objects by size. Run from the top level kernel build =
directory.<br>=C2=A0#<br>=C2=A0# Author: Darren Hart &lt;<a href=3D"mailto:=
dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;<br>@@ -48,7 +48,7 @@=
 class Report:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r =3D Report(filename, =
title)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0path =3D os.path.dirname(filena=
me)<br>=C2=A0<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D Popen(&quot;ls &quot; +=
 str(path) + &quot;/*.o | grep -v built-in.o&quot;,<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0p =3D Popen(&quot;ls &quot; + str(path) + &quot;/*.o | grep -v bu=
ilt-in.o | grep -v build-in.a&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0shell=3DTrue, stdout=3DPIPE, stderr=3DPIP=
E, universal_newlines=3DTrue)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0glob =3D=
 &#39; &#39;.join(p.communicate()[0].splitlines())<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0oreport =3D Report(glob, str(path) + &quot;/*.o&quot;)<br>@@ -=
59,7 +59,7 @@ class Report:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0p =3D Popen(&quot;ls &quot; + subglob, shell=3DTrue, stdout=3DPIPE, s=
tderr=3DPIPE, universal_newlines=3DTrue)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0for f in p.communicate()[0].splitlines():<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0path =3D os.path.dirname(f=
)<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r.parts.appen=
d(Report.create(f, path, str(path) + &quot;/*/built-in.o&quot;))<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r.parts.append(Report.c=
reate(f, path, str(path) + &quot;/*/built-in.[o,a]&quot;))<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r.parts.sort(reverse=3DTrue)<br>=C2=A0<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for b in r.parts:<br>@@ -139,7 +139,7 @=
@ def main():<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0assert False, &quot;unhandled option&quot=
;<br>=C2=A0<br>- =C2=A0 =C2=A0glob =3D &quot;arch/*/built-in.o */built-in.o=
&quot;<br>+ =C2=A0 =C2=A0glob =3D &quot;arch/*/built-in.[o,a] */built-in.[o=
,a]&quot;<br>=C2=A0 =C2=A0 =C2=A0vmlinux =3D Report.create(&quot;vmlinux&qu=
ot;, =C2=A0&quot;Linux Kernel&quot;, glob)<br>=C2=A0<br>=C2=A0 =C2=A0 =C2=
=A0vmlinux.show()<br>-- <br>2.17.1<br><br></div></div>

--000000000000025da705a4f9dffd--
