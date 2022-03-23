Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.7762.1648033226336874499
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 04:00:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YdDHz4a5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id u3so1564427wrg.3
        for <poky@lists.yoctoproject.org>; Wed, 23 Mar 2022 04:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=YVVciS3tnF3MlKnVaRxsNZy1cbkz0kkS9DK6pB34kL4=;
        b=YdDHz4a5SXiuI17UXFH8ue7/rm3GkCKdqHhXRvEoEjuzwfCW7XoZmc8W5Bd/48oCia
         onLVuaW6ejtE7vcjrHGJkBPv72xJF2NAI4S4lbk2PRrZ0ERkMwuW6S66g+THAt49xlfY
         tbbrVPflwMt4VXRkVCfeRKWUh32Ez1flVQ0Zc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=YVVciS3tnF3MlKnVaRxsNZy1cbkz0kkS9DK6pB34kL4=;
        b=ofB6gn4dplUP/v+favUKNkW4OUC9BI6BJB9silqVBrrd5sBLARsfGaWUZ33GLLfzfF
         XEp28aBx8XmpdiojkdvYrx3oG9Sq8cHrDl8AH60FkKxF+Lt8zJ2JYNx+nH9PdrR/1e6B
         JG1Wmc7kw7VkgiILqSv9JOmnGN0JnXDCZgJFqWenTDGunw7EcSApY9BRo4qvzPpGNcSw
         QaKWMKnACKuegox2Krx6ISTdkZQ3ncMSnMY9bebrkRcebJ2KYrcRdPOf0U4M40I9Q9Tv
         ELeQPdvIddU8OvHR7iuEzrA8hQTS0ixL5zlv66ycnvSkW0aC2kVXTE5IFfn3unbDVjIX
         ujrQ==
X-Gm-Message-State: AOAM531S5KdwlAX0NuTALTxweVfoh6w+tnxnubhED/3kV1MiGJeZzWhS
	oKymXwqT97WxLWQYxUrgieeE61HMICNKBimQ
X-Google-Smtp-Source: ABdhPJwH0UyC38LtSijzTsK9pzOtJZlgoB9Xkrl3n3x+R6c/nlZEiRWSxdRkIVUub43XcVnooFUsmw==
X-Received: by 2002:a5d:60c9:0:b0:204:aca5:8379 with SMTP id x9-20020a5d60c9000000b00204aca58379mr7023472wrt.341.1648033224979;
        Wed, 23 Mar 2022 04:00:24 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:aaba:716e:9c38:ad87? ([2001:8b0:aba:5f3c:aaba:716e:9c38:ad87])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b0037bb8df81a2sm4414822wmp.13.2022.03.23.04.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 04:00:24 -0700 (PDT)
Message-ID: <96d2ead58457f34b4c2651cc0cbbb015eac0fcd6.camel@linuxfoundation.org>
Subject: Re: [poky] git lfs support
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Jon Richardson <jon.richardson@generac.com>, 
	"poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Cc: Steve Sakoman <steve@sakoman.com>
Date: Wed, 23 Mar 2022 11:00:23 +0000
In-Reply-To: <MW4PR15MB447343CF64A820024D3AF8D69C189@MW4PR15MB4473.namprd15.prod.outlook.com>
References: 
	<MW4PR15MB447343CF64A820024D3AF8D69C189@MW4PR15MB4473.namprd15.prod.outlook.com>
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2022-03-23 at 00:54 +0000, Jon Richardson wrote:
> Hi,
> 
> I added lfs=1 to my SRC_URI that uses a git repo. I see code for supporting lfs,
> but I don't see a git-lfs checkout being called. Does yocto not support lfs?
> I'll have to had a postfunc to do the git-lfs fetch otherwise the files aren't
> checkout out properly. What is the purpose of lfs=1 in SRC_URI? It even checks
> for the existence of git-lfs yet doesn't use it anywhere that I can see. 
> 
> I'm using dunfell (52b59e884110b2d48ad83438eef1fed7a28f01cf).

This could be a bug in dunfell, does:

https://git.yoctoproject.org/poky/commit/?id=45c02843d181b5f1872ad30f4d847c395233a676

help fix the issue?

Cheers,

Richard

