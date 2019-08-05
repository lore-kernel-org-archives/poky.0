Return-Path: <eduardoabinader@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D346E00BA1; Sun,  4 Aug 2019 22:16:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (eduardoabinader[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E88E00A00
	for <poky@yoctoproject.org>; Sun,  4 Aug 2019 22:16:36 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id v15so73393341wml.0
	for <poky@yoctoproject.org>; Sun, 04 Aug 2019 22:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=+UbfYrpb4MHfGl+WpN+U5Aq/aDPik7dm1X+fdtxjIdU=;
	b=BKCNJbLh7vWtrHr2a5+YkVsDzswgLdG9fprj+2wkeDFbiU7K5EWb7u3hzhy4Iefvl3
	s9Yn87nrJkXPSVNJFsLDCLgb3efW/Fnte//Gbk40bhjK6728WcNTZrAyzsaCig8ZQLLO
	yCJ0STOsWSKvpWa1FwCFGhkCCS/zR7S0hpGZ2s20NtIA7FnVJ7P4I9B+MfHBASew5dJT
	cJhPD36QOazo0sFtx/mtoTiVMjrQIz7aGc09X0txycORisAziGzBvKmuYhv/7JUuDNsH
	LL9kBeoUaDvtYwMfSusoWGzb20D2g2MC++rSeWPWF79Bd+PpOAX95Wk7AHXDpA7jJFCK
	LsiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=+UbfYrpb4MHfGl+WpN+U5Aq/aDPik7dm1X+fdtxjIdU=;
	b=Df5DWDJt8j5AvQhdBHnIW5lHx57TmlRWS0l3mkp8YmVKhhiVUkdj96IrjE0HB93Kzf
	+/68dY5qZq8Y+QDW0CPtXVmfG39uNy8H34Kaq2EpvTfvRuRtumIUPaFGYDsCTabgGlq/
	MUv3K9iQ35QLcEenMTQ81wMEFkBqZrSmcJMsW8xJTYrvv3pZdI0LvuiO+M2WgKFllNNH
	irSl2mSo1lUaPPEvYyUS8cHg0dDaqunk204bealxX6QKymCoIphNpTvsPFF6SuP8ScIh
	VQCC8+4nCfthrDczDJmcDUhbLYoSYbF/98zNpiPffe0ZHkASReiKKqs7ybqdwYxXgsP7
	XJ/Q==
X-Gm-Message-State: APjAAAU+jUi7Iov28VDMcr/ORk4iaZ/u6YDncis1oGjinGM3TndNpiAS
	IiRXuY/4NbKmPmnpRlpDga4/PA9lp7Q=
X-Google-Smtp-Source: APXvYqzRH7HX11cRtfWJuzBcXgT1OxlYbl5K4fJzIycCoxWBtplMU9C87gVCYvsRaCla43+DlzPj8A==
X-Received: by 2002:a1c:a7ca:: with SMTP id
	q193mr17390079wme.150.1564982194987; 
	Sun, 04 Aug 2019 22:16:34 -0700 (PDT)
Received: from localhost.localdomain (p5B2F645F.dip0.t-ipconnect.de.
	[91.47.100.95]) by smtp.gmail.com with ESMTPSA id
	y16sm176740000wrg.85.2019.08.04.22.16.33 for <poky@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 04 Aug 2019 22:16:34 -0700 (PDT)
From: Eduardo Abinader <eduardoabinader@gmail.com>
X-Google-Original-From: Eduardo Abinader <eduardo.abinader@gmail.com>
To: poky@yoctoproject.org
Date: Mon,  5 Aug 2019 07:16:28 +0200
Message-Id: <20190805051628.6341-1-eduardo.abinader@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH] devtool: add ssh key option do deploy-target
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Aug 2019 05:16:37 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Eduardo Abinader <eduardo.abinader@gmail.com>
---
 scripts/lib/devtool/deploy.py | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/deploy.py
index d1ce2309f9..6a997735fc 100644
--- a/scripts/lib/devtool/deploy.py
+++ b/scripts/lib/devtool/deploy.py
@@ -212,6 +212,9 @@ def deploy(args, config, basepath, workspace):
             scp_port = "-P %s" % args.port
             ssh_port = "-p %s" % args.port
 
+        if args.key:
+            extraoptions += ' -i %s' % args.key
+
         # In order to delete previously deployed files and have the manifest file on
         # the target, we write out a shell script and then copy it to the target
         # so we can then run it (piping tar output to it).
@@ -326,6 +329,8 @@ def register_commands(subparsers, context):
     parser_deploy.add_argument('--no-check-space', help='Do not check for available space before deploying', action='store_true')
     parser_deploy.add_argument('-e', '--ssh-exec', help='Executable to use in place of ssh')
     parser_deploy.add_argument('-P', '--port', help='Specify port to use for connection to the target')
+    parser_deploy.add_argument('-I', '--key',
+                               help='Specifiy ssh private key for connection to the target')
 
     strip_opts = parser_deploy.add_mutually_exclusive_group(required=False)
     strip_opts.add_argument('-S', '--strip',
@@ -349,4 +354,7 @@ def register_commands(subparsers, context):
     parser_undeploy.add_argument('-n', '--dry-run', help='List files to be undeployed only', action='store_true')
     parser_undeploy.add_argument('-e', '--ssh-exec', help='Executable to use in place of ssh')
     parser_undeploy.add_argument('-P', '--port', help='Specify port to use for connection to the target')
+    parser_undeploy.add_argument('-I', '--key',
+                               help='Specifiy ssh private key for connection to the target')
+
     parser_undeploy.set_defaults(func=undeploy)
-- 
2.20.1


