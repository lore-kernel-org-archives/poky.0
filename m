Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52353C282D2
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 04:42:05 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.3655.1740804118448319941
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 20:41:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gfuZmPDt;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-222e8d07dc6so51887665ad.1
        for <poky@lists.yoctoproject.org>; Fri, 28 Feb 2025 20:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740804118; x=1741408918; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2l5gAneiyMi9OgKH+sV7wZhBtY4trJ2Aa0COA5hzTI=;
        b=gfuZmPDthp+GGr8fxkOSr1O4GiFX3+AiKf7sX+HB9+PkHNFjBUZVZrApPD9kkbFcDS
         Ma+kHm76qFUPu/MiNPV1IIS/jMWtB8pd9haDitisd6iuwcb+tfHIzu7rY/v9neEhIVKK
         TFWioGQJifWgK+/q8n9O7C2mJlVFrcw65xXQ5DrLEgwTfU8gW7UVwevy/V318Vpf/ltt
         15Y5BFV298GuWc7B63DxUlU4e4FBxQbyM/hZtxKCUim7Dx7eGWRKDPv4dT5Sr+M2IHKN
         yVdhJeXPz8YVB9gYCCfr95wujW2aWDLMzwmhfDoyeL9lFaEQOZX9xAngv+I+LJWQzjfP
         m2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740804118; x=1741408918;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m2l5gAneiyMi9OgKH+sV7wZhBtY4trJ2Aa0COA5hzTI=;
        b=CJORQ1J3L8xImo+RSRDAjP+ZaQ/Ypjazcfe/cB4BMJw/yzh4MBryRzGg+Y69bwGQit
         BVxLaLTiIvFuH9LW8Yx40fQuqstd3wdGLUlpXKSn3i+mH1aqq+1yaDHlbqKcRDR8L+sH
         KDM+7G+i51hZMDtGiFG+2SJYJ2cC5NzY3t19yqOOH98CL8j8cRTlmyF0vQzyHNazJT5Z
         5hKMsFPtxMj1oOWc5epjLCTODXKpQrbLsb8RKiscogA7KdSaenFVHqURtaLZkhZSIseB
         li+pocII6JJupGYDUOMsgstxwxHMPLLL8YHgspmr4/yw8Da5p7YFKoMm6rX/R6btIyVd
         ndsw==
X-Forwarded-Encrypted: i=1; AJvYcCVfr7KqvO1LpUDjakuzmE7GEzwCKTob3/a7xalh7EBFkDN7sjDoCVm0Qr0TilXay6Sr9dn7@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzJnk8DFcmfFy52EPt0sbUmZ9upKWmk1Yh2nQmnw2QfQD2wOGvz
	FCJ1sptOD/nEeEKOmnvCorbPuM5vVqYJUi6/1yzpTQF5T2BUC6+8
X-Gm-Gg: ASbGncvnjFzdPNxJpmPKWzGStVmGrCZQd4eG8M8/qMpzG2Ho8Q8uBdYC3nPcAQrzzuX
	G9kvga4ghza30FSwybmJQmlt7B1nNn+dTF861W1wj9+IHcNj9P2lUWdDQpY7jyRpscooBC9EO1Z
	DFGFgq15HYNtKV3DW1OocmEbecolKwGWgGDO3t97DkqRzg9s/9p2pWk/CNEC8r/k8Vmqj+FGoxr
	bYuk3TuB6fqGqU00cW2nW1a7D3vliMUNwIumn0jKHSe5ygo+tk/mHs1gpoSEnw+em2YGag3jLpw
	FCsbuou9u1pCPEwR4ypHdr5kWWg4PY7h7HBAtwa7MwBWz5CVLnzCs4w0XaMNJL6IDe95wiwtUFu
	HyHNXmeXOXXFeEg8kM9fivlEPFjdIWwgM
X-Google-Smtp-Source: AGHT+IGNPw0R6ExjZfvEik+JBPIhaxedaFuaeCGTwkalwIQXLznejbw943yfVUpeYXza/eYirP5sVQ==
X-Received: by 2002:a17:903:1c6:b0:221:8568:c00f with SMTP id d9443c01a7336-2234a06e296mr173700505ad.0.1740804117486;
        Fri, 28 Feb 2025 20:41:57 -0800 (PST)
