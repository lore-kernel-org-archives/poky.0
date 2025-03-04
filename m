Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08AECC021B8
	for <webhook@archiver.kernel.org>; Tue,  4 Mar 2025 15:38:16 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.24785.1741102694910288080
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Mar 2025 07:38:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JI9LudkK;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6e1b11859a7so22143126d6.1
        for <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 07:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741102694; x=1741707494; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1hg87HzUgq37CNq5ytpFx83eEXUxF1WGZ6OR0GwUoBw=;
        b=JI9LudkKQQHL5wNuJfqqNTib91NKqxdT60tZw0El23iuj/KsuT2/vBwxTM66V/wZY6
         dCxKjTKUZqkE1UYoy2YnhrB3bBJVhg5HyeMOPSLN81njW8VTrLNlMcRq1D5LCmWeK7zA
         JGUGrWgbSPLYjqJTVbEW7pnThtrleebujKVyR+bIK1+N1ILFtcij6Ig2/Q0lVcCv37xb
         Lh1t6ihtA98V8BU871voAPRvM1eXd6W9FN7OMnaQllFxlABUe8aXFEHxjQtLoIuMMuz8
         O4+pq7GmkU1HAH0va7QbNzTLpiqUa10tDDAHpv9j39JCjJYC7JaxjT/hxvskcHXoKOf6
         rKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741102694; x=1741707494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1hg87HzUgq37CNq5ytpFx83eEXUxF1WGZ6OR0GwUoBw=;
        b=Uc6lRMoLMmGItHYNd1BEu6k2rA3xZb9oIyN/sFli8tDCPFQwu3W3PTTUICLr3/14AE
         bmVL4pWVM0rGAsJSYiRqx9R7elwn4V6zr1hgUOUVqpCq/dXMAdnD0gr0GMhGl1/swd++
         +zMnYtVwRKaAKXgJyjNGpZJ8VcuVioyvSEfy7Sn6BA4S1v61C1GCNNHINa5+j34C0RhB
         02AXQAOueDZFCYkmAh4UZqegcZkEUjX9tFbIfY9jP4AcQhbGthLjJiWNGiN+c/GRWBKd
         HdA+TqFquT4rPTBDLKLRGpvhFAkbnPQJrB9v2AMleM/uwzc0GweEnH/VlfA9VzieVDW8
         bALw==
X-Gm-Message-State: AOJu0YxEJm7R1z+GJHyWhiT7yC/zCrEVwG+9itfrWyfMGmT1YOT/ZJFX
	/no0fZTq5TpPxvwYyALN4GEltVz21G73cY6SgXIUwJ0LKKt9xGXPTYvVmdiEIdxg5Jh/WV2HC2r
	i2URSncNX8rLw75CQ7sUzWH3Gfu4=
X-Gm-Gg: ASbGncvQdGHrTeygx2zAg9zW3VTrWslpIUel3+z65dHMR5SInP7ewjwr40p8vkaSWWG
	6dMrKi+usiRwxb1yEG17pFc5iGjKRy8E0Eflqk0/kOnESLL9Pkx4MIW+WKTkso7z6pFzsy7NJkC
	d9pTykPLSguBf/3aF7JZnJVV3edgE95BSyDTKsw5a9999HzYuTiIzd8RDoXouQ
X-Google-Smtp-Source: AGHT+IEnPxbvO+wUOJ81Rw9xQurVrkW3h0QY5zVN9Lqltm5Dxd3VTX6VmJIyYns5T30w5QxNwShPQQ9t2YY1rfpP164=
X-Received: by 2002:a05:6214:20aa:b0:6e6:682b:804d with SMTP id
 6a1803df08f44-6e8a0d419c0mr275041806d6.25.1741102693868; Tue, 04 Mar 2025
 07:38:13 -0800 (PST)
MIME-Version: 1.0
References: <ff38fae0-d613-4031-9ca0-46a14a7cb329@gmail.com> <18989.1741005990320205271@lists.yoctoproject.org>
In-Reply-To: <18989.1741005990320205271@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Mar 2025 16:38:02 +0100
X-Gm-Features: AQ5f1Jqm0SK8DpzOroFm50_5DVfZ8-4H3bOXiU_IoOuGDDGUZqlEFDZ5yj0GcHQ
Message-ID: <CANNYZj9aae71tgh4rRduu_Omx2+ZXidJLrRtSdu6ztmeJkbZpg@mail.gmail.com>
Subject: Re: [poky] glibc run-built-tests not working as expected when set to 'no'
To: semc.2042@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 15:38:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13553

We certainly do not expect any tests in that recipe to run at build
time. It is intended only for building and installing tests for a
runtime environment which are then executed with ptest.

