Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web11.11174.1600521657792095683
 for <poky@lists.yoctoproject.org>;
 Sat, 19 Sep 2020 06:20:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rV72ShxF;
 spf=pass (domain: gmail.com, ip: 209.85.218.65, mailfrom: toertel@gmail.com)
Received: by mail-ej1-f65.google.com with SMTP id lo4so11696101ejb.8
        for <poky@lists.yoctoproject.org>; Sat, 19 Sep 2020 06:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M30RbgEJEIvB7DFVvrmAv9ZWG2+Xbo/Sijptd9UsNuo=;
        b=rV72ShxFoKltiadovcqfEC2ah+9jAgikMQ7rXhmUP3K+ZUI2v+byLn7fDuSEfkrARO
         FpnJwWUNL7FcgWGq63tDuIoxJqq8ba1Aldq1qdAI6VHDLhcxJE47lOTX9ckEki4RxEsd
         lZlxmgY2QtwBNTjuG4Oq0xoT/96veZnLTswyxvNM554nG48esC11XVcsut87axiiqWvx
         31jHOhbpAFOFhshqyQ6FcC9V0/HXNqFrObcW8Imi4RH/Uu87QwvHtDjjGVyvShu9kSVA
         Qe2+uR2j35wFXuOuMah08I/37eUeuvs/miU/K/pZs+3xHXMDfxKvBGeMHir3irnO69h8
         L4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M30RbgEJEIvB7DFVvrmAv9ZWG2+Xbo/Sijptd9UsNuo=;
        b=sbBXjxffWmxil1Jeg7vDX0jLRqqxCs9NEIzK16K6PbL5ARUE8O+zcP0uJxWQupTfCK
         DybOr6yy4loIDgCLKgxJqnmwpElbsbALD5QT9WSsrdvWGsjFOB0/JcWy8qFvwbmQWP3G
         SZoFnc/bl/a5+Z1g0IlFnQFLu4UIQHJN+phuhGXv0rp2j5ETQEpC803C6/xGHMaUQ2kR
         CqZXGmzfhlROJ6Dn2o8Abg6vZwaqP16SF5NQFOKnd4dM5ywYRkLxK3nR5XDheqd6mFSM
         v5FdRz5wKKlQcRP689pAFO6gFhIX0WpfbMTdh4uye0jHBE2w6hJk0YFTG6SCi8KYzevw
         26+w==
X-Gm-Message-State: AOAM5309kXHupObgS9FtVvmZTBZTGMJ5pfhIe+PY9z1TUDfGxuEqFop/
	jzPD6epePWrJ00SXmagQxuN77zZOeps=
X-Google-Smtp-Source: ABdhPJy4GTWxPzorNIEwP5z/Q4LUnH1oM95Yw97ca5OeWPHnQB16JuuZDnfjNiCu8UPide3jOGZ7Tw==
X-Received: by 2002:a17:906:455:: with SMTP id e21mr42918632eja.170.1600521655932;
        Sat, 19 Sep 2020 06:20:55 -0700 (PDT)
Return-Path: <toertel@gmail.com>
Received: from gigabyte.fritz.box (p200300cfaf38d80028ca4d2d40a8faef.dip0.t-ipconnect.de. [2003:cf:af38:d800:28ca:4d2d:40a8:faef])
        by smtp.gmail.com with ESMTPSA id lr14sm4495522ejb.0.2020.09.19.06.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 06:20:55 -0700 (PDT)
From: "Mark Jonas" <toertel@gmail.com>
To: poky@lists.yoctoproject.org
Cc: elizabeth.flanagan@intel.com,
	pidge@toganlabs.com,
	Mark Jonas <toertel@gmail.com>
Subject: [PATCH 1/2] Add license text for PSF-2.0
Date: Sat, 19 Sep 2020 15:19:50 +0200
Message-Id: <20200919131951.11129-2-toertel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200919131951.11129-1-toertel@gmail.com>
References: <20200919131951.11129-1-toertel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Mark Jonas <toertel@gmail.com>
---
 meta/files/common-licenses/PSF-2.0 | 49 ++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 meta/files/common-licenses/PSF-2.0

diff --git a/meta/files/common-licenses/PSF-2.0 b/meta/files/common-licenses/PSF-2.0
new file mode 100644
index 0000000000..4e673e93fc
--- /dev/null
+++ b/meta/files/common-licenses/PSF-2.0
@@ -0,0 +1,49 @@
+
+PYTHON SOFTWARE FOUNDATION LICENSE VERSION 2
+--------------------------------------------
+
+1. This LICENSE AGREEMENT is between the Python Software Foundation
+("PSF"), and the Individual or Organization ("Licensee") accessing and
+otherwise using this software ("Python") in source or binary form and
+its associated documentation.
+
+2. Subject to the terms and conditions of this License Agreement, PSF
+hereby grants Licensee a nonexclusive, royalty-free, world-wide
+license to reproduce, analyze, test, perform and/or display publicly,
+prepare derivative works, distribute, and otherwise use Python
+alone or in any derivative version, provided, however, that PSF's
+License Agreement and PSF's notice of copyright, i.e., "Copyright (c)
+2001, 2002, 2003, 2004, 2005, 2006 Python Software Foundation; All Rights
+Reserved" are retained in Python alone or in any derivative version
+prepared by Licensee.
+
+3. In the event Licensee prepares a derivative work that is based on
+or incorporates Python or any part thereof, and wants to make
+the derivative work available to others as provided herein, then
+Licensee hereby agrees to include in any such work a brief summary of
+the changes made to Python.
+
+4. PSF is making Python available to Licensee on an "AS IS"
+basis. PSF MAKES NO REPRESENTATIONS OR WARRANTIES, EXPRESS OR
+IMPLIED. BY WAY OF EXAMPLE, BUT NOT LIMITATION, PSF MAKES NO AND
+DISCLAIMS ANY REPRESENTATION OR WARRANTY OF MERCHANTABILITY OR FITNESS
+FOR ANY PARTICULAR PURPOSE OR THAT THE USE OF PYTHON WILL NOT
+INFRINGE ANY THIRD PARTY RIGHTS.
+
+5. PSF SHALL NOT BE LIABLE TO LICENSEE OR ANY OTHER USERS OF PYTHON
+FOR ANY INCIDENTAL, SPECIAL, OR CONSEQUENTIAL DAMAGES OR LOSS AS
+A RESULT OF MODIFYING, DISTRIBUTING, OR OTHERWISE USING PYTHON,
+OR ANY DERIVATIVE THEREOF, EVEN IF ADVISED OF THE POSSIBILITY THEREOF.
+
+6. This License Agreement will automatically terminate upon a material
+breach of its terms and conditions.
+
+7. Nothing in this License Agreement shall be deemed to create any
+relationship of agency, partnership, or joint venture between PSF and
+Licensee. This License Agreement does not grant permission to use PSF
+trademarks or trade name in a trademark sense to endorse or promote
+products or services of Licensee, or any third party.
+
+8. By copying, installing or otherwise using Python, Licensee
+agrees to be bound by the terms and conditions of this License
+Agreement.
-- 
2.25.1

