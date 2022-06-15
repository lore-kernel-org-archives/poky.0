Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web09.7214.1655311532859853089
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 09:45:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LCEathpp;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id u18so10906136plb.3
        for <poky@lists.yoctoproject.org>; Wed, 15 Jun 2022 09:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=0z7fcAnhzOqIJwPDOcTuvuaRmGJPsz/PVlVS3PtSmXk=;
        b=LCEathpp8UnXuyoblnXXsYfPDgjSGKX58Yu49t7akSKtr6ol84uTifV7GaPWHX5V2l
         X2qepNuIdKLc2G/Qo8ggDJtuh2ZwTJDo4OUZheyS01qs18swBUfJg9ifbBhC5GUYysVO
         yKrbKp2m+/71PnX/ceVKbTOl4kfA4fJZCxcd4tXugguEhzkv9iXQlqXBwX0XTc9K6nNf
         voR57irQ1MMgL4kqB70MvF12NTqWRJskgvN2dC8dnCJT26YBKTv+1wDMirJ0Pyw8qLck
         E34bMxIsNcenqxgxT2vFziTd8NQz6UeGjDbn6UObWyHI1Jg/zQxD+mEklOqSq0RfHfae
         ufIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0z7fcAnhzOqIJwPDOcTuvuaRmGJPsz/PVlVS3PtSmXk=;
        b=4j7Sqtvd1XaYOQjCdTvxp881MqGhZ/V5LSuR1qiUfho+biKHyhBjMyEaCpzO+WW4/1
         tdbj3qZVNNRq3im93vloDKGVwZ4ZChJa07pKimVXqNjsJGYSlgRckIIVxDikkv4BSIHv
         jdJQQaqLvKfSJHKET+o5SIWZqK0HrttpidoKYGwKkZOF/XU7Eulw4qgAOUka49aQri/J
         2nh1jDHmUZp9bQ8mun0LoHZbCzlRylfLb17wb5XxJSs3dOOeYzzJ3d9LBI3XOqNJvJs0
         Mhvu5VwN0JxdpXcqyKqUcb1yXifLd6Nme4z28Mal6s17DCFdT4SlhIIOQjsIswyfcKc5
         +mpg==
X-Gm-Message-State: AJIora+D59FK32yUNTc8MWNOryFSxBqP9sFlxS0KIrMkWR8P54BRpFtd
	So9udt+UYqyggu85uXx9D3Y=
X-Google-Smtp-Source: AGRyM1tM6Uf1cZocFPO3gIBgZ1i4hfa3s0cHOUI4tmCOBPG2V7OLiRONOOH0IkeljvS9RBMlBkDZZQ==
X-Received: by 2002:a17:902:cccf:b0:168:e13c:5cd9 with SMTP id z15-20020a170902cccf00b00168e13c5cd9mr639146ple.53.1655311532386;
        Wed, 15 Jun 2022 09:45:32 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPV6:2601:202:4180:a5c0:42e6:e3d1:3040:7c35? ([2601:202:4180:a5c0:42e6:e3d1:3040:7c35])
        by smtp.gmail.com with ESMTPSA id cp20-20020a056a00349400b0050dc7628150sm10107187pfb.42.2022.06.15.09.45.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 09:45:29 -0700 (PDT)
Message-ID: <0d1517dc-f768-3dd5-6bb5-c21e55841c3c@gmail.com>
Date: Wed, 15 Jun 2022 09:45:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [poky] [PATCH] local.conf.sample: Update sstate url to new 'all' path
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <20220615160906.99560-1-richard.purdie@linuxfoundation.org>
From: "Armin Kuster" <akuster808@gmail.com>
In-Reply-To: <20220615160906.99560-1-richard.purdie@linuxfoundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thank you.
I didn't mean to give you more work.

- armin

On 6/15/22 09:09, Richard Purdie wrote:
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>   meta-poky/conf/local.conf.sample | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
> index 4d2fa516fe1..493227470b7 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -230,7 +230,7 @@ BB_DISKMON_DIRS ??= "\
>   # Note: For this to work you also need hash-equivalence passthrough to the matching server
>   #
>   #BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
> -#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/4.0/PATH;downloadfilename=PATH"
> +#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
>   
>   #
>   # Qemu configuration
>
> 
>

