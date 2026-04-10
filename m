Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F832F44855
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 12:37:02 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.155057.1775824622125964666
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 05:37:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=ViBGLpBt;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8d4694105e5so147373585a.1
        for <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 05:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775824621; cv=none;
        d=google.com; s=arc-20240605;
        b=JXoTMlQmk6biAk4A43vq2xDSdFEBD619yiFx/kN6isS3hzFFzC8AwPMhlTofASE1BS
         WFpcGM7pjWiZLeiIu6kbi0sjSpEea5x5K6zNJ9pr1hdzvmX67Yt5tKB01cUWJUki3Liq
         evHc3jhhhUmr/dTyE/ts7OpumHNB36qoIBGHPdSuXNrosOj7HezmOShipFqrwrj4x4I7
         jzN3N5t563iYqVaNha8wVc+fnSFm4TImQNbORLpkGnwKwHyTh1hiKJwOHUJLpnm10d3A
         UcK24fj9iki8eHDUFhqlRQY8/NsqJvpQMNKmm4DvpM4M2qiRQwvoszxHGp6CggVhynv0
         F5aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1pL5cMHfDc6YAY1vTiPV5KnhRzZR1DpjMBxhWfNvLfQ=;
        fh=2xG7FezdrWiomGrvfvu/I38UDJLF/gUta09KGrViHAo=;
        b=dMhuAFq4lTkUsMVEVIkcqJJeRrh2Od6yIxPilGIvRECLBw+2k4YQMBaQt9E+nO6CNG
         l9PxZf5bR6zpLXlIi3Q0+65DgoZldhPdUT4Vcqdk+4JmMcAWEAmlHw1LU4uRGhrjXUiK
         VQ/6KgHPffhfX+KcNTXDleHV+JDP9vTiTOcU8twKBH9Y7JkGTD803shNcmVjYfngH7gM
         pwfkOIugrSfRh66wDO16oVFNAFYR5EiS2DL1AxL7ZWozh2KLqhtyNyfLIXRgoGbEBs0H
         iUqRBWmbS87V13PzZRb+WbIf52Atp/M2MThDiS+Ju+uytaGxNpbYLVCQ4op4jhlqjfW5
         a9fw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775824621; x=1776429421; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1pL5cMHfDc6YAY1vTiPV5KnhRzZR1DpjMBxhWfNvLfQ=;
        b=ViBGLpBtICD+lu70WuOgkfmHjDuT2BPKdfU8sc7kDsOdoe5kMQ/T6zxGcm58h4qUc7
         0jW4lqtSrB6YLeQaEbWYZ/tSqEol2PrOH9TvmSUGtdLKbPHnDYOfIUWVQDnsMPX2EaGf
         SF9moVyE3L7UVKxfogu8K0HcrBB/RmTcVYhq3hhENqekTlEPSkNu9mv/rNsS4xRBpXYI
         SheeLoYg5K0JgImII897ZUyFTADUMHOzdAB58jUnLYFa3xQldozr93Dc5UYNpCR5QRfF
         REfG8qaj5f7fYcIkXBbBulu25EbblXycZkV2R95GYzVx73xL6NbVegxba3cyWGq4ZE+m
         x6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775824621; x=1776429421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1pL5cMHfDc6YAY1vTiPV5KnhRzZR1DpjMBxhWfNvLfQ=;
        b=RE77TuXoFyrWKnPNwHm/UEs/X5LEvSD8xGZR+LNZqHl6yitbuK9XaSGp08zxzx/MNC
         1BW9jrNxfD3vVzHBZl6SyHoEvGQyvszjZUHnvAFOzZQsFxKg1BnaW9ZGd8V/OReDQVuE
         NtKhDDHRvW5L/uTbEeTLwHclvNG4HqkInw0QzjdnXm/q6t+yZg9Nr7aKQZjb2pA0Gww5
         BT5naFt3fK+BA8AQLa83W7jR51ayN3wzGUab44XUyrcLpIlyibalHArVo7olzaH+9l7N
         XYb9y8hkyOd7EYdhPwAI8gmm6oHvct6d+1wYOY93cKVR7F1opp0YcMEyVzDLnoDfCoYt
         O3ng==
