Received: from mail-yw1-f45.google.com (mail-yw1-f45.google.com [209.85.161.45])
 by mx.groups.io with SMTP id smtpd.web11.2064.1579028833142782428
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 11:07:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D43JiAsG;
 spf=pass (domain: gmail.com, ip: 209.85.161.45, mailfrom: stevenrwalter@gmail.com)
Received: by mail-yw1-f45.google.com with SMTP id h126so9863686ywc.6
        for <poky@lists.yoctoproject.org>; Tue, 14 Jan 2020 11:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pbvtq35S5ldbGa9HlzICpZuSsX+1yac7LccT0aMHqD0=;
        b=D43JiAsGhglnYE5SdMtR66xgwBqutbkevbgg/LzZInyylWVpG3Oqd38JpEQeH7n1b5
         N458Ry7+Z+ZH37PHEIWBqRoFrtWTr178C5px8xNZM+QrPlcTtw6AcXS8fyGj8XppOz2N
         Zt1dRzuX6Gu7eIeA7jC0fd85qMrAtyQM23GEeGmBmCRcYJmWZzSrFJXE4epODQVJBniB
         yQZJce+g+WPrZHz2a8faxShE+kGzBE6lBz9ofAJcG3r78/6MJKCPP1e7hU/qJcHCCp8y
         TukVYHyBM0TvSCfiS/vwruGlCTJVbGt0c+fMGHsBV1kegqW0MvyEY1GnLBW4I66FBo/m
         UL9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pbvtq35S5ldbGa9HlzICpZuSsX+1yac7LccT0aMHqD0=;
        b=RLaVbx/IyV+C9n8Pq8cAdF9nYCb81S7+bADO8o6F4jrfO0AJWRurgOohIFEqe4MY4B
         3yPLxY+1Hkx9efKwG+ZAr6rZlDWOhqZhhph8p5wbA9073zpo4neMI9DNFZFXXwbFJmpR
         YAGdEsPbmFPOeENEjfPfNYt0acPNkDPrC9lbHrxmTxZo494V5T9gZ4aG/rj9Ar8y0PuB
         alJByW6QgOmzC/HJKxAzC+A0pYaxXdMJpfnFLQsHVMXocUn1IQ6WhSLODRcTGIwKaZYh
         Xe/lpVJpBNYn6HKAVrXMPxsR7Hr/Ug7AiL27J9RUbYttWd7U7/YGED8WBn+einWVjPSW
         F2xQ==
X-Gm-Message-State: APjAAAXppAVxE0XEXSKTHrUl0QdQSHRVw8o9KuzI3z2Jp/OC3cw5rdsI
	anoMt39qjGwlb2FOva3on/tNX+TwBuU=
X-Google-Smtp-Source: APXvYqyDsWiiOuSCHvw8NALMvaUHcK+nvp60SwJR9zfNKjNQqKfdwaRLVh62Fki5IGOYz9IEf5ObfA==
X-Received: by 2002:a81:9e49:: with SMTP id n9mr18284873ywj.234.1579028832024;
        Tue, 14 Jan 2020 11:07:12 -0800 (PST)
Return-Path: <stevenrwalter@gmail.com>
Received: from brock.localdomain ([2605:a000:1707:25a:1de4:eabf:e8ce:977a])
        by smtp.gmail.com with ESMTPSA id h184sm7005138ywa.70.2020.01.14.11.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 11:07:11 -0800 (PST)
From: stevenrwalter@gmail.com
To: poky@lists.yoctoproject.org
Cc: Steven Walter <stevenrwalter@gmail.com>
Subject: [PATCH] Allow original $GPG_AGENT_INFO into do_fetch
Date: Tue, 14 Jan 2020 14:07:07 -0500
Message-Id: <20200114190707.4260-1-stevenrwalter@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

subversion 1.9 uses gpg to encrypt authentication details that are
stored in ~/.subversion.  This means that GPG_AGENT_INFO needs to be
available when svn is run by do_fetch, or else svn will not be able to
authenticate to the remote server.  Treat GPG_AGENT_INFO like
SSH_AUTH_SOCK, including it in the fetch environment and BB_ENV_EXTRAWHITE
---
 bitbake/lib/bb/fetch2/__init__.py | 1 +
 meta/conf/bitbake.conf            | 2 +-
 scripts/oe-buildenv-internal      | 3 ++-
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 5b9483a..d6dc4a5 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -830,6 +830,7 @@ def runfetchcmd(cmd, d, quiet=False, cleanup=None, log=None, workdir=None):
                   'GIT_SSL_CAINFO',
                   'GIT_SMART_HTTP',
                   'SSH_AUTH_SOCK', 'SSH_AGENT_PID',
+                  'GPG_AGENT_INFO',
                   'SOCKS5_USER', 'SOCKS5_PASSWD',
                   'DBUS_SESSION_BUS_ADDRESS',
                   'P4CONFIG']
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index c6490eb..b241237 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -871,7 +871,7 @@ BB_HASHCONFIG_WHITELIST ?= "${BB_HASHBASE_WHITELIST} DATE TIME SSH_AGENT_PID \
     PARALLEL_MAKE BB_NUMBER_THREADS BB_ORIGENV BB_INVALIDCONF BBINCLUDED \
     GIT_PROXY_COMMAND ALL_PROXY all_proxy NO_PROXY no_proxy FTP_PROXY ftp_proxy \
     HTTP_PROXY http_proxy HTTPS_PROXY https_proxy SOCKS5_USER SOCKS5_PASSWD \
-    BB_SETSCENE_ENFORCE BB_CMDLINE BB_SERVER_TIMEOUT"
+    BB_SETSCENE_ENFORCE BB_CMDLINE BB_SERVER_TIMEOUT GPG_AGENT_INFO"
 BB_SIGNATURE_EXCLUDE_FLAGS ?= "doc deps depends \
     lockfiles type vardepsexclude vardeps vardepvalue vardepvalueexclude \
     file-checksums python func task export unexport noexec nostamp dirs cleandirs \
diff --git a/scripts/oe-buildenv-internal b/scripts/oe-buildenv-internal
index 6773872..99a2ee1 100755
--- a/scripts/oe-buildenv-internal
+++ b/scripts/oe-buildenv-internal
@@ -133,7 +133,8 @@ BB_ENV_EXTRAWHITE_OE="MACHINE DISTRO TCMODE TCLIBC HTTP_PROXY http_proxy \
 HTTPS_PROXY https_proxy FTP_PROXY ftp_proxy FTPS_PROXY ftps_proxy ALL_PROXY \
 all_proxy NO_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY \
 SDKMACHINE BB_NUMBER_THREADS BB_NO_NETWORK PARALLEL_MAKE GIT_PROXY_COMMAND \
-SOCKS5_PASSWD SOCKS5_USER SCREENDIR STAMPS_DIR BBPATH_EXTRA BB_SETSCENE_ENFORCE"
+SOCKS5_PASSWD SOCKS5_USER SCREENDIR STAMPS_DIR BBPATH_EXTRA BB_SETSCENE_ENFORCE \
+GPG_AGENT_INFO"
 
 BB_ENV_EXTRAWHITE="$(echo $BB_ENV_EXTRAWHITE $BB_ENV_EXTRAWHITE_OE | tr ' ' '\n' | LC_ALL=C sort --unique | tr '\n' ' ')"
 
-- 
2.7.4

