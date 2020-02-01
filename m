Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.2398.1580589890722024879
 for <poky@lists.yoctoproject.org>;
 Sat, 01 Feb 2020 12:44:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IvDpIT1V;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id k29so5315243pfp.13
        for <poky@lists.yoctoproject.org>; Sat, 01 Feb 2020 12:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=6U+OXG6rekGnDamzBwWqCWnepxxu73V72KCeHNkJNrY=;
        b=IvDpIT1VZVfH2oDJ6Vaz0EMBuOxGr+XYDsX1Af/53esm4MkJlH//9PQxTnDJQt1WjW
         oCv1pyTg3VBuDAAusXyWEohcSj7+0xCiBLs0I03ccjgMdiwIl+sE0wg9rHyeP+sRo116
         g60yqo65w6cdYucR7tMw0nfuMDzSMQFM8rWTdSyS+2pm2c4U2LFeEMvn/awC1G9J21ud
         PKaf6RC4JNEYdneM5EkDQMdG3bZiQmhyVuquTEGbb0ns0vSORCLUIu+1Mp+SIhsEUgB5
         6DqxQGN/Yi2eQQ/wB75vxt15U29azTG3Zxf4HPgCG4qDJJB6w4xXnzBMNShgUBrjd5fC
         pM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=6U+OXG6rekGnDamzBwWqCWnepxxu73V72KCeHNkJNrY=;
        b=ukK6HlP3KSLdHEk/xgU3WKNHsNHalnvIKvSJrOde1qiFiSk1pn6i9WLkNPBwvlnJYH
         TaUfTjtEvdiQlRIYkFnAk30Gx4dnuB0012Bjm/+1COGS6tKLuy7KLFBQ/rAmUvq99b4R
         4/7KzZIFKna7aetin6JQ+JHNOVUm2g0wHLKox3FUxYeJKc10/N5RFI+ckJNUqNV+xhFA
         YBuLmfczF/B8riYHvtxf1Eq9TPk6R4MsysJtvGx0ErP+VrzeFKGcoswBFPkJ8W4od4OI
         df/XlS74EG1S0UMZh96TxoW0aj1qrgE9+SkL98HgF9ea8XnQOIQq7UAOMYveKyGHpQku
         hxGA==
X-Gm-Message-State: APjAAAX0Y9sLWzOAC9D4Q01P+1MejiBhTrKtoByAb2JahVTiJ8GOHJZk
	7R3h+rt+G7BmI5aZQCPOvoC1WWiu
X-Google-Smtp-Source: APXvYqzZvPvZHnZUKVElDaUK6WLFCDTP98W6j6WZDtvOW+d4gFt/BeE3ll3k5V6L1VDsslZKCq8ICA==
X-Received: by 2002:aa7:94b0:: with SMTP id a16mr17026429pfl.35.1580589889988;
        Sat, 01 Feb 2020 12:44:49 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0::afc? ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id cx18sm14522321pjb.26.2020.02.01.12.44.49
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2020 12:44:49 -0800 (PST)
Subject: Re: [poky] [PATCH 1/2] meta-poky: update to new mailing lists
To: poky@lists.yoctoproject.org
References: <15EF615B6BAD422B.1360@lists.yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <09a7412b-8440-47ec-96b0-da3ca0a6df24@gmail.com>
Date: Sat, 1 Feb 2020 12:44:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <15EF615B6BAD422B.1360@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------58FC236779C333D12A377C5D"
Content-Language: en-US

--------------58FC236779C333D12A377C5D
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

this is annoying, "zeus" got stripped from the subject line..

this series is for "Zeus"

- armin

On 2/1/20 12:30 PM, akuster via Lists.Yoctoproject.Org wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  meta-poky/README.poky           | 4 ++--
>  meta-poky/conf/distro/poky.conf | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta-poky/README.poky b/meta-poky/README.poky
> index 8cf2027..be0c6c0 100644
> --- a/meta-poky/README.poky
> +++ b/meta-poky/README.poky
> @@ -53,11 +53,11 @@ bitbake:
>  
>  documentation:
>      Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
> -    Mailing list: yocto@yoctoproject.org
> +    Mailing list: docs@lists.yoctoproject.org
>  
>  meta-poky, meta-yocto-bsp:
>      Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
> -    Mailing list: poky@yoctoproject.org
> +    Mailing list: poky@lists.yoctoproject.org
>  
>  Everything else should be sent to the OpenEmbedded Core mailing list.  If in
>  doubt, check the oe-core git repository for the content you intend to modify.
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 289ef6c..1a9d06d 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -5,7 +5,7 @@ DISTRO_CODENAME = "zeus"
>  SDK_VENDOR = "-pokysdk"
>  SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
>  
> -MAINTAINER = "Poky <poky@yoctoproject.org>"
> +MAINTAINER = "Poky <poky@lists.yoctoproject.org>"
>  
>  TARGET_VENDOR = "-poky"
>  
>
> 


--------------58FC236779C333D12A377C5D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    this is annoying, "zeus" got stripped from the subject line..<br>
    <br>
    this series is for "Zeus"<br>
    <br>
    - armin<br>
    <br>
    <div class="moz-cite-prefix">On 2/1/20 12:30 PM, akuster via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:15EF615B6BAD422B.1360@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
 meta-poky/README.poky           | 4 ++--
 meta-poky/conf/distro/poky.conf | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/README.poky b/meta-poky/README.poky
index 8cf2027..be0c6c0 100644
--- a/meta-poky/README.poky
+++ b/meta-poky/README.poky
@@ -53,11 +53,11 @@ bitbake:
 
 documentation:
     Git repository: <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/</a>
-    Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
+    Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:docs@lists.yoctoproject.org">docs@lists.yoctoproject.org</a>
 
 meta-poky, meta-yocto-bsp:
     Git repository: <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)">http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)</a>
-    Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
+    Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:poky@lists.yoctoproject.org">poky@lists.yoctoproject.org</a>
 
 Everything else should be sent to the OpenEmbedded Core mailing list.  If in
 doubt, check the oe-core git repository for the content you intend to modify.
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 289ef6c..1a9d06d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -5,7 +5,7 @@ DISTRO_CODENAME = "zeus"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = <a class="moz-txt-link-rfc2396E" href="mailto:${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}','snapshot')}">"${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"</a>
 
-MAINTAINER = "Poky <a class="moz-txt-link-rfc2396E" href="mailto:poky@yoctoproject.org">&lt;poky@yoctoproject.org&gt;</a>"
+MAINTAINER = "Poky <a class="moz-txt-link-rfc2396E" href="mailto:poky@lists.yoctoproject.org">&lt;poky@lists.yoctoproject.org&gt;</a>"
 
 TARGET_VENDOR = "-poky"
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------58FC236779C333D12A377C5D--
