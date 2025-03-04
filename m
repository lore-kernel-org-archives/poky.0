Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D4BBC282D2
	for <webhook@archiver.kernel.org>; Tue,  4 Mar 2025 17:10:56 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web11.27404.1741108250007348728
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Mar 2025 09:10:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VNxvEo2B;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-2c1c44c3f8dso1164045fac.1
        for <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 09:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741108249; x=1741713049; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vGHQM3fEtRwQaCOSrl5rmBzE6Lomw/IU5tX2YUZUBns=;
        b=VNxvEo2B2A7Pmn/zxGp3IuaPR1fm0KMbFe4W2aqjgL9fOEYf/EgslErZGKiq2t+ZCY
         ZP+UfZ52ZXBIV3oleUGzZEVKKowFia3Av7ZdQ2HYIGKqPezmhXgvWUJkwa17nHzGBrs1
         PK6/BZvxCjwOvY2/IPyP75LUeh94BWm9yzT/gktWErs0mchFfm1/9qTA0KIgUP7M509/
         qTp4BYrkatzk8h7tUR4K4tkB4vTNNhfwVB/t16FLFWtFJs2bcu1+Z3MbW0MCoNyHMcPs
         me959lkK6RNaa7i4BDvBsmmVo1J5e+SOSUGMJixId9HCvi3dYEAUBJ19yn+PPb+bb6jG
         h96A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741108249; x=1741713049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vGHQM3fEtRwQaCOSrl5rmBzE6Lomw/IU5tX2YUZUBns=;
        b=T69vxGU3VMR5+xmVVbbtthLIrTkBdRUt3aVHAh1sdY+D09F0iFzwee+J9jE8N9VT+N
         bwf9+dk1AedIV0llXbTuOPesuaVpIZnizHswGBOWPYtbnw7hf9uvhzNSJDNNatYGk5kt
         FoybtcgQe+amvm8wlMMy+Jd321HsHHWWd6dCyRDcTUjSZKh7WamsztwQf/0e50CHXC1L
         VHLlJluo36ZnvkE/aMmJf51vOFcGn6pAj6KdPg/n3E9UXpEgX9nLbmjDy/+86cp/a7C5
         JiLwoC0UL0Dx2WUkdLMkIVHKi4jArxcksKJJXDHXgXWtRBLB5pmRXdKuNys9BW3sn7S3
         yzLQ==
X-Gm-Message-State: AOJu0YwPv1yVs+rh7pHFPzpaRjDHW+GUM8jzGLPUDjI0FaKPDsQcPRO5
	TX+hBM8j6yBea8VZT/zYte1Jkmyt5werJTNUrU9ifd5py8dqqdQBn9mdPbX45W5ZfxfdzykW+Hg
	5/2PMwdJAhxf4dgcgYgTrq6OhvSE=
X-Gm-Gg: ASbGncu7gMnbcb2hPoRbQoB+rFOIIIhTErfFNJBwgNox7fx1htHjIpTditieQDjeDKc
	S+I77b/LvsgiKCQ3R+OGKTPRipfyYc1YKY0KzrWAe/SYOjvmQVk37hQ8ivVWXowuiLR4XT3E/Cg
	ufy0J+ioinp50uHF71aTYWrCl+JdddSmmDvyQ6FxWQKybpTSqcpfMuyKnD
X-Google-Smtp-Source: AGHT+IHy5GKZJ2aMdVvZUoq902l9mUpj8YyQzxoiVRbIGjzdv0RUwkZz3FXk8Y8GFwyHDLOm9XxW1MMQyXQ+ZHAH3z4=
X-Received: by 2002:a05:6870:1595:b0:29d:c624:7c3d with SMTP id
 586e51a60fabf-2c1787a3731mr11684700fac.32.1741108247642; Tue, 04 Mar 2025
 09:10:47 -0800 (PST)
MIME-Version: 1.0
References: <ff38fae0-d613-4031-9ca0-46a14a7cb329@gmail.com> <18989.1741005990320205271@lists.yoctoproject.org>
In-Reply-To: <18989.1741005990320205271@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Mar 2025 12:10:21 -0500
X-Gm-Features: AQ5f1JoC7xBqDcJ00vQ4_-yGOy-KNISqr6H_WpiFVLohqjuexMETz5zapFAcs8k
Message-ID: <CAMKF1sqc7_wOLsFUA+0SxKSbW2_YoN5UWZ8GWOO=BK3pb_qv9g@mail.gmail.com>
Subject: Re: [poky] glibc run-built-tests not working as expected when set to 'no'
To: semc.2042@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 17:10:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13555

On Mon, Mar 3, 2025 at 7:46=E2=80=AFAM rajmohan r via lists.yoctoproject.or=
g
<semc.2042=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> On Sat, Mar 1, 2025 at 04:25 AM, Khem Raj wrote:
>
> On 2/28/25 6:44 AM, rajmohan r via lists.yoctoproject.org wrote:
>
> Hi All
>
> For glibc-y2038-tests recipe, when 'bitbake -c do_check glibc-y2038-tests=
'
> is executed, could see that the tests binaries are also run.
>
> Below is the do_check() contents from glibc-y2038-tests_2.39.bb
>
> # Just build tests for target - do not run them
> do_check:append () {
>     oe_runmake -i check run-built-tests=3Dno
> }
>
> On completion of do_check stage, test binaries are also run and test summ=
ary
> details are present at the end of 'log.do_check' file and is given below:
> from log.do_check and time it takes to complete the do_check() stage is
> 12min to 13min for scarthgap branch.
> =3D=3D=3D Summary of results =3D=3D=3D
>      74 FAIL
>    1172 PASS
>      15 XFAIL
>
>
>
> there are certain tests which do not require running, its possible thats =
being reported here. Can you share a sample of test which is executed like =
it should happen at runtime?
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

a few of them I checked are compile time tests only. I think we should perh=
aps
see if we want to disable it during build and then run them on target,
it might need
to recreate portions of build time to do that though.

>
> Option 'run-built-tests' is not working as expected as said in the recipe
> like build only the tests binaries but do not run tests binaries.
>
> please let me know why test binaries are also been run when 'run-built-te=
sts'
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13551): https://lists.yoctoproject.org/g/poky/message=
/13551
> Mute This Topic: https://lists.yoctoproject.org/mt/111435049/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

