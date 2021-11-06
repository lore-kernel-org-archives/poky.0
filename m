Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.17383.1636193261787215100
 for <poky@lists.yoctoproject.org>;
 Sat, 06 Nov 2021 03:07:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UIiNzpbX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 133so9072240wme.0
        for <poky@lists.yoctoproject.org>; Sat, 06 Nov 2021 03:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HDvMGve+m0LkE8bRmjFeZ4/Deh5XUAeCalYWcalgq4w=;
        b=UIiNzpbXofXUrVGvBmU6Ac7+MY6pHCzrOvttjGl9YyG31n/1NUXh5CS2mmpxnjoOlp
         5IigEw9DgVTsXYU16KWhaDE1FIH8mNyu0u1S0xanIvPlnYCyi6lOum8HIw5Paj/lgf/S
         hQ1OuxAWyyczAnptwYlwCHMJFRqcW8F8dfLF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HDvMGve+m0LkE8bRmjFeZ4/Deh5XUAeCalYWcalgq4w=;
        b=JTYPyNjKm1h4HJiyIkxY+xRIuI1H+kqlQiInpzJaxYjRAI1xv34W3kRDwa/7+fMuqz
         ufMUtkBPFV8HeaWS9Wi5KU4+1Tx5RTUD6fyCCpBnM3rQLEfFMrB6IOb8u1TCZQ6pP31L
         ZgAKppq5kKrdOz9Dtxhmfzn8u9E+LbkeBfKwKKTBPpxgXQXZlV2zY8R+fnV6q0xw1P3R
         N3jiil2Z5wUKbuEAWhz/VytOl2B69fR9TgvyDUOS283sxG93INToaWRWvNjTKRZf5wUG
         b25ttTgQ78LtKu73yaHx0Enoh1EZlvxnl7aOOafEcxcA4atN5JnZmt8FsczOhMRwxO+k
         qbbQ==
X-Gm-Message-State: AOAM531PtbxW6cTV5Y9J+qYGJ4NeOgNatjJ1WdB1gxjTbDfK7z+cHnP8
	rNTDghccJ2pw5UNEwkbcATDF9Q==
X-Google-Smtp-Source: ABdhPJx2Viu0Wuc6LBQGVkWxLn8g85kEFgYJTT5u5XtF4C6RWLoovL2Z4bpAKRvSGK8hsSlXNfBqKA==
X-Received: by 2002:a7b:c153:: with SMTP id z19mr36806740wmi.171.1636193260372;
        Sat, 06 Nov 2021 03:07:40 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:23d0:3dc5:c03:c6aa? ([2001:8b0:aba:5f3c:23d0:3dc5:c03:c6aa])
        by smtp.gmail.com with ESMTPSA id t1sm11233216wre.32.2021.11.06.03.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Nov 2021 03:07:39 -0700 (PDT)
Message-ID: <daa53f916bec48be39888a64d2c542f712933f73.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] meson: make https:// wrap source downloads work
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Leif Middelschulte <leif.middelschulte@gmail.com>, 
	poky@lists.yoctoproject.org
Cc: Leif Middelschulte <Leif.Middelschulte@klsmartin.com>
Date: Sat, 06 Nov 2021 10:07:38 +0000
In-Reply-To: <873EB729-5CCC-4B12-B45D-B9D481D38E89@gmail.com>
References: <873EB729-5CCC-4B12-B45D-B9D481D38E89@gmail.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2021-11-06 at 10:47 +0100, Leif Middelschulte wrote:
> Meson would fail to fetch wraps' sources on bare systems (i.e. docker images),
> that only provide little more than the SDK.
> 
> The SDK's SSL directory was not searched, so meson would fail when it tried
> to fetch sources via https, that were specified in wrap files.
> Specifically `urllib` would fail:
> ```
> <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1129)>
> ```
> 
> Caution: this patch depends on the underlying C library (i.e. openssl)
> to consider this environment variable.
> 
> Signed-off-by: Leif Middelschulte <Leif.Middelschulte@klsmartin.com>
> ---
> meta/recipes-devtools/meson/meson/meson-wrapper | 4 ++++
> 1 file changed, 4 insertions(+)
> 
> diff --git a/meta/recipes-devtools/meson/meson/meson-wrapper b/meta/recipes-devtools/meson/meson/meson-wrapper
> index d4b5187f8d..8fafaad975 100755
> --- a/meta/recipes-devtools/meson/meson/meson-wrapper
> +++ b/meta/recipes-devtools/meson/meson/meson-wrapper
> @@ -4,6 +4,10 @@ if [ -z "$OECORE_NATIVE_SYSROOT" ]; then
>     echo "OECORE_NATIVE_SYSROOT not set; are you in a Yocto SDK environment?" >&2
> fi
> 
> +if [ -z "$SSL_CERT_DIR" ]; then
> +    export SSL_CERT_DIR="${OECORE_NATIVE_SYSROOT}/etc/ssl/certs/"
> +fi
> +
> # If these are set to a cross-compile path, meson will get confused and try to
> # use them as native tools. Unset them to prevent this, as all the cross-compile
> # config is already in meson.cross.

Why is meson trying to fetch sources? Shouldn't this be happening in do_fetch?

Cheers,

Richard


