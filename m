Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.31672.1590746517786077553
 for <poky@lists.yoctoproject.org>;
 Fri, 29 May 2020 03:01:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=rvQ9+HW7;
 spf=none, err=permanent DNS error (domain: dynamicdevices.co.uk, ip: 209.85.221.51, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wr1-f51.google.com with SMTP id x13so2853777wrv.4
        for <poky@lists.yoctoproject.org>; Fri, 29 May 2020 03:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices-co-uk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=oHW/wJj/stUuOxSNcEvm//SXqw+DXRMgOC+gXkVpF3s=;
        b=rvQ9+HW74UfbvNwWOu4Kvs0YcAOarx157etlZ49FwECavv4KfGq4jF02bX7ItFudgU
         eZv1tLzaeZkMngMmnFsk1Wr+pf8nLkxpPonq4kmlemDOmAZEb1zhaxoWbHut6FWtdjUg
         m+MF/UYBVKvuau9b+EWVn8R16nPtXbvYDaAOGqlzwQrQIFEOez/f09NJIc91DT7gwL3p
         kebn/WRtj5eeUcexzQTVNTBky4RNFM8sSx53apIEYCQJSZHia/rWhyQYb1XXVkeIznIg
         b/GMpz6WSmwHKGtyM58WaKtnB/mpi96rb858F3G4de+O78jamjl8KKivWhMHZIYAvPi0
         Fq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=oHW/wJj/stUuOxSNcEvm//SXqw+DXRMgOC+gXkVpF3s=;
        b=bX7utWC/a6SJ0Kr4v3R7UAUuxNcKXwNPbsYdtCuuPfFDSN+4SWOb06l3avwcltbghx
         KkQds2IVC6zYxVYjgXiRfeqI7NjvWs6hUdevcIiXRMonHb5pXJK3FuKThlUwK5aXSkqe
         AdZ+8DtYKnR7Ivxd0ksFhrh0jlhix0wHfn5KEgPFRP6pV0DmAgh0xPBDTwXuJ8Y85fXK
         6l8WEVXXMcpOnAhJHhwdaygYN1InKkwIOCoppq0XFDKiZ2SJBguk5SDZxrILCYRhQwC+
         NW7F3sSiMpZMc6wyxmMzn7LNgMIY4ouzogdiftWEMw2ilMqb/zmyUfFQ6eZ8rxbai3SV
         Kpbg==
X-Gm-Message-State: AOAM530frjBrIvPPC/css/OuhcDkeEySO3kIcDLdHeoyJoW+rLCNuZor
	yhClbeJizIjzfAowJyp4EtapC2v/9Heacw==
X-Google-Smtp-Source: ABdhPJwe536jCyDePRE9a3bC54SAoL+ZXsP+uLiR20RaBa5zeSxQUPqLRr9x8kKsIq3phft8EN3r9w==
X-Received: by 2002:adf:c393:: with SMTP id p19mr7564452wrf.379.1590746515847;
        Fri, 29 May 2020 03:01:55 -0700 (PDT)
Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from [192.168.0.219] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net. [92.232.58.145])
        by smtp.gmail.com with ESMTPSA id 186sm5409340wma.45.2020.05.29.03.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 03:01:54 -0700 (PDT)
Subject: Re: [poky] [meta-yocto][master][dunfell] poky: Add Ubuntu 20.04 as a supported distro
To: Steve Sakoman <steve@sakoman.com>, poky@lists.yoctoproject.org
References: <cover.1590685475.git.steve@sakoman.com>
 <fa4bbd39128b1be529f524dcb853fe2868e5ff94.1590685475.git.steve@sakoman.com>
From: "Alex J Lennon" <ajlennon@dynamicdevices.co.uk>
Message-ID: <ac5f8bc3-ef30-239f-9337-102708913394@dynamicdevices.co.uk>
Date: Fri, 29 May 2020 11:01:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <fa4bbd39128b1be529f524dcb853fe2868e5ff94.1590685475.git.steve@sakoman.com>
Content-Type: multipart/alternative;
 boundary="------------A26CD21DDBE9BAE34D65D263"
Content-Language: en-US

--------------A26CD21DDBE9BAE34D65D263
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 28/05/2020 18:06, Steve Sakoman wrote:
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>   meta-poky/conf/distro/poky.conf | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 91779e4..2696eb6 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -56,6 +56,7 @@ SANITY_TESTED_DISTROS ?= " \
>               ubuntu-16.04 \n \
>               ubuntu-18.04 \n \
>               ubuntu-19.04 \n \
> +            ubuntu-20.04 \n \
>               fedora-30 \n \
>               fedora-31 \n \
>               centos-7 \n \
>
> 


Thanks Steve - can you provide a PR over at the GitHub repo.

Cheers,

Alex



--------------A26CD21DDBE9BAE34D65D263
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 28/05/2020 18:06, Steve Sakoman
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:fa4bbd39128b1be529f524dcb853fe2868e5ff94.1590685475.git.steve@sakoman.com">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Steve Sakoman <a class="moz-txt-link-rfc2396E" href="mailto:steve@sakoman.com">&lt;steve@sakoman.com&gt;</a>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 91779e4..2696eb6 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -56,6 +56,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-19.04 \n \
+            ubuntu-20.04 \n \
             fedora-30 \n \
             fedora-31 \n \
             centos-7 \n \
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Thanks Steve - can you provide a PR over at the GitHub repo.</p>
    <p>Cheers,</p>
    <p>Alex</p>
    <p><br>
    </p>
  </body>
</html>

--------------A26CD21DDBE9BAE34D65D263--
