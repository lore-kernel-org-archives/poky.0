Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web10.7717.1584045896477857132
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Mar 2020 13:44:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rC+hZC4q;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: jan.vermaete@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id w9so7124242iob.12
        for <poky@lists.yoctoproject.org>; Thu, 12 Mar 2020 13:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=hEvd3XwzjzR3k8JU5sn79lohqN7Uac/Y1D2kDBp5fl8=;
        b=rC+hZC4qVtpLyigtJwyut/jv8BfQlhCGFKaU4ykB22coHtkjdBMfKBbpMlC/TLuUEF
         V9cD3K0aHRqMMiwNmus7ah1oDNwFNy6EcabrlctAOqX40Jyzr5GRQNgM7MSIQRMp+9kN
         FwAqxL19oHYSOrfIxPhRLiTLR6fJ31j2D7tF3LDU6L0v6GMcpA0jq09GxLRwGsKgSw9D
         IEw5p7UHReQuZLGMHJk1k/jaiqYuy+snE/CwJ8MNSsvx4Sv9hyU9kGAQYRYpp92u/E/v
         R5zYjAB21GAJA36MYdJV3yBAgtU8uMQ8vRowN2Wsb+GT7qpQ6Qe3EeSN8scHjf/P7PZE
         uTqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hEvd3XwzjzR3k8JU5sn79lohqN7Uac/Y1D2kDBp5fl8=;
        b=IPqWW9WmlC7cZam2+oQMrRt1wZi2AwRLP/28NIRzjZ5r21DXXQoEl8s7bSd5T3EIbL
         4Pc1x2IbzYTqrEbYnoOVZ4ftFc3U4uq9MyvaNp1R9Igl+ZR0KmLJXVpmqrIrKHT55jsV
         r5g+A/4JOMmaDZrH/Ct7tK1w8q0Qu+Bnrayv2aGaif0rWhA6gFGkZEBpqsdmv/aj8MG/
         k1oUQ2xNkUhFvvoxFIpnOcEA7YpOfj5sAJt3OUKIJHVGIcVgMeE1UllECBU/Od+8w8WM
         wms2yzsWmUe7SUlsd8C2v82lo8HFIchPM+/kMTYtZpwOt+k4CweGmMyFsd39rLmChfvj
         lArw==
X-Gm-Message-State: ANhLgQ1AFJJ5SYPtkUtdtXUDx1pgyleicYEmbZKCDsbHFP5S/NNIPcAY
	3DvofTqB4udcoha54+MdbPeIg9mB/NpiOxFyKt7GWabUwz0=
X-Google-Smtp-Source: ADFU+vsrQ1mpfWVy0w8yWrKPw7pO9uy8wb0ZSRJ4xQD3Ym/tuM57KRmhX6iRfp38ocn/xyjp6NaCYLZV1StFg7L0O4Q=
X-Received: by 2002:a5d:8952:: with SMTP id b18mr9474815iot.40.1584045895749;
 Thu, 12 Mar 2020 13:44:55 -0700 (PDT)
MIME-Version: 1.0
From: "jan" <jan.vermaete@gmail.com>
Date: Thu, 12 Mar 2020 21:44:44 +0100
Message-ID: <CABF_=yj4KOgvujFJyS6NPY0vQBf=1HyErgLHf3a0V9QW7r-Bhg@mail.gmail.com>
Subject: [PATCH] [scripts] Cleaned some python2 leftover in ksize.py
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Although the script was running with Python3, almost no detailed
output was generated.

Signed-off-by: Jan Vermaete <jan.vermaete@gmail.com>
---
 scripts/tiny/ksize.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/tiny/ksize.py b/scripts/tiny/ksize.py
index bc11919f4b..8316b85cb1 100755
--- a/scripts/tiny/ksize.py
+++ b/scripts/tiny/ksize.py
@@ -27,7 +27,7 @@ def usage():
 class Sizes:
     def __init__(self, glob):
         self.title = glob
-        p = Popen("size -t " + str(glob), shell=True, stdout=PIPE, stderr=PIPE)
+        p = Popen("size -t " + str(glob), shell=True, stdout=PIPE,
stderr=PIPE, universal_newlines=True)
         output = p.communicate()[0].splitlines()
         if len(output) > 2:
             sizes = output[-1].split()[0:4]
@@ -49,14 +49,14 @@ class Report:
         path = os.path.dirname(filename)

         p = Popen("ls " + str(path) + "/*.o | grep -v built-in.o",
-                  shell=True, stdout=PIPE, stderr=PIPE)
+                  shell=True, stdout=PIPE, stderr=PIPE,
universal_newlines=True)
         glob = ' '.join(p.communicate()[0].splitlines())
         oreport = Report(glob, str(path) + "/*.o")
         oreport.sizes.title = str(path) + "/*.o"
         r.parts.append(oreport)

         if subglob:
-            p = Popen("ls " + subglob, shell=True, stdout=PIPE, stderr=PIPE)
+            p = Popen("ls " + subglob, shell=True, stdout=PIPE,
stderr=PIPE, universal_newlines=True)
             for f in p.communicate()[0].splitlines():
                 path = os.path.dirname(f)
                 r.parts.append(Report.create(f, path, str(path) +
"/*/built-in.o"))
--
2.17.1
