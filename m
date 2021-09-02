Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web09.3993.1630568878334897313
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 00:47:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C43cOtfq;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id f22so1109983qkm.5
        for <poky@lists.yoctoproject.org>; Thu, 02 Sep 2021 00:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RC9twRBlxZ0f8Xz2HFtDO+VB6sdvIwTCrzRNVlBMfCE=;
        b=C43cOtfqnhNxWl70hN1yM0cKV4fxa0tMJbO9A7za+mbbmSyFGxe+LlJo/21KpcsIKX
         DwmDv+9yHWZYP8ffjawxt5Y/JGb5ZvU8dbyORTkC3Lijl1Ctl96YKKac6I6f3SYXZwIz
         Gxoaa64CpaStqAUcjUTCwNsNSDsynNZq8XNWOfMbywniQDHzMim3Y5phvTH60b6bgkPm
         RSiwIzB1A4vnjZyY6/jPkwKHWjFhfJUyo7O05uxb3EtxhzSYLK3XpYssT37KPsNpO6mt
         A9E6vGT27Fn/8ujxRZBrEaMzz4rks2frZz/Lnmk9N3P5aSnTPfNe+BuCbXjOQS6VRSsh
         HJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RC9twRBlxZ0f8Xz2HFtDO+VB6sdvIwTCrzRNVlBMfCE=;
        b=JIS9oFghl8AHstTgdI6c9GM1KdcN3lP4G0P/Pc3rGdcDxDyBBTIYtKwJYz63K1/6Hp
         3rJWt5ZtP19ZP3xDzUv73GEJKNpad2IJUDiS/jc3ySGHZdX6JbAG6SUTYozbwJVs1EwX
         fbZ/QoWxJkkMWdvQ/6sTFs16j3dQ2JrMPcUmfoftGolUw+uo3ek42ArzucX09mjbR7pL
         pmVapk3Mo8dSzx8X5gepaHs8maUjiXyjXCV6ZwxLVakYAdiuDX2NfVhqNOh616FPUmcd
         QaerUZPpukHjM88aIR5AnZt54zsWaTNMVjn6b01lzHUSsMDhSrZK7xeusddE0u2LXUCs
         j8Sg==
X-Gm-Message-State: AOAM532/44PKDthdrbpbAnWZGO8NQGfzSD/PVutyf/ouHUD1n+agvOQ3
	zfTlfamIyHRmBLDsuMuFSC43QHOQMjHCf8X45F8=
X-Google-Smtp-Source: ABdhPJxj4UHUyCLguR8wTv5S2X+aW/o6IIHJmp8yNMwjzfSKGh7yBV8kKfSDdaVeeKBo9DUfdA146IiVXyHpWUKauFA=
X-Received: by 2002:a37:bc8:: with SMTP id 191mr2019437qkl.25.1630568877363;
 Thu, 02 Sep 2021 00:47:57 -0700 (PDT)
MIME-Version: 1.0
References: <D04j.1630568360725298708.KKKu@lists.yoctoproject.org>
In-Reply-To: <D04j.1630568360725298708.KKKu@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 2 Sep 2021 00:47:31 -0700
Message-ID: <CAMKF1sqZXdfEXdKkhPGiKxApNmkAQ5KmTV1djhPy3PFQNEu4eg@mail.gmail.com>
Subject: Re: [poky] [meta-clang] Failure add clang to SDK on hardknott
To: Piotr <piotr.piwko@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 2, 2021 at 12:39 AM Piotr <piotr.piwko@gmail.com> wrote:
>
> Hi,
>
> After switching to hardknott branches (poky 14c5392fde, meta-clang b0d8050) I'm not able to add successfully clang compiler to SDK. There are some undefined references to tinfo during build:
>
> | //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `keyok@NCURSES_TINFO_5.0.19991023'
> | //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `raw@NCURSES_TINFO_5.0.19991023'
> | //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_add_to_try@NCURSES_TINFO_5.0.19991023'
> | //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_get_screensize@NCURSES_TINFO_5.7.20081102'
> | //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_get_locale@NCURSES_TINFO_5.4.20040208'
> | //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `SP@NCURSES_TINFO_5.0.19991023'
> | ...
> | clang-12: error: linker command failed with exit code 1 (use -v to see invocation)
> | ninja: build stopped: subcommand failed.
>
> On the gatesgarth branch everything compiles fine, so I suppose that something should be added to make it works on the current version. Have you met such a problem or have any idea what may be wrong?
>
is it happening when building clang for target or during clang-native
or nativesdk-clang build ?
it seems something mix and match going on. Where it expects to links
with target version but then tries to link libtinfo from host.
please post full build log for this component somewhere as well to see further.

> Thanks in advance,
>
> --
> Piotr Piwko
>
> 
>
