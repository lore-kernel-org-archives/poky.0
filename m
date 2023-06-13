Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8378FEB64D7
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 20:44:11 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.1878.1686689044461156045
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 13:44:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=C2c5dh11;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-3f8c5d0b19dso15145395e9.1
        for <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 13:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686689043; x=1689281043;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rBoAbr2zw+Y0SWpAJSd9LVrE9QWXWYPaZiDITUAPf+U=;
        b=C2c5dh11N9E9N2maCTlbZdmqqyiAq74SSo9uBxD/78opN8qUafKYTngrt8HKmC6A8j
         silcA2hkGgamb1Kz4sCQXlp7B1eH/tjQpQ7TicESE/Iv2wF3Q2sNMCOKmdeviyMmW48w
         swWrAbdy+WbDa+rJUPH8O0NyoPLUzK1NVlodc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686689043; x=1689281043;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rBoAbr2zw+Y0SWpAJSd9LVrE9QWXWYPaZiDITUAPf+U=;
        b=P9AD4Pf44CLIGJvI83Cwpk+2Uopg4TOM5YkSIkHpYnEJOgWe4xawxIfC4HL22SZxF1
         X7bKm14SAhO6/Wegg2rKA6jc5o6g6/L47gBmbXkoALM/oyktpYHyyromsgWTqJw+inmi
         cxPLEaFwcWBF35VU6pKdFX7dej0sEd80x/hGmg6soMzgCfVAPxjE/2GblPta0gtEPU1B
         lD8aw30uCGGAZK+wYPQBrzFSHT0+z9IdRcdM0T5H1z+zi4ImeGHOfI4vqQALs5UMQ2Nw
         lEhbOlZ6E8FqHHBrZWt3vkQ9sr6HHm/E55y9/6Uo1S5wOeY/RoYqzSSglF/6UPR0ABxH
         ip6g==
X-Gm-Message-State: AC+VfDzVMuxdVytrdbWmdDkVFIA+nY7hVVKm2cbllT+3WXp/JWSbq9h9
	USAEjRF8BRwt0RZXs+s674VvWg==
X-Google-Smtp-Source: ACHHUZ7R2yJpawk6xBvo8NRQ9v1SuBicF5eyOSQs/O3XzB++kSsIpd88BWIjOZ9Gq38yUmrrxSy9MA==
X-Received: by 2002:a05:6000:1814:b0:310:b979:d00f with SMTP id m20-20020a056000181400b00310b979d00fmr389705wrh.45.1686689042543;
        Tue, 13 Jun 2023 13:44:02 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b? ([2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f605566610sm15356538wma.13.2023.06.13.13.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 13:44:01 -0700 (PDT)
Message-ID: <24b0ee85cc57f65fa622f1a80d51da0b4e3bd72f.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/1] devtool: Fix the wrong variable in
 srcuri_entry
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: chiachiwu@google.com, poky@lists.yoctoproject.org
Cc: ryanoleary@google.com
Date: Tue, 13 Jun 2023 21:43:58 +0100
In-Reply-To: <271614cc517d93437c74e12e4d86d2d3149574ea.1686657637.git.chiachiwu@google.com>
References: <cover.1686657637.git.chiachiwu@google.com>
	 <271614cc517d93437c74e12e4d86d2d3149574ea.1686657637.git.chiachiwu@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 20:44:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13085

On Tue, 2023-06-13 at 12:56 +0000, Charlie Wu via
lists.yoctoproject.org wrote:
> devtool crashes when running "update-recipe" and append changes on the re=
cipe.
> "$ devtool update-recipe -a <layer> <recipe>"
> Traceback (most recent call last):
> ...
> File "/ovss/ovss_quanta/poky/scripts/lib/devtool/standard.py", line 1636,=
 in srcuri_entry
>     return 'file://%s%s' % (basepath, paramstr)
>                             ^^^^^^^^
> NameError: cannot access free variable 'basepath' where it is not associa=
ted with a value in enclosing scope
>=20
> The input variable 'fname' should have the same meaning as the variable '=
basepath'.
> Modify the 'fname' to 'basepath' and solve the issue.
>=20
> Signed-off-by: Charlie Wu <chiachiwu@google.com>
> ---
>  scripts/lib/devtool/standard.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/scripts/lib/devtool/standard.py b/scripts/lib/devtool/standa=
rd.py
> index 852672810a..86ca77f718 100644
> --- a/scripts/lib/devtool/standard.py
> +++ b/scripts/lib/devtool/standard.py
> @@ -1629,7 +1629,7 @@ def _update_recipe_patch(recipename, workspace, src=
tree, rd, appendlayerdir, wil
>      else:
>          patchdir_params =3D {'patchdir': relpatchdir}
> =20
> -    def srcuri_entry(fname):
> +    def srcuri_entry(basepath):
>          if patchdir_params:
>              paramstr =3D ';' + ';'.join('%s=3D%s' % (k,v) for k,v in pat=
chdir_params.items())
>          else:

Thanks for the patch. As Alex mentions, this needs to go to the OE-Core
mailing list. I also wondered if we're missing a test case since the
selftests should catch issues like this?

Could you see if there is something we should add to "oe-selftest -r
devtool" to catch this issue?

Thanks,

Richard

