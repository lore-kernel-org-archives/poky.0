Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48862C021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 04:25:55 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.3434.1740803146063974494
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 20:25:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TOzSf4Eh;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-219f8263ae0so53385775ad.0
        for <poky@lists.yoctoproject.org>; Fri, 28 Feb 2025 20:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740803145; x=1741407945; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sHh6wSfIy6Yyrf8OqG+VHuKHvZUHxKMHg9k5SRIWnxY=;
        b=TOzSf4EhO0bunNjA8BzirAcP64jkAlrteqk3jN/p2rYog9ZILmX7HRGEiN47XR6Zjd
         Mm+v8oUby+9OMMzfoIhe/BLidJwQ47NS3p702VHHVT4tf90I8wXvqlMkLRZZFsub797M
         n9QT431hV5B65b/Q696ffB+hVxJ01aaw03xCgmtQ6xMcT9lly2IbLg6Wk28pSooTdvPJ
         AsRia+DvziFcTIfnfSUK88YaDFiKlFLDkUbohahg6l/6v6nP7+orNRbvCRF2j/kvSVX4
         nGZmvwHoQuGeE7q4+GkdW7DDpNqa4hzRRxn3SQaZopJ/rfT2FoQJq5tGOFRd6fxtgt8m
         RLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740803145; x=1741407945;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sHh6wSfIy6Yyrf8OqG+VHuKHvZUHxKMHg9k5SRIWnxY=;
        b=Hj9jF+OOu8yIFdu9wJwUBcuBR0XIkRfq6kfTGF4y/zyuMR3PhpuDSmwmOxx6TDS53G
         fsCtFsToKs0WjG0xhvDCBghPax/8+mf1stIpG9gm7LZa2fWrTHEWeY4qALWNUJJ2Mpkv
         lRWZWqMOIzCNLs2FQVISZTFN5tlYHQI521URzslBiA9ms3BtNb4qa8iJ+3ZFRkrWDqle
         MYpzRt0nPPKoI/OC3L9HEC4qxFSqARk+ON+TY50vmNiTjMk9/KXB8iEX4h1nzAo8CD8A
         GdRv0NebM3lMfuh6eTgMRBqIAPboSjIB9T4lvs96s2CRkRRJo5852lgx1uTcjGvBn+Rc
         NCEw==
X-Forwarded-Encrypted: i=1; AJvYcCXmtZcbfyaG32izM6kw5jhFt0XOWYBdGQEF7zgJ++ukfi1Og/ZXYHytYZ2OxnqM8am0x+eG@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxBwN3VpJ0YmWYht2SWXXflFrdmL1jL8TgGuN2NGReh1YsPFS2X
	7ru8FaBxaDArE4pGLLQEADH3aJ+r0lzRhIjbE+1Kr7O6a/b62s6R
X-Gm-Gg: ASbGnctuFla9WJaWzEaaUnlhvK2FKJyWOykCLbpL3PYDZZkQS1leoIBkjxqv04vuXq0
	GmkAJdLyfIGCS6xk+Ly250hwnkPush/YHnE34ivLcoPW1JZpswwIf7hHU2A0z5cl07FrhgsVzrx
	/7X7sQw4+reTVpgkXE2xJeoGno8U+FUwPtwpOSOuOvFAW5uvhivSRKfH0Xba3iRc/myJKO4VlFa
	lw+bFCQ/V8vySobWcW5NgOlbrCnT5wDfLDla4M7vLLDB/QTBYPbCFVrpi9w/nln+ewyACDqeHqM
	KIv9THSDFUjp3S7X7jMDEbDFZTPy9bhnf6lYGypuUEP970+UvmRpSeSkynzyEIsrhyu8XS9bwqP
	tJK+6xxqJYdtLdrGfpaI3mYbLyLELLOVM
X-Google-Smtp-Source: AGHT+IGoodknxjnhRkGM53dom8zHwo/GQ7usgM5GJIgcc46jX1qmJRsfEHfqPXTuKsxYZEDs3+Qe9g==
X-Received: by 2002:a17:902:f693:b0:216:31c2:3db8 with SMTP id d9443c01a7336-22369213455mr103692805ad.37.1740803145309;
        Fri, 28 Feb 2025 20:25:45 -0800 (PST)
