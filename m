Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CB79C5B543
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 07:47:08 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.10717.1749023223709052793
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 00:47:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=apGncsD4;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7d09ab17244so644301985a.0
        for <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 00:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749023223; x=1749628023; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tL9Rjy4qauzN8anj/+EGD5rvN9O0q9Ybl7jOGIEFWHM=;
        b=apGncsD4lYwdslLmb6CEiH6GLtcJZV2s7EQ46Gi9fHyPO3gVJ1CLk5PuU8e7rWsRF9
         HepuEMb46A/4DOAoE5irA9FUwB25SLPIl3kvicfnk/Y/0ziXHX8dAI9bo9xctgdfb6Hv
         e4tl+G+UgIYWYcwPmXifEqV+PfNrtqdxpNbUXEuJ+QtNW4/yFWZ9np6QisIj0XvW6Rco
         hXV/Zx3rudVfeBttA3dVIFKKNa+8vzbJ0HZoUWfHS5TCGFhM6Y39+22Tyj7Tk4YWDyTi
         /HeaCyh8EqjAO2rqPKZWI5qkO37ecx9axyIzBzfS77//kpuFTixJ9YfPX1uUhlx0g10J
         6q9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749023223; x=1749628023;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tL9Rjy4qauzN8anj/+EGD5rvN9O0q9Ybl7jOGIEFWHM=;
        b=NdeuZfzf2XR3QBkwdjJeewGIOfaV6BtklCfL4UUAlRphNW/kN/OO+ygix/BrSp7jj0
         iJuGNzAQEUVJAeq2FNMc2/RQAwVvA+SW5gGy9v3QIEsbaOqyICux+/RCOmfJbO9WZJYc
         EuJVv1SgbynxsiI27yb+Myujc0NwObYsY+hDDZ980SyGgAKXNxA5ZamufMQ4Z1xuyo90
         aasDBW3OiMWUMPJgQ1rUF8PRXk3sCtCtMtvXVknCHQ/KSgF7z9Q7SkP2fRCrMejjmfrx
         cZC8RwBfQBWLnKI/2bM+juhl5I7en0andAyhjGAbLysB/Y+DftJwcz6P7T2Lefyi6sxK
         vd4w==
X-Gm-Message-State: AOJu0Yyd6/baD3h+avCQWBvTRM1Z5+V+KZaODYxWqQVtDH5QmUJGfhr+
	IKPa4T/Vrrpjuzn1gV1T0ZJwPVlWz/kmCt+V80xeIAjf9Nb1qMDQmZph7hoctbFW58m2UBMdN0C
	ZrAdgHQxr/EpwemldA7vsMgtGbhZtmja+tA==
X-Gm-Gg: ASbGncvV3XZiM5xIwAg9clZcI6CPCmUUUtB84k1uSBwdbhYNMUdKQDGwOl+SkYGA1Gh
	dSgt2/O6DfYCadng3/xr6mReN0jDGb+n5ukdbFtRynOJqN5Hmhho1lyRL5TYXfYbGxYXdaZwl/s
	ceiYl0zTo4kcfhv0KnD/8JRnu7GPVLqBk=
X-Google-Smtp-Source: AGHT+IGjWVvaqEbQI27bwuwvwVKwV+kFooqS6idYioTEuLyax5lqn1M7Ft0NISAgOt+V+IK/gdiZ2k4N1cmgDI/EXrs=
X-Received: by 2002:a05:6214:d84:b0:6fa:9c1d:91d4 with SMTP id
 6a1803df08f44-6faf6e8dd1amr30608386d6.10.1749023222699; Wed, 04 Jun 2025
 00:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
 <20250603113558.3104618-2-alex.kanavin@gmail.com> <b8f9ba8524090623e0e13ef36724839c140f99a6.camel@linuxfoundation.org>
In-Reply-To: <b8f9ba8524090623e0e13ef36724839c140f99a6.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 4 Jun 2025 09:46:51 +0200
X-Gm-Features: AX0GCFtmTdBh3gpYGvSqbz3uqN3bmHnop8KadNvJHj3V6hjCPUy2BfdjgSsU4UA
Message-ID: <CANNYZj9wRaL3Biwhdjn7B0wW3v61ieoEMCO6MFH15n_aLvtDAg@mail.gmail.com>
Subject: Re: [poky] [PATCH 2/4] conf/fragments: add fragments for qemux86-64
 and qemuarm64
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 07:47:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13643

On Tue, 3 Jun 2025 at 21:48, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> What bothers me about this is that we have multiple files, each with a
> single similar config line in them. It implies we need to create a new
> machine config fragment for every machine, which to be honest, is
> madness.
>
> Would it be better if the config/setup code understood what something
> like "machine/qemux86-64" or "distro/poky" meant and did something
> magic with that?

Haha, yes. I've been stuck in the subject so long that I no longer see
the forest for the trees.

I think bitbake-config-build should be extended to have
'list-machines/set-machine/list-distros/set-distro', and then
bitbake-setup would call out to that, like it already does for
fragments. There's already 'show-machines' in bitbake-layers, which
should be renamed and moved, so that bitbake-layers is less
over-stuffed with sub-commands.

Alex

