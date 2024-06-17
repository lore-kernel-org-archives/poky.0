Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1623EC27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 13:16:56 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.56503.1718630205729784102
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 06:16:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=f5zYyvFW;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52bbdb15dd5so4961856e87.3
        for <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 06:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718630204; x=1719235004; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Myh0qF9KBEhX8fL809JryV6PRhunp9hC0YJ8damJW6U=;
        b=f5zYyvFW3W8N3FRmZ8At9li8kZcgPJu6msx9zVltLPfhnGZxSjYboi0WNKXhUFONvo
         6FgwgLnDF5XmHDXwc7WxIbH19LYA7sa8Lrhpwjda8X+7dCqvwn2uwXNW7OGOHSFYF5qw
         hpQZM7rW63oqtoKb9d2IxKRnBjKlu+9BFoy8pgsiP04Fu784SwF24jnM1YdLiHXq7Xe9
         HQB6DqFosOXbb2gLx+3b1hC39TPgmTDSbwBSoJdfMAac1c1LDJqLOSBOdF+Q5WF4dxf9
         9z1FMsBE/SFbGChE/uEg/58ESIsRwF1CkM4AZaygR6lyt8I06lpQ7ZQuvF+20Sxd4AA+
         3o9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718630204; x=1719235004;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Myh0qF9KBEhX8fL809JryV6PRhunp9hC0YJ8damJW6U=;
        b=OyAQLOXC2n7+Nj9vj+Ai80cBRcZDZc1sHG7L1jabJRbeIveJto3WxfM6SbCrAVUVoi
         QYLRlHbJVWXE+wIJ7SYYuua7gfMPYOvOPoUIU2tUYtfMzj5SZR4CCH2LWBSOQOvuhYIk
         d+O02ME+CNBjga++CqcoBk7SSliVD19KxQQzHV/rYbSJlI5sopH4m0d5P0Lji1Xo8Pks
         K7aRlAYYcl7RrgZ6QyPsFAQ7n8Nn2HPlOxRoRMlRYhp+Zbev/pmmorU6vXNtlOn2vVcB
         nOAoRy4tgOxduYlia04IKnp8sgIPSufpF4qhdKwrBgmtvp+RUkHBajzMmICJ25Tjrizi
         Axhg==
X-Gm-Message-State: AOJu0YxPM9PAXOkCc6yUJ0+Sh2ECwVQGi4g7z3udf8ZE68kA4fylatgw
	fR+wpyZuMTVEPi9f1G/0l+AgACI0F1aolHSUubz3pyIgJDJow7TD9rn3+PGfJWRG2hvqdKuvk/h
	0Lw6cBZTyN9qJfHXcP2PHpLnJFaM=
X-Google-Smtp-Source: AGHT+IGeQ+U3WsQeGnRCZjY1QM8dGpoumndYdNKT+WKui/L05pGkhz8+JELLacDm+2fG+ye7vYQkUE3Wz4jbfRyQHhI=
X-Received: by 2002:a19:ac06:0:b0:52c:850b:cfc6 with SMTP id
 2adb3069b0e04-52ca6e6d58dmr5180978e87.38.1718630203770; Mon, 17 Jun 2024
 06:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
In-Reply-To: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Jun 2024 15:16:41 +0200
Message-ID: <CANNYZj-5jqZtOJZjfMZyR1agbj+-d_3=-sC=buNt4jJ58eDuWg@mail.gmail.com>
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in kas)?
To: star@gmx.li
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 13:16:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13372

I'd suggest you fork the layer into a private repo and add the needed
changes on top as proper commits. Given that the layer doesn't have
the new syntax, it's almost certainly abandoned, and you won't lose
any changes because they will never happen.

Alex

On Mon, 17 Jun 2024 at 15:13, Steve via lists.yoctoproject.org
<star=gmx.li@lists.yoctoproject.org> wrote:
>
> I need a version of a meta-xxx repo that has new syntax ":" instead of
> "_". Some other minor things have to be changed too (as compatibility
> string)
>
> I check that meta-xxx out by help of kas tool.
> Do I have a chance to apply a patch right there once the meta-xxx has
> been cloned? The kas docu confuses me a lot.
> Guess I can't do it in Yocto, as my first bitbake command it will
> complain about the syntax, so I can't "repair" that inside yocto.
> Or am I wrong?
>
> Best regards
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13371): https://lists.yoctoproject.org/g/poky/message/13371
> Mute This Topic: https://lists.yoctoproject.org/mt/106720251/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

