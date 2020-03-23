Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
 by mx.groups.io with SMTP id smtpd.web11.55910.1584978711892045984
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 08:51:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e6BvjyeP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f67.google.com with SMTP id m17so8742871wrw.11
        for <poky@lists.yoctoproject.org>; Mon, 23 Mar 2020 08:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=o7+b+ow/B+pWC4cwYBYqkpeysEKQwOEkFLSA+1Y4NzU=;
        b=e6BvjyePZKSknFeqz0jkOEd0xlqJPbKIc5KtVCchguxmFScoIEJ9VtlotXqjoER2QG
         OZONDRghPEvcnrBE8FzHqs+LDEz7JXIcuWa6ay/RGB3exbNKa6JAfloGYYbu+PGFbifn
         q4vmKbC5BJI0L6iPZtDw09cvM3GFZBBlcnX5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=o7+b+ow/B+pWC4cwYBYqkpeysEKQwOEkFLSA+1Y4NzU=;
        b=eqxI4HbhFHCUntt5h7iHPRaHaVVjE/djQfPmGSykOltmPdWoaa3CxvfGRYNqibN53y
         QPCZAgskh/xZJBqDbdDIN4Q7VWyDiuaKq9JSyyGBYurovzkd5Gv15kmNPoSPTwpsXI5q
         vC9ZQQ+EuoQyPEsOmWQip5MKF6j+PAhjiB8mxqW0bccxx7ixEcQgN52E60tiBP6aFE5K
         cFqOdZx40MKOaCv24aYAZAQmqLtb0s7mhOAT9VLiPK+mMaZbw6HVo1hZxTrZcnnkfjPm
         ok5EUQiZl+E3XyqzCBBvdrysVmyvl3OLqoPtApYzWbGawcHjNFyTQNlM7khhxy7aTqNI
         JfYQ==
X-Gm-Message-State: ANhLgQ1MmB9o4HAD9Wz29DDq3MXjUEDURSVsLTOZiOYN9wyVDznGWZy2
	OBC8WkP8C2iZxnpssiOlPzkixQ==
X-Google-Smtp-Source: ADFU+vvKu296xb210slpGFUET3cbJZktg2KJ97SawlwaDY2SdUYXBkwGbweK0Sn4KZXl0Gf28bCCGw==
X-Received: by 2002:a05:6000:10e:: with SMTP id o14mr29851942wrx.231.1584978710305;
        Mon, 23 Mar 2020 08:51:50 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id c23sm24519144wrb.79.2020.03.23.08.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 08:51:49 -0700 (PDT)
Message-ID: <3637f558bddea68f993feb159d9810911ef40afb.camel@linuxfoundation.org>
Subject: Re: [poky] [RFC] poky.conf: Drop CentOS 7 from supported distributions
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, poky@lists.yoctoproject.org
Date: Mon, 23 Mar 2020 15:51:48 +0000
In-Reply-To: <20200323153336.15859-1-krzk@kernel.org>
References: <20200323153336.15859-1-krzk@kernel.org>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-23 at 16:33 +0100, Krzysztof Kozlowski wrote:
> Since Yocto v3.0, the extensible SDK cannot be built on CentOS 7 because
> of old tar:
> 
>     $ bitbake xxx-image -c populate_sdk_ext
>     Your version of tar is older than 1.28 and does not have the support
>     needed to enable reproducible builds. Please install a newer version of
>     tar (you could use the projects buildtools-tarball from our last
>     release).
> 
> Drop it then from officially supported distributions.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  meta-poky/conf/distro/poky.conf | 1 -
>  1 file changed, 1 deletion(-)

The plan is to suggest people use buildtools-tarball on such systems
and there are open bugs for this.

Cheers,

Richard

