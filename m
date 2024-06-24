Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A6C2BD05
	for <webhook@archiver.kernel.org>; Mon, 24 Jun 2024 07:20:19 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.134944.1719213610494763250
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Jun 2024 00:20:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GlxdIFLa;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e72224c395so43046841fa.3
        for <poky@lists.yoctoproject.org>; Mon, 24 Jun 2024 00:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719213608; x=1719818408; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bApFpdtpfmxZoZa4q8NzZR55dnWTMXqDpRlGZgbYTE8=;
        b=GlxdIFLaLH5vX7lWg3c2bvo07UGB4/4Y0rqXbtBDNcWGVW5pMG8V305BbRgo0cOGpQ
         sRs5STJDN0dFBPTULzy9XJ+lPlhc9JXaGdfGuJFKxw3lWBzuAcw6LY7i4rxYTdhAq+fK
         v8swF19I8YGpSFRWjb1cra9DBzdC2TkusvtUx8H9YdeHR8Dz4KuRQ070mo0CkYkq1gNi
         e+9ACZWwHtBHiX7TBbM4Z+ibm8GUcZPxTxgFq/z9ePA8O+88pSY7SwcAKGRCt48d8cUo
         FUQrb3q4ZmkHnOg5EqYQn75td6+c20Snq0fY74Np8JDz7VvQH9rZwYK5DCytMnxV/PAO
         w3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719213608; x=1719818408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bApFpdtpfmxZoZa4q8NzZR55dnWTMXqDpRlGZgbYTE8=;
        b=PL1Tb46VtAYcy6v3dFWzueP1GUp2eONWlo1BFwJyMNVMvzAfRAd9TJcNbfJv3X9U39
         DLkAxGqg42T4JI1YYkJ9bWxVBlfvAb9kQenc+1rwdt73h0AV+to5sUCp0BYvkO2TBxVV
         1mEKSPQxzA11+7P5rzuUi9TTxFzuQdMi4ErUCkEoLpTg0CC3RNyWBW/BeCAcCe5VPsEc
         27cP+Unlpha48n+rKakFLrju6xlRxUD13HXywem+INJStluGcmP6FteNFSpdDAFTw0Vw
         GAIcz/F+HfPsSb/gFPZqHcyxi60mwcvlRSoo+IuJnC1LW4nzcoPz7f0ZeWj/4fkDSpED
         xQ5Q==
X-Gm-Message-State: AOJu0YyxFL1c7yYcxZLFDg1Ypht4Y+1BLGPwkT23gsqz5oI6GzxCJJZc
	xCpF25ll0k8ELlaWgxyYk7wOhJ/Ph8XzeoI6qgURFbUHtrBkK7TVavdWO+BmSwu1UXHzWkteoYi
	lQ10V9aqK533MbA5nrvAagNU51mUQ9w==
X-Google-Smtp-Source: AGHT+IGf+qQqwETLmZIqKJbBntnaT5norbzZP0krx+7wv1aJZzL97EhkUb9pLNJ6y6nytqJ3uU9VfU0vZa5fMmg6FpA=
X-Received: by 2002:a2e:9a99:0:b0:2ec:17a9:ce95 with SMTP id
 38308e7fff4ca-2ec5b2694cdmr22800421fa.5.1719213608334; Mon, 24 Jun 2024
 00:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <06C32164-088C-4ADB-AA7B-BC20E68EDF84@arm.com> <6942.1719213477427571414@lists.yoctoproject.org>
In-Reply-To: <6942.1719213477427571414@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 24 Jun 2024 09:19:56 +0200
Message-ID: <CANNYZj8a+iqVw=_w3dZbxcARh4AAuftZLcXD-HwvMXXqAGWUWg@mail.gmail.com>
Subject: Re: [poky] Issue with Dynamic Linker and Python Dependency in Yocto
 SDK Setup
To: nicolas.wirth@speedgoat.ch
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 24 Jun 2024 07:20:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13387

On Mon, 24 Jun 2024 at 09:17, Nicolas Wirth via lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
> Thanks for your input.
>
> I cannot install anything (including Python) on the target machine that w=
ill use the SDK due to company policy. Additionally, I cannot modify the SD=
K generation because the SDK is mounted on the machine using a token mechan=
ism, making the location variable.

The policy is insane and prevents productive work needed to ship
products. You need to take this to your management, we cannot help
you.

Alex

