Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45C09C54E4A
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 10:38:06 +0000 (UTC)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web11.7918.1708684676031815795
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 02:37:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nTslFq6o;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: aladyshev22@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-4704750edd7so78664137.0;
        Fri, 23 Feb 2024 02:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708684675; x=1709289475; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=loAZ3JDSEXHMxXlZL2N39UGr6Li/iEyyCoflPPCPSKo=;
        b=nTslFq6o9fhEQw5IcGGQTkCW46tk2BaRNYVdc2VsyORW+OqCb7aBPs4eyiwQzTyQFA
         4HeV73aZ/03umLgGqY9krVwwyaET+dy3EyJLJjJUSd+Vc7+SrBDO86A6XgfSd5fAcOlg
         AzjaAsKCqZL7ixC94VJ41WvELERBmmxvuc8ltTgqaGdifCmfEocbkRs05LV507WRG4+U
         yF/lTjf4G0upSdXBhj9qfkXhkoy/kKPHQqMNBtjuLX/+lFyF4PUrZQZVhGDtYWUM0gxr
         /Dc/2D3S8qE5dPSzZ0YGAThrJ5+7bbaYRKXVfAKtH8mmBzuRE3NNLkyBVei55hRZoBiK
         NMDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708684675; x=1709289475;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=loAZ3JDSEXHMxXlZL2N39UGr6Li/iEyyCoflPPCPSKo=;
        b=PwPpypIk/LAIdoMgJ9G9IwKDNQoLCIRK74GYzfZtQS6lCNE3Zu2cIiOGvEoRkHSufm
         9BTpdiwu4LTjphEr+ncRh/el1HzMETvshSibOhxFC2s+bz+z50xVclbVwUlqTAIw2WbL
         /4mY3GG4mVXbTgG4kHgGsvSYdM7qXQj2zohF5wyagAPSWdLmB2TJremdwCa/oC3jfTvd
         sVVUGb+njywwTw+avJk0Xvb+o4IUk5UEuYYBbHzfTgRUjivCRXCxHYDQh75cZHWj2hKo
         GewiS9kxrHyTTNSLe04P+Qj4fCnAcfjCzD7gEpiE8xRDOOSIML0DRmJUV/cBHjueUx19
         N2Yw==
X-Forwarded-Encrypted: i=1; AJvYcCX6HeD3hXVhZhsGO+gbXc1OdHyvLjxG0UCHgI2vROubJss+0FNbvrknKIDTvC1Y7G/qNeqmxzww5lpre0C1TXwsTXBgkzDruJuVjII=
X-Gm-Message-State: AOJu0YzJJHU5d+IOizQXO+A3Qzl3+6/x8x7LxBEquGgdQ/jEvMlKKNsK
	VGJWwIqumtXcrxZIQl+JRJhx4Er4NM0sqS9538ydSxGL8vUCiqiBYNy5fHJVZMPDqnei3LHxIcW
	cO/fvFl3CuVf04vP5PkrbYChDGWEr4rBeErJoWQtq
X-Google-Smtp-Source: AGHT+IGUefrX4Tok7olcc025NRIQ2zjFJLWeE0cdHzAjf7Rv7J8Z6tKARRg3MR0/eltPh9q6H76LQRycHYLJDt5g30M=
X-Received: by 2002:a05:6102:2381:b0:470:5515:d8f4 with SMTP id
 v1-20020a056102238100b004705515d8f4mr1413585vsr.31.1708684674727; Fri, 23 Feb
 2024 02:37:54 -0800 (PST)
MIME-Version: 1.0
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Fri, 23 Feb 2024 13:37:42 +0300
Message-ID: <CACSj6VXH88d=oAw6KsancYXiW1B=oLgXD3uSxnentWJd4Dbi7Q@mail.gmail.com>
Subject: 'kgit-s2q' doesn't remove 'rebase-apply' directory
To: yocto@lists.yoctoproject.org, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 10:38:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13268

Hello!

'kgit-s2q' in the linux recipe tries to use 'git apply' if 'git am' fails.
In this case 'kgit-s2q' manually creates a ".git/rebase-apply"
directory (https://git.yoctoproject.org/yocto-kernel-tools/tree/tools/kgit-s2q#n622)
But it looks like this directory is not removed after the patches are
applied. This creates a problem, since with this directory present git
thinks that rebase operation is still in progress.
Because of this bug 'devtool modify linux' can't perform its own
rebase operations in the "devtool_post_patch" tasks
https://git.yoctoproject.org/poky/tree/meta/classes/devtool-source.bbclass#n214
In the end this creates a situation when the local patches are not applied.

Best regards,
Konstantin Aladyshev

