Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BFEC30653
	for <webhook@archiver.kernel.org>; Thu,  4 Jul 2024 15:19:37 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.12712.1720106373651361165
 for <poky@lists.yoctoproject.org>;
 Thu, 04 Jul 2024 08:19:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kaZqw5bq;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52e9f863c46so760027e87.1
        for <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 08:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720106372; x=1720711172; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fESssb1uTKJWOlRIlOOno/nzMp6lIy+UZR5Xk42OcEY=;
        b=kaZqw5bq3f9OEtEWvtqUwYgB5YhY3MOC3L29S3RhgNUc3zeVDdk00b1lrOSr/4u1jh
         IyeByc/WmS/maBP0uTR5Q9ZO2+otIYM6XNtpPFuSajMBYhl0mTyIiiJrcY9TadJZenzr
         tMzrm4fA5s9jyE3ywhKzkuxpLtugmIDH4Z97F/8KqJc2KB8V31D1bXyR5Oo9jY5bjcdU
         U6yyQAJYXI/+BgnMpzgSb/YJLRgYj476j3xFri6VKbOtI4bZ8L9rPk62QyywgN1lFk9v
         RkiKVdQ4PX7oAg/h2ka4oraZsguInEZCXxF28e/aWG7ASEq+Saw3cyVPtI4Sm1xtXAOC
         bdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720106372; x=1720711172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fESssb1uTKJWOlRIlOOno/nzMp6lIy+UZR5Xk42OcEY=;
        b=WflcbmZKQHsCuL+JShAL9SBORq/hUxhvZLeLQ41kqCzGyD5jdhGBF/ffK5SnGq7740
         DUjkvQT1or8MyUaPLQ5YrGVRkcqaoMR41Ursv+6hN7oTwETXcqQhLjxiVkZnCD2sjte6
         OdG2nPOYaI51QvBhOllpPNJi9w5fp1ikqJMOUJrhbLaqZwB7I0mK8JvgPzvTp/zNyRGW
         48HWHvGlbtFkynQ4TkUpFApL7Nev3dRYAusgNX0apl1gLfrK8ISc1Mre0NrGtgR/2PBe
         sHgNDCjL4T44o+LyRo3zSxUdyF5aHFp6HmPFlguGz/GjitQyBn3MCyCQiuMVwsLgg6NH
         rRyA==
X-Gm-Message-State: AOJu0YzENjis4SL12aJrjTFqPaTt3cEqFHRdmjPusMjbndbXueZ/oIyU
	rYuX9d7yr9gaSU5la1oPA1fh400cTz71YAyx+SPK4QUsyCB6a0W4aC7RArb3F3hqe+nkn6DVGnQ
	mt5ysqEwj2kQ596KYeRJoxHkwk4k=
X-Google-Smtp-Source: AGHT+IHEZBOIo0A2A31icM+Fxlww7+0WxXDuFPb0g06cEaKCvUBURQmtSH1uKl3tvcPO2LswB5ujJKpr/rQbsqMKTvs=
X-Received: by 2002:ac2:59c2:0:b0:52c:d78c:f886 with SMTP id
 2adb3069b0e04-52ea0643b86mr1347108e87.41.1720106371522; Thu, 04 Jul 2024
 08:19:31 -0700 (PDT)
MIME-Version: 1.0
References: <b3ac57bc2f8963fcacd6f47e32c990e3302319dc.camel@linuxfoundation.org>
 <31491.1720100078506379952@lists.yoctoproject.org>
In-Reply-To: <31491.1720100078506379952@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 4 Jul 2024 17:19:20 +0200
Message-ID: <CANNYZj-g32zPpD_eQHgpfgQnpV-6HnPUeD-9OHH4j=n9afdMhg@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 15:19:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13407

On Thu, 4 Jul 2024 at 15:34, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=3Dkarlstorz.com@lists.yoctoproject.org> wrote:
> Why systemd? Is it needed for something? Note that any deviation fromdefa=
ult config risks adding full builds without sstate to the test,preventing s=
state reuse.
>
> As far as I understand the postinst_ontarget mechanism, a script is deplo=
yed to the target, which is executed on the first boot by init and deleted =
afterwards. since I configured a read-only rootfs, the script cannot be del=
eted. if I don't set systemd as init manager, qemu hangs on boot but only f=
or the rpm package class. I have the assumption that this is related to the=
 fact that the postinst_ontarget script cannot be deleted. With systemd as =
init manager qemu boots normally for all package classes and the test passe=
s.
>

I'm afraid you have to look into the hang. Setting 'systemd' is a
workaround that covers up some kind of issue.

I also wonder how the feature is supposed to work in the first place,
if postinst mechanism relies on being able to delete the postinst, so
it's executed only once,

Alex