If you can figure out a fix that avoids unnecessary running, that
would be appreciated. I'd also question if we need the recipe at all
at this point.

Alex

On Mon, 3 Mar 2025 at 13:46, rajmohan r via lists.yoctoproject.org
<semc.2042=gmail.com@lists.yoctoproject.org> wrote:
>
> On Sat, Mar 1, 2025 at 04:25 AM, Khem Raj wrote:
>
> On 2/28/25 6:44 AM, rajmohan r via lists.yoctoproject.org wrote:
>
> Hi All
>
> For glibc-y2038-tests recipe, when 'bitbake -c do_check glibc-y2038-tests'
> is executed, could see that the tests binaries are also run.
>
> Below is the do_check() contents from glibc-y2038-tests_2.39.bb
>
> # Just build tests for target - do not run them
> do_check:append () {
>     oe_runmake -i check run-built-tests=no
> }
>
> On completion of do_check stage, test binaries are also run and test summary
> details are present at the end of 'log.do_check' file and is given below:
> from log.do_check and time it takes to complete the do_check() stage is
> 12min to 13min for scarthgap branch.
> === Summary of results ===
>      74 FAIL
>    1172 PASS
>      15 XFAIL
>
>
>
> there are certain tests which do not require running, its possible thats being reported here. Can you share a sample of test which is executed like it should happen at runtime?
>
> shown below few tests excerpts from failure list:
>
> FAIL: lint-makefiles
> FAIL: conform/ISO/setjmp.h/conform
> FAIL: conform/ISO/stdlib.h/conform
> FAIL: conform/ISO/stdlib.h/linknamespace
> FAIL: conform/ISO11/setjmp.h/conform
> FAIL: conform/ISO11/stdio.h/conform
> FAIL: conform/ISO11/stdlib.h/conform
> FAIL: conform/ISO11/stdlib.h/linknamespace
> FAIL: conform/ISO11/wchar.h/conform
> FAIL: conform/ISO99/setjmp.h/conform
> FAIL: conform/ISO99/stdio.h/conform
>
> similarly below are few passed tests excerpts from pass list:
> PASS: dlfcn/check-abi-libdl
> PASS: elf/check-abi-ld
> PASS: elf/check-abi-libc
> PASS: elf/check-abi-version-libc
> PASS: elf/check-cet
> PASS: elf/check-execstack
> PASS: elf/check-initfini
> PASS: elf/check-localplt
> PASS: elf/check-textrel
> PASS: elf/check-tst-relr-pie
> PASS: elf/check-wx-segment
> PASS: elf/tst-glibcelf
> PASS: elf/tst-relro-ldso
> PASS: elf/tst-relro-libc
> PASS: hesiod/check-abi-libnss_hesiod
> PASS: locale/check-abi-libBrokenLocale
> PASS: login/check-abi-libutil
> PASS: malloc/check-abi-libc_malloc_debug
> PASS: math/check-abi-libm
> PASS: math/test-tgmath3-macro-list
> PASS: mathvec/check-abi-libmvec
> PASS: misc/tst-glibcsyscalls
> PASS: misc/tst-mman-consts
> PASS: misc/tst-mount-compile
> PASS: misc/tst-mount-consts
> PASS: misc/tst-pidfd-consts
> FAIL: misc/tst-syscall-list
> PASS: nis/check-abi-libnsl
> PASS: nptl/check-abi-libpthread
> PASS: nptl_db/check-abi-libthread_db
> PASS: nptl_db/db-symbols
> PASS: nss/check-abi-libnss_compat
> PASS: nss/check-abi-libnss_db
> PASS: nss/check-abi-libnss_files
> XFAIL: posix/annexc
> PASS: resolv/check-abi-libanl
> PASS: resolv/check-abi-libnss_dns
> PASS: resolv/check-abi-libresolv
> PASS: rt/check-abi-librt
> PASS: signal/tst-signal-numbers
> PASS: socket/tst-socket-consts
> PASS: stdio-common/tst-errno-manual
> PASS: stdlib/isomac
> PASS: support/tst-glibcpp
>
>
>
> Option 'run-built-tests' is not working as expected as said in the recipe
> like build only the tests binaries but do not run tests binaries.
>
> please let me know why test binaries are also been run when 'run-built-tests'
> is set to 'no' for 'bitbake -c do_check glibc-y2038-tests' or running the
> tests binaries is an expected behaviour for the above do_check() stage.
>
> Thanks for reading the message.
> regards
> rajmohan
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13551): https://lists.yoctoproject.org/g/poky/message/13551
> Mute This Topic: https://lists.yoctoproject.org/mt/111435049/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

