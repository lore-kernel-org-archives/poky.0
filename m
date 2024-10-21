Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77632D0E6DD
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 10:10:47 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.42638.1729505443311042209
 for <poky@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 03:10:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C4pIs/R+;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f6e1f756so4907308e87.0
        for <poky@lists.yoctoproject.org>; Mon, 21 Oct 2024 03:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729505441; x=1730110241; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xh/Ol7CvzUJ6gXAwRXFiPNoJvurvI8BVGcHrT95wpWA=;
        b=C4pIs/R+M3z4AX9WJlvSszcSxVyJQVWT0OeaxVYhsb7fnrygsJnEKOfkYeMK2AVUgH
         UGgjUFJeWxrBlx/+zcE8iRQijwQ4gQn++fsu67CRfoVlN/OZekKaK2UMaGDbb2XAsJyr
         RWzosBoEwLOYIZgEVlYiqchDUJiLJh6BxCfQMf/kXQ1UslztiPMtIxyqXUo9gshaJ6fa
         nE3K45N4HZPIG/+H26APXxlvDK9QjMxe6MIBsXJ820HgXAU7qR+jfXD2NG9Aq49vs1yv
         hZleKWIqyp4KRvb8rpJ83uQedIfzHumeDWEO7glqX+22dYptxbSgDWS7zxs2Gj6ofOm7
         FHMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729505441; x=1730110241;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xh/Ol7CvzUJ6gXAwRXFiPNoJvurvI8BVGcHrT95wpWA=;
        b=m9o3vNqRDSp+apOcIjeIqZTg9UOohJqGNq0N/YffTdf3/qVHu2iZPy4LgEO+FqWWxm
         srApnR/YgYNZbTVlpafRYp8Wb8CkPIycYM8UgZZSWkorPN7EYrURIxtSb5Iu2t7qbhRT
         DCvWDB+LpIFZ69+jBs+HdrF+KEyEYr23ddzlDZxJcXQkCszyMfZ6UCsI9jhU2nGrKDmu
         E8NdwWwyPjF6ZU1YZj2QT1UjrOfLpCHY3sH7RMIqRVIZ1TQTw/s0eiBEzTRF36niu6Ps
         3zyn1ottsEswplPCH00DZCtaqjxyuzYz80seACKxJchN1HgvXCWqXzPzAsKta1HSScTb
         +86Q==
X-Gm-Message-State: AOJu0Yzmk/bE7SVtWeBSeNGlmXAvNgKC9c05IDqPjlzp5DkG1SV7xwch
	iOExhJUXwtUilFFfFvFQwq9FFVx9Jpmx+4hQADCzGEy//UoU16QruDlekiy7HBEQSdk5MwxeeQj
	FYaxjkyi2lZwzZIwI/nbdcHTpNQ0=
X-Google-Smtp-Source: AGHT+IHrXHrjhnU6+Xidkn9naPYHdLjYsecdTo3eKFms3Atva4xd0/N+B3Pe/fUFDWz05ivZY5fk1Gp4qXmj84l2DLU=
X-Received: by 2002:a05:6512:2356:b0:539:e317:b05f with SMTP id
 2adb3069b0e04-53a15229d00mr5343665e87.28.1729505441109; Mon, 21 Oct 2024
 03:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAL-AFs1GQ+TFJwSax6s2CoVbqBou=BzcJNGYcNFvpffyCpziwQ@mail.gmail.com>
In-Reply-To: <CAL-AFs1GQ+TFJwSax6s2CoVbqBou=BzcJNGYcNFvpffyCpziwQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Oct 2024 12:10:29 +0200
Message-ID: <CANNYZj9dDARjDGLH-6f_h2ANahUGBtEzq-BsiAndVA-jC4=2QA@mail.gmail.com>
Subject: Re: [poky] [PATCH] feat: don't use sub-processes to filter FIXME
 variables and
To: michael.krasnyk@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 21 Oct 2024 10:10:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13459

Thanks, the correct mailing list for this is openembedded-core.

Alex

On Sat, 19 Oct 2024 at 00:32, Michael Krasnyk via
lists.yoctoproject.org
<michael.krasnyk=gmail.com@lists.yoctoproject.org> wrote:
>
> From a75040b2a197c0ddb55a047dcc0d834606ddf284 Mon Sep 17 00:00:00 2001
> From: Michael Krasnyk <michael.krasnyk@gmail.com>
> Date: Fri, 18 Oct 2024 23:50:12 +0200
> Subject: [PATCH] feat: don't use sub-processes to filter FIXME variables and
>  use only Python
>
> ---
>  meta/classes-global/staging.bbclass | 26 ++++++++++++++++++--------
>  1 file changed, 18 insertions(+), 8 deletions(-)
>
> diff --git a/meta/classes-global/staging.bbclass b/meta/classes-global/staging.bbclass
> index c0f5e3ebb6..896592fb7e 100644
> --- a/meta/classes-global/staging.bbclass
> +++ b/meta/classes-global/staging.bbclass
> @@ -176,16 +176,26 @@ def staging_copydir(c, target, dest, seendirs):
>          seendirs.add(dest)
>
>  def staging_processfixme(fixme, target, recipesysroot, recipesysrootnative, d):
> -    import subprocess
> -
>      if not fixme:
>          return
> -    cmd = "sed -e 's:^[^/]*/:%s/:g' %s | xargs sed -i -e 's:FIXMESTAGINGDIRTARGET:%s:g; s:FIXMESTAGINGDIRHOST:%s:g'" % (target, " ".join(fixme), recipesysroot, recipesysrootnative)
> -    for fixmevar in ['PSEUDO_SYSROOT', 'HOSTTOOLS_DIR', 'PKGDATA_DIR', 'PSEUDO_LOCALSTATEDIR', 'LOGFIFO']:
> -        fixme_path = d.getVar(fixmevar)
> -        cmd += " -e 's:FIXME_%s:%s:g'" % (fixmevar, fixme_path)
> -    bb.debug(2, cmd)
> -    subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
> +
> +    import re
> +
> +    fixme_vars = {re.escape("FIXME_" + fixmevar): 'd.getVar(fixmevar)' for fixmevar in ['PSEUDO_SYSROOT', 'HOSTTOOLS_DIR', 'PKGDATA_DIR', 'PSEUDO_LOCALSTATEDIR', 'LOGFIFO']}
> +    fixme_path = {"FIXMESTAGINGDIRTARGET": recipesysroot, "FIXMESTAGINGDIRHOST": recipesysrootnative, **fixme_vars}
> +    target_re = re.compile(r"^[^/]*(?=/)")
> +    fixme_re = re.compile("|".join(fixme_path.keys()))
> +    fixme_files = set()
> +    # Read fixme files
> +    for path in fixme:
> +        with open(path) as fixme_file:
> +            fixme_files.update(target_re.sub(target, line.strip()) for line in fixme_file.readlines())
> +    # Fix files in-place
> +    for path in fixme_files:
> +        with open(path, "r+") as fixed_file:
> +            text = fixme_re.sub(lambda m: fixme_path[re.escape(m.group(0))], fixed_file.read())
> +            fixed_file.seek(0)
> +            fixed_file.write(text)
>
>
>  def staging_populate_sysroot_dir(targetsysroot, nativesysroot, native, d):
> --
> 2.39.3 (Apple Git-146)
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13458): https://lists.yoctoproject.org/g/poky/message/13458
> Mute This Topic: https://lists.yoctoproject.org/mt/109092733/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

