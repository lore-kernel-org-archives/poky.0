Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web11.2379.1574447915636424744
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 10:38:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LZYwJsMV;
 spf=pass (domain: gmail.com, ip: 209.85.215.195, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f195.google.com with SMTP id b137so1409323pga.6
        for <poky@lists.yoctoproject.org>; Fri, 22 Nov 2019 10:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=c/eFpvOWm+H1o6PFhm+xdGOiEK7ROzCEGS6b4NGfPLc=;
        b=LZYwJsMVKNza8SWMprRwn1jSbdeGVfsWHcUQiXlvy2xun1myJN0PRXAXxlFimi4VA1
         8lxF1UKSNRCzNyoDX/pEudz9JnDy3+AWxf8P09N+guSw+IaQCktwakSjBE2DfJoQGEfC
         xzlLp1NkNN22zulE2ld67mSXTdW4MeaYAIKPSI5JkoM/ApGHZMGZcuIoMbomYXemjp37
         7XgjYA5TLrQDk6ynlE4fEg4TaRPREPKMxvdon8xefXVeclvEx8Y4JZHePRmlUUxq0jJ0
         t4MFcrcva+93Npifr1+Lql2537DNV2nKLn+7YOBNbl2PjSukVs4tbv5ib9TAY9l09nHh
         c5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=c/eFpvOWm+H1o6PFhm+xdGOiEK7ROzCEGS6b4NGfPLc=;
        b=FTbTFaVtNB5s5jolROlbqOmgdsINqyiyQuEcFvhPowwRFbQSGoHdGemtpUhTV+cota
         H/1zswkkYHr/09h9DyVnrChlkHZsR0TlDcqW8ok1M20rThKGldYcQqfrLT6J90+/wkZj
         LGdo/cxtBJth1P+isMEcVTQKD6c72cwfKMu/yVFh3QRV/7RMKLuGlX86FnNznsAMOuLL
         +0ke7XWZEbPyPT4vzr8DMPKnUuzqa86NEDVVtvgjUBOX6FTIJw8FdWIqk7QpeuiTuAXR
         Jv893CgZLBiY6f2nsLAQMGjASt6LU/m+9OrHy0+V6WJezEJalX9DycrPLFlFGPVf2fRM
         3Fkg==
X-Gm-Message-State: APjAAAVCFxLMIO5bOiB0Ohyy9ZszEwPGM6ql5vY5IscQZSNcluAueRWN
	WGNHoPeUidFoowXi2DuLLmwr65Kl
X-Google-Smtp-Source: APXvYqwiD4B8kOPhefLoInEY9dTwD/bIDi4i9h5Ao6m+3uoyi/cOfXvQMqbti1NjqzG3w7vp2rcLlw==
X-Received: by 2002:a63:524e:: with SMTP id s14mr997678pgl.412.1574447914815;
        Fri, 22 Nov 2019 10:38:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:d5a1:4623:137e:d439? ([2601:202:4180:a5c0:d5a1:4623:137e:d439])
        by smtp.gmail.com with ESMTPSA id g3sm8048622pfo.82.2019.11.22.10.38.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Nov 2019 10:38:34 -0800 (PST)
Subject: Re: [poky] [PATCH] poky: Default to reproducible builds
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <20191122173942.5161-1-richard.purdie@linuxfoundation.org>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <9266c330-48cd-68b9-7581-5f4c11a932aa@gmail.com>
Date: Fri, 22 Nov 2019 10:38:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191122173942.5161-1-richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------14FC065436DE9F9B07B43CD5"
Content-Language: en-US

--------------14FC065436DE9F9B07B43CD5
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 11/22/19 9:39 AM, Richard Purdie wrote:
> This is essential for sensible use of hash equivalence which we also plan
> to enable by default in the next release.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/distro/poky.conf | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 619414295b2..82b20642818 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -87,3 +87,5 @@ require conf/distro/include/no-static-libs.inc
>  require conf/distro/include/yocto-uninative.inc
>  require conf/distro/include/security_flags.inc
>  INHERIT += "uninative"
> +
> +INHERIT += "reproducible_build"

The down side I see with this being only in "Poky" is if I do a package
update in a "No Distro"  setup and I don't see if I introduced a
regression of reproducibility.

I need to start adding this to my local.conf.

- armin
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11822): https://lists.yoctoproject.org/g/poky/message/11822
> Mute This Topic: https://lists.yoctoproject.org/mt/61713118/3616698
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------14FC065436DE9F9B07B43CD5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 11/22/19 9:39 AM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20191122173942.5161-1-richard.purdie@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">This is essential for sensible use of hash equivalence which we also plan
to enable by default in the next release.

Signed-off-by: Richard Purdie <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 619414295b2..82b20642818 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -87,3 +87,5 @@ require conf/distro/include/no-static-libs.inc
 require conf/distro/include/yocto-uninative.inc
 require conf/distro/include/security_flags.inc
 INHERIT += "uninative"
+
+INHERIT += "reproducible_build"</pre>
    </blockquote>
    <br>
    The down side I see with this being only in "Poky" is if I do a
    package update in a "No Distro"  setup and I don't see if I
    introduced a regression of reproducibility.<br>
    <br>
    I need to start adding this to my local.conf.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:20191122173942.5161-1-richard.purdie@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#11822): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/11822">https://lists.yoctoproject.org/g/poky/message/11822</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/61713118/3616698">https://lists.yoctoproject.org/mt/61713118/3616698</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------14FC065436DE9F9B07B43CD5--
