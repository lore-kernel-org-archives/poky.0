Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.97436.1679653593031696406
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:26:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KrpIL4u2;
 spf=pass (domain: gmail.com, ip: 209.85.221.41, mailfrom: nicomueller1991@gmail.com)
Received: by mail-wr1-f41.google.com with SMTP id y14so1243761wrq.4
        for <poky@lists.yoctoproject.org>; Fri, 24 Mar 2023 03:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679653591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NARkW9fU6i71tos0RlZNpLhAbN9Qp/ni3gHg1jJQk2U=;
        b=KrpIL4u2g179Zvm1xtezxv5cFtIJHbhWZKRwC3C7VRbfh+hNirkxdyCo8h09YpVA0u
         EtweiUuynxTkmMEAf9N1EN+ZPRG7Sa46oUgHHIeDZ9my35rInlYoyB38guOZ0sTImpvU
         7qWJa3agYzEZePgHlzKo/asOc4Re1C4PUrHK210vDz6j2vxj7uCFjCL1vNEdVShZZ6C6
         PREa6jeFRh4Oq8Ey4TVpoujTjGkJgXJ1Sk1r2ih0xPCGW70cqZWjc4s2cg3xM68YoBx2
         dc5ltc77c3qKft/kJmCHe2bCq6wEwKxGVJ9DTEBFNguDyGEfAUrybtXTj06YHHz4Q4nw
         /OMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679653591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NARkW9fU6i71tos0RlZNpLhAbN9Qp/ni3gHg1jJQk2U=;
        b=AO9dRL2bj+5YHBsM/Vd5PUaDmiKtCnnD5pHhYtbBuCwBpXPxJw+o9HSE417OV2PCNC
         h/HkLJb29ntQYqIgUiyz+AYvwhbbWqXnX3eQbhGrnIjLUrrwIfVwaxInqB2jZQcF+Eo/
         vPhgXjZzb5b4jwmTYv7S4Afa3T0Hbu6YZ7SIA8EEsG5AJrw0mLDF4tAWJO1VMfsNPJw6
         ifUl++yL4d2qDHvg2e48ElobuSLYqYjBZTpS7Q7YPmSJlttFLYv+oKg+lD3EClTWl5R+
         kOmis0Nw3SL7IYt2sZEwKz/0/ISZi1eqnFJElcFYnS0eVhgKPQfE05YPgv3JM6017BRC
         v+JA==
X-Gm-Message-State: AAQBX9cVX4tb3SrFHXjAXeMFiuit1Vqax5Tu51HPzqGedbYSzZicZcr1
	AG1S5D2PBu4s5swtoQ74P5KZa3xL5oyvHQ==
X-Google-Smtp-Source: AKy350aTcDXGNVGR6VSll8UHoWli2iNDIVAIWqYka+UZtYSlMuHeoNR9zm5uIRX3gRG8XUfcBe9bTQ==
X-Received: by 2002:adf:e8cb:0:b0:2cf:efad:9c1f with SMTP id k11-20020adfe8cb000000b002cfefad9c1fmr1738906wrn.46.1679653591282;
        Fri, 24 Mar 2023 03:26:31 -0700 (PDT)
Return-Path: <nicomueller1991@gmail.com>
Received: from niecore-standardpcq35ich92009.fritz.box (p200300ddff0eee00cdfb4df80ec527f9.dip0.t-ipconnect.de. [2003:dd:ff0e:ee00:cdfb:4df8:ec5:27f9])
        by smtp.gmail.com with ESMTPSA id m9-20020adffa09000000b002c70d97af78sm18208905wrr.85.2023.03.24.03.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 03:26:31 -0700 (PDT)
From: nicomueller1991@gmail.com
X-Google-Original-From: =?UTF-8?q?Nico=20M=C3=BCller?= <nicomueller1991@googlemail.com>
To: poky@lists.yoctoproject.org
Cc: =?UTF-8?q?Nico=20M=C3=BCller?= <nico.mueller@de.bosch.com>
Subject: [PATCH 0/2] git/gitsm do_clean fixes
Date: Fri, 24 Mar 2023 11:23:20 +0100
Message-Id: <cover.1679649125.git.nicomueller1991@googlemail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This pull request adds two fixes to the fetch2 git and gitsm modules.
Previously `do_cleanall` did not correctly remove all tarballs when
different combinations of BB_GENERATE_MIRROR_TARBALLS BB_GENERATE_SHALLOW_TARBALLS
and gitsm have been used.

The following changes since commit aec83663aadc871354b441eef0a3a41eb3780b13:

  build-appliance-image: Update to dunfell head revision (2023-02-13 07:48:24 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/poky-contrib niecore/fix-clean-tasks-for-git-and-gitsm
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=niecore/fix-clean-tasks-for-git-and-gitsm

Nico Müller (2):
  bitbake: fetch2/git: Clean all mirrortarballs
  bitbake: fetch2/gitsm: Add clean function

 bitbake/lib/bb/fetch2/git.py   |  6 +++++-
 bitbake/lib/bb/fetch2/gitsm.py | 19 +++++++++++++++++++
 2 files changed, 24 insertions(+), 1 deletion(-)

-- 
2.39.0

