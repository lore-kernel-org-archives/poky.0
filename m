Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.17241.1607620340347729058
 for <poky@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 09:12:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cu79hSeH;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id f9so4689400pfc.11
        for <poky@lists.yoctoproject.org>; Thu, 10 Dec 2020 09:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=u6Je0rWNWOiQ7tYAPR/WA9SG58BQkyinR8448BtQXRU=;
        b=Cu79hSeHaU5tXH/CyvSN2eTn4a8S3qmmNqyV7UILV59XBzKKfmBxoFefDBBsHDH+DQ
         e1N4aPPTB2V6gRJWcBdzMETwllmO36NlDL4Oj+nWdiZMv9ZINHOsY2EOOuDHNewRqzQ2
         yBWgzN2hEe77qbsh9oBQaqI4Ws4FMCUjnVEa7VMcu7byPFaXm8Kybs9UmOTPdxxTobFd
         9wT5OMSBZpcyg2QFFllv1raaiLDHzP0BpDVASgByyXMiw0Hpkai35pAKaHX5vdOVoM+C
         W3eeIQO21qM/A+bP9MLgVo9drNu+y4EJ3HwbRLs92ATLwe21sN6l2G2RpTOgKi2NlFNb
         SUKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=u6Je0rWNWOiQ7tYAPR/WA9SG58BQkyinR8448BtQXRU=;
        b=lIazWYT6lUCNIs1/DPth4NgkQOvfORMjaPYKQ54KfkHYRrBVW8bw6V75OpJGBH4aGJ
         z31IyAPWL5kLA62Z2rMv+2MXOsfc+ODQD2mA6gFn9b2msH0pAKlSAXViT4+HNKSiJTdk
         X2CcI2TgsZqk3Qf9jt723iWHqdN8ilLdQ7TWf3PnhQReAuEjxW9OaZbPFPw3peBpujx1
         cQUSAOTDPmwui8w4wdTe71T/QQmsZZuMtF386wPFIKj2C0m5dNayd+hQ5M29bVIWMWkD
         I2KWQRh5lEW3WaivFGUmOZIhEh1mYLdApm8fCaBwojpN5nRlFGqv0guftKabEBgkqSYU
         WxrA==
X-Gm-Message-State: AOAM532B1l/fwIAPAqJhRFASuqd9nfpwd1ZbPGNJCJQLklYUfmfttGIy
	1OFjKqKvbxwToGL0Cfvgh7kI7k3Pz3+yBA==
X-Google-Smtp-Source: ABdhPJwNUbi8ZYveLmELO4WJ2IHvAfPtxEnKICUReQV79W78gBSeyPa7XGe3n4GAMRDcgrui/PcSRg==
X-Received: by 2002:a17:90a:7844:: with SMTP id y4mr8739322pjl.68.1607620339179;
        Thu, 10 Dec 2020 09:12:19 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id e8sm3860237pfn.176.2020.12.10.09.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 09:12:18 -0800 (PST)
Subject: Re: [poky] Unable to complete even the basic tutorial about yocto #poky
To: arunlee@gmail.com, poky@lists.yoctoproject.org
References: <GRgk.1607610131558989797.iSws@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <36ff3eb5-6ffa-1d50-3f86-fbb74773b1b6@gmail.com>
Date: Thu, 10 Dec 2020 09:12:17 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <GRgk.1607610131558989797.iSws@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/10/20 6:22 AM, arunlee@gmail.com wrote:
> Hi,
> 
> I am following 
> https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html 
> <https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html>.
> 
> I am able to compile core-image-sato, but while trying to run there is 
> an error
> 
> runqemu qemux86-64
> runqemu - INFO - Running MACHINE=qemux86-64 bitbake -e ...
> runqemu - INFO - Continuing with the following parameters:
> KERNEL: 
> [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage--5.4.78+git0+d626f9108d_370ef947d5-r0-qemux86-64-20201210083639.bin]
> MACHINE: [qemux86-64]
> FSTYPE: [ext4]
> ROOTFS: 
> [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20201210134810.rootfs.ext4]
> CONFFILE: 
> [/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20201210134810.qemuboot.conf]
> 
> runqemu - INFO - Setting up tap interface under sudo
> [sudo] password for arun:
> Sorry, try again.
> [sudo] password for arun:
> runqemu - INFO - Network configuration: 
> ip=192.168.7.2::192.168.7.1:255.255.255.0
> runqemu - INFO - Running 
> /home/arun/yocto/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_64 
> -device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev 
> tap,id=net0,ifname=tap0,script=no,downscript=no -drive 
> file=/home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20201210134810.rootfs.ext4,if=virtio,format=raw 
> -show-cursor -usb -device usb-tablet -object 
> rng-random,filename=/dev/urandom,id=rng0 -device 
> virtio-rng-pci,rng=rng0   -cpu core2duo -m 256 -serial mon:vc -serial 
> null -kernel 
> /home/arun/yocto/poky/build/tmp/deploy/images/qemux86-64/bzImage--5.4.78+git0+d626f9108d_370ef947d5-r0-qemux86-64-20201210083639.bin 
> -append 'root=/dev/vda rw  mem=256M 
> ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 '
> 
> runqemu - ERROR - Failed to run qemu: X Error:  BadValue
>    Request Major code 130 (MIT-SHM)
>    Request Minor code 3 ()
>    Value 0x400
>    Error Serial #2168
>    Current Serial #2169
> 
> runqemu - INFO - Cleaning up
> Set 'tap0' nonpersistent
> 
> My host pc configuration is
> Intel NUC
> Ubuntu 20.04

is this running full desktop ?
can you try runqemu nographic

it could be that graphic system is not properly set on your build host

> 
> regards
> Arun
> 
> 
> 
> 
