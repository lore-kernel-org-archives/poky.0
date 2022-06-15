Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web08.7654.1655313577582514957
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 10:19:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FD95GsMt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id h19so13037110wrc.12
        for <poky@lists.yoctoproject.org>; Wed, 15 Jun 2022 10:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=g/AOacpSOhg93xWUWxEqgFmanAfuNMCNnRfuR+gW2n0=;
        b=FD95GsMtL91f0cxizimtNjwtPxyVTu/8xuiyrDFOA39ee88+3xm1MBtQ2H+cfJNI2t
         NHRZZcFQZ3X3HXgA/iX+ahn8d84jnzgUYVG06ZdiyLWWMYtV6aBwLSACcA++mheydb7h
         5+V8tUIl0cM2GjImWOl8fljmJyp1RtFFnNvo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=g/AOacpSOhg93xWUWxEqgFmanAfuNMCNnRfuR+gW2n0=;
        b=Rxbz7dIJBCkOOs/gS8PHqiNPwN6TPUMK/eVl1O3MmcKm49pvdria2tnzBIIdI/WIkH
         vQzExUemDZdSSbrzxO6t1TnT8ShC1tOdFu6yZznZqY6s8K5gz44RFIqsd9uGq3FHHF7Y
         KEbyLdj1HeP1AJ8+lVUqorBmYeulPeKACtWy5M9153Litdx+ovXv/G47rlk7FA+i4CTG
         0zhPHo76gmRXvymyEKjGNxzjwdwV65ZsrvVnAdsQ9yuPS3yw5J3BcmSUKVcOEB54HV14
         9ia2q16vrtfvxrJIX6WAtggw9/UDnoUoRkdvWetOnfVC8TyTuE7g1gUqztC5PNj/Q9H/
         7yvg==
X-Gm-Message-State: AJIora+GlaBeh9u/fmO8GmSJDsXXhGDbO10zitipLLXM14n9g2KaJa4b
	uE49yvo1MkBsEZ8IV5I4ehoryw==
X-Google-Smtp-Source: AGRyM1ugGmXCoddRyLsZzhwDG1yTx5t9/3/SE3odtbCw/2U4xVK8dd6WJ9eB559Ykc+HYgWSfeetuw==
X-Received: by 2002:a05:6000:178d:b0:20f:e7da:6a21 with SMTP id e13-20020a056000178d00b0020fe7da6a21mr754368wrg.689.1655313576101;
        Wed, 15 Jun 2022 10:19:36 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:5217:2b74:ee57:d3bc? ([2001:8b0:aba:5f3c:5217:2b74:ee57:d3bc])
        by smtp.gmail.com with ESMTPSA id t4-20020a05600001c400b0020e5b4ebaecsm15257650wrx.4.2022.06.15.10.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 10:19:34 -0700 (PDT)
Message-ID: <3523ed83b429723e9446ec5ff887652683b43369.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] local.conf.sample: Update sstate url to new 'all' path
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: akuster808 <akuster808@gmail.com>, poky@lists.yoctoproject.org
Date: Wed, 15 Jun 2022 18:19:33 +0100
In-Reply-To: <0d1517dc-f768-3dd5-6bb5-c21e55841c3c@gmail.com>
References: <20220615160906.99560-1-richard.purdie@linuxfoundation.org>
	 <0d1517dc-f768-3dd5-6bb5-c21e55841c3c@gmail.com>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2022-06-15 at 09:45 -0700, akuster808 wrote:
> Thank you.
> I didn't mean to give you more work.

You can help sort the docs out on this ;-)

Cheers,

Richard
