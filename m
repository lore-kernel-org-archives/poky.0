Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0ADBEC27C4F
	for <webhook@archiver.kernel.org>; Wed, 26 Jun 2024 09:47:19 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.22221.1719395230328256346
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Jun 2024 02:47:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DzJ2Y9l7;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2eabd22d3f4so78998561fa.1
        for <poky@lists.yoctoproject.org>; Wed, 26 Jun 2024 02:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719395228; x=1720000028; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nre067cNeyJGC1DTPsci4xMzwqivDdmFSrzWxdhtF5w=;
        b=DzJ2Y9l7OQltdlpoEFw2lR9IIv8l3xOKSsTL0BT3qSvh4F4MJZmFi3Ooyk6oRAJC9I
         mBq97bpxD/0xXFycFdJSphWs6To3HFZ0nE8aK7iGTqceMK2xkdoPocHcQvVMVxmL7O0Y
         MWGO2wGKw/v/wna+9BuxgTIUloQfUgFT9VjWD3XqWkhYqdmVAWlWgZO+Z/uxfaj8BUoJ
         W2aSdJ+ZaoRVPIrbzA5Ns++R+TKKF0PhQvvLsJ2pqOAE6viGsGRjJfoXI4qACqd9WQlm
         JLfvrlbeaWhOvE71l6Zs/Ka4egPQMwKLmUFCVngwLHaZnWfRNvKQcYgdLeNZIEOmv/Hv
         8n8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719395228; x=1720000028;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nre067cNeyJGC1DTPsci4xMzwqivDdmFSrzWxdhtF5w=;
        b=WrQU+o51WGYgceqe3BX7I3ZdDMCbvoAIpsRNJ0lX/8vXscOYIYw4czAc35d0rnua92
         T2cxLiQVjdhFzYrbaGewdSH6+uGYJlGWMRjxy2PWpaOOzESQXjHoI0VTBJb1oAjYSMZ8
         plnYdQbRkNsPsiUoRv83CSmmonKPEl1PC8tf3eA20zy/DsTjQf7F812hqYiGFz6EVIPw
         Nc/h5T6FQgZFsYJ37tSmBa4I/5AUByBpgzX6FvQs0gYdZZq4UgkyJ3KHIbWuYuUzDKKb
         m7zYsf51i8CHF6yux9N0w9c9q3saor53hbVcpvJ8o4J7rDiNlwwjXHPGA9VEDayHtLE+
         ws9A==
X-Gm-Message-State: AOJu0Yzmf7HIYX5eu02c39/lBGVkwYeqnWy/dJbiAEsc+aovpW8IrBJ9
	yp185hS0BbLgzVjuNUFvCwaZNVaVnZFTBW/liODERbM+S+7CvPkzoY8HJTCM7xkh8EuzLIzrNUT
	VPjMJErccqWwCjbhnsnXsUe2Hxnw=
X-Google-Smtp-Source: AGHT+IEIQRqRMyLKNfE7y7w3qUxCi1G6ECbH8MaunDPPCTi2vlTct/+lMXDnZIpT3u5EFM1FeMpDlSZ/IktPcPvaZgc=
X-Received: by 2002:a2e:b046:0:b0:2ec:4d98:c9d6 with SMTP id
 38308e7fff4ca-2ec5b2b1d23mr53287231fa.29.1719395228100; Wed, 26 Jun 2024
 02:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_EKyhoTsvSEH5=6T35F20sGHVEgVT5k5bXXWGZhD1jQg@mail.gmail.com>
 <8366.1719388979063893614@lists.yoctoproject.org>
In-Reply-To: <8366.1719388979063893614@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 26 Jun 2024 11:46:56 +0200
Message-ID: <CANNYZj9c8jhhESsnxiMZZOBT6Or-cpJNT3Xe+rm-2KLg38nOPQ@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 26 Jun 2024 09:47:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13397

On Wed, 26 Jun 2024 at 10:03, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=3Dkarlstorz.com@lists.yoctoproject.org> wrote:
> read-only-rootfs-delayed-postinsts: when specified in conjunction with re=
ad-only-rootfs, specifies that post-install scripts are still permitted (th=
is assumes that the root filesystem will be made writeable for the first bo=
ot; this feature does not do anything to ensure that - it just disables the=
 check for post-install scripts)
>
> The _uninstall_unneeded method in rootfs.py removes packages with postins=
tall steps if read-only-rootfs is set. However, as I suggested in my patch,=
 the check should also take into account the read-only-rootfs-delayed-posti=
nsts feature, which allows postinstall code even for read-only rootfs.

It's possible this used to work when it was first added, then
regressed via lack of tests. Can you check if this can be
added/modified in meta/lib/oeqa/selftest/cases/buildoptions.py or
meta/lib/oeqa/selftest/cases/overlayfs.py ?

Alex

