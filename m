Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24A15CCFA18
	for <webhook@archiver.kernel.org>; Tue, 11 Nov 2025 08:51:07 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13367.1762851063835304463
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Nov 2025 00:51:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iHVGEm55;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-88051279e87so43515106d6.3
        for <poky@lists.yoctoproject.org>; Tue, 11 Nov 2025 00:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762851063; x=1763455863; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mLW5On215uow+EOdUz4qWQYnvRs+1LtGTAQQJ2LUNOM=;
        b=iHVGEm55sMgRzoyV1/xF4ujyXbTaVSXx43efUl5wwkrIlGnzTD25sM7II2WygrGDhf
         exT1dIWj2gg6qS009dlKY7h/qEl1Iiaelcm2Z/q9Ctf6PYK6kuly9Amba0bH6zsBXeGS
         i78BDHelpDPdktN5sCGXYXjIHInQOWw04gtn8D7s//ehE7yMK1voV6Q3lGwociPpiIj6
         1FVSuaC14lQCE5s1apT8ztisdzuHDmGzQ5kS6MEeYNgTkTa+2LB8yTBQlfbRU2E8MkPC
         MP43xxliISohL1TMOmlT5WQ0X1SwlHQ3+eRbOrSbkhgtJQOKTHgs0BoS3UNHyxEJ+sub
         R0iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762851063; x=1763455863;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mLW5On215uow+EOdUz4qWQYnvRs+1LtGTAQQJ2LUNOM=;
        b=f2/EfRzXmCMw50+13U/h4wzLtg6Xu27p5yaggMsOzsHk9tbUAn+5c+KabYjMy80h+2
         hSqKgySlsIzXVINncEwx2CLoFiMOwoBQva0tdcHPtDO41PC61aK73tmjtnNlwhBFKqSS
         W2dkZ9XIskahCOjuwgILX2UmnZxhV9V+83gLXjC16xgTQffqsjPTL4fqVlM31KQm2u8Z
         eu2jSZraP7Svf2RiwMc1f7Zd6PPUXry1xrBE7F9ohihN07Sp3DHjV9zmoh72k7XlvtMe
         i3fYEflILie3CXm9TJ4L28fBNEt24DKW22UmFB2nvGtwdzxmg7frWaqJ2Ht6xdsqjmzG
         rqMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXssUXBloRk4fT1n/TV9JYRIblFDlJfYw1Wjct0nE3Zk+PwqxG7VEoGQ6Y/b7c3zG+wpdG@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz3Omux6m9ro4t3UskB+u5ke4Gc4OeUdiCEnd2Bi9QsibS+/EF6
	VkUKyZMOaZbjz5SkFaZyrBi4ro744nRwpeZxWVdjV/+34TbBOjU5JuAUIOZQ4idgkX9Ac10S/Ie
	NmqDW5uk6abjF8erAdc3dDJlqw1vCthyfQ9GT
X-Gm-Gg: ASbGncs5ShRHlLCLNU8+UrI01u6BP5MrwIvnCIUaAOIyfgFMdM61oJXr+LY0am5c7+n
	/mGYkJeG7ZTF9NNjAYxbHRF077bBph+1+bgqy/55vOaCgSSkm89iLHLMvTxbvh9+lDIp90rjqua
	/udGjFjijyqz66BCC/5nx4VzWTgRruEJrryQU9z91p6sJtTxwZaVDYnX1RpU91jdW7SOdzDmzBD
	hsD6cqJiVlrJAQTzvfhbcxQIbe2nEnNIKOH7QUY/b83xvRw2lyw+DYAenyQKKs=
X-Google-Smtp-Source: AGHT+IHM94CaH3a2DqaK7rt+p277bEgYlcoeWtbrRmI5YZ/I2kIdwL/CqvxhTczK02MyGSfKuxQP8JqfJyek3YvlgP0=
X-Received: by 2002:a05:6214:20e5:b0:767:cad6:42a6 with SMTP id
 6a1803df08f44-882385c9dcfmr171495016d6.6.1762851062740; Tue, 11 Nov 2025
 00:51:02 -0800 (PST)
MIME-Version: 1.0
References: <20251110095127.194211-1-stefan.tauner@artech.at>
In-Reply-To: <20251110095127.194211-1-stefan.tauner@artech.at>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Nov 2025 09:50:51 +0100
X-Gm-Features: AWmQ_bl_S8hDJq9SSiyZxr0mdLacCOoLQyaQ-cRdWHv_ERx1ccrALFNZ7Ovt1a4
Message-ID: <CANNYZj-0Dik+7TmWb1aD33X7G3XS+fATe-fLUHzKQAT6JVAniw@mail.gmail.com>
Subject: Re: [poky] [PATCH] screen: Add missing RDEPENDS on ncurses-terminfo-base
To: stefan.tauner@artech.at, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 11 Nov 2025 08:51:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13789

On Mon, 10 Nov 2025 at 10:51, Stefan Tauner via lists.yoctoproject.org
<stefan.tauner=artech.at@lists.yoctoproject.org> wrote:
> Since screen is not a niche application extraordinaire I am wondering if I am
> doing something else wrong but AFAICT it's really that simple...
> I am working with scarthgap ATM but if need be I can forward-port it too.

Yes, you need to check if the issue occurs on poky master, show others
how to observe it, and then submit a patch with all that information
to openembedded-core list.

Alex

