Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81C9C38150
	for <webhook@archiver.kernel.org>; Fri,  5 Jul 2024 15:38:18 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.19983.1720193897294705718
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Jul 2024 08:38:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k5Rr700W;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ee910d6a9dso14511421fa.1
        for <poky@lists.yoctoproject.org>; Fri, 05 Jul 2024 08:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720193895; x=1720798695; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p4RnZMVzCJGXJBPQ9ZlSbUb5ElNN8MBM3BKPtWUITGM=;
        b=k5Rr700WKa52vVpu0UasdRP4Ps+CX8uf0j3yba5JxBdeolj6Mf5KVz2MwAwm0j0odP
         XopKKRGKxFLWO1k4QVtWlrNRgZ9WeSEdshHzdoF22UyFhbSgjDiAOj3ImYtJRNfpIpTZ
         +ih/gDKhg1gifWfL3pg0RXu/k0Oqpw6hg3J7nEK/jP1jzXgtPWM5u8b55zWLuYOVysVh
         0Qk7OJWKntiGjR/X7pU+nKVfUiss8NYbmVwJ9uO7XzVXFRIJkGCjGv+GNH7tyLgN1RpM
         HWVvJFf6KkCdqZDXPJpHGNZCk6BnR6zHyyhMbNoqKgL4sA4rtyZBEWcZIxM0xysGktKE
         zG7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720193895; x=1720798695;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p4RnZMVzCJGXJBPQ9ZlSbUb5ElNN8MBM3BKPtWUITGM=;
        b=PxK/1oWwdTDB7poOsP1BK9OrCqlqQBAF08VtNI4Id7jcSkN4VaOO963F+OKVb4fZSV
         4EWaqZc1AnnBSbRrekyG7bcEc/Ujo8jEiLzwnCbyeQ4H2IWQs9OlqhJS+UQYMJzZNPFc
         gvOqnFIxlrOUf9jrc1aQGed84SbF5tWc3OhKUsHaN57OlCNhbp10M/P12LDVhuNOEXMy
         Wcm9KgSTU5egu2yria2bxacoH8sKVfb4kefPGuy/YJ6gEnPr+ceTEB6NSRVAUt05Vfck
         p091t2uPR9sYEReBesEuUGjLHlj1ZVnypsLNZMAqbEW7C6auRqXF1K8dbffYfGO+TR6+
         Cg8Q==
X-Gm-Message-State: AOJu0Yx5YzEGHB+IosJEpLDaMC17V8aEXQCZjGs2aNxSvQIjqj40Drhg
	OCXaAPiXxhfgQpy1sTV/Ns8x8tGKH8wO35EfuqLYjbNa7qYshH48r/mSrER0Qs61dHK7TaknLTq
	kam+6/yIgfYOax1oFDgll+s4PCOQ=
X-Google-Smtp-Source: AGHT+IEH9vhRPFrnXvogD82g5vc//8zIxmIvlrNzlTYcJT9qnW4WtV5f8Roac/sJ0Ff1wPKzwfuQd0z+4hzhMPu0vnY=
X-Received: by 2002:a05:651c:11c5:b0:2ee:8701:787e with SMTP id
 38308e7fff4ca-2ee8ed62fb2mr33513271fa.1.1720193895014; Fri, 05 Jul 2024
 08:38:15 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_-hX-LCvZmOgzJXhsaX1F9TRJExij5fL9gQu0YAJ4sDw@mail.gmail.com>
 <20061.1720187879685682356@lists.yoctoproject.org>
In-Reply-To: <20061.1720187879685682356@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 5 Jul 2024 17:38:03 +0200
Message-ID: <CANNYZj-2MRP66dbONLGHmacwJjFNTuQ-CfyQLAF0-q=WY+BKmg@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 05 Jul 2024 15:38:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13411

On Fri, 5 Jul 2024 at 15:58, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=3Dkarlstorz.com@lists.yoctoproject.org> wrote:
> I looked into overlayfs.py but I'm not convinced that this is the right p=
ath. First of all, basically all relevant tests that could be used as a sta=
rting point use systemd as well which doesn't make them more generic compar=
ed to my test in runtime_test.py. Secondly, when I set IMAGE_FEATURES +=3D =
"read-only-rootfs" in the test_correct_image_fstab test case, qemu also han=
gs during boot.

...

> /mnt/overlay is the mount point that is configured by the test. When I ma=
ke the rootfs read only, the mount point can not be created and I get the e=
rror message. For a test, I changed the mount point to /tmp (which is writa=
ble even for a read-only rootfs), with that change, the system boots and th=
e test passes.

I think these are the tests in the wrong class (OverlayFSTests). I was
referring to class OverlayFSEtcRunTimeTests and the tests in it (those
are specifically setting up /etc as the overlay and the rest of the
image as read only).

Wherever the test ends up, it needs to work in a way that allows
deleting the postinst.

Alex

