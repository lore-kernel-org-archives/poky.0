Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 800E3C3DA7F
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 09:49:58 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.119410.1723715397572715209
 for <poky@lists.yoctoproject.org>;
 Thu, 15 Aug 2024 02:49:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CCjY+zvo;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f0271b0ae9so9341931fa.1
        for <poky@lists.yoctoproject.org>; Thu, 15 Aug 2024 02:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723715395; x=1724320195; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zEV2kKIUa/WyBGQ48CA29hcIlqvNv8VCiahpCQi09VI=;
        b=CCjY+zvoGdFyANg7Hui+8/N0D1ZyC6ogvYeXXuH+/WF3Zy68vrGQ70cKVgc5FbduGa
         Yxa32w6gW7UYrxqZL6/ESD09izb678g0gTRk9xsM7f1nDI3VIOz75gW0YihYdWd5aEvq
         I35yCuDuUF3HXX9hebHJF/h2PHp41cUp5zfMJS6XSup+jQu3O3r4bf5L2CreF+zPXhtn
         6EBPmmU60gk6HKdzWjfvC0Dq/N1++WRviIHqzm/JeS5RQKPrvUGSBR57JlOpf1eN5hgy
         qUcJw2pVkbkKkK0p2t5KNynSRQKChqgYAVPFkFI9aB+pZPMZ5rRA0NR+iNDCCtYIMwbQ
         imcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723715395; x=1724320195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zEV2kKIUa/WyBGQ48CA29hcIlqvNv8VCiahpCQi09VI=;
        b=CDfdibM/JO6QNXS/yIVhPos8UbSky0L/ZRcuzuv24R9n9WdPPblLJDhdHCQY9pa7Fv
         yC+GZ0ebhX0jMhCnr6WJEpp5VcLH2mgTpQr3XVsUjaXFDGXhPvNzG83tYjx9jGfHbUxW
         kaOtXzMw3ypUEhSPIVykvsiBSqU8mDfACNhG8zYBf7L3FLzMzi/QJ6n4o2wNLcqCeEL1
         e93kIMzHdD/BuqEtlmMxYT7XnWAS8a+XS+fV1daG9kBYy7bGE2j22VxpC4Tr+944H1ML
         q0zyJ85gUMFJuNj0vnrCekgFhLQCuKRcFAEop/fDBpSmek9bI7/J962idLr2XT82ExBx
         Mrtg==
X-Gm-Message-State: AOJu0Yy/5TLKdTxTHwZ97K1dVaMoOqW8S9M2ETdNcTzHedxyLPRRHTSj
	OQJBRqcy7/M/O5nZzDvxfZ6m0jpwdrIWlTKijojHyTWutAuhfHVuXG4ew0wPFNGBXa+hY6eJ5uE
	DIbUk51+/yWD4mes+0MaqQPW0C7VU4w==
X-Google-Smtp-Source: AGHT+IGUDlsAWXwIJCtmX+/lAlUGmDpdWxiYSeKO4Gb0D0OFeyoiehLjesyICO34lQjn+ReoJkHXCQefsY31tCDAxRU=
X-Received: by 2002:a05:6512:33cf:b0:52b:bd90:29c8 with SMTP id
 2adb3069b0e04-532edbd1357mr2680466e87.60.1723715395206; Thu, 15 Aug 2024
 02:49:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240815052749.3696159-1-kai.kang@windriver.com>
In-Reply-To: <20240815052749.3696159-1-kai.kang@windriver.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 15 Aug 2024 11:49:44 +0200
Message-ID: <CANNYZj9nspchM_6fb=BDJkLzBTwsT7odZf1N_EtXOwypCS7VwA@mail.gmail.com>
Subject: Re: [poky] [PATCH] variables.rst: update GCCVERSION
To: kai.kang@windriver.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 15 Aug 2024 09:49:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13425

I think this is better reworded to avoid mentioning a specific version
completely.

E.g. 'by default it is set to the gcc version provided by oe-core layer'.

Alex

On Thu, 15 Aug 2024 at 07:28, Kai Kang via lists.yoctoproject.org
<kai.kang=windriver.com@lists.yoctoproject.org> wrote:
>
> From: Kai Kang <kai.kang@windriver.com>
>
> Update GCCVERSION to current version '14.x' in variables.rst.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  documentation/ref-manual/variables.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
> index 848cea787f..e0df9d05f6 100644
> --- a/documentation/ref-manual/variables.rst
> +++ b/documentation/ref-manual/variables.rst
> @@ -3142,10 +3142,10 @@ system and gives an overview of their function and contents.
>
>     :term:`GCCVERSION`
>        Specifies the default version of the GNU C Compiler (GCC) used for
> -      compilation. By default, :term:`GCCVERSION` is set to "8.x" in the
> +      compilation. By default, :term:`GCCVERSION` is set to "14.x" in the
>        ``meta/conf/distro/include/tcmode-default.inc`` include file::
>
> -         GCCVERSION ?= "8.%"
> +         GCCVERSION ?= "14.%"
>
>        You can override this value by setting it in a
>        configuration file such as the ``local.conf``.
> --
> 2.34.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13424): https://lists.yoctoproject.org/g/poky/message/13424
> Mute This Topic: https://lists.yoctoproject.org/mt/107909170/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

