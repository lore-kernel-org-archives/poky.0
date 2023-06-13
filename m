Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F6A0EB64D7
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 13:30:57 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.13124.1686663055174385163
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 06:30:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Iq5UefhQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2b1fe3a1a73so66771991fa.1
        for <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 06:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686663053; x=1689255053;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c3VaEtT5WteCxvFoIQfkFSNH8Kuw+u0cPYOLrzInHJE=;
        b=Iq5UefhQEVZW0bPF77Rj3XOgWeG7G73fQqANfcn/CRi+szEiTk9fMlzGP/0w2mDhcl
         rCGTMvG2Hm7Jp33VCRQlAEVLOsKVgnVvjpyRzzuBeL+9z6nYRUXcYnuc0SFR0SDaWDj2
         KC8Q4D8VNOzDb3LEaEL0oyYSI3RvrT6i5Z8CIvq8gaajytUlvlk0eJCF1L7uHcvER8yy
         3Zp9UqEKnaIQgGRMJ8cu3VpgUWJf9XiHyPfPcLLxxJJyJF+lqfi9GbHsHxAlQTqHnba+
         auhO8mJR5Odo+44I2T/s9eGv7uhPjQlxy8D6WNyFa5H769jSkglC6DiZdPci6OCiF4Xw
         HoTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686663053; x=1689255053;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c3VaEtT5WteCxvFoIQfkFSNH8Kuw+u0cPYOLrzInHJE=;
        b=NR4eQBRtHgOFlg+VctlyYp5/VoZrO7/T1ulReh08mTv4X4b5qx336xUgLyQe9Mnkec
         e+e0ySsd6X4qz2OV/8i4O60wAOIs3FBVHIgJ/jd814BVy+54T9gO+azV5cTaHnB5EcNx
         i7yIILGMw0BuL7WrK9mA3cGPVW5pGxIAGKu1XwqaJJGbmNb0TvQkbtfuha03ln8HPKir
         XWVNG4VW09lnxrnLyyPHJ/IhyKoGEQ8A7p07bhqEfwwz4Anu+Ij2mFXk9JprA/THOChl
         fmEnGuPeRFawfRzlXWxQojJLQcWkAETkxVjQOrvvAk83/pHPX6iPd+UqfSI5VDnn6n8X
         +DWw==
X-Gm-Message-State: AC+VfDw0UYRdd21WLBGvEGFe1PAoNX3FGm5NyaBNC0FlEJ/il6cyCl5g
	7507lcueYINB4SsD7Xui6y6VUeUDql1Egppu3sU=
X-Google-Smtp-Source: ACHHUZ6HSEnpis09rd9hfjvXat5W/Xk/PltAAk0woZp4SDpsjQwPxHKnmY6pRiY7es71qIKxlMTk9Mfqai6JI51sYJg=
X-Received: by 2002:a2e:804b:0:b0:2b0:489e:c457 with SMTP id
 p11-20020a2e804b000000b002b0489ec457mr4562733ljg.39.1686663053055; Tue, 13
 Jun 2023 06:30:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686657637.git.chiachiwu@google.com> <271614cc517d93437c74e12e4d86d2d3149574ea.1686657637.git.chiachiwu@google.com>
In-Reply-To: <271614cc517d93437c74e12e4d86d2d3149574ea.1686657637.git.chiachiwu@google.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 13 Jun 2023 15:30:41 +0200
Message-ID: <CANNYZj_iR4i1w9t615q3ua3jKuAUvirPVoVWA528BTsNN9YD-g@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] devtool: Fix the wrong variable in srcuri_entry
To: chiachiwu@google.com
Cc: poky@lists.yoctoproject.org, ryanoleary@google.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 13:30:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13084

Thank you, the correct mailing list for this submission is openembedded-core.

Alex

On Tue, 13 Jun 2023 at 14:56, Charlie Wu via lists.yoctoproject.org
<chiachiwu=google.com@lists.yoctoproject.org> wrote:
>
> devtool crashes when running "update-recipe" and append changes on the recipe.
> "$ devtool update-recipe -a <layer> <recipe>"
> Traceback (most recent call last):
> ...
> File "/ovss/ovss_quanta/poky/scripts/lib/devtool/standard.py", line 1636, in srcuri_entry
>     return 'file://%s%s' % (basepath, paramstr)
>                             ^^^^^^^^
> NameError: cannot access free variable 'basepath' where it is not associated with a value in enclosing scope
>
> The input variable 'fname' should have the same meaning as the variable 'basepath'.
> Modify the 'fname' to 'basepath' and solve the issue.
>
> Signed-off-by: Charlie Wu <chiachiwu@google.com>
> ---
>  scripts/lib/devtool/standard.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/lib/devtool/standard.py b/scripts/lib/devtool/standard.py
> index 852672810a..86ca77f718 100644
> --- a/scripts/lib/devtool/standard.py
> +++ b/scripts/lib/devtool/standard.py
> @@ -1629,7 +1629,7 @@ def _update_recipe_patch(recipename, workspace, srctree, rd, appendlayerdir, wil
>      else:
>          patchdir_params = {'patchdir': relpatchdir}
>
> -    def srcuri_entry(fname):
> +    def srcuri_entry(basepath):
>          if patchdir_params:
>              paramstr = ';' + ';'.join('%s=%s' % (k,v) for k,v in patchdir_params.items())
>          else:
> --
> 2.41.0.162.gfafddb0af9-goog
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13083): https://lists.yoctoproject.org/g/poky/message/13083
> Mute This Topic: https://lists.yoctoproject.org/mt/99504639/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

