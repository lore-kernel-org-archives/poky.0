Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A354C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 11:55:33 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.19002.1736942131275242153
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jan 2025 03:55:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B7QFVZNz;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7b6ef047e9bso66866985a.1
        for <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 03:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736942130; x=1737546930; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ShVtHIlgJJjcQOkGJ8twVPGwKyvgzI3hpDfFfvozJ1s=;
        b=B7QFVZNz15+PyUwb302fSendA9ydRnbw8p41qHRAEv/4apZ7v2cnNB2y95gWHvkAei
         lw+HFq9xeVnxRCFJWQ164snRYUNXWuBvFsFxZ1Pz1pXCQfohBRT5/Zm8R3JzI3RICTSk
         QdSeQwr5uKY2QThxL+vh//HcPHbCALT+mksfZmnVY2tX2JD1Q74oKQiAzq31PJSZlK0L
         da4VXTxQy2AV/f8eXr6u/wfD0rwOV/xITlIk+xey/rFzYNwH/guPrtrdMzROCbHc3WCc
         YdjGCV0gypD0rjHH+Ypp2Tc85kRvitxaOc1/BqEeikM8Bu7gaRhX+LabswPEsBsPzAzw
         CwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736942130; x=1737546930;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ShVtHIlgJJjcQOkGJ8twVPGwKyvgzI3hpDfFfvozJ1s=;
        b=anssDf68j79cTc7sHOmFn/sXXpI4HMbyo5FuhZcaOkI1k96Tq5c1Ox/tqy/6sNGsDA
         vMySN+krHW29sXTMHVkV/UT9xT/Aj7bL0i1J++6mG9setVYssMJCBviXfVFMKP03P9rg
         g791WdwNfDpK3ZHmPrPltIRbYhgY4vhsZrZH3BovtJ7YUMF9SFjxEixhUpYQQLM1DTkW
         TyZ6+76mdrnxMTvG6iSlBzPjRkEKafSPBi9z7ozANivDZk3hC6Sp8Z7R8bzsgy48pWYt
         /OjoAosFXPL0NQfM2r4NJxQKxLitI4IjFfc2LRdwfOoTmj3KxkiyKgp2dIjrHaBBL44+
         tNSw==
X-Gm-Message-State: AOJu0Yy34+bAVOLbQLxPJUIgB6xGRL+z4HcOTjDVb6FQ6DeFNiobnAuk
	1ybzOc/BhxPFZoiCbHn31T11WE2o62FxgJBdXdHENllbnaAymLe5+SBf7jQV6sY6GQ72i0vk62P
	DLDbnXg8S2lvLOe6k1jG9I3hnHjM=
X-Gm-Gg: ASbGncu3hI1lYqCB3WbLm6Zwp4TnbL7YdpnyhXxMLMMe/qzWeT2i4bY040aLkVR7U8M
	SjkxtfaKMByMVUNtV8QAAZhpa16cKChDRe++t
X-Google-Smtp-Source: AGHT+IH6MwcrD7mslNQQaBoDZlXUE0qtNtfBY0sG2Mq/6EOU2HkjIaQs1bqhcqjAoEtlqJG+PeF/h18eSGZ/nVhMEe8=
X-Received: by 2002:a05:620a:c4c:b0:7a8:554:c368 with SMTP id
 af79cd13be357-7be523b9226mr375236985a.6.1736942130351; Wed, 15 Jan 2025
 03:55:30 -0800 (PST)
MIME-Version: 1.0
References: <20250114161114.2731934-1-simon.eu@gmail.com> <CANNYZj_2JWnXepX4Pap2r=rhTr9+MPVOfHA=QXoD8wRSpQ1xQg@mail.gmail.com>
 <CAO8d5BZYhRUF6EgtMR2xthiN+fCrrRd9XhJ3ZwhqA-GRhrc+Ww@mail.gmail.com>
In-Reply-To: <CAO8d5BZYhRUF6EgtMR2xthiN+fCrrRd9XhJ3ZwhqA-GRhrc+Ww@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 Jan 2025 12:55:18 +0100
X-Gm-Features: AbW1kvZVHu67vL9Ue44wUI5C7YlJSo_IIcvkf3VGYuvLfKyKmhfyNC8HyBTl6ic
Message-ID: <CANNYZj8uYApf8RVzL215_FHAprQFp_KvXE_d3+8qTLkJvnghoA@mail.gmail.com>
Subject: Re: [poky] [PATCH] grub-efi-cfg: add GRUB_TITLE for custom GRUB titles
To: Simon Eugster <simon.eu@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 11:55:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13511

On Wed, 15 Jan 2025 at 09:15, Simon Eugster <simon.eu@gmail.com> wrote:
> Hi Alex, thanks for the hint. In a few years I will probably understand what to send to which of all those mailing lists. I'm more familiar with modern workflows as on GitLab and similar.

You can understand it much sooner by reading poky/README.md (it's a symlink to):

https://git.yoctoproject.org/poky/tree/meta-poky/README.poky.md

Alex

