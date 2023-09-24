Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44522CE7A8A
	for <webhook@archiver.kernel.org>; Sun, 24 Sep 2023 13:06:12 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.38928.1695560763234605804
 for <poky@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 06:06:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ASoqtVGr;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2c108e106f0so77160391fa.1
        for <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 06:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695560761; x=1696165561; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YsHInms/lf+ouZ/38H7ubsfpMWsCOqhSdBdeKzsT5K0=;
        b=ASoqtVGrl6LLYch1r6d7GPVb58KngajPQe4uF1jf+tySg+KhHKepTPSvA06B4XbhK5
         8WN0MNb7FHfl2pmyWcvzL0shlIp7AQjtHwDuNFI2n5VxlV0OkwKQCeiLvpnxODr7AhPw
         BQWCnn9WBjE6EgOK70/QYPqtWJmzh4iOFclBdPxINUy0ksfhzTLGExlJD6+g/f/cfs3e
         2itbpkHxhu7B4Ar3sCu0p9yHNuYuU6IShMApuxDqhjLW8PO1F9UnwVzDGRarOqV8AnDO
         dAY3CExKu/28h4VP6XCoNs4dHHxtd3rrloybm0IgSs2FlMRBnEIj7TTuv73UW2k8Rm/p
         nHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695560761; x=1696165561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YsHInms/lf+ouZ/38H7ubsfpMWsCOqhSdBdeKzsT5K0=;
        b=pTxcdH+fBTBQ2oGP1t46PWAyOGG5IqslFX85/fyi7I4X3kdSbxQjpEGAMX9jJ7560P
         g2ptnkkvTB9wQe7kv4hegxuPZ/QLtcEk7Do/6gOAFwZUX9ixVRTEEcRI1sJjW3+Hp2Kq
         wAQ2qOVtEM/lEU6CLQ3yZQyQfD158dHhgo6uYjx+sBbBd/QyX5NSf7LEt/jNeQEZc9vK
         XuMM+KAksj0VsgRGYydSVY26iFJ44z9y+HFxPojXygeeDLn3vPLv8lxFnhAswmHfE+xG
         jWkMMx+5cupt4NOMKrJ7Zo2aBHYJg1HZbR9vI3lw77pXYCT+xv6ffQFso42pibhAOb6t
         roZA==
X-Gm-Message-State: AOJu0Yz7PmqAXOYUHtKfB8k686lX0b0cDzdu/GYP4BKv7kRXjqYTeY3I
	yq/xHq695Arum21Yh0Y4Rxv7vQgScVn9yfGoVY4=
X-Google-Smtp-Source: AGHT+IFpbfywKhmAlNy3EJTCapNQRlPeSvkdEnpUu8+X2OA4e/2lQNAMFU2qCcvnxTe++MKt1tlPf2ufGBEjtc7uDYE=
X-Received: by 2002:a2e:7817:0:b0:2b9:36d5:729c with SMTP id
 t23-20020a2e7817000000b002b936d5729cmr3785946ljc.47.1695560760984; Sun, 24
 Sep 2023 06:06:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230924122259.2697980-1-bhstalel@gmail.com>
In-Reply-To: <20230924122259.2697980-1-bhstalel@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 24 Sep 2023 15:05:49 +0200
Message-ID: <CANNYZj_HQA2SM+a8wZRBQs204RLV2srX5gBaB2W3=FyoNu2hgQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] scripts/oe-setup-builddir: Add option to force
 TEMPLATECONF on existing configs
To: BELHADJ SALEM Talel <bhstalel@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 13:06:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13164

But is it really that difficult to remove the files? Adding variables
needs documentation, and tests, and adds complexity, and this one in
particular can be easily avoided.

Alex

On Sun, 24 Sept 2023 at 14:24, BELHADJ SALEM Talel <bhstalel@gmail.com> wrote:
>
> Since we cannot force overriding of the config samples created based on TEMPALTECONF variable,
> and that's because it may remove any custom configuration done on local.conf or bblayers.conf,
> and that's also because TEMPALTECONF is, usually, used to create new builds.
>
> But, when the developer wants to recreate the build after changing the sample files, the developer
> must remove the files manually.
>
> I think introducing another variable FORCE_TEMPLATECONF can help when override is wanted.
>
> Signed-off-by: Talel BELHAJSALEM <bhstalel@gmail.com>
> ---
>  scripts/oe-setup-builddir | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
> index 678aeac4be..3bd3df0930 100755
> --- a/scripts/oe-setup-builddir
> +++ b/scripts/oe-setup-builddir
> @@ -64,7 +64,7 @@ unset SHOWYPDOC
>  if [ -z "$OECORELOCALCONF" ]; then
>      OECORELOCALCONF="$OEROOT/meta/conf/templates/default/local.conf.sample"
>  fi
> -if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
> +if [ ! -r "$BUILDDIR/conf/local.conf" ] || [ -n "$FORCE_TEMPLATECONF" ]; then
>      cat <<EOM
>  You had no conf/local.conf file. This configuration file has therefore been
>  created for you from $OECORELOCALCONF
> @@ -79,7 +79,7 @@ fi
>  if [ -z "$OECORELAYERCONF" ]; then
>      OECORELAYERCONF="$OEROOT/meta/conf/templates/default/bblayers.conf.sample"
>  fi
> -if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
> +if [ ! -r "$BUILDDIR/conf/bblayers.conf" ] || [ -n "$FORCE_TEMPLATECONF" ]; then
>      cat <<EOM
>  You had no conf/bblayers.conf file. This configuration file has therefore been
>  created for you from $OECORELAYERCONF
> @@ -101,7 +101,7 @@ fi
>  if [ -z "$OECORENOTESCONF" ]; then
>      OECORENOTESCONF="$OEROOT/meta/conf/templates/default/conf-notes.txt"
>  fi
> -if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ]; then
> +if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ] || [ -n "$FORCE_TEMPLATECONF" ]; then
>      [ ! -r "$OECORENOTESCONF" ] || cp "$OECORENOTESCONF" "$BUILDDIR/conf/conf-notes.txt"
>  fi
>
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13162): https://lists.yoctoproject.org/g/poky/message/13162
> Mute This Topic: https://lists.yoctoproject.org/mt/101554603/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

