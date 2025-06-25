Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D899C7EE30
	for <webhook@archiver.kernel.org>; Wed, 25 Jun 2025 13:56:50 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.15952.1750859808335560809
 for <poky@lists.yoctoproject.org>;
 Wed, 25 Jun 2025 06:56:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b3X0iwuf;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6ecf99dd567so80589006d6.0;
        Wed, 25 Jun 2025 06:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750859807; x=1751464607; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TO6bS55TGLKoK5sv35n0MZNbsOp0ani7xk2IKmTuWjI=;
        b=b3X0iwufISat2Q+EbXjdNJVZp9wxB9VRdk5OQ+AAy3pcE0KqibbTd352Bo6i2pJ4kI
         +j3b4ZPXU+MVPXX4gnKzv5RtQl8J0fYkRMJ+FdXCx0TPQTsfsw06NoQVq59Dz0CWvKRE
         LnYDr+J1N8WNpfrj+XUfa6H3KAnqKxasO/sjKga5cT1Ip80UqE37i7nbZKLXEZvvX9TW
         tZUNi7RZ9Bz7XbtbYF6sE0BKujB1XxjfOA5o4lJsSP69beUrNJev2seW5VsyjvPcxH0v
         NXelQt078+NpvJYvImowK7fhhcGgUUKa8butRcUMgdT0sJoHE2s/FDOYiLiHZ58izPdK
         8rkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750859807; x=1751464607;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TO6bS55TGLKoK5sv35n0MZNbsOp0ani7xk2IKmTuWjI=;
        b=ZmVGYNT19wVstjFMsjHE4O6QtZBSzKJefDB1AeRKmIqEsbGxUW9yeH/1Kd8CXCHGyJ
         R9+TqUtqNNjm61x2ADByUDMoihlIMd8d7FWPWWEjKeHxxtwUCGjYTAlhQJdLAqcKYSU4
         BD9n5YUZSF+hCVzIrdmGixPJ2m9D4bpA8b60FjMgCj1Wu5otjCR2X22Blro8xyIwH7Pb
         4FIhMptTQTQMewSacHkWWY5CaZShlQc7nuwsqWOgKgdEORBTfm+Jwih5IMr4g0Lh+kuM
         8gj0wXO3cGDp5vklxxaaD3lHA7bXUC7qnhVaF34DXiJMc67vViI0jNf6MmkZeq9iy4vU
         0iFw==
X-Forwarded-Encrypted: i=1; AJvYcCV8s9aQR/Nkm5lvd7d7jDLe7a+CArviuCNH5lOEnyFQys0VJNUXO+F+wpAY1ccQEDUXS5g4@lists.yoctoproject.org, AJvYcCVlwLO0CAMXKJRZKsiVEFACFRM1UGv5NacXbOjBRsloLCe5cLNDWj7CzfOlJ2mTnz30keSyCCE=@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxnbW1UYPqod7iofH3dY3qduF2vbKhhx4YTa9SmZT160pHOYb79
	aQkDp3XQQFj624DrLrAUzyQP29OPyl6HjRBy0fiykMpA14IwD1XAa2e12IItukX1hgjphUzoEJZ
	rAv+lLSdR3PrrPd4cKAzVk94oFVX2jlQ=
X-Gm-Gg: ASbGncsSyhNOQFDF8D+QuS4eMoRycfvfki+OlML/OeN2sfsfosV4KCg05ghkNEzX0gw
	ah3e5Iz2EPvUI0yS0KPMSrWRWJKJCD2qtwJ9LdlGbIcImiqARhHE09TbIuR9yApH7nwNz5XaNRA
	a3utfKqhHB9CbuFLlqIlCp1L2TSJABb06NtM//HB6ejXAazME12eQA+1aXvohwF6sWn49ihfwZj
	1EWuQ==
X-Google-Smtp-Source: AGHT+IFgxhHKN2m/Xijqg5QqK542/8hM3Xxl+EPW+Bli+BCzWuX3ZeaCP4wSkEY2Twob6vovqvr9lG9lFePKhLhYW6U=
X-Received: by 2002:a05:6214:5b08:b0:6fb:4f9e:957b with SMTP id
 6a1803df08f44-6fd5efe3678mr42763286d6.43.1750859806794; Wed, 25 Jun 2025
 06:56:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250623165507.1633860-1-alex.kanavin@gmail.com>
 <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
 <CANNYZj8bcMto=-OHPNEZs_aEM4vr9K1ujVOZ77EDBT-9xC5sRw@mail.gmail.com>
 <749dde0c3ed74dc938085cd15316245eeaa15cc4.camel@linuxfoundation.org> <184C05EBFBF7A622.2779@lists.yoctoproject.org>
In-Reply-To: <184C05EBFBF7A622.2779@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 25 Jun 2025 15:56:35 +0200
X-Gm-Features: Ac12FXyr7uMBrxODu0dypy1FJaxeL6Waiut6t37Je0bbsQnDq8p9hDsYddZDTLs
Message-ID: <CANNYZj-1im-sOPEGV8Pwph5gqqf8Kstay6mpwi1sMdiMZ-GzDQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] meta-poky/conf/templates/default/bblayers.conf.sample:
 do not assume integrated poky repo
To: alex.kanavin@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 25 Jun 2025 13:56:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13678

On Tue, 24 Jun 2025 at 18:01, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:

> I think that's actually not too horrible. Should I try to prototype
> this? One nice consequence is that it makes templates optional for
> those who do not like them: one could instead set the build entirely
> from just a list of fragments (machine/distro built-ins at a minimum
> :) and layer ids. Having to maintain templates for any possible layer
> combination doesn't scale, same way as on-disk fragments for
> machines/distros wouldn't scale.

After some 'background brain processing', I've convinced myself that
the best way out is that bitbake-setup would be able to write out
bblayers.conf itself directly, from its own configuration file. Yes,
like kas does :) I've resisted this for a long time, on the principle
that bitbake-setup has no business directly meddling in build/conf/,
but really, every other option is not as good.

So, a configuration entry could look like this:

            "qemux86-64-poky": {
                "description": "Poky reference distro build for qemux86-64",
                "bb-layers":
["openembedded-core/meta","meta-yocto/meta-poky","meta-yocto/meta-yocto-bsp"],
                "oe-fragments":
["machine/qemux86-64","distro/poky","core/yocto/sstate-mirror-cdn"],
                "targets": ["bitbake core-image-minimal
core-image-full-cmdline core-image-sato-sdk core-image-weston"]
            },

and would not require templates at all.

Bitbake-setup would write out bblayers.conf with BBLAYERS entry
('bitbake-layers add-layer' can't be used at that point yet), and then
enable fragments via bitbake-config-build (this is already
implemented). This should result in a functional build directory, with
a blank (or absent) local.conf.

Then this patch, and the ones adding 'blank' templates become unnecessary.

Alex

