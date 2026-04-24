Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71C1BFF884A
	for <webhook@archiver.kernel.org>; Fri, 24 Apr 2026 21:06:05 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.32179.1777064758091086839
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Apr 2026 14:05:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=2SgN0t7e;
 spf=pass (domain: smile.fr, ip: 209.85.221.66, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-43d7badbd7dso4108389f8f.2
        for <poky@lists.yoctoproject.org>; Fri, 24 Apr 2026 14:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1777064756; x=1777669556; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=o8DHfIB2jitLlREl8TAPtNXYLxRoMCeRpKYC7BvSuRA=;
        b=2SgN0t7eKGPwcKbZTij6gxdXEAT/4ZvyQONwjTlYS0UntKPz/0u8biVq+mHueW3/cu
         ovRk/6JkKPFGmCWqzk26TrWTr1i9BQ+KjuSLTeEAMt/EbwiJyjQpLS7ymZ8ArB/gv6OF
         sTdOAcgkEhxSpFZqg2uq2MV3VzwpCSp8/K5VU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777064756; x=1777669556;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o8DHfIB2jitLlREl8TAPtNXYLxRoMCeRpKYC7BvSuRA=;
        b=gNt44TrGJCPyISTXbIUU9HVwdPE5FhcKGh75HZbJSh5wCQyVbGgnl9RbXtb9AsXJer
         JkhOd6KzE1KwMlqV7ui2IpRnncz+5D+JKtcnJLAzqgEE9k8RXsYGJ1UnHxkbrhUTVzY+
         5KuMSj8Cf8GY+MLMVo17AQmGAmcs9ExQ+DrLqCsrLzduLdGB2KJPlV3bhmsrO0wGIKta
         H18zYG6EGRv49Y7OlEQDvIlmSdOjjCw5I6HDm8vlxnQEo1FkloGahxxjf8mZaKUfxKXx
         jk53dusrOX158CglC6owOVS53o8ILv8ri7rIZheLKwg3L2dNJavCriRgIX3xjTNaHlIO
         vJwQ==
X-Gm-Message-State: AOJu0YxZEY/IfdLsLbORxn4ZuYefd6McmyArJexoUGwZWFxqeIj+Rc/g
	E42h5+Cwmw0QlF9HC59PM73SQS3DfR49Uy8yFWCWHwPQLfjKEIPClunKGHPLk0tGsbxX968Ak9f
	NPLbUXhPCsltB
X-Gm-Gg: AeBDiesFbvmLZLI7bz7SCBnHq0Brt2xntmRIhFTJZRZ6qY1QxtFIm6l7Xy6vL0KqwWr
	hC9shcgUlw8DNFu2j7Uo+p9NQZPZ9MoFPl3l5zha1W6+yKRIHBJZCMsd95mfT6pUpTApNP1W77r
	uF4HAmSSihQ4t/CAZUMinomsTOKZJBtZvxUp4kA4yxF+KQIB/12/lNDD2uzNmJb4Oa3AENhRhW8
	ji69TWGUWZoUJzEtUzCNzMyFxWO4EQCZMqR5TQnJfwTe5bTka49qoChOxlgd8m+/qX+QJ8fs3/r
	Jn6pV+JbnRaLnONpNMUSp/45NcRsBFMyTiHOlgJGjsRR4OU7T6XXxpJetilth7uA9tcdWhVE790
	mglJ/vdx2HeUunyQ2VE7O0pgVn6FW6ez2VqLCtSnoW+SIJLooJ9tqZwQznVwZ+pyehvGd55CgcY
	zOwTkNM2EmDYpQCEFZr+ZKfi9Nos+LftY/kGZ4sUE7vuBHWGEu+7+Sw04fVKC0oNpW1cmkgecwN
	WFY44C82eZGA1uEpf7y/bCoxvvHXQC249JKpg==
X-Received: by 2002:a05:6000:1a8d:b0:43b:8806:be32 with SMTP id ffacd0b85a97d-43fe3db3b49mr49876336f8f.7.1777064756073;
        Fri, 24 Apr 2026 14:05:56 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e4eec9sm58794567f8f.34.2026.04.24.14.05.55
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 14:05:55 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 0/1] Patch review
Date: Fri, 24 Apr 2026 23:05:48 +0200
Message-ID: <cover.1777064702.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 24 Apr 2026 21:06:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13915

Please review this set of changes for scarthgap and have comments back by
end of day Tuesday, April 28.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/3732
But got impacted by 2 intermittent failures:
* qemuarm64-ptest failed with a python3 ptest failure
  https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/3558
  * I reported the (new) issue in:
    #16267 – [scarthgap] AB-INT PTEST: python3 failure (test_wrong_cert_tls13)
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=16267
  * successfuly retried as https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/3559
* oe-selftest-armhost failed to download Rust crates from crates.io in bitbake selftest
  https://autobuilder.yoctoproject.org/valkyrie/?#/builders/23/builds/3835
  * This bitbake commit did pass in https://autobuilder.yoctoproject.org/valkyrie/?#/builders/23/builds/3814
  * This is a really recent issue (it also impacted the 6.0 release build)

The following changes since commit c7c38663a1cafb1fa8593c0b246811e51d3bbe20:

  poky.conf: Bump version for 5.0.17 release (2026-04-02 13:44:48 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/scarthgap-nut
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/scarthgap-nut

for you to fetch changes up to 0845965f1d81d22d47dcf28c525c7463fafe5245:

  poky: Fix CentOS Stream distro names (2026-04-17 15:15:00 +0200)

----------------------------------------------------------------

Antonin Godard (1):
  poky: Fix CentOS Stream distro names

 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)


