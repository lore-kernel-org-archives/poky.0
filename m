Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23F87C3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 16:24:09 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.84283.1720455840955538807
 for <poky@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 09:24:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DnG64zjy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52ea7d2a039so3122220e87.3
        for <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 09:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720455839; x=1721060639; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QPLFBAvVbL2RUue78x/AjbftLPiXGisSCCmOcO/wBiw=;
        b=DnG64zjyfzwbzrIcoamR8GxR6NKGD/RRiAFmOt+qPyVQqx6fvNq4V6GeZTJhtQCl7V
         +1oLS4KgBJFBTqsphHDC0NrbclZjI8qHYeMtuKbx6rrCQn6U/PM6NqzKP0EGNA7TOXOs
         vq20+jBFq4rEHsf+EXpW9a8SjmIhfk5XEshuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720455839; x=1721060639;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QPLFBAvVbL2RUue78x/AjbftLPiXGisSCCmOcO/wBiw=;
        b=w5o7ZIuLBnz97JPDWV0Nb+Xa592l1cGzIsaSkYwLuqQ/+OgNpKHXUFLpYwiUHw+6UZ
         gBcAvzOv0Oil9rox9E7i/FNOn4vsT+I7ROq3cISnrM/fnjtKgOVSvqzjPkkyvbt+oD3K
         WehYwzkV3FjdyYN2OeKBt747gcBnXNAdiNZUhVEWdLhnEj3HWGOgDhguaT9zQASSIfkG
         g/Wjpq+Kfz/nrdFUtZ3gwIBtPEbrWlrbt3f7x7LVva41Pe4OPkQ/634HgtbdP1bT9BFg
         U2ZSosKv4zpdgNe7F6022gT7X+OCQZ8zy+iSuSAuijHcr8XhMgAXCUXucATc+nStxmJB
         4mng==
X-Gm-Message-State: AOJu0Yy8hNDB98JmwmqSZ1sheoTTKV4XpjIcNKzz1WjjrA2N/ACLWPjO
	YlNcqAVBcx/5I1Dg8aFN/4uYBV01xHLhLzktAB8VpxKqUVBvVtdH28L+yxU53uw=
X-Google-Smtp-Source: AGHT+IGEzVMEfnQyDNh395rjqmN9GmH5duS/CkjpiZXK9b9kISBEY/5GrwC0xTKOdjPiE2qn9qs91w==
X-Received: by 2002:ac2:4348:0:b0:52c:dfa7:9f43 with SMTP id 2adb3069b0e04-52ea0642ab4mr7802384e87.34.1720455833659;
        Mon, 08 Jul 2024 09:23:53 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7de4:636f:6569:3199? ([2001:8b0:aba:5f3c:7de4:636f:6569:3199])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a2fca8bsm171932175e9.47.2024.07.08.09.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 09:23:53 -0700 (PDT)
Message-ID: <56cd90ed954ea792451a07c30c305e214c545e0d.camel@linuxfoundation.org>
Subject: Re: [poky] Licence error in openssh
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, chris.vd.kruit@certhon.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Date: Mon, 08 Jul 2024 17:23:52 +0100
In-Reply-To: <CANNYZj8hA4Wwpm8HiZ7FD1KWndAmzKLz1+dpTV=buP78Np4mag@mail.gmail.com>
References: <nauN.1720433331746704508.jsS2@lists.yoctoproject.org>
	 <fc84d485caf7ebcc549256d3916a2164c968916a.camel@linuxfoundation.org>
	 <e6aec5b3a55a4b01831923133e2d5287@certhon.com>
	 <CANNYZj8hA4Wwpm8HiZ7FD1KWndAmzKLz1+dpTV=buP78Np4mag@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 16:24:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13420

On Mon, 2024-07-08 at 15:09 +0200, Alexander Kanavin wrote:
> On Mon, 8 Jul 2024 at 13:11, Chris van der Kruit via
> lists.yoctoproject.org
> <chris.vd.kruit=3Dcerthon.com@lists.yoctoproject.org> wrote:
> > I just typed in devtool upgrade open-ssh and then build the image,
> > I'm on the Kirkstone branch.
> > But I was a bit early with my email because it doesn't work, I got
> > the following error: /usr/libexec/sshd-session does not exist or is
> > not executable.
> > Can you tell me what I should have done instead, I'm new to yocto.
>=20
> Using 'devtool upgrade' is correct. It doesn't always work perfectly,
> so if the license checksum isn't correctly updated (it should be
> though), or if you get other errors, resolving them should be done
> manually by editing the updated recipe.

Alex is correct. I'd also just mention there is an openssh upgrade
patch on the openembedded-core mailing list. It causes a ptest
regression (a hang) which we need to track down before we can merge it
though.

We merged the CVE fix in the meantime.

Cheers,

Richard

