Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web09.12256.1583500573761023565
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2020 05:16:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FIAPGoFT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id u9so2335622wml.3
        for <poky@lists.yoctoproject.org>; Fri, 06 Mar 2020 05:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=uS9EtxIpPgcXRkeBKpUp1gBi5sRaImCjDWjqJBWFJU4=;
        b=FIAPGoFTcJf4+56XeC982rYAiftxdYHHsBDOVoluyF6P0ZMuBeETDJgjlQ0mr1JyHz
         dz3ONAF3zLoKyPs3xni8MpF9t5FiL8gwfeSbmkcfnS31sfJ9ampd06AFb6gKBKOLwKPe
         s7oWG0C+mH2lZWjNECnRJm6/rVcX/XgCHPk38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uS9EtxIpPgcXRkeBKpUp1gBi5sRaImCjDWjqJBWFJU4=;
        b=jXaTNwHZyxoLinAuyQ5ucVP3lf718uULDusaiMfoKSsl3Wo/zjY80T4kKeoYaQv5UJ
         wMi7+06YIex5YOVU0s51n/4HTxsWeXchbx6y+ub4uLjo2Dls90rNc5ULYmy0+ZBi5ci0
         +rVa4ffl5iWGTVj31JOtGQZ1xaVvURFhxdwa523iikj6R9ozZblzlgCJv6TyIegawPFp
         zjTAzeph9RH3UfE7SR+iUOV8YVecYo13J0zpBIKz2R+7In+RkAnjmOrvBOiB0IpsmueE
         TOwmomg7QzE5PjYLgbc/J2tGR9dnP/YKucouXzIs3zaLYfDa3b/SqZLVzN5B8QGRD/Ly
         iSyg==
X-Gm-Message-State: ANhLgQ1B4vc/n67yM7cnzrI6+lr0tlDhV1w/954Gb4Fh0U49tFvd73wt
	YsIGM+sb+NkWsviZMdKdqf0GGw==
X-Google-Smtp-Source: ADFU+vsWkV2CGeWo6I+A9IAdVKHZ0KKpq5FMiFpegwC+A43Cel2cYJqzA4XO4SG6rnX5SK65nNqRWQ==
X-Received: by 2002:a05:600c:24d2:: with SMTP id 18mr3986563wmu.149.1583500572228;
        Fri, 06 Mar 2020 05:16:12 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id a7sm13158036wmb.0.2020.03.06.05.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 05:16:10 -0800 (PST)
Message-ID: <08be715feacac66a01abe5a544ed1b09000b3707.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] linux-yocto: drop 5.2 bbappend
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Jean-Marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>, 
	poky@lists.yoctoproject.org
Date: Fri, 06 Mar 2020 13:16:07 +0000
In-Reply-To: <20200306130305.13905-1-jean-marie.lemetayer@savoirfairelinux.com>
References: 
	<20200306130305.13905-1-jean-marie.lemetayer@savoirfairelinux.com>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-06 at 14:03 +0100, Jean-Marie Lemetayer wrote:
> The recipe for the 5.2 kernel has been dropped in this commit:
> 8efa405ee0ab9ae0e674fe8bc9551f4367b4c269
> 
> The corresponding .bbapend must be removed in order to fix this
> error:
> 
> ERROR: No recipes available for:
>   meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> 
> Signed-off-by: Jean-Marie LEMETAYER <
> jean-marie.lemetayer@savoirfairelinux.com>

Sorry, there were patches in -next for this, I've merged them.

Cheers,

Richard

