Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.4233.1624519303262346607
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 00:21:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EaGfQBhv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id l21-20020a05600c1d15b02901e7513b02dbso151246wms.2
        for <poky@lists.yoctoproject.org>; Thu, 24 Jun 2021 00:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=M22EZSq4K3VZKcIwwqiTHvPoPVdusoAUPvSLov7/cEc=;
        b=EaGfQBhvK9h3VcRiEWQ/0GEPHaCZTEeL+8Fl8ijOXnf3ikflC1TNTOzA8erJ5Qt6N+
         PrxNAGfbwb9n+nXTsHqX9xvxZYdtz92aBukgc+8AjjGCODkSkZ9cJYNqm0ROz/wwyhnl
         03scu8Ue113hjk67SXTMmWfY8NjGDiZPj39sU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=M22EZSq4K3VZKcIwwqiTHvPoPVdusoAUPvSLov7/cEc=;
        b=iysYGG3Nk1F2AHOBouasfI6jvPD/bUyU0cmqpW6TSL0a6/+MkimP8xNYNVr7rbjUKw
         54XxoZDJbjg+lSf2f560iFrqZ1U64/oRaVfGYxGo/9BHJW/nAMQ/ktdQD1FFzavLRGSM
         WhiguNibpp87P0iVwP+VekELFfrnZn+2+ox1jI2THwihnSLarlBwDdW4Y0AdP7tAeWJq
         RXSv5b2QYvo8i+pisMrwDlKu/vk9dUNyiDvZvYgcLLiQfT98pcYkg2Mze8CA2fgbFAjY
         Ud2zv1CslihlcMIhqtIyPQN+3YPMP/DX7uCKcQgn/iS+Wf4d+Qgy0ticeNvErDrknpLi
         IUhw==
X-Gm-Message-State: AOAM532mxLQ/82b8zCmbp7I/8WRcDHDolncHKDvb3JgQcYYNuZ6xYIcp
	gSDcKgZmp8Yz2cVOlEgREXxseg==
X-Google-Smtp-Source: ABdhPJyratYQuhmdIXFXALfUARv6+fFADR3XPM11S/bASro+Eh5ozZN8I0p4OU4OXg/l5nmxK/hEag==
X-Received: by 2002:a1c:4e1a:: with SMTP id g26mr2548556wmh.62.1624519301532;
        Thu, 24 Jun 2021 00:21:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:3438:b737:d8c:ddd4? ([2001:8b0:aba:5f3c:3438:b737:d8c:ddd4])
        by smtp.gmail.com with ESMTPSA id d4sm2108010wmd.42.2021.06.24.00.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 00:21:41 -0700 (PDT)
Message-ID: <146244a25957547cd9adf7e87025572c1341e6fb.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] bitbake: Fix automatic generation of variable dependencies
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>, poky@lists.yoctoproject.org
Date: Thu, 24 Jun 2021 08:21:38 +0100
In-Reply-To: <20210624064025.102654-1-dwrobel@ertelnet.rybnik.pl>
References: <20210624064025.102654-1-dwrobel@ertelnet.rybnik.pl>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-06-24 at 08:40 +0200, Damian Wrobel wrote:
> Automatically generate variable dependencies also for:
>     - "bb.utils.contains",
>     - "base_contains"
>     - "bb.utils.contains_any",
>     - "bb.utils.filter".
> 
> This is to avoid situation in which some of the variables were
> added automatically but not all of them like in the test example below:
> 
> RDEPENDS_${PN} += "\
>     ${@bb.utils.contains(                                              \
>         'BB_UTILS_CONTAINS_DROPBEAR',  '1',   'dropbear',   '', d)}    \
>     ${@bb.utils.contains_any(                                          \
>         'BB_UTILS_CONTAINS_ANY_EXPAT', ['1'], 'expat',      '', d)}    \
>     ${@oe.utils.conditional(                                           \
>         'OE_UTILS_CONDITIONAL_ZLIB',   '1',   'zlib',       '', d)}    \
>     ${@bb.utils.filter('BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'xyz', d)} \
> 

This doesn't look quite right. Contains is given special handling
which you see in the code below with "self.contains[varname].add(node.args[1].s)".

This means that the hash can reflect whether the variable contains the
value or not instead of depending on the complete value. This means
the hashes are optimised to a binary decision rather than varying 
arbitrary values.

Can you describe more about the issue you're seeing?

I'd also note that any fix like this should be adding a test case to
lib/bb/tests/ so that we don't regress in future (run by bitbake-selftest).

Cheers,

Richard



> Signed-off-by: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
> ---
>  bitbake/lib/bb/cache.py      | 2 +-
>  bitbake/lib/bb/codeparser.py | 4 +++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
> index 27eb271798..2fe83ef3ac 100644
> --- a/bitbake/lib/bb/cache.py
> +++ b/bitbake/lib/bb/cache.py
> @@ -26,7 +26,7 @@ import re
>  
> 
> 
> 
>  logger = logging.getLogger("BitBake.Cache")
>  
> 
> 
> 
> -__cache_version__ = "154"
> +__cache_version__ = "155"
>  
> 
> 
> 
>  def getCacheFile(path, filename, mc, data_hash):
>      mcspec = ''
> diff --git a/bitbake/lib/bb/codeparser.py b/bitbake/lib/bb/codeparser.py
> index 0cec452c00..e00dc44470 100644
> --- a/bitbake/lib/bb/codeparser.py
> +++ b/bitbake/lib/bb/codeparser.py
> @@ -122,7 +122,7 @@ class CodeParserCache(MultiProcessCache):
>      # so that an existing cache gets invalidated. Additionally you'll need
>      # to increment __cache_version__ in cache.py in order to ensure that old
>      # recipe caches don't trigger "Taskhash mismatch" errors.
> -    CACHE_VERSION = 11
> +    CACHE_VERSION = 12
>  
> 
> 
> 
>      def __init__(self):
>          MultiProcessCache.__init__(self)
> @@ -225,10 +225,12 @@ class PythonParser():
>                      if varname not in self.contains:
>                          self.contains[varname] = set()
>                      self.contains[varname].add(node.args[1].s)
> +                    self.references.add(varname)
>                  elif name in self.containsanyfuncs and isinstance(node.args[1], ast.Str):
>                      if varname not in self.contains:
>                          self.contains[varname] = set()
>                      self.contains[varname].update(node.args[1].s.split())
> +                    self.references.add(varname)
>                  elif name.endswith(self.getvarflags):
>                      if isinstance(node.args[1], ast.Str):
>                          self.references.add('%s[%s]' % (varname, node.args[1].s))
> 
> 


