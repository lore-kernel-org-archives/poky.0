Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web12.5181.1627408859344797749
 for <poky@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 11:00:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dWNfGYrR;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id i1so16662751plr.9
        for <poky@lists.yoctoproject.org>; Tue, 27 Jul 2021 11:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UENSpy4Gbra4B7pCQKC1rbb41tn4SawwNL4CWke4ivc=;
        b=dWNfGYrRMGeqbeZeLnmi6+8Dy10fwRUaNx64lU6Q9RXHi6UV58B+bbbETLbiHBXKHF
         RLW7iH0YEkeq10Ye+HQ9jh2VC0BtMqZRg0matCQLJFSUk35MT3k9OPGF0kL2Hgj2YHJX
         aQWk3PhN5cBkzKgfC8B1T8lF1PKKVcxL/DSaSstG0xxkyltql2q2+MuZtT7fqbCQ6US7
         a5ud0HEKXlBMCQZalg0zOygxbugEo6qanUUXOqLw8pGUuNTx7u2a5VIAlg3hSmRbugTa
         7Bc1NWBHS2kJGwXhijfOSXiep6dYGyAELTUX1P4tac0AfQkqf5c5cvWKnsWOzJ6d0Wh5
         cv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=UENSpy4Gbra4B7pCQKC1rbb41tn4SawwNL4CWke4ivc=;
        b=V1TKPrxEKEekrSUnjXt4cpNUXTT2HO6LV5hMiXVgySNiky03ibphVX7kZcftHobGVO
         zUWkoIqE1kCrVdFeBoclZI2XbKxYkFMESbcwyoCycZmm4ywegDDLxBWhGt1c3IKpuEnT
         n7viHVCBeUta4ouPuVDcq5IjTGgHz/Z02IttER9ZLUQkOho9dhogHhslw3Rzr5eQFeKg
         ptFwqyo8ctcipdM2PPOnmZHLIVu4vAJx4GbfW6OL8vJH1GZQujKFUQsczFbwq9I1FYoV
         nDC2VIgTqxlFPjEqBp9G3P0YXdapeWD9zzs4xg+OKyyInZBKBGX07qqR4Lhfmd9SNImZ
         WQFA==
X-Gm-Message-State: AOAM533g5EcyLTLBId2x04k1vb07vsWtXkggjDZN2jfOD/74NVbDqfAI
	vzlqyEqpBW/+lB1eqrYzbYfbHbmyYbVSUw==
X-Google-Smtp-Source: ABdhPJzVfLa8YG/Np+H0DXtiSUbio27q98tSGyfftBoOgJWav/UpabAxzKwraTTP+Aygfw86zxxHmg==
X-Received: by 2002:a65:4104:: with SMTP id w4mr24792344pgp.296.1627408858381;
        Tue, 27 Jul 2021 11:00:58 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:4888:96cd:7ffd:e939? ([2601:646:9200:a0f0:4888:96cd:7ffd:e939])
        by smtp.gmail.com with ESMTPSA id d2sm4883976pgk.57.2021.07.27.11.00.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 11:00:57 -0700 (PDT)
Subject: Re: [yocto][poky]: Issue addng libgloss in .bb file
To: nagesh.shamnur@gmail.com, poky@lists.yoctoproject.org
References: <ywCm.1627398566167556940.aQx0@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <3e0bab6e-c12d-8245-38ef-92ccf775e5eb@gmail.com>
Date: Tue, 27 Jul 2021 11:00:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <ywCm.1627398566167556940.aQx0@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 7/27/21 8:09 AM, nagesh.shamnur@gmail.com wrote:
> dear group,
>     I am new to this group and i am using poky from dunfelll branch. In 
> my .bb file when i am adding DEPENDS = "libgcc newlib libgloss", newlib 
> compilation is sucessful and is available in target sysroot, however 
> libgloss build is failing with the following error. i checked the 
> .libgloss .bb file in master branch and i don't see any difference. 
> Kindly help.

for some reason its not getting libc headers in your recipe sysroot can 
you check if these missing files are staged in sysroot ?

