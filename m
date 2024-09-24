Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F39FCF9C71
	for <webhook@archiver.kernel.org>; Tue, 24 Sep 2024 08:06:32 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.8616.1727165184634152100
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Sep 2024 01:06:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b9NEGLYp;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5365aec6fc1so5582765e87.3
        for <poky@lists.yoctoproject.org>; Tue, 24 Sep 2024 01:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727165183; x=1727769983; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rC8pfTzmK7FcuFx4taric2z6CY8Pl47oLBR7kfHYSNQ=;
        b=b9NEGLYpCRJNDPi4n/HHvWvLFF51hxUWeXgvZmShT1Fod2vvaDZZU3hT52PZS/p/57
         HaetfEAAsbdxMBvtT+Q5Ox2a9uCMI9E6Y9XwGuQI3MAJceub9VqLa2ZxknABtmfX9KD1
         W+2bbhEr3wds3wJdbBCZdrc3i1jLBJbqwP5JxAxmNHUJvfrA2s0xwaSi+QGkxthNszfm
         pVWrn26l1Pvo0NR56yl4/BNDod4b4aj6/xIgJi+tsPvolsQ4MUX1JaFb4I3+KCrnJWmK
         Fasdnl3aIszsWtasEbZEMBIvKQ/ICJL/oj4tszeHbCKJmZXksozcXeOEeysBy/2rZ1s9
         wRdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727165183; x=1727769983;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rC8pfTzmK7FcuFx4taric2z6CY8Pl47oLBR7kfHYSNQ=;
        b=IILbtRlDAwdCCQXWDn5HXM642CfOBXGog4Pbz1wFuMkLwl2JUp/jdbdMK8HFSU4ijf
         rtZ6KXV4SIMSLu7+HVx7BjswATS6QuQNlxXqmM27dQNeZM8XYyreDo0BAwKbHR2noHOh
         jE1VeZDEc7TLhfQsTEJqhJN09rv4P7lmJG1KGMImsN0G3dllhWQLrKTeNZTWp2ui0SHQ
         IlKhDH4t/wIljpeNZ7w+XujaRNFUH+qIsxEKuPNjuqaUuNhRf4fkevwhBN/mly1lMC/K
         iJwq8oSgWAoNh/w9b5NOqn57VQowsqqJMXSgU4GWLSAyd4vNqsckYe2jwPkNyJ/KXf/0
         l46Q==
X-Gm-Message-State: AOJu0Yy/EkV9J+AglNfEROnge+xnpD4+nhEcnUVhnFxu+ZLA6Vci+3k/
	6Vc+SjGfNc9EREXjHYZ7Ir/Zy5kJIFwvO0urtv2ILaeXJhnH8rHDllBBhHgBS/7EkchZGtbrSk5
	ejpm37LEX9CaAaq8skdzRBKSSW4w=
X-Google-Smtp-Source: AGHT+IFfNKjSJLMFjKfv6TDwS9XB3i47f2IIX7qjtjCVl63JpaFS7sfnyyl3t9u6sqblJd9muz3GzGbi5Mh03m3uVn8=
X-Received: by 2002:a05:6512:1110:b0:536:7ccf:cb12 with SMTP id
 2adb3069b0e04-536ac3409a6mr6679859e87.58.1727165182485; Tue, 24 Sep 2024
 01:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHbFk2SJ9nGjbVkqG-birNnPzK=Rx9j8b+BJsCOqLT=yRxyMQ@mail.gmail.com>
 <30082.1727124849235538032@lists.yoctoproject.org>
In-Reply-To: <30082.1727124849235538032@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 Sep 2024 10:06:10 +0200
Message-ID: <CANNYZj87wNcEcaLwDjvv_bJ+S=qHB3QzzZ-jFk8NNgmSXgJKVg@mail.gmail.com>
Subject: Re: [poky] cargo patch override
To: Emmanuel_Jee@trimble.com, thomas.epperson@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Sep 2024 08:06:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13445

Hello,

sending patches as attachments to poky list will not get the needed
attention to the problem/solution. The correct way is to use
openembedded-core list, and send patches as emails (e.g. git
send-email).

Alex

On Mon, 23 Sept 2024 at 22:54, Emmanuel_Jee via lists.yoctoproject.org
<Emmanuel_Jee=trimble.com@lists.yoctoproject.org> wrote:
>
> Running into the same issue when using bitbake with a repo with multiple crates.  We had to add a 'cratedir' parameter to temporarily work around this problem.  We can try your patch
>
> - Emmanuel Jee
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13444): https://lists.yoctoproject.org/g/poky/message/13444
> Mute This Topic: https://lists.yoctoproject.org/mt/108609661/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

