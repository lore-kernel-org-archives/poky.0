Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7012.1598423210052338032
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 23:26:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H5ChC2ZI;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0287E0209C; Tue, 25 Aug 2020 23:26:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.6 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45907E0205B
	for <poky@yoctoproject.org>; Tue, 25 Aug 2020 23:26:48 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id l191so538560pgd.5
        for <poky@yoctoproject.org>; Tue, 25 Aug 2020 23:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Lb6KtEIQkVB41kg/4LTnTwQ6wXs9uy+Hs/CHsnKU6Lg=;
        b=H5ChC2ZIMgqsFWlRGeVyBHLBXGTwU3mhv9RmQkrVWlsghv0wYbUeImKtcp2LBFEdYI
         xGfgGUu60zFDE34RXQqBd659JwT4sOazphYQ76D30SwHTpaZ2yD5qg+OcvHLDSzDgh73
         ZbjUJO/Fki06DKZo80Ev8W02LUfmIrxgLr7Hgc3JO3Qed1AsYFC5o3ni9AfndRoFbZVm
         0EuyTq4o+3OQySmdPqSoGbW98chilnBthWE086HMaLSJY454GsLnbVG9l7zKYDbPBXfM
         LyInqCXlGXOfzqlFc7jFr0F+fctsBbwrgMdR2fg7kdG4jEv1A3f+AhywScksofsdNIlv
         Wj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Lb6KtEIQkVB41kg/4LTnTwQ6wXs9uy+Hs/CHsnKU6Lg=;
        b=ggVK0Sc7J5rNnMDUVpJt5dPEnKm5SEVHM1a0QrpivUNekUwEJzLgIFDDG7ciJRU5eJ
         qNABnK6Q0Ig6I6VSi6zJi1QBsJ3EbnVPVI94KC5/hGjPZDH/fgaTaMAfD03E/lNcbk48
         KZeuRnTIYPAfvusfmGb+BY3831kZs3rNgsyYZvRvT4G3VBiJsEpGs9ITx6jjECIzSJxh
         yaNiPwh+vzN+C08RoqeOLEoxbTUZyIenAbJnokoijRImroHjpcTuy0qeezIulLgl9TnZ
         IZXVgvK8z/FskooQ5Co27okohQ9qnlHgvnoKY+An+HSXk8JpuxfcZUwfenpy95JIAl86
         NWjA==
X-Gm-Message-State: AOAM533pHYUZDoDITMluAP69bM51APMTm0BVu3gOrZvtCo4E1dY2DYsP
	XjC2Xh2BNaVOXNwk6iDZtBXoIAVoqR6lIg==
X-Google-Smtp-Source: ABdhPJx4lLFSJLLv5w88U9gj5okvYaK0IXGsrSF/0p9I1WXPXrpVVKNNI9nL+cVfo3TMeu+rCHCsQw==
X-Received: by 2002:a63:7a5b:: with SMTP id j27mr7385913pgn.78.1598423207767;
        Tue, 25 Aug 2020 23:26:47 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0:e8b6:ed97:4b5a:9e46? ([2601:646:9200:4e0:e8b6:ed97:4b5a:9e46])
        by smtp.gmail.com with ESMTPSA id 135sm1417054pfy.61.2020.08.25.23.26.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 23:26:47 -0700 (PDT)
Subject: Re: [poky] Self hosting yocto
To: R Srinivasan <s@srin.me>, poky@yoctoproject.org
References: <CAGNn0haYVPiMw2pv=sjJZknP_0b6twV5iQy+eso4rEMYu+pS5w@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <019f54d9-924f-e6f9-f138-0bb4a4122dc4@gmail.com>
Date: Tue, 25 Aug 2020 23:26:46 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAGNn0haYVPiMw2pv=sjJZknP_0b6twV5iQy+eso4rEMYu+pS5w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 8/24/20 2:50 PM, R Srinivasan wrote:
> I have a strange situation (I think).
> 
> I have purchased a SOC board. The goal is to run a custom system built 
> with yocto eventually when it ships.
> 
> For starters, it runs Ubuntu. Question is if I am able to do a yocto 
> build on it, can I just boot off the image generated? Should I partition 
> the SSD in any special way? I do have the option of USB sticks - so will 
> a bootable USB stick be a better option?
> 

yocto has a cross build system, so while you can build images on the 
same host it will build it as if it was meant for target system which is 
not build host and surely build and target can be same. you can build 
wic images which can be flashed directly into SSD and this should take 
care of partitioning etc. via wic template.


> Thanks for your pointers/help.
> 
> Srini
> 
> 
> 