X-Forwarded-Encrypted: i=1; AJvYcCWxB3TSJ0mPKIj/WTtCHuSpP/ff5XtTRkPBTQ+rjsRQ9MQ8E9mw6rHiN+9l+BmWBXQQPbB5@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxwwCNAPty8r6hedkw0fIMF1gEEBZDOUPnLGvS5Rv+KwXvVb0/G
	tPW8qnk+ozqegJcQnYfVmN37soQtJQ2PHmUFYv2P49ZRHFqlxYq1C/Ac8Hy4cn4Hs8dhSp4D9J1
	wDaCfw2Jh57+4//kOZboVGstTgabwrJ91yqDN7RM=
X-Gm-Gg: AeBDietZxnwd6xEJ3hkyeyoNKU5Pm6DlHo2rDarHrOMvhuNRnBRTwN+KLiQBvWK5ihO
	BefAGGRtp5qePVeUe3o7l+WwOPCOIIoUMtw4WfwanlS4i0bzfx72ZVnWFtuoO1rZP85EjG5XkBK
	UdN8noSyqlsWiTS7h84fk0WdQUIEIPRSfErxwemEXyq7deSGkyxYrVCQ254hYwxsZ3mG9B+VtCD
	7+jrARYUUK7XLsnm5xW2KPv4Dryd6peBLp2UT9seDXDAWf8ShnDuBhhn7eS9U2kRqd0NcM2UI4r
	f7+6A0nt3Taw2c3fgpducE3liCGYI2qux0WF68549w==
X-Received: by 2002:a05:6214:19cd:b0:8a4:21d9:bbf2 with SMTP id
 6a1803df08f44-8ac861c85afmr42568056d6.33.1775824620827; Fri, 10 Apr 2026
 05:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260303172109.2081848-1-alex@linutronix.de> <275547.1775745237087663847@lists.yoctoproject.org>
 <DHOP88O48DYH.374EOELZ42STB@bootlin.com> <CAD=4a=UpC8BH9P5tF0pK-Gf+og+oOoEe-nw8MpQGSme1HxRTkQ@mail.gmail.com>
 <DHPAEJTIJMYA.1IY4JQ5ETSU4M@bootlin.com>
In-Reply-To: <DHPAEJTIJMYA.1IY4JQ5ETSU4M@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 10 Apr 2026 14:36:56 +0200
X-Gm-Features: AQROBzBP2tn5iU7fl6_wkpqiI2uprDYFDCsaYXcqcvxdzllNf-LzNBRCyv5KYdI
Message-ID: <CANNYZj9QSPRz7QVA_6G-Zijd9S5v1PVaBZHDzUueoLoHTo+85A@mail.gmail.com>
Subject: Re: [poky] [PATCH v2] meta-poky: remove the default template
To: antonin.godard@bootlin.com
Cc: Ernst Persson <ernstp@gmail.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 12:37:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13896

I'd also note that poky template is mentioned in multiple places and
they all need to be fixed:

alex@alex-lx-laptop:~/development/yocto-docs$ grep -ilr
meta-poky/conf/templates *
documentation/migration-guides/release-notes-5.3.rst
documentation/dev-manual/licenses.rst
documentation/dev-manual/poky-manual-setup.rst
documentation/dev-manual/custom-template-configuration-directory.rst
documentation/overview-manual/concepts.rst
documentation/ref-manual/faq.rst
documentation/ref-manual/structure.rst
documentation/ref-manual/variables.rst

And this should be in migration guide too.

Alex

On Fri, 10 Apr 2026 at 09:13, Antonin Godard via
lists.yoctoproject.org
<antonin.godard=bootlin.com@lists.yoctoproject.org> wrote:
>
> On Thu Apr 9, 2026 at 7:30 PM CEST, Ernst Persson wrote:
> > Hmm I'm not sure what it should be. Simply
> >
> > source ./layers/openembedded-core/oe-init-build-env
>
> No, the openembedded-core also has templates in
> openembedded-core/meta/conf/templates/default, we just want to replace it with
> this one.
>
> Thanks,
> Antonin
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13891): https://lists.yoctoproject.org/g/poky/message/13891
> Mute This Topic: https://lists.yoctoproject.org/mt/118117366/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

