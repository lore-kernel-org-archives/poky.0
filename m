Return-Path: <bill.mills@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01B30C3601E
	for <webhook@archiver.kernel.org>; Thu, 10 Apr 2025 13:42:31 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.34477.1744292548136822458
 for <poky@lists.yoctoproject.org>;
 Thu, 10 Apr 2025 06:42:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=PGlg8Dof;
 spf=pass (domain: linaro.org, ip: 209.85.222.176, mailfrom: bill.mills@linaro.org)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7c54a9d3fcaso83727785a.2
        for <poky@lists.yoctoproject.org>; Thu, 10 Apr 2025 06:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744292547; x=1744897347; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:cc:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JuQN+2Pb0wZI1ena28JLrzPu5QoF1Pu+IHB+06EdiIY=;
        b=PGlg8Dofi70XC3ar/BepoozJCotQbBj43tHtZMYzBXMCdYfzHYtujl2wDmfbOFGVeC
         DLiEIl0ePvdU+wzrVZk8t6v1MiwUvHFd1Hnnf8UV9CxuocBLoBx9K++Hgi03EnBnOibB
         ctcT4d+ExoB3KJtO5DGL3jlEViEkQs7QB+htd0GlvAdZhTkEMPaORZKbA3wEsZ/Kfq8m
         J5mewNwtbMCKiaXvlWai1DQ1zCV14JqhWzaEzll0WkZS6bJMdPrh/QJqJVMHupQ+E6DK
         RLRByNmqDGLirZoOzl8S2FMSh2H0xjQKaGNJB9F6qCBPxf8Gck8b3zmgKFhU3X8nAV2g
         6c3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744292547; x=1744897347;
        h=content-transfer-encoding:in-reply-to:from:cc:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JuQN+2Pb0wZI1ena28JLrzPu5QoF1Pu+IHB+06EdiIY=;
        b=rVc3UCsu4vbIbOafuC7QOTd1c7dJ8fH68RpzzAQYRz4isAw86t9qewrXPwVpFrophQ
         dj3fSpSJkLbiGFQ+AfWUxZZe10Y33Q+cYj9axFIndPiby4cPIc6YutznKQ+mKrnrcvD3
         Q9JbQGEosIahpzKOGqWn8bkHaJxcHekyBLROAeJiJNSdBUqC/mr4r9ePhED+NPkoC/6U
         OW7OIc4JHmUFDUtC/4ffy2b2rCSZCKkj4WXTQDfN8J0jzScO+pKMTegNAJCz5PFild5F
         c0UiGJv9RMK7V/5LUav96DpQjVDlOhedNmBJxho3AmL7Jw+O1/9PLWv3ot9MJGnSIBz4
         Eq7A==
X-Forwarded-Encrypted: i=1; AJvYcCVibsGnj3MNOMCJLlF1aUyxvvThmWj1ZDUFBvxYLGE7ZCGHHOxCWaidURUmyTf3fXZNRwwu@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz8R74KHGH6t0Yjnz+mTSfkGva+JrUK2Jlhcti6ZwGDBhIdVxYK
	F0CVHVkPIQCQ3rtBgNVlfoOxMs/aiJmSDivuD+BFITf4jKsos+utg6Gf6JfE4Xc=
X-Gm-Gg: ASbGncv/mxR2U9ZEVBpGCDpSpCIO39f1PmtDfWfub+buE5Ot+GTlwDzeXf81ZY83X/3
	T5Yhg9t4Rj7LAPxgvNL3jvj6yTHenJRJkwWF4WrL1ntul/e9yfOc/oqfXIim7EcxwBYQvl/ZTzd
	RY6Oqs9dX92m1DwbMpX+Wn13l1udvVjilpYzrvHQUddRQebDCFdwC71qN+5ULfd41C3RNNG1HKP
	HPg/MlgGi73krxqXuEDI2bOECY+GC47CTCnXMYtB3EAPGRc26WKoAx29/Owj/Is950SyjtNRNkL
	3IhM1MP9PbrL69aNXW943a/nH1Lhz5PThnUq29iRYRCGc0eymXI7s/2zgoRkF/6eoFpBnt4394V
	WbyNYqrz0WvBEHQ==
X-Google-Smtp-Source: AGHT+IHWtEkv3mpBRzSOB9wgD0k6TMfcoQiHiMAYiwJldVaRntXO2USFg4h/XZb7dtxt4i1OM13blg==
X-Received: by 2002:a05:620a:44d1:b0:7c5:5d32:2612 with SMTP id af79cd13be357-7c7a81c79b0mr377891485a.58.1744292547104;
        Thu, 10 Apr 2025 06:42:27 -0700 (PDT)
Received: from [192.168.2.7] (pool-72-83-14-124.washdc.fios.verizon.net. [72.83.14.124])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4796eb2ce5fsm8980361cf.43.2025.04.10.06.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 06:42:26 -0700 (PDT)
Message-ID: <c3fff279-9085-4986-8e6f-2ae9f8aa2c08@linaro.org>
Date: Thu, 10 Apr 2025 09:42:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Fwd: [PATCH v4] systemd: use serial-getty-generator on genericarm64
Content-Language: en-US
References: <4ef3850d-8a03-4dc9-b2a1-b80f3e3b20a7@linaro.org>
To: Mikko Rapeli <mikko.rapeli@linaro.org>, Ross Burton <ross@burtonini.com>,
 poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Bill Mills <bill.mills@linaro.org>
