Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.20208.1583615877947112651
 for <poky@lists.yoctoproject.org>;
 Sat, 07 Mar 2020 13:17:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ujLgbzJf;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id u68so2221857pfb.2
        for <poky@lists.yoctoproject.org>; Sat, 07 Mar 2020 13:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=pX8Lkj7Bx097ZYQf1Ut6cyiLfckLEkxTrVAuYL5NFl8=;
        b=ujLgbzJfgD+azfmtILa9Samq31eSajoUmAK5ZdQ7lqGThRlDThypnoUjQe9iCzAggB
         4LI6Ki0BbqdIz+Owg5YT82VHGmBlHWtNIz/VnmR+EKcGlpmFkYlwPBV+fdW8cICJ/Sut
         UvjFCVSc64qme0Ylf1yFfEI2Nl3D5bM32IfZBkZibdDjrKBG57IHl9VQgqh5RgUxQeT7
         L4NdWR5SGHQJBNir1tEpYnTsp1w9Q44nqevNxMa5h8DXgSdEboMV2uzJ+L3cuBVZu50K
         jsHOl2ZFNKHJRdQLQ3Lsk8VFhBU/eAmS5LVtWwMhWebV/mTDE8jdFUMGSFma5+/u0Sct
         PHCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=pX8Lkj7Bx097ZYQf1Ut6cyiLfckLEkxTrVAuYL5NFl8=;
        b=Xd16AwuJbPVxRC4sNrgSW0tac71KnYxTglSjkqG9NmbH6r9BL8kvY7lq835uY8BXCm
         ML5ZENS90AouAkdDqiRAt6SMzstlmH8Yj4XAk4XBkdh60/9hv5uhEutSffl6K4suqCvP
         QPZ9aCLUx3rVpZP8mZ49CAoN35K2nRS7fFXPFObkVNY9B0FEE9jj8sFLusFnBj5YQTi9
         AX5Qg6rCEujto4rM+z6/YJ6IgvFu0KxaoDauwIRs0ns7eQKtdC00gz6oxL3iUdYau0IF
         sOHu6fJzi3Q655AkO+l4aJIYFyG6XqIsvppHLxir0Ai8XSNjumxePTzILZi5gSBwhJsF
         1trg==
X-Gm-Message-State: ANhLgQ3nB3bLYMzRD0jSgDsZzSQrBvgO/MOCj0UIad3SMYuMP/3qyPkO
	qp+Y+b/sv46vjKYC6Qt+bQIJCsCt
X-Google-Smtp-Source: ADFU+vtVX5HCi5tt1gKg1thgUF31casM61j3++u1Z0KL8mFtTfm0Kva8EmOJnLix3ss0mTjFOkSlrw==
X-Received: by 2002:a63:fd0f:: with SMTP id d15mr5887316pgh.26.1583615877149;
        Sat, 07 Mar 2020 13:17:57 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:6c62:7a1c:e667:70? ([2601:202:4180:a5c0:6c62:7a1c:e667:70])
        by smtp.gmail.com with ESMTPSA id l21sm13448149pjt.7.2020.03.07.13.17.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 13:17:56 -0800 (PST)
Subject: Re: [poky] SATO terminal takes 4 min to launch
To: Ashish <ashish.emailaddress@gmail.com>, poky@lists.yoctoproject.org
References: <20200225084036.GL104502@korppu>
 <2090.1583614665600586860@lists.yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <030d1b68-df2b-8438-ca95-6adea0cd13f0@gmail.com>
Date: Sat, 7 Mar 2020 13:17:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2090.1583614665600586860@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------90386E2A085815D74441E956"
Content-Language: en-US

--------------90386E2A085815D74441E956
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 3/7/20 12:57 PM, Ashish wrote:
> Hi Group Members ,
>
> Further debugging on same i observed that :
> 1) After board booted , if i try to launch the matchbox-teriminal by
> double clicking on the icon
> is takes around 3-4 min to give terminal .
>
> 2) But if i *run startx application specifically *and then run the
> matchbox-terminal it starts in seconds . If member's can share any
> input / feedback on same it would be helpful. Or if i am missing any
> obvious things here ( as this is my first project on QT graphics ) 

can you provide dmesg or any other console messages. I bet there is some
info there.

- armin
> Thanks Ashish
>
> 


--------------90386E2A085815D74441E956
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/7/20 12:57 PM, Ashish wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:2090.1583614665600586860@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <span style="white-space: pre-wrap;">Hi Group Members , </span><br>
      <br>
      <span style="white-space: pre-wrap;">Further debugging on same i observed that :</span><br>
      <span style="white-space: pre-wrap;">1) After board booted , if i try to launch the matchbox-teriminal by double clicking on the icon </span><br>
      <span style="white-space: pre-wrap;"> is takes around 3-4 min to give terminal . </span><br>
      <br>
      <span style="white-space: pre-wrap;">2) But if i <strong>run startx application specifically </strong>and then run the matchbox-terminal it starts in seconds . 

If member's can share any input / feedback on same it would be helpful. 
Or if i am missing any obvious things here ( as this is my first project on QT graphics ) 
</span></blockquote>
    <br>
    can you provide dmesg or any other console messages. I bet there is
    some info there.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:2090.1583614665600586860@lists.yoctoproject.org"><span style="white-space: pre-wrap;">
Thanks 
Ashish </span>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------90386E2A085815D74441E956--
