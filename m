Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F118C83F26
	for <webhook@archiver.kernel.org>; Wed, 30 Jul 2025 12:57:21 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.34628.1753880240687873742
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Jul 2025 05:57:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D2jZ3JVg;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-70740598a9dso32348236d6.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Jul 2025 05:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753880240; x=1754485040; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+6xcaRPZczLVugxj4j6rQI0HXcPHFxe7GoiL4h37HDk=;
        b=D2jZ3JVgO6cRBr4snrcpEFtmxtZ3aYgidOxerO1AfwUpEURE7LqJC4T2aYjULzq5W6
         81nF/fxOQwcElaN7eJAHiD9G4OW+LalJDngejEAB0j7fOme3P8v0KTLAYRqiI/3X2ga7
         YD9yVUPBA4GjCzQFlZdR8levG+bkpPZUtlV+7PoNTyguB4ctX9KKpL63N53gbtZMj5j4
         VOaGUEnQPA8htvJpdJrbpEl18kjjHDNU9mS2sX0NFk42UNgDy1JiTWBA2ueg6/0NxOWu
         INV5DBWSPoJpZuCgA+fQ9S71aKW6cHAnl1BnBPQIz12CQU8qtCSJMpIgzeafUcbmRMcn
         WmGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753880240; x=1754485040;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+6xcaRPZczLVugxj4j6rQI0HXcPHFxe7GoiL4h37HDk=;
        b=IhMFR3N/0zb2h260A8zlxTK/R4U+YqdCv2rc7NNLu27qV0OacetwIXLmAhIbngRRxr
         pOskh9G2E1J1PfQPXEFFl9V5gi3zkasmPRPVD/tpU2qWI8VD1aUp9dKBClPEkvQz0mhy
         iQj4htC6YiH5MinU+oH16+IW2jYFZgP43+zTvDm1puUGLB5HgPkrka50SDXJPrj8XTvc
         WhTfkACvJ0BIxSidd7wCZtFUnck9r5jtZi0ovu02RZiQmf6GhML/JbQvCKuBcYBYJi1K
         pT7aSaCcl3EMdUAhD07hTBguQZqt6izVE9BkTOyJJUHBxk7jid1y/OljxS4AfzJ/n256
         M8oQ==
X-Gm-Message-State: AOJu0Yz9Y3Te/JADYKp1WDIY2BY8Dkx6ig/yO53bJbxklfNltitV9Lrj
	GRVGbTgfE0QvTcEwM3/UXTDkW2XaitDCIRVSIJypZOsCzDLMgC+0Ftz7Ah3VpWpEkqEN3uHKu4l
	IrhfUjJCKo5VAfCpwVBgTLfpqmJncwDA=
X-Gm-Gg: ASbGncsrPGfZpcFTeN6FujoSJjopXl0roMRYHQ+CE2Amygca6SB55WFVz2GeAXwcnTe
	rpgZqtdl+YvVkJtT3fkEGwQfTiE2eGRYrB3f3kjmYpTOjRnqj9kaX2kk6s+HaTt9lz29HoX5IgN
	wMOANshUWjSIcjjXGvvpR4mY/BMyudqkuaK/+Eoie6Hp6UtOwRM516e19ICQ2CK+7j0JrvVN2UV
	V94fdqgF7+tN6P1YglN0EjxpMm/T662OS8A88rPOCqH23KaMwpB
X-Google-Smtp-Source: AGHT+IGIf8ksENoy1apriJkEQQ6TwEhq+ql0aeL4qpV7sotdnk4PvP8vsLTsH8BI3OGg7hResVwyNWbdaf3YHkEvsrE=
X-Received: by 2002:a05:6214:5193:b0:707:3ad0:1f15 with SMTP id
 6a1803df08f44-70766d86226mr44249896d6.18.1753880239449; Wed, 30 Jul 2025
 05:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <P6zE.1753879332563276833.F7v1@lists.yoctoproject.org>
In-Reply-To: <P6zE.1753879332563276833.F7v1@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Jul 2025 14:57:08 +0200
X-Gm-Features: Ac12FXyFdJDNns3Dn3AgskJ7Qnh9_uIkAhiSL6DXtSDKuVKHA7T4arRf3lzOMYA
Message-ID: <CANNYZj8ObZ8VkaY06Z0GARjPWacWwmC89x9amA6bY_BHSqMN8w@mail.gmail.com>
Subject: Re: [poky] [PATCH] Fix parsing of FKIE CVEs
To: jonathan.schnitzler@faro.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Jul 2025 12:57:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13703

Hello,

the patches should be sent with 'git send-email' to openembedded-core list.

Alex

On Wed, 30 Jul 2025 at 14:42, jonathan.schnitzler via
lists.yoctoproject.org
<jonathan.schnitzler=faro.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
> I noticed issues with the parsing of CVEs from the FKIE-CAD feed (update_db_fkie() in cve-update-db-native.bb)s:
> - It tries to read an accessVector for CVSS v3 & v4 while the attribute is actually called attackVector.
> - It ignores metrics with type "Secondary" even if there is no"Primary".
>
> This leads to a lot of CVEs with accessVector, vectorString and score set to  UNKNOWN/None/0.
> The bug is in master and has been there since FKIE was introduced.
> I attached patches to fix the issue.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13702): https://lists.yoctoproject.org/g/poky/message/13702
> Mute This Topic: https://lists.yoctoproject.org/mt/114447585/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

