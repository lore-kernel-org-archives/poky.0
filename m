Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238BEB64DC
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 09:50:19 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.18452.1688637016133882785
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 02:50:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=OBbX1QKC;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2b69923a715so6757211fa.0
        for <poky@lists.yoctoproject.org>; Thu, 06 Jul 2023 02:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688637014; x=1691229014;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UTP5cDG6vXMXyrxLQ7s+RE3Nrd3OnDx/UoLuuaUMjtQ=;
        b=OBbX1QKCkz4Fwz503zlEYaRpT0ROt75i/BupA9u604B+O8IxKaBAq2WQ6sQilgT2Cd
         36X8UrTm/1urJ4jQ3H8+MkAnPNniZg/IrdHlbsgstRfzHK1zWGiPwbdNKZjh3ikDwgyh
         ThNqeec9lp/6UmYNPkRKkLQrBe7ZRDqcVIm4aDi3pY/68S35wkpeqodE3pYERWE7sRdW
         uQkL5YUGN18T0w9tvxotFbIC+uOSuiA0GykVI+Zu98tj/T/fTV6CMZLdMcVYcGgxW3dC
         OQ8bwEFvHEEXRkTGa5moklLrJt0i7F+JhyQj0XJyfGvA3fPkyqrCLaitQQPGrf9rWCPm
         xYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688637014; x=1691229014;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UTP5cDG6vXMXyrxLQ7s+RE3Nrd3OnDx/UoLuuaUMjtQ=;
        b=h26+6E5Z3zC6ou6aO1wPUydKIhvw4kQNa+oTuXxlfLepCWmYBo9Zl2KON6I4T5Fci8
         TBDloS9SZnzvBgZ9UJEx3qJte8MOyrij5UE8tzIPic/GtHD8bBgiZIAjSt5mOjozCEXS
         IORqEPmrjoiDSkATnwigvia8vwcSIZcmgIyCLE3l4nieVnEh/tqwoQRhPyasZDnOJzS9
         wAqk/A1PUh/gjzXRZe/JzQiUV1rRPxDj60qOiKV4L1sxfqeZrWgDofsIoe8H9vjZOGVL
         jyIGkC3WVWRRQ9md76TuEQjwfWiMDLLYE0kxUO8pja4E0MqFg8+deub0g0i7OKDhK6xI
         +5jA==
X-Gm-Message-State: ABy/qLYYSiJhh94GpL2FI2Q+Q97/hoVINLGo3y7iMD2AZ9Rv6pzGZMpV
	HZceXfOi94EKkK1ygLuCV26vOpdf0uJj9+ijFHs=
X-Google-Smtp-Source: APBJJlGTy1Z19PivJAwaI76IOdItCJ9rR0qp7XPc1eJayotg3G8RdkgBtoKw1rFfMTcGV/dnrSmRXSsrCJY6aMaoUds=
X-Received: by 2002:a2e:9c46:0:b0:2b7:857:7cb5 with SMTP id
 t6-20020a2e9c46000000b002b708577cb5mr587484ljj.24.1688637013905; Thu, 06 Jul
 2023 02:50:13 -0700 (PDT)
MIME-Version: 1.0
References: <zaH1.1688603807958251008.7uhU@lists.yoctoproject.org>
In-Reply-To: <zaH1.1688603807958251008.7uhU@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 6 Jul 2023 11:50:02 +0200
Message-ID: <CANNYZj9yMacnjCvZCXnc0QYUrCxYPFPpPUsgziigkqsfonmnhg@mail.gmail.com>
Subject: Re: [poky] Cannot enable a templated service where the instance
 starts with a number
To: Lincoln.Ramsay@digi.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Jul 2023 09:50:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13104

The patch should be sent with 'git send-email' to openembedded-core
mailing list. You can find out more at
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Alex

On Thu, 6 Jul 2023 at 02:36, Ramsay, Lincoln via
lists.yoctoproject.org
<Lincoln.Ramsay=digi.com@lists.yoctoproject.org> wrote:
>
> Hi folks,
>
> We just tried to update our poky submodule (kirkstone branch) and hit a problem because of this change: https://git.yoctoproject.org/poky/commit/?h=kirkstone&id=7f8a4aa6cf240a5cdda012837f3f3f7a0f9bbf1c
>
> The problem is that we install some templated services like so:
>
> SYSTEMD_SERVICE:${PN} = "\
>     wsapi-fcgi.socket \
>     wsapi-fcgi@1.service \
>
> In do_rootfs, the poky systemctl is told to enable the service and so instance is set to "1".
>
> The problem is that the re.sub uses \\1 and then pastes the instance name in, so in our case, it ends up as \\11, which fails because there is only 1 match in the pattern.
>
> python has a solution for this, which is to use \\g<1>.
>
> eg.
>
> -                dependent = re.sub("([^%](%%)*)%i", "\\1{}".format(instance), dependent)
> +                dependent = re.sub("([^%](%%)*)%i", "\\g<1>{}".format(instance), dependent)
>
> I am not sure which other poky branches this change is on... presumably at least all of the newer ones.
>
> I'm not sure of the normal process for proposing patches to poky, hence this email.
>
> Thanks,
> Lincoln
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13103): https://lists.yoctoproject.org/g/poky/message/13103
> Mute This Topic: https://lists.yoctoproject.org/mt/99977115/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

