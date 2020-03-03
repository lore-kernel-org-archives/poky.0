Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.15.1583258928725247806
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 10:08:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h+KyaVaN;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id d8so333340pje.4
        for <poky@lists.yoctoproject.org>; Tue, 03 Mar 2020 10:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=mAm9X5HFK+BpXLRP8z3LS4TznHb1ZHyBgovyYV0OjAo=;
        b=h+KyaVaNIJw9zlXSoZ9WEh0JKatomz0RKdclciFH6MElws2gA99bA/gF+ZLunpCehc
         ji88rCNT0UbfSw5jRh7VE/Pel2iFIcVk7HCAciYiQOjURj0q0eQw53IDDK+NoZNmp2/6
         A209gyeoIw+Xh2kECKvdtiUKRrVsGkCrtfvY3c5tgQ67LbBYxC2DpgWaUaMPK4kKZLLv
         NTebCcqPl/ZRtjPKkv7l0twFAdPqJK4BKmYZHOE5MyXizmq3oJm6lOLn/SXde/EudhkM
         JBl8vOjtdcZ964d3NLUwFnt5vhkc42A55+Zct+gcmtKHybmyUj+Xmgpc1Pij901L01kX
         YZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mAm9X5HFK+BpXLRP8z3LS4TznHb1ZHyBgovyYV0OjAo=;
        b=mMnY6uhS5Pop+mABDg5X7UETIFNRjOnj9qP8CK9iYEIAgV9vIB6a1ddn4yOJBY0wDu
         zPu9QktuPfUca4isqMo9gEC6ClmiKVt6Wpj3FwJ9uFgdRXhbYXTngKTvrGDckmBF7OV1
         fCsPLfqBld+jBimhAK1mpSkzHYrM7PaXBAc8rFeqYGo7kkECQe6E0J+eecvo6trDFw93
         +o4TZtsVQqtdiNQibwxkQAAC036wQCv7k2RIdMA3yn0j7IuDwxJgWfRpf+BN9lXSUmID
         fBl2sBQtFDu3j9Zy9IzeECUIz4AkN2az5G+m8+x0+tfe6GRxvfeKi47gjS5rkfm6n1mO
         WL+w==
X-Gm-Message-State: ANhLgQ3EpqrubeFilxLn987oUNLNNuBHHQmltrsTR4/l5ItMC9vfORek
	0cVoJHkeyh+xxEE+ZdyyxR9RYHEQf1g=
X-Google-Smtp-Source: ADFU+vtAO1F3zRX3JFdlJANhP1Vl0zKHzqtuZQSUv/friRaa6KwWEbBudwgLb0U/oI11cQxokLOuzA==
X-Received: by 2002:a17:90a:8c8a:: with SMTP id b10mr5364593pjo.51.1583258927469;
        Tue, 03 Mar 2020 10:08:47 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:31ff:997f:e0c7:a3a0? ([2601:646:9200:4e0:31ff:997f:e0c7:a3a0])
        by smtp.gmail.com with ESMTPSA id p24sm26115287pff.69.2020.03.03.10.08.46
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 10:08:47 -0800 (PST)
Subject: Re: [poky] Enabling additional languages
To: poky@lists.yoctoproject.org
References: <CAGNn0hYGyrVuse7oK8vwJhkLHudYCpnfESt9uuuMChQhhKhGyQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <45f139f0-4312-0ca5-c273-03ac012ee388@gmail.com>
Date: Tue, 3 Mar 2020 10:08:46 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAGNn0hYGyrVuse7oK8vwJhkLHudYCpnfESt9uuuMChQhhKhGyQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 3/3/20 9:33 AM, R Srinivasan wrote:
> I am looking to enable ada while building the gcc cross. Can someone 
> point me to any other recipe that does something similar? Like gcc with 
> fortran.
> 

we dont have pre-existing knob for ada but it should be easy enough to 
add, please follow on the footsteps of how fortran is enabled/disabled
perhaps a starting point would be to define

ADA ?= ",ada"
then add it to
LANGUAGES ?= "c,c++${FORTRAN}${ADA}"

in meta/recipes-devtools/gcc/gcc-configure-common.inc

you might have to also take care of packaging ada runtime later in 
gcc-runtime recipe.

> thanks, srini
> 
> 
> 
