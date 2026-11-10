Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.419.1794325584770868767
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Nov 2026 07:46:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=GJKJ96Gs;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4b79502c27aso22607965e9.1
        for <poky@lists.yoctoproject.org>; Tue, 10 Nov 2026 07:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1794325583; x=1794930383; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ErnA6rKS3iKnuVficZOO7R1kIhaniYmeqcc8Qtu0Qjg=;
        b=GJKJ96Gsid/+3p1ckUqv+ZxZaNahuxPuM9w6+8W1n/oVy4BW05EEUY7/Npmv7tyUPh
         zILd1hoS+GnQGmPLsTnIzxiBLV/awrK9Urbh3aCzhzsmG9DCWzTej13T2MA5jPHqONx7
         agA/N/bwhQ4iyCu/46OxftF/sMw/XJbkDWHy/aR9ETO0VLDhTdiGDQYHNuRdLjVnQXYB
         VILC0iPQQMfMmCM6mN1LY9qWsxozcGBQ61anWF53qLnEgcNNg1y/DYrp1USuG6zo6bAS
         zfNzF4rr0J4trb85xda0CF6UgTewsI+WViwGBlo5EO0CLfol8WlHCZ2dd2vdNCOPo9w/
         1KMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794325583; x=1794930383;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ErnA6rKS3iKnuVficZOO7R1kIhaniYmeqcc8Qtu0Qjg=;
        b=wvI7qU1B13TYJa1W97EEYf0O4gy8W08cmQd3/XTs5P4RReP3KsGmpKx7EUi+o2ZQ5/
         oKN/R6PpqS/PcC2Lk0dz46ApTZoCvfmBbkDl5L00hVFZ9tgEEoGPpLF0E9kUxwrKZEhW
         DT5k3JKPt/7/imjM2Bf49iZaup5BBduva3ACA7wIVDhv9IoqQZGWhO4Sde0W+9xFSWQ0
         6qUTpXU3gm0nMSD7hQCaUa8ZvvGF4l2tUW5I2+HRv5T/DPbJ8ROQuS2F4DIRFsxNDf2p
         jbm1e5ADlup0xKeylR92m6IVfzdWhzf40QX12o9vO5VFu9y25TAMSOkjGJbtqIELWoRX
         z9UQ==
X-Gm-Message-State: APuU4Z8ALUi/nq4DFQq11H0ji6iTYnhCAQeWrL/c78nOIhuxXaxNmS93
	PVHvHdRjUbggYVV6hxZNh6GySWCV/9u+Idl9kV7M3rmM7eq63e9zDoqYLiqeqy60PP3w4UjxZxY
	powe/EPQ=
X-Gm-Gg: AYBFou3YnHMW/DB4x04VYuCJcj2n1SStJfVq0qGW+J4twW6Zemfp4RqIRi9IZcDdZS/
	WZ07RuSEmyhpOg6Ef4QcgFdcWnTzhMqBqDnZtiPllZm8C3sgsPVIiwBwASdMUxJozh9UGDVckIT
	DGScigJX6efoYJDL9H5Nome84uZdpfVCGh23rRI0agNtHYktDSXoMUKAbz/12Z+ZSazwLMXAwou
	pzzoG31UIsFppa/Ct1RofYnCvUo0v2MAuiHbmVYnyEXhIddrmkqwQ2h+dET3nWlvAbxQ/h00LRo
	UiMouZKBmKVhyR3Bvpml031sMW4XGGLA1yNf6Niuu1yeg3zcIdSfzEoYPqYSb21BPVa3WY0acIK
	ZdsCNQXp54Iy3AkTaK/VwBMs57H0DeI0ch7AePbPHDZzbSdV85KiYY+BIoOIPvplxQbEmh9Ewb6
	/EW/jjj7bWxms/QERnSbiv9CyqKjk2SU8TGg42jzrydp2cDpJDAYkPZYZvgctyI/hsSFhWbtjlN
	rhgeYgDUkbTcP3eljnEEcXa8XRcocHjY1H9K4aZKRix4iIc02LFZwF+tJzrDWZZBiSLc5FqQLL7
	ipAqPgC+uUA2PIjQkRGehGsVkToweXzgzdu3RBkpJvlB7m+sLky555Zu/90TfHb15KOfowfAYPu
	j1nTu4e5guP8THEjKLVKPRlMY90WEKnGEdx7G
X-Received: by 2002:a05:600c:1d18:b0:4a1:fae2:a8ab with SMTP id 5b1f17b1804b1-4ba02305392mr50034135e9.3.1794325582811;
        Tue, 10 Nov 2026 07:46:22 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba0223c41csm73014985e9.14.2026.11.10.07.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 07:46:22 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][blacksail 0/5] Pull request (cover letter only)
Date: Tue, 10 Nov 2026 16:46:10 +0100
Message-ID: <cover.1794325462.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Tue, 10 Nov 2026 15:46:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13995
Content-Type: text/plain; charset="utf-8"

Those are the patches from the last patch review:
https://lore.kernel.org/all/cover.1793868274.git.yoann.congal@smile.fr/
(no review (just a suggestion of further backport), no change)

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/5060

The following changes since commit d0119aa2eb77b985fcd33ac527d5c0287eb68e58:

  yocto-bsps: update to v6.18.54 (2026-10-05 11:53:53 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/blacksail-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/blacksail-next

for you to fetch changes up to 52327e67cab80384323bec9b73d39cd152fec7bc:

  yocto-bsps: update to v7.2.13 (2026-11-02 16:20:11 +0100)

----------------------------------------------------------------

Bruce Ashfield (4):
  yocto-bsps: update to v6.18.57
  yocto-bsps: update to v7.2.11
  yocto-bsps: update to v6.18.59
  yocto-bsps: update to v7.2.13

Richard Purdie (1):
  Fix LICENSE file and licensing

 LICENSE                                       | 14 ++---------
 LICENSE.MIT                                   | 25 +++++++++++++++++++
 .../lib/oeqa/controllers/beaglebonetarget.py  |  4 +--
 .../lib/oeqa/controllers/grubtarget.py        |  2 +-
 .../linux/linux-yocto_6.18.bbappend           |  2 +-
 .../linux/linux-yocto_7.2.bbappend            |  2 +-
 6 files changed, 32 insertions(+), 17 deletions(-)
 create mode 100644 LICENSE.MIT

