Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web12.142.1609783330219976813
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 10:02:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NcPnhV8V;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id r7so33059670wrc.5
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 10:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=8hD1bh+VSNhYVth4uwyNK6mFoBToBJQnaiK2QjMaPgo=;
        b=NcPnhV8VCe9Qi71DTkflbkGP2/UWnBoWvjytdqAWrxTW2hvfvRL8WoqUKxqoIp5sZ6
         DOa+4XJ81Vz4TKtC1T6lS2BASD2OC5/S0wW8M390G8AR/kj8HaAeH4SEERhiovqQEXpH
         9NgBO3b6DBnzV+cgxlkxRcN+n8NgQlkVhpevQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8hD1bh+VSNhYVth4uwyNK6mFoBToBJQnaiK2QjMaPgo=;
        b=LfP+bvWPvb1KxMXc++CI0rNrWLsywa48t+LVtfirUs96zC0YvZXjpavKyoNRpkslvR
         EjJJg6K/91zXkUn1BTFycrQN9teRlb5HNw9nIl3SusgkZUgcrg0EAyDMfep/dpBv8iqp
         MarAvDvi5zSJujW51pk6CdtCl1ANzaB5hb3ZEUxRK4IPo5Q/ZGKrky+0nCSN/cy+tA3G
         vriaFmeDPFxpyztQE3LypaB/eQ8sFbJoImxZQcntuXCTiuRBrk7RTJn8oepzTnVKUbsv
         OeSTmT6Rg5HbYgPlUMtHc28+f3zjqAubzXa0xQpnM7swirR96cqIf26sygEvGvowRk0u
         9NDA==
X-Gm-Message-State: AOAM532I/ZvN5nKBwGOx+xLiAa/e9kVJ8C2GGamrBD8TGEbJqzooueLC
	OBfd0K00FD2uBTfk4T3xRVUtVQ==
X-Google-Smtp-Source: ABdhPJzMVRh5tFdfEwf/xOSeSJt6lqfh4/imuQfOG3MQbtu7gj9Pb8hMIn2WWxTmk+iEKCxD8E869Q==
X-Received: by 2002:adf:fc48:: with SMTP id e8mr79710330wrs.11.1609783328620;
        Mon, 04 Jan 2021 10:02:08 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:4767:d28d:f91a:aa32? ([2001:8b0:aba:5f3c:4767:d28d:f91a:aa32])
        by smtp.gmail.com with ESMTPSA id z63sm182609wme.8.2021.01.04.10.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 10:02:08 -0800 (PST)
Message-ID: <c1f0211ce522552065b53581c76f990e53c5f532.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 4/5] wic: fix 'founded' typo
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Vivien Didelot <vivien.didelot@gmail.com>, poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Date: Mon, 04 Jan 2021 18:02:07 +0000
In-Reply-To: <20210104173741.1070515-4-vdidelot@pbsc.com>
References: <20210104173741.1070515-4-vdidelot@pbsc.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-01-04 at 12:37 -0500, Vivien Didelot wrote:
> Replace 'founded' with 'found'.
> 
> Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
> ---
>  scripts/lib/wic/plugins/source/bootimg-partition.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py
> b/scripts/lib/wic/plugins/source/bootimg-partition.py
> index 138986a71e..5dbe2558d2 100644
> --- a/scripts/lib/wic/plugins/source/bootimg-partition.py
> +++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
> @@ -141,7 +141,7 @@ class BootimgPartitionPlugin(SourcePlugin):
>                      break
>  
>              if not kernel_name:
> -                raise WicError('No kernel file founded')
> +                raise WicError('No kernel file found')
>  
>              # Compose the extlinux.conf
>              extlinux_conf = "default Yocto\n"
> 

Thanks, I've queued the other patches in this series. This one is
against the oe-core repository and needs to go to the openembedded-core
list. It was also fixed back in August so I'm guessing this was against
an older branch?:

http://git.yoctoproject.org/cgit.cgi/poky/commit/scripts/lib/wic/plugins/source/bootimg-partition.py?id=f39694933ace695e2dfe917c5ac74349a2e00409

Cheers,

Richard