> 
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 12
> | make[1]: Entering directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/doc'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/doc'
> | make[1]: Entering directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chmod.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_faccessat.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep.c:2:10: 
> fatal error: sys/time.h: No such file or directory
> |     2 | #include <sys/time.h>
> |       |          ^~~~~~~~~~~~
> | compilation terminated.
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chmod.c:2:10: 
> fatal error: sys/types.h: No such file or directory
> |     2 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown.c:2:10: 
> fatal error: sys/types.h: No such file or directory
> |     2 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_access.o] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | make[1]: *** [Makefile:121: nanosleep.o] Error 1
> | make[1]: *** [Makefile:121: sys_chmod.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: 
> fatal error: sys/types.h: No such file or directory
> |    15 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_chown.o] Error 1
> | make[1]: *** [Makefile:121: sys_conv_stat.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_faccessat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_exit.o] Error 1
> | make[1]: *** [Makefile:121: sys_execve.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_faccessat.o] Error 1
> | make[1]: *** [Makefile:121: sys_close.o] Error 1
> | make[1]: *** [Makefile:121: sys_fork.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: 
> fatal error: sys/types.h: No such file or directory
> |    15 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: 
> fatal error: sys/types.h: No such file or directory
> |    15 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_fstatat.o] Error 1
> | make[1]: *** [Makefile:121: sys_fstat.o] Error 1
> | make[1]: Leaving directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
> | make: *** [Makefile:132: stmp-bsp] Error 2
> | ERROR: oe_runmake failed
> | WARNING: 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/temp/run.do_compile.863325:1 
> exit 1 from 'exit 1'
> | ERROR: Execution of 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/temp/run.do_compile.863325' 
> failed with exit code 1:
> | make[1]: Entering directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/doc'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/doc'
> | make[1]: Entering directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chmod.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_faccessat.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c
> | riscv32-poky-elf-gcc   -mabi=ilp32 -no-pie -fno-PIE -nostdlib 
> --sysroot=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot 
> -MMD -MP -I. 
> -I/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fmacro-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0=/usr/src/debug/libgloss/3.2.0-r0                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot=                      
> -fdebug-prefix-map=/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/recipe-sysroot-native=  
> -c 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_access.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/nanosleep.c:2:10: 
> fatal error: sys/time.h: No such file or directory
> |     2 | #include <sys/time.h>
> |       |          ^~~~~~~~~~~~
> | compilation terminated.
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chmod.c:2:10: 
> fatal error: sys/types.h: No such file or directory
> |     2 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_chown.c:2:10: 
> fatal error: sys/types.h: No such file or directory
> |     2 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_access.o] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | make[1]: *** [Makefile:121: nanosleep.o] Error 1
> | make[1]: *** [Makefile:121: sys_chmod.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_conv_stat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: 
> fatal error: sys/types.h: No such file or directory
> |    15 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_exit.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_execve.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_chown.o] Error 1
> | make[1]: *** [Makefile:121: sys_conv_stat.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_close.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_faccessat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_exit.o] Error 1
> | make[1]: *** [Makefile:121: sys_execve.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fork.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/internal_syscall.h:15:10: 
> fatal error: errno.h: No such file or directory
> |    15 | #include <errno.h>
> |       |          ^~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_faccessat.o] Error 1
> | make[1]: *** [Makefile:121: sys_close.o] Error 1
> | make[1]: *** [Makefile:121: sys_fork.o] Error 1
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstatat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: 
> fatal error: sys/types.h: No such file or directory
> |    15 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | In file included from 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/sys_fstat.c:2:
> | 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/newlib-3.2.0/libgloss/riscv/kernel_stat.h:15:10: 
> fatal error: sys/types.h: No such file or directory
> |    15 | #include <sys/types.h>
> |       |          ^~~~~~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:121: sys_fstatat.o] Error 1
> | make[1]: *** [Makefile:121: sys_fstat.o] Error 1
> | make[1]: Leaving directory 
> '/home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/build/riscv'
> | make: *** [Makefile:132: stmp-bsp] Error 2
> | WARNING: 
> /home/build-ohos-liteos-rv32/tmp/work/riscv32nf-poky-elf/libgloss/3.2.0-r0/temp/run.do_compile.863325:1 
> exit 1 from 'exit 1'
> |
> ERROR: Task 
> (/home/sources/poky/meta/recipes-core/newlib/libgloss_3.2.0.bb:do_compile) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 462 tasks of which 461 didn't need to be 
> rerun and 1 failed.
> 
> Summary: 1 task failed:
>    /home/sources/poky/meta/recipes-core/newlib/libgloss_3.2.0.bb:do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> 
> 
> 
> 