In-Reply-To: <4ef3850d-8a03-4dc9-b2a1-b80f3e3b20a7@linaro.org>
X-Forwarded-Message-Id: <4ef3850d-8a03-4dc9-b2a1-b80f3e3b20a7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 10 Apr 2025 13:42:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13592

[resend after subscribe to poky, I guess I missed that one before]

Ross,

I don't want to bury the lead here: kv260 and some other boards are DOA in
5.2 for genericarm64 w/o a fix here.  This is a regression against 5.1 and 5.0.

Yes we should have caught this earlier but we are where we are.  We are
having internal discussions about how to fix the testing situation.

This is our bad but please let us know what you think the options are.

Background:

kv260 uses ttyPS1 for serial console.  If systemd's getty-generator runs it
will do the right thing and start a getty on ttyPS1.  It will also do the
right thing for any board or VM that correctly sets the DTB's
chosen/stdout-path as required by System Ready.  It will do the right thing
if someone sets the console= on the command line and I believe it does the
right thing for ACPI (but I have not tested that WRT serial console).

In 5.0 and 5.1 systemd's getty-generator was run even when the image hard
coded ttyAMA0 and hvc0 in /etc/systemd/system/getty.target.wants/.

In 5.2 this was made "either or" and tty{S0,S1,S2) were added to the hard
coded list.  This breaks any board that does not use ttyAMA0, hvc0, ttyS0,
ttyS1, or ttyS2 as the serial console.  It also breaks any board that does
have a console on one of those ttys but also has Bluetooth or other device
on tty{S0,S1,S2}.

I strongly believe the correct thing to do for systemd is to use ONLY the
getty-generator.   We should push for that in master.  For walnascar I
think it best to switch to getty-generator also but adding ttyPS1 to the
list of hard coded SERIAL_CONSOLES for genericarm64 would at least fix the
regression.

BTW: ttyrun is not used in the getty@.service template so any missing tty
device for any on the hard coded list will delay startup "completion" for
90 seconds.  It is almost 100% guaranteed that at least one of those will
be missing.

Thanks,
Bill




On 4/9/25 9:46 AM, Mikko Rapeli wrote:
> systemd-serialgetty recipe sets serial consoles based
> on SERIAL_CONSOLES build time variable. These fail to
> be detected on multiple devices including qemu and the
> resulting failures delay boot to systemd "running" state
> by one minute on an example aarch64 build machine and qemu.
> Serial console login works with both since udev will
> trigger agetty on correct devices. Using systemd side
> serial-getty-generator disables systemd-serialgetty.
> 
> qemu-system-aarch64 core-image-base boot time with
> systemd-serialgetty before this patch:
> 
> $ systemd-analyze
> Startup finished in 8.314s (firmware) + 9.805s (loader) + 14.338s (kernel) + 1min 34.392s (userspace) = 2min 6.851s
> multi-user.target reached after 1min 34.387s in userspace.
> 
> with this patch:
> 
> Startup finished in 8.312s (firmware) + 9.804s (loader) + 14.295s (kernel) + 29.808s (userspace) = 1min 2.220s
> multi-user.target reached after 29.802s in userspace.
> 
> After recent changes to serial-getty-generator, systemd init
> and "poky-altcfg" builds for genericarm64 machine now
> don't start agetty to serial consoles which are not
> defined in SERIAL_CONSOLES at build time. This includes
> AMD KV260 where boot succeeds with long delay and without
> agetty serial login:
> 
> [ TIME ] Timed out waiting for device /dev/hvc0.
> [5:185mDEPEND] Dependency failed for Serial Getty on hvc0.
> [ TIME ] Timed out waiting for device /dev/ttyAMA0.
> [5:185mDEPEND] Dependency failed for Serial Getty on ttyAMA0.
> [ TIME ] Timed out waiting for device /dev/ttyS2.
> [5:185mDEPEND] Dependency failed for Serial Getty on ttyS2.
> [ TIME ] Timed out waiting for device /dev/ttyS1.
> [5:185mDEPEND] Dependency failed for Serial Getty on ttyS1.
> [ TIME ] Timed out waiting for device /dev/ttyS0.
> [5:185mDEPEND] Dependency failed for Serial Getty on ttyS0.
> [  OK  ] Reached target Login Prompts.
> [  OK  ] Reached target Multi-User System.
> 
> Fix is to either add all supported devices to SERIAL_CONSOLES
> which has been rejected
> https://lists.yoctoproject.org/g/poky/topic/109273447#msg13461
> or using systemd to start agetty on all detected
> serial console devices, this patch.
> 
> Without this patch AMD KV260 serial console login is broken on
> "poky" and "poky-altcfg" distro genericarm64 builds from poky,
> all images. With this patch "poky-altcfg" images have working
> serial console login. This change is also needed in walnascar
> branch.
> 
> Cc: Ross Burton <ross.burton@arm.com>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
> 
> v4: improved commit message, no changes to v1
> 
> v3: https://lists.yoctoproject.org/g/poky/message/13575
>     no changes to v1
> 
> v2: https://lists.yoctoproject.org/g/poky/message/13566
>     no changes to v1
> 
> v1: https://lists.yoctoproject.org/g/poky/message/13522
> 
> diff --git a/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
> new file mode 100644
> index 0000000000..f23852a351
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
> @@ -0,0 +1,3 @@
> +# auto detection instead of build time configured via SERIAL_CONSOLES
> +# to support multiple devices
> +PACKAGECONFIG:append:genericarm64 = " serial-getty-generator"
> -- 
> 2.43.0
> 

-- 
Bill Mills
Principal Technical Consultant, Linaro
+1-240-643-0836
TZ: US Eastern
Work Schedule:  Tues/Wed/Thur