Received: from ?IPV6:2601:646:8201:fd20:b97c:f45a:2761:8e2b? ([2601:646:8201:fd20:b97c:f45a:2761:8e2b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-aee7de1f7a6sm4207325a12.30.2025.02.28.20.41.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 20:41:57 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------m9kVW6OzzQwlUpMgkC1T3zTF"
Message-ID: <d7465bc7-75e0-44d2-9180-6d503700d8e9@gmail.com>
Date: Fri, 28 Feb 2025 20:41:55 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] Just need a user to exist but I'm getting a package
 install error on my recipe #poky #raspberrypi
To: jdowd@slashdevslashnull.org, poky@lists.yoctoproject.org
References: <LOpy.1740758415720844712.R8rO@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <LOpy.1740758415720844712.R8rO@lists.yoctoproject.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 01 Mar 2025 04:42:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13547

This is a multi-part message in MIME format.
--------------m9kVW6OzzQwlUpMgkC1T3zTF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2/28/25 8:00 AM, John via lists.yoctoproject.org wrote:
> I'm trying to create a user for my board. I require a user in order to 
> have pulseaudio to run as a user level service in systemd startup.
> I've included my "board-user.bb" file which is a greatly cut down 
> recipe from the skeleton examples provided in poky. I've also included 
> the recipe for my board file which is just a rename of the 
> "core-image-minimal.bb" file and my changes. It is there I've added my 
> board-user recipe so that all versions of my "libby" image will have 
> the user "libby".
> My error that I'm getting is:
>
>     ERROR: libby-image-1.0-r0 do_rootfs: Unable to install packages.
>     Command
>     '/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/recipe-sysroot-native/usr/bin/opkg
>     --volatile-cache -f
>     /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/opkg.conf
>     -t
>     /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/temp/ipktemp/
>     -o
>     /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/rootfs
>      --force_postinstall --prefer-arch-to-version   install alsa-lib
>     alsa-utils bluez5 board-user dhcpcd i2c-tools
>     linux-firmware-bcm43430 openssh packagegroup-core-boot
>     pi-bluetooth pulseaudio-server run-postinsts sudo util-linux
>     wpa-supplicant' returned 255:
>     *error: opkg_solver_install: No candidates to install board-user
>     (null)!*
>     *error: opkg_finalize_intercepts: Failed to open dir
>     /home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/temp/ipktemp//opkg-XorTPq/opkg-intercept-w88StC:
>     No such file or directory.*
>
> I'm not sure where to go with this. Why would opkg have an issue with 
> this? In fact there is only the side effect of the "adduser" command 
> running so that the user is installed on the rootfs properly. It 
> should be modifying files and creating a directory.
> Any advice would be greatly appreciated.


try adding

ALLOW_EMPTY:${PN} = "1"

in board-user.bb

> Cheers!!
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13545):https://lists.yoctoproject.org/g/poky/message/13545
> Mute This Topic:https://lists.yoctoproject.org/mt/111436541/1997914
> Mute #poky:https://lists.yoctoproject.org/g/poky/mutehashtag/poky
> Mute #raspberrypi:https://lists.yoctoproject.org/g/poky/mutehashtag/raspberrypi
> Group Owner:poky+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------m9kVW6OzzQwlUpMgkC1T3zTF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2/28/25 8:00 AM, John via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:LOpy.1740758415720844712.R8rO@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>I'm trying to create a user for my board. I require a user in
        order to have pulseaudio to run as a user level service in
        systemd startup.</div>
      <div> </div>
      <div>I've included my "board-user.bb" file which is a greatly cut
        down recipe from the skeleton examples provided in poky. I've
        also included the recipe for my board file which is just a
        rename of the "core-image-minimal.bb" file and my changes. It is
        there I've added my board-user recipe so that all versions of my
        "libby" image will have the user "libby".</div>
      <div> </div>
      <div>My error that I'm getting is:</div>
      <div>
        <div> </div>
        <div>
          <blockquote>
            <div>ERROR: libby-image-1.0-r0 do_rootfs: Unable to install
              packages. Command
'/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/recipe-sysroot-native/usr/bin/opkg
              --volatile-cache -f
/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/opkg.conf
              -t
/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/temp/ipktemp/
              -o
/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/rootfs
               --force_postinstall --prefer-arch-to-version   install
              alsa-lib alsa-utils bluez5 board-user dhcpcd i2c-tools
              linux-firmware-bcm43430 openssh packagegroup-core-boot
              pi-bluetooth pulseaudio-server run-postinsts sudo
              util-linux wpa-supplicant' returned 255:<br>
              <strong>error: opkg_solver_install: No candidates to
                install board-user (null)!</strong><br>
              <strong>error: opkg_finalize_intercepts: Failed to open
                dir
/home/jdowd/Project/Libby/poky/build/tmp/work/raspberrypi0_64_wf-oe-linux/libby-image/1.0/temp/ipktemp//opkg-XorTPq/opkg-intercept-w88StC:
                No such file or directory.</strong></div>
          </blockquote>
          <div>I'm not sure where to go with this. Why would opkg have
            an issue with this? In fact there is only the side effect of
            the "adduser" command running so that the user is installed
            on the rootfs properly. It should be modifying files and
            creating a directory. </div>
          <div> </div>
          <div>Any advice would be greatly appreciated.</div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>try adding <br>
    </p>
    <p>ALLOW_EMPTY:${PN} = "1"</p>
    <p>in board-user.bb<br>
    </p>
    <blockquote type="cite"
      cite="mid:LOpy.1740758415720844712.R8rO@lists.yoctoproject.org">
      <div>
        <div>
          <div> </div>
          <div>Cheers!!</div>
          <div> </div>
        </div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre wrap="" class="moz-quote-pre">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#13545): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/13545">https://lists.yoctoproject.org/g/poky/message/13545</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/111436541/1997914">https://lists.yoctoproject.org/mt/111436541/1997914</a>
Mute #poky:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/mutehashtag/poky">https://lists.yoctoproject.org/g/poky/mutehashtag/poky</a>
Mute #raspberrypi:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/mutehashtag/raspberrypi">https://lists.yoctoproject.org/g/poky/mutehashtag/raspberrypi</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------m9kVW6OzzQwlUpMgkC1T3zTF--

