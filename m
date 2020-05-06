Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web12.3266.1588795572940329784
 for <poky@lists.yoctoproject.org>;
 Wed, 06 May 2020 13:06:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EvK+RuN3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id s8so3673328wrt.9
        for <poky@lists.yoctoproject.org>; Wed, 06 May 2020 13:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=wUrg5l4F283Lo6PMoSzlpj9dTgDAQAgmMyaI+aWUyro=;
        b=EvK+RuN3WMIDdwGHJbUgMiUcrSiqTrGH4FtJiR5WBtzHQbsb3RiHjkfgmbOqe/oC4p
         72/VYfUzJTyx+dorAg0ngokGlmQkdS0hXxfyonsJUn/otTU5DVGuhlBkmSt2YzLeoJ3J
         uBaMp15iizY7/cIW1dRD64boEjSV4XACKRzuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=wUrg5l4F283Lo6PMoSzlpj9dTgDAQAgmMyaI+aWUyro=;
        b=HGcvk8Md18yGfstzjVF/1R8UFlz4DxP1jb5RXzOEWqRYr8MtXtjx0lXWVjg2yAwdKT
         Tcv1l7X2ZG96pgWqrsPqhqVeLQZxgHNEzJPW//WakOYmITRqG645UHe7r39vehS4sV9K
         NcYfaP8nvsBa0ssGNaQXROGEiSGyNdTRSw7oTJHRPgGBECocVA/GHo/o17VRUGE/DtRT
         AMpQGLf/CnA8eInqIhFL4YAMcRhgddAApfmvspqly9bRHAFqZu8Fb9nGdAbL3HWutXDA
         X6ACZGFhMaCMrLxbgDEdeWAvy/0Kz+8/emSKSIziikiGytV1gzRYpwon+9xeLTGJD4YF
         6DkA==
X-Gm-Message-State: AGi0PuY3L7L7+AMpa2tBkQ/qco9983f+4aaqCdv3dGwjxXK9qexmkKX0
	fwKrYSjpqkT5Pv2/fqmKNgPE1fX4/Rs=
X-Google-Smtp-Source: APiQypIoFgd7vSpk4Fm0kMJekKp5tjbA+LCt0Hz52zAOcDbZj0HZ4wmWpyXDLnFa4lZGsa4JdD3qDw==
X-Received: by 2002:a5d:65ce:: with SMTP id e14mr11254640wrw.314.1588795571129;
        Wed, 06 May 2020 13:06:11 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id c16sm1533333wrv.62.2020.05.06.13.06.09
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 13:06:10 -0700 (PDT)
Message-ID: <cad03693767a1b333239aecdbc122fb393b7c552.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH][scripts] Allowing to work ksize also with built-in.a
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Wed, 06 May 2020 21:06:08 +0100
In-Reply-To: <8218.1588793839732862661@lists.yoctoproject.org>
References: 
	<4d94832cb83c1801cd6574c68c63e1b8ff0cc33f.camel@linuxfoundation.org>
	 <8218.1588793839732862661@lists.yoctoproject.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-05-06 at 12:37 -0700, jan wrote:
> Should I send this patch to and poky and openembedded-core, or just
> openembedded-core?
> The script I'm patching is part of poky (
> https://git.yoctoproject.org/git/poky)

To openembedded-core. See README.poky for more information. Basically
its a merged repository so any change in openembedded-core falls
through to poky.

Cheers,

Richard

