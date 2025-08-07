Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35CF7C87FCF
	for <webhook@archiver.kernel.org>; Thu,  7 Aug 2025 12:48:20 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web10.51148.1754570884063793729
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Aug 2025 05:48:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Oo9QDk9F;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6f8aa9e6ffdso10346626d6.3
        for <poky@lists.yoctoproject.org>; Thu, 07 Aug 2025 05:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754570883; x=1755175683; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i688tn39pe4c9KhpiygyvLGjPEt07Hk2UzcDCVxC9Us=;
        b=Oo9QDk9FVZCAIoi6w0ijeHRdgWD/QaU9HDAcManM4n7PmQ0Cd6EC1yVkZPWF551rsH
         VlPDBA6a3lcvr1jM3Tl9IcSUqiqxiYrlEypoMB2CLNahQbAOBlQCGybwZe+TKsYGqxKD
         0QTHso19HpuanMIPFN05xvJ02q1OxMLpvizVXI+OPT4m6g0jbaFSqIlZ3W5t4OoCjEtG
         ScXLppKwRK7LldUCkH/YqYpj5OOsdA2FbvPPkMSr8aaqb6BSGEc3RYLBnDK5Xj77vypw
         3BxZi8Ml8gui2KqXy1iXhjfzREC2tyI1TjQZ5+QCdZatItWKV6F9gLPxOs+IhRCdRPDk
         POJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754570883; x=1755175683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i688tn39pe4c9KhpiygyvLGjPEt07Hk2UzcDCVxC9Us=;
        b=jCdBxhInbR733IK6i5KV+emaoyaMal6hRw9Suu5WWH6/Cv98To+lViU9i03k99eWeb
         NmZmKoK6JkB7KSC7vC3IioYadiRYGa3Bg1PzpqoayoA5mNFLOsSyhLIrdnC+9MUmQYnu
         09LBllb0pLLPQBaHp8GWR4PJpP6dtV4VSTr5fBQ+SjEkfIi1d3GR4a1HZByweMo4n73J
         zhStdATYLhTVmi8F1xyJ2bsjWpRjAcSS6OznQNNoUayeypV9MdjflRZeiyJaucnZzJUi
         iqz+tToEIBp2vjFhLkoKNkyjxVBZ3bWhyZcDNCwnk4zuz0lplrecXFif4Zut4sZr55TA
         gFDA==
X-Gm-Message-State: AOJu0YwTvc/6pY/CEU0Q1sZCHxxkGi2tu0zMXIZqCfL669gUVmFndKAD
	oRYPH/Et7lIU5vYGkBvC7PRSTipwvLR25MbP0WGkbLySpklEueOj8BIbL6+ifCj0nx6DYl3iian
	k+ExZo73oQTEsJHWbtIhROQtLtYc+XwA=
X-Gm-Gg: ASbGncsMigJ/tfkyjlmTlknIO7i3MXUgYWmHqQZVT8HH65RB+tHrqkT2jx5SxOj0znv
	0xSxlrmtAVS3f/BoLln18u4DyfqacdXGuJof2bVrC2L675/NueUANuJREWZQEqKy0QPBdPuyQLv
	/gFXYU8AAtA7t/ClZiwpLD1hQ2QtphErgajKOSDTzN9Ij15jAjHgLnb3TkCYnB4PD0nfTcV1wy3
	cnji+r3GRoh3uQohl/poP+PZJU7n7t/EFlCsgqQMQ==
X-Google-Smtp-Source: AGHT+IEz2+huXPmzEgGjpfa5DiZ3jjXi02Az35be1c30kI9QljK0OYBo2DjNr7G+FF3QqtsyFSenoaXQrKfkPcpsG/c=
X-Received: by 2002:a05:6214:acb:b0:709:76b4:5935 with SMTP id
 6a1803df08f44-7098a8988c0mr34030226d6.54.1754570882572; Thu, 07 Aug 2025
 05:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
 <31515.1754384245429990929@lists.yoctoproject.org> <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
 <opg62v3xde6auwtpgveacv7urixrsan2kde6z6xwtdup7igocf@lom5oqfooe26> <18597ADCBAD905F0.18889@lists.yoctoproject.org>
In-Reply-To: <18597ADCBAD905F0.18889@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 7 Aug 2025 14:47:50 +0200
X-Gm-Features: Ac12FXxZ9V-wogKoJpSIYI31pnoJXv_58W8-8uAnI1i3MNOJqgRr9KMj6hNkehY
Message-ID: <CANNYZj9S-qXZGgN6WrZ_EhZkYYZ4yfrKs4W4GE6a1dtbO3i5pA@mail.gmail.com>
Subject: Re: [poky] dnf5 and libdnf5 target release?
To: frederikbraendstrup@gmail.com
Cc: poky@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Aug 2025 12:48:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13717

On Thu, 7 Aug 2025 at 14:10, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
> > I'm planning integration with libdnf, but the github page for libdnf
> > says that it is being superseeded by dnf5 and libdnf5. Are there any
> > current plans for what poky release that will be included in?
>
> This is not how yocto works. Things happen only if there are people
> with sufficient interest, willing to invest time into a certain
> subject. For dnf5 there curently are no such people to the best of my
> knowledge. You are welcome to develop the necessary changes, and they
> will be reviewed and tested.

That said, some years ago (way before dnf5 was ready even for fedora)
Ross had some preliminary patches. If I remember right, we quickly ran
into missing options (as compared to dnf4) that had to be added
upstream first, and that's where it stopped.

Alex

