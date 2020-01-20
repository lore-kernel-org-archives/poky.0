Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.14730.1579543609939473257
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 10:06:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a3xdAk/8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA40DE015C0; Mon, 20 Jan 2020 10:06:49 -0800 (PST)
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
	*      [209.85.216.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C4AE01545
	for <poky@yoctoproject.org>; Mon, 20 Jan 2020 10:06:46 -0800 (PST)
Received: by mail-pj1-f42.google.com with SMTP id e11so107030pjt.4
        for <poky@yoctoproject.org>; Mon, 20 Jan 2020 10:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=4peNKFSC8ZEoGKIlVVkz84SdMuw8zzXh3Wb+uJKBdwE=;
        b=a3xdAk/8heBMABtljQlH4n/oDp3DIBC790m1UpqWNj9Yo7ARA3jVxCC/DhaPvLfESI
         uN1o8Eklt13SMLPdGCsOB+Iqnfw4PKEmfNlfEwlAmd2IaUZLx09eGXcflBcPO5AJ9Jnw
         vDX8VzR+kk6IdJEU9rdGv8uPuzJdeUrbsxXHsb1tPoRx2bkUqGnhd5b+EvyoemEgAoLb
         rdhODNNVFlqLe/al22Xd0Gvx2iFLaxcoCQra2uSzRs0PoVzT4PNJ6Gif5v6WveyYOiAl
         GUiAmDLgIYl83CkhwN04ulz6YdvF5O+R8lxPBwj4gpGlze+fLlgrqTs4CpH9Mri4B5uL
         gIYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=4peNKFSC8ZEoGKIlVVkz84SdMuw8zzXh3Wb+uJKBdwE=;
        b=tyTkIEHAQBe7Cy4PUqTHAqWOm8Iln+bCmi6aEKEcXS68uzDpCfJup5ENEUwLUMn/b1
         GZXmfoTYO8j1ZsdBF44LH+naVpMtiDWacfYtAUcajIvJ0XjYhX4jENG+Qu8OgJNbLr/C
         NE4IhYcBDq7/rYTCDBm+UDR/lwGo0vsHMIkKbsAkIxk8KvuOpfTCe/zjhxMqyYspWaLC
         FI/pFK5BDz/0tVEWdkKHGKvN5ORDuu5x8zdtPzqGjJcgwu5KuzmL/nYmSAMZ348CO56F
         UNBvaPoGdHzMg35CGCpQ352BiJg35EyNtkum5O3OCo6FBgfSq69Jvdd5KAg7yCpppqBx
         XYew==
X-Gm-Message-State: APjAAAVb3ME9W/rN8/L5z8kqtVDZEy7m5qmUVW7KjeqUy6auXYn/Faw2
	iz9Qs7+TCXgBCwAnjtDL03eQa1n7
X-Google-Smtp-Source: APXvYqxv4Idfsxew9RHQmT0ltkcC+rOKDMDEp+0x2KwF9I2TL4QcdI1o4363JGBKXQRVlxChxTkeVg==
X-Received: by 2002:a17:902:44d:: with SMTP id 71mr933911ple.95.1579543606016;
        Mon, 20 Jan 2020 10:06:46 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:b5ff:6d3b:2415:6395? ([2601:202:4180:a5c0:b5ff:6d3b:2415:6395])
        by smtp.gmail.com with ESMTPSA id r62sm41341544pfc.89.2020.01.20.10.06.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 10:06:45 -0800 (PST)
Subject: Re: [poky] [PATCH] poky.conf: add vfat to DISTRO_FEATURES
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@yoctoproject.org
References: <20200120172615.22811-1-alex.kanavin@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <43709224-d16f-54d1-6540-6601351ac675@gmail.com>
Date: Mon, 20 Jan 2020 10:06:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200120172615.22811-1-alex.kanavin@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------8A8F18CE7C49D88C931ABE47"
Content-Language: en-US

--------------8A8F18CE7C49D88C931ABE47
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 1/20/20 9:26 AM, Alexander Kanavin wrote:
> This is beneficial for parted ptests in particular, as
> they expect vfat functionality to work.

Is that is the case then why not have it in OE core?

- armin
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 5c156f12f33..2446e491563 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -15,7 +15,7 @@ DISTRO_VERSION[vardepsexclude] = "DATE"
>  SDK_VERSION[vardepsexclude] = "DATE"
>  
>  # Override these in poky based distros
> -POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vulkan"
> +POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vfat vulkan"
>  POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
>  POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
>  
>
> 


--------------8A8F18CE7C49D88C931ABE47
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 1/20/20 9:26 AM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200120172615.22811-1-alex.kanavin@gmail.com">
      <pre class="moz-quote-pre" wrap="">This is beneficial for parted ptests in particular, as
they expect vfat functionality to work.</pre>
    </blockquote>
    <br>
    Is that is the case then why not have it in OE core?<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:20200120172615.22811-1-alex.kanavin@gmail.com">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Alexander Kanavin <a class="moz-txt-link-rfc2396E" href="mailto:alex.kanavin@gmail.com">&lt;alex.kanavin@gmail.com&gt;</a>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5c156f12f33..2446e491563 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -15,7 +15,7 @@ DISTRO_VERSION[vardepsexclude] = "DATE"
 SDK_VERSION[vardepsexclude] = "DATE"
 
 # Override these in poky based distros
-POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vulkan"
+POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vfat vulkan"
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------8A8F18CE7C49D88C931ABE47--
