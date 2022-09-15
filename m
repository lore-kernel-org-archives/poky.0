Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web12.16259.1663279120547342374
 for <poky@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 14:58:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@waymo.com header.s=20210112 header.b=fLZCcc3d;
 spf=pass (domain: google.com, ip: 209.85.219.48, mailfrom: jcreedon@google.com)
Received: by mail-qv1-f48.google.com with SMTP id z9so3822724qvn.9
        for <poky@lists.yoctoproject.org>; Thu, 15 Sep 2022 14:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waymo.com; s=20210112;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Ly/ESW8SC6DrJD+z607ka4z8n4nDxTlMV7HvR5IXLYo=;
        b=fLZCcc3droEyHVNhBg9QPbNKO26wjsBn8O3sdcu8jvEOip7r0/spMPW0oyeh+06pD/
         m8JMaxQ5hC4GtZq6L7v2dSK9UW48CFKk8X6IIsbCfcMj6rzrrN76caNCLhHXn23axYfa
         E7lBjpcEK/JBVMFyQD0cJpHA7bGu3sa7Dt8SZ6D195mz1tkO7Uns03O+/RHM0WFSSNnk
         EwiCi63vjnzfIYitXgAYVA4glF6LE9VFuO6/CfOjEXrgaiW2MwYMB8zUVJJp3TtXEg9Z
         2/WwJcMGnbnSuNKBkxUP7YAVshj5nq46rPQl4TC8h6zA2x469RsVwCbzUP2IECI5Etu8
         1IuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Ly/ESW8SC6DrJD+z607ka4z8n4nDxTlMV7HvR5IXLYo=;
        b=Aag/8nYmlRrrYvyTEFAed0G8BviSuOgB2bRH3hNS8ndsw0Qm+st4G6z8evViRtOMzG
         Jiww7nT2MVicD4wEBut153aPjfea05sVovDDWV3egYyXBy+a3X54E8gA27rTcj8ABlqm
         sDF7ksY3dZva/WM4qOTkEOEGQ6oHmIIrUo7dFIkdrPUIHlSjGpDBylfbA0mSDzBj3I9r
         EuGIl92rNb0MMLeSUwSugeUe/SOTvygRsiAUg5CdrGWgZE0SnTyBDpX2qYbFCk6p38zl
         /4z1rCZkVjwRlM0JYYUj4JA8aOiAj0n9FA7IrWF2ni4SnLUpMApFvk+Q3/6Uq9pLWzTw
         +ilA==
X-Gm-Message-State: ACrzQf3gNxV5UCC82jLnPe7Lax33Cwd5mXinDk1bDLQRSgwD9mlP18bF
	ReDOYax+FRPoY4P+jfFCWzXXUJkf3W5O6wg3IzgQ8yVLBTA=
X-Google-Smtp-Source: AMsMyM5ZT4y7JgU6OcGNaMZgm/7Bsjb0UVbknFNKJkMSW/DYXzVxTV2JZbMvKbkVMujGjgUwIiNBHMKUyVaMTdqS7s8=
X-Received: by 2002:ad4:5fc8:0:b0:49d:24d4:dc48 with SMTP id
 jq8-20020ad45fc8000000b0049d24d4dc48mr1548389qvb.111.1663279119480; Thu, 15
 Sep 2022 14:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAEZLVp62cB9iaft34MZaV6ZRKh22K1Pv4oKtATB+p2b1p_T_dA@mail.gmail.com>
 <7e1368ddf19045b2b22ccb51dd645d86@axis.com>
In-Reply-To: <7e1368ddf19045b2b22ccb51dd645d86@axis.com>
Reply-To: jcreedon@waymo.com
From: "Jacob Creedon" <jcreedon@waymo.com>
Date: Thu, 15 Sep 2022 14:58:28 -0700
Message-ID: <CAEZLVp6h51Qsat08tehJJ1+9NjupKFz4Y9vc-8O3ZPnkpOGuGg@mail.gmail.com>
Subject: Re: [poky] [PATCH] externalsrc: remove submodule--helper list call
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 15, 2022 at 2:45 PM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> This patch should be sent to openembedded-core@lists.openembedded.org instead.

Whoops, thanks!

> I would change "submodule--helper" to "git submodule--helper" to make it
> clear that you are talking about a git subcommand.

Done
