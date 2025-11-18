Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6817BCED626
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 11:48:20 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10497.1763466498859308609
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 03:48:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SUiKbTR4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477a1c28778so27220115e9.3
        for <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 03:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1763466497; x=1764071297; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7DRhhcIS33KWJNu/9ibGws0HXUfblqD3xjRB6JEpx54=;
        b=SUiKbTR42GbkJAEXnrJKXb7Mbzpp6KH0jutfkavHwR3ht8WLCKm6ajCn2l5cAP3f5V
         o5hTioLZDk8Hzl22o53wvLwefpDt+u4K+Mtxs3VFYVLpzWAC6a/elHPNxQkWPvQ0Pf3s
         EEJjRKzr+LWLRDhX2hH09w28qVwrfQAWz4LUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763466497; x=1764071297;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7DRhhcIS33KWJNu/9ibGws0HXUfblqD3xjRB6JEpx54=;
        b=Q22T3MUW0MHdsB8GtrBzcBAES+PIbMknfLIOJHaBF2o79tsleNuptqDf06yUOdWtTp
         zA8JoQmVQFNta6nG6+fnY9031EMoSKosXlQyB2NVSFffYRmBvxEmv+tZ7i0+8D/Qy64c
         5SbbSOtItG0SDfDoSTxhN4EdO0b5n5L4zzIPyFHZ8QMEzpG/iZUkvIv48B6+2OBljWAS
         Lu6Bb2jTx8wNOOkjUl2kjHUr9j+mPyk60EKXcgVdOVNK/DyPEoGG7guwj//pvkBNQIVz
         8VMseKK2m6XvqdTSLlTP0vMQyAM92OxdA1n3Hma0LiLsHQQywg4YRT2fImNN30XzWjwJ
         guqQ==
X-Gm-Message-State: AOJu0Yy9yV+dNzoA+a4iD9KeQhJyznu5bIHR/i/X7KQgtwcBxHYCs+0u
	K5xU6lIE83zwHNDmgDCBbg/fI3o+MGrgK0xO3KFvKCONN6xgWMaSnXD5JmuuFQvA1wk=
X-Gm-Gg: ASbGncupvS4tCxnjqyZ4JA7bjdKwLP1fQWEzhWsf544LuTJ+N+8jy+L9xYP26ebYF+k
	81Ln4z1OF7mswe0Y9WmyrvK5Ml9t9SM00PXGmisaIh7xR8jFi+VhpvwTemXmyY+UtwywGNaDOzr
	mqpNM8sC+0xinr7t3fLcaMIgo73ZWruFOBxXzlK20LZI8WTDtroaZdSYnzYDy9GaMYHaeMh+22j
	nozu1kQxsnJh4UR7nZYsanlh9weoWjMrlYHEqBhLKlvRVPE0hFa5I6MD+NE3eFMISrD8DcQkSHp
	D9g1F0DACpLAkVjXNWKWSAF5RkBVYFx7MhqaQMO1vYcNir0q7oopecoLiP8z8w3kFIY78HzVpfj
	F8dIWt02cGqmMQx4/kRu95ao47OfxCDvviDCgwZgFqLB4RVizetLobDlXdeZI3H5xlzfmLpdvs5
	fp0626AWntbydeMQrFvGymycx+3tetLNAuGZDQr47Wu6TX/icvVGuVv/8UA+TUsHDUMKky5c9sa
	7U=
X-Google-Smtp-Source: AGHT+IFqvFYslholIQEjb9dKmNwvI7I2EiYEkudbnY8MQJ60hV62gtU7bdhTH6Oct7OMNug2YrsfhA==
X-Received: by 2002:a05:600c:630d:b0:477:89d5:fdac with SMTP id 5b1f17b1804b1-4778fea1becmr173645365e9.31.1763466496832;
        Tue, 18 Nov 2025 03:48:16 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:efaf:3593:5e8e:3d23? ([2001:8b0:aba:5f3c:efaf:3593:5e8e:3d23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779b509a5esm182977885e9.2.2025.11.18.03.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 03:48:16 -0800 (PST)
Message-ID: <0cb2ae0748ee16aaa8aa31edc36c09cac4e24842.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, antonin.godard@bootlin.com, Mathieu
 Dubois-Briand	 <mathieu.dubois-briand@bootlin.com>
Cc: poky@lists.yoctoproject.org, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Date: Tue, 18 Nov 2025 11:48:15 +0000
In-Reply-To: <CANNYZj_2V2qu0BWBY_mCkZoC6+brOkfLu1FvYX=EOpbJk0sj_w@mail.gmail.com>
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
	 <CANNYZj_2V2qu0BWBY_mCkZoC6+brOkfLu1FvYX=EOpbJk0sj_w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 11:48:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13795

On Tue, 2025-11-18 at 11:37 +0100, Alexander Kanavin via lists.yoctoproject=
.org wrote:
> As all blockers for this patch have been resolved, and the docs have
> been updated to assume dis-integrated repos:
>=20
> https://git.yoctoproject.org/yocto-docs/commit/?id=3D0ddb5f4be84a97a66cc9=
2c3c68c820af5223e108
>=20
> this patch needs to be taken into testing and integrated into
> meta-yocto, otherwise the docs are giving instructions that don't work
> with current meta-yocto master.

I can merge this but it feels a little wrong.

Perhaps we just delete the template data out of meta-yocto and update
the docs to tell users to use add-layer and then change the DISTRO?

Cheers,

Richard

