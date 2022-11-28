Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.119874.1669647532704071655
 for <poky@lists.yoctoproject.org>;
 Mon, 28 Nov 2022 06:58:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KP3aUqej;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id u27so6757858lfc.9
        for <poky@lists.yoctoproject.org>; Mon, 28 Nov 2022 06:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zbXNdkS464IK8GQxF6lEYmOhhTxidluycrv+UGURVLw=;
        b=KP3aUqejtXDegbRlkx8qy1ojTAVSEjj23NGosmzrcoQVlw0CVBnhGTHGyNAB0CAtrH
         R33tELbzVsNONLNLywqtJtJZcwlJjPdkU0oskhwuG2PvjeIOGpZCk5xhoeo9Jv9tQVdb
         EBR0j/vhPCXqJhl9Tu9EEhEmpoNCpDBRq5U5k1boGFLYHjhObH5rN8L8UPYr9lXdM+nl
         X6q+VQX5mnLefMGEl92BxuO8X+e4Id1acvrzC53KN8im6QZlguOFOFwhvxixK7YdcPdV
         u5HjOsAutuvhux6XcmtvgPZS78QhOg6hrdhdHUaFyfOreLySC7RpM8j42B7myFhjkyh0
         t95A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zbXNdkS464IK8GQxF6lEYmOhhTxidluycrv+UGURVLw=;
        b=44002JIKT56ZXdyzl8lODMLih5KLUS9Ozj+Oi+aeOGtndYXVPVTFrSRXwDO2pVqHPZ
         rjwxnrb/KYO07E+5ULhZ6F9G+HNxFrhrnmh/W/U0WfzlojuvJED8VFZO6O1S6FbzcyL3
         19ukDpzPyW5kH8YuUQowQBTdIw1TkeiZ6CVEMwZbAmVqUMtLQWcOSJappAXmnecQPgox
         JI7wmTjh09bJkQiq1uUWxnSO20iWM9XY0/A0Mdrtr2pF5OE4r1TzpDOhdUU3DgwsNFuS
         jfmK2S+4NV/mFfKVbTY8XHjgbUzCOKUjXgsR9kwnX5XrcKLciR/ixQjlFaGn1YJhawq6
         Cl4g==
X-Gm-Message-State: ANoB5pl26W0yE/X4KL1Md3DiVuXKK2ag4E5xw1JT89bzwaqKIcNLk1lc
	DzatmiRKeWENabuc5ftr2yY9RU+8c3KgHYTyqjU=
X-Google-Smtp-Source: AA0mqf57WKOyp3hdIrIWjwx9YZl5FebskkhFBKXh1zrBeZHnhzjXZG+PBGaJfL0psKFToLo7g4TQQ5zNFWaRT+kGIcE=
X-Received: by 2002:ac2:4c47:0:b0:4a2:4d53:8294 with SMTP id
 o7-20020ac24c47000000b004a24d538294mr15999848lfk.263.1669647530460; Mon, 28
 Nov 2022 06:58:50 -0800 (PST)
MIME-Version: 1.0
References: <29070.1669647119522002902@lists.yoctoproject.org> <26417.1669647232440849425@lists.yoctoproject.org>
In-Reply-To: <26417.1669647232440849425@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 28 Nov 2022 15:58:38 +0100
Message-ID: <CANNYZj9sFraiugRax5P2ztKCKRbK4pzRhiJh2mf-K5FpoKBBoA@mail.gmail.com>
Subject: Re: [poky] Azure Devops repo URL support ? #poky
To: BELHADJ SALEM Talel <talel.hajsalem@sofia-technologies.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

( and ) look suspicious too, using such special characters is asking
for trouble. The command that was being run is visible right there, so
you might want to try it directly on the command line.

Alex

On Mon, 28 Nov 2022 at 15:53, BELHADJ SALEM Talel
<talel.hajsalem@sofia-technologies.com> wrote:
>
> On Mon, Nov 28, 2022 at 03:51 PM, BELHADJ SALEM Talel wrote:
>
> --mirror "ssh://git@...:v3/WITTI/(Em
> bedded) Gateways/sofiatech_Gateway_setup"
>
> I think the issue is that there are some spaces in the mirror URL ?
>
> --mirror "ssh://git@...:v3/WITTI/(Embedded) Gateways/sofiatech_Gateway_setup"
>
> Azure repo URLs often have spaces.
>
> 
>