Received: from ?IPV6:2601:646:8201:fd20:b97c:f45a:2761:8e2b? ([2601:646:8201:fd20:b97c:f45a:2761:8e2b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fea699090dsm4657979a91.48.2025.02.28.20.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 20:25:44 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------bMTtw9I4y6H6Fr1Jp0Pg0N7h"
Message-ID: <ff38fae0-d613-4031-9ca0-46a14a7cb329@gmail.com>
Date: Fri, 28 Feb 2025 20:25:43 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] glibc run-built-tests not working as expected when set to
 'no'
To: semc.2042@gmail.com, poky@lists.yoctoproject.org
References: <lWid.1740753877103406696.l8x3@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <lWid.1740753877103406696.l8x3@lists.yoctoproject.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 01 Mar 2025 04:25:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13546

This is a multi-part message in MIME format.
--------------bMTtw9I4y6H6Fr1Jp0Pg0N7h
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2/28/25 6:44 AM, rajmohan r via lists.yoctoproject.org wrote:
> Hi All
> For glibc-y2038-tests recipe, when 'bitbake -c do_check glibc-y2038-tests'
> is executed, could see that the tests binaries are also run.
> Below is the do_check() contents from glibc-y2038-tests_2.39.bb
> # Just build tests for target - do not run them
> do_check:append () {
>     oe_runmake -i check run-built-tests=no
> }
> On completion of do_check stage, test binaries are also run and test 
> summary
> details are present at the end of 'log.do_check' file and is given below:
> from log.do_check and time it takes to complete the do_check() stage is
> 12min to 13min for scarthgap branch.
> === Summary of results ===
>      74 FAIL
>    1172 PASS
>      15 XFAIL


there are certain tests which do not require running, its possible thats 
being reported here. Can you share a sample of test which is executed 
like it should happen at runtime?


> Option 'run-built-tests' is not working as expected as said in the recipe
> like build only the tests binaries but do not run tests binaries.
> please let me know why test binaries are also been run when 
> 'run-built-tests'
> is set to 'no' for 'bitbake -c do_check glibc-y2038-tests' or running the
> tests binaries is an expected behaviour for the above do_check() stage.
> Thanks for reading the message.
> regards
> rajmohan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13544):https://lists.yoctoproject.org/g/poky/message/13544
> Mute This Topic:https://lists.yoctoproject.org/mt/111435049/1997914
> Group Owner:poky+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------bMTtw9I4y6H6Fr1Jp0Pg0N7h
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
    <div class="moz-cite-prefix">On 2/28/25 6:44 AM, rajmohan r via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:lWid.1740753877103406696.l8x3@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>Hi All</div>
      <div> </div>
      <div>For glibc-y2038-tests recipe, when 'bitbake -c do_check
        glibc-y2038-tests'</div>
      <div>is executed, could see that the tests binaries are also run.</div>
      <div> </div>
      <div>Below is the do_check() contents from
        glibc-y2038-tests_2.39.bb</div>
      <div> </div>
      <div># Just build tests for target - do not run them</div>
      <div>do_check:append () {</div>
      <div>    oe_runmake -i check run-built-tests=no</div>
      <div>}</div>
      <div> </div>
      <div>On completion of do_check stage, test binaries are also run
        and test summary</div>
      <div>details are present at the end of 'log.do_check' file and is
        given below:</div>
      <div>from log.do_check and time it takes to complete the
        do_check() stage is</div>
      <div>12min to 13min for scarthgap branch.</div>
      <div><span style="white-space: normal;"><span
          style="white-space: pre;"> </span>=== Summary of results ===</span></div>
      <div>     74 FAIL</div>
      <div>   1172 PASS</div>
      <div>     15 XFAIL</div>
    </blockquote>
    <p><br>
    </p>
    <p>there are certain tests which do not require running, its
      possible thats being reported here. Can you share a sample of test
      which is executed like it should happen at runtime?<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:lWid.1740753877103406696.l8x3@lists.yoctoproject.org">
      <div> </div>
      <div>Option 'run-built-tests' is not working as expected as said
        in the recipe</div>
      <div>like build only the tests binaries but do not run tests
        binaries.</div>
      <div> </div>
      <div>please let me know why test binaries are also been run when
        'run-built-tests'</div>
      <div>is set to 'no' for 'bitbake -c do_check glibc-y2038-tests' or
        running the</div>
      <div>tests binaries is an expected behaviour for the above
        do_check() stage.</div>
      <div> </div>
      <div>Thanks for reading the message.</div>
      <div>regards</div>
      <div>rajmohan</div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre wrap="" class="moz-quote-pre">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#13544): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/13544">https://lists.yoctoproject.org/g/poky/message/13544</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/111435049/1997914">https://lists.yoctoproject.org/mt/111435049/1997914</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------bMTtw9I4y6H6Fr1Jp0Pg0N7h--

