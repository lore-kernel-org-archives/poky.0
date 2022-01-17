Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web08.2628.1642449262872659182
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jan 2022 11:54:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RG+YPitb;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: festevam@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id b13so70300642edn.0
        for <poky@lists.yoctoproject.org>; Mon, 17 Jan 2022 11:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=fH6dF17OtHCMaRBtmkVHk4ruj0UQYnkLwD0Pb8saoQs=;
        b=RG+YPitb1Xjx254VcAKpUbZd/oLRdlifIU4yI8w83pzuaZP9t387Wa0d73XdVIrfWp
         58Fn4F46RiL8jM/X/HNImf2LMORgdJFxtwt7W47Y7LCmI6qP06hvBO1F0osMsjM4YVQu
         ded8227MgFNEPEguAXHRMXhSf02B4FSE26/ch8FfCa4GdSlzK6typ2BnY9Kb87/Yn5e6
         ewvVWeykYZu7uJcOY9+pAbqDWtgvvpwvaLjy14ElNScrM8Hw5nZXSA+5WAbPgmxanG4x
         KQHo0sjSNFdiAUDjHXnEG7Hg0yuzvp8AzZrWGaxxlgrF00zp4bvn2zunPSIH1XBcy9g4
         jojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=fH6dF17OtHCMaRBtmkVHk4ruj0UQYnkLwD0Pb8saoQs=;
        b=3xuiOdl2UYuYJWuC6lVGEsPDo0FMtq066/uQb1+uPaUXTNNnwrfczd/k4tgqXUHmpg
         BtfP1GR+/GPbBboRKIU4SUAZoMAjp8YHmjUT82d5OPoo+ekGEx4nLr+Y0lm4ktb7R2xj
         MOFMleFD48yC97n/OY5VTQk0WvVOmL2Wts1BhLVkVTTOlSAPo2s10FX0Md5wJcqRkdK9
         HKWCbykk2PXTRCb5tlqasuNPE5PQ+ThK2m5z4gTq6hzFAEcxmxwnpyyFJOoRrWbnRwiW
         TEVbz2oPVy28P6ke6U+h7wYO7GXu/7AqAuO2ZP89VR8im2b0DrP+tKyoY7UJqv8hZZL0
         9qxg==
X-Gm-Message-State: AOAM533kOOckVQb+rPpCksnwAV2/x+E9ZmMHKnsUQ/zHnFbjVt2etLVb
	fXuitckYptdKqvACt008wrb8rhG3BiwaKoCh7Ait7ysfVn3Jhw==
X-Google-Smtp-Source: ABdhPJz3y/HJECrV/uG2c0WgHVlMcJBOPGVnro7lbquzC1wvKy/EDIi9+doj7D7dSko+5DQvYU2y8wUyZajoIR+6ZoA=
X-Received: by 2002:a17:906:274f:: with SMTP id a15mr17591561ejd.492.1642449260663;
 Mon, 17 Jan 2022 11:54:20 -0800 (PST)
MIME-Version: 1.0
From: "Fabio Estevam" <festevam@gmail.com>
Date: Mon, 17 Jan 2022 16:54:10 -0300
Message-ID: <CAOMZO5AyegXN6him+WVB=9g7RBHsB__5w26pYUg3_Xxy9dK4bw@mail.gmail.com>
Subject: poky: request to backport ae219e1f74600 to dunfell
To: poky@lists.yoctoproject.org
Cc: Marek Vasut <marex@denx.de>, alex.kanavin@gmail.com, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

On a host machine with Python 3.10 I am seeing the following error on Dunfell:

File "/work/festevam/conp_embedded/poky/bitbake/lib/bb/compat.py",
line 7, in <module>
    from collections import MutableMapping, KeysView, ValuesView,
ItemsView, OrderedDict
ImportError: cannot import name 'MutableMapping' from 'collections'
(/usr/lib64/python3.10/collections/__init__.py)
2022-01-17 17:33:36 - ERROR    - Command returned non-zero exit status 1

Can the commit below:
https://git.openembedded.org/bitbake/commit/?id=ae219e1f7460077f4492b31ac91cef4cf9b17277

be backported to bitbake in poky dunfell, please?

KeysView, ValuesView, ItemsView, and OrderedDict do not exist in
master, so the backport is not so trivial.

Thanks,

Fabio Estevam
