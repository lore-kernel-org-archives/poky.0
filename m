Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.10.1576541185678120994
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 16:06:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CAsWQ/vZ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A658E01257; Mon, 16 Dec 2019 16:06:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D915BE011FF
	for <poky@yoctoproject.org>; Mon, 16 Dec 2019 16:06:24 -0800 (PST)
Received: by mail-pj1-f68.google.com with SMTP id ep17so3728945pjb.4
        for <poky@yoctoproject.org>; Mon, 16 Dec 2019 16:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Z4GJsiG5mN/KQbI4beO+KtLAhIdxqvOWZ4BBAmEG9vM=;
        b=CAsWQ/vZUnQ4ZwnMXO6/+IgzoLKtfknylEDvdu050fwo4aRpdojv7oE5lx+1uEpmez
         Z9y0rqXVj3iSrYEt/jzo7lkbKbCHK26ZhSb5urlueKs+ApprYpbZqmflLjKD/+SlL4li
         eZnx6DJFBhytiXMfTqsNaoEVF/mH3fp6N/XmsUaItBB50e4079AN1DN7aITUW72WP8Ts
         r7l548Oeex7t3X/V45IdyuR6E2dGLbsEDvamGHNuqH+2J8nRwDm8ZJ8xrvcc2oC56nos
         sLKAuxxrlacDfw5LsfslSpy+KZkeZUUsvZWoXwR5MHl0JCSFyM/0SaClBD2hfem9anZB
         nMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=Z4GJsiG5mN/KQbI4beO+KtLAhIdxqvOWZ4BBAmEG9vM=;
        b=HbivCi8GfFLTgfOvrqJes751d6zh03EbgFradMHU5Pl3DBiYAoyZmQrnaHcFRcjzYU
         u2ZYRyKH0ITtNsbd+fDdwQz2AjcJgaKmZgXkhC1A7IwV2ba+BprDRaXqDxSe3GtwV3VT
         C2iwmpBsBRbGlNxmMI2oxLC58o1Jy03fFlvxcB4wK1AnAK02VekFHKBU30Fowbx1QqsO
         vYkrHIVvK98zNJjuISQJfkTrwsp2sIwp7ZyYI+AQ8XjhPJFGI/1nPljcDUHkwD31A8RG
         Lc2fxcXeL9qbA1g2EKRYnrxUXrwynbGm68xkhqfwrx3RN4Ej3UFA1R/FLiL09YbB3kDG
         wGZQ==
X-Gm-Message-State: APjAAAVsPwkeDJHDCj8DAvjo5aTY6sDKvPRNPjBDTzcXtQDLvYDiBPVM
	vFs0RoIchQ2iEMY4vMTHm8zx68TjSJw=
X-Google-Smtp-Source: APXvYqzlaGRo3p6vkG0x2VQcvvOKcW1WDxh0v6PJccfOnM4uT3KT0yF4zz0w3JDqfxpN/ZOiblClMg==
X-Received: by 2002:a17:902:a417:: with SMTP id p23mr18723181plq.339.1576541184120;
        Mon, 16 Dec 2019 16:06:24 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:acee:28f6:5c76:e584? ([2601:202:4180:a5c0:acee:28f6:5c76:e584])
        by smtp.gmail.com with ESMTPSA id a10sm24570812pgm.81.2019.12.16.16.06.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Dec 2019 16:06:23 -0800 (PST)
Subject: Re: [poky] [meta-poky][PATCH] poky.conf: Debian 8 is no longer supported
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Adrian Bunk <bunk@stusta.de>, poky@yoctoproject.org
References: <20191216040627.29272-1-bunk@stusta.de>
 <9dfc6360e37ff298058ae89a9ca289dc973c3b32.camel@linuxfoundation.org>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <0f4abf32-abc4-8413-3e6b-600f3cf7c1f4@gmail.com>
Date: Mon, 16 Dec 2019 16:06:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9dfc6360e37ff298058ae89a9ca289dc973c3b32.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------850F978801A150105251A20A"
Content-Language: en-US

--------------850F978801A150105251A20A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 12/16/19 3:55 PM, Richard Purdie wrote:
> On Mon, 2019-12-16 at 06:06 +0200, Adrian Bunk wrote:
>> Upstream LTS EOL will be June 2020,
>> and Python 3.4 is now too old for bitbake.
>>
>> Signed-off-by: Adrian Bunk <bunk@stusta.de>
>> ---
>>  meta-poky/conf/distro/poky.conf | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-
>> poky/conf/distro/poky.conf
>> index 8a0f28a863..995dd826ac 100644
>> --- a/meta-poky/conf/distro/poky.conf
>> +++ b/meta-poky/conf/distro/poky.conf
>> @@ -59,7 +59,6 @@ SANITY_TESTED_DISTROS ?= " \
>>              fedora-29 \n \
>>              fedora-30 \n \
>>              centos-7 \n \
>> -            debian-8 \n \
>>              debian-9 \n \
>>              debian-10 \n \
>>              opensuseleap-15.1 \n \
> We still have such a worker in the autobuilder right now as it can work
> using our buildtools tarball...

Is there a recommend process we should consult when adding or
subtracting host support for the project?

- armin
>
> Cheers,
>
> Richard
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11869): https://lists.yoctoproject.org/g/poky/message/11869
> Mute This Topic: https://lists.yoctoproject.org/mt/68709532/3616698
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------850F978801A150105251A20A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/16/19 3:55 PM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:9dfc6360e37ff298058ae89a9ca289dc973c3b32.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">On Mon, 2019-12-16 at 06:06 +0200, Adrian Bunk wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Upstream LTS EOL will be June 2020,
and Python 3.4 is now too old for bitbake.

Signed-off-by: Adrian Bunk <a class="moz-txt-link-rfc2396E" href="mailto:bunk@stusta.de">&lt;bunk@stusta.de&gt;</a>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-
poky/conf/distro/poky.conf
index 8a0f28a863..995dd826ac 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -59,7 +59,6 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-29 \n \
             fedora-30 \n \
             centos-7 \n \
-            debian-8 \n \
             debian-9 \n \
             debian-10 \n \
             opensuseleap-15.1 \n \
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
We still have such a worker in the autobuilder right now as it can work
using our buildtools tarball...</pre>
    </blockquote>
    <br>
    Is there a recommend process we should consult when adding or
    subtracting host support for the project?<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:9dfc6360e37ff298058ae89a9ca289dc973c3b32.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Cheers,

Richard

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#11869): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/11869">https://lists.yoctoproject.org/g/poky/message/11869</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/68709532/3616698">https://lists.yoctoproject.org/mt/68709532/3616698</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------850F978801A150105251A20A--
