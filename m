Return-Path: <ajlennon@dynamicdevices.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E396CAC5A7
	for <webhook@archiver.kernel.org>; Mon, 22 Sep 2025 07:10:37 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.45970.1758525036603855606
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Sep 2025 00:10:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices.co.uk header.s=google header.b=f8L7eVt9;
 spf=pass (domain: dynamicdevices.co.uk, ip: 209.85.221.53, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3e9042021faso3181947f8f.3
        for <poky@lists.yoctoproject.org>; Mon, 22 Sep 2025 00:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices.co.uk; s=google; t=1758525035; x=1759129835; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ifpi6K0SoEjbYlNoxCqyTswbHnErR3rezXBk8ZXkCFo=;
        b=f8L7eVt9TW2FBh8D/CZm6+92t8roQIBYd0CZw1f5LsO68UL+cVGxJpBxQz2rPe/Yh+
         XPh7CoQzxWymM3Xew6rxWKqyQ0E3rO+6A3oK7njc0Ynpz91zp59w/i/JYMOftMesQQ8S
         i2Xgp8X9StDRoZUsABofjQjPxWrJvMJaETjygOq4DVWic9a5ZsLs197yrCt0F2uj4Fmn
         lcoFR+NsOK9bZH/eLS0eypaoA3NqVuInsv9T4k+3d+GH5D1qwiBlgEvP5RxZIFmfCOR/
         tuLq9Dqh6LwGVS8MTor1No7vbNjbliFV1d7/fNFhKUq0Ar7pWxAo0CWX+XfJVIKj0CSx
         ddZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758525035; x=1759129835;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ifpi6K0SoEjbYlNoxCqyTswbHnErR3rezXBk8ZXkCFo=;
        b=fniHYEhFSLTPIxKZsN09jB9tRBN64qqNHESSFBOWcljYQepP1NexbG93/w3NiKSQOa
         ZDMFMr8mJIIoIk4Dc+0mqnh2YXdJK7jI+UPq5AllFzEHRQIZ8NrnmAcx3G6p//2nUbTn
         JWuN9uquJxFjX27Y4yvoETqF+tyGtqKZlllOcp2NKO0iziePt/EU2mzihVk8sAKzN5GK
         cJLgFk3inybHZyS5pSkaZ1aADPihhAAnHkoKtfmlWRxSvi8yMxDqdlDfyRRzvFDg4ADj
         07d0O3ov3c4PAMU09ItndJWhnqQ2do04AD/GHwnyYhvWxHH+TDl9k2VpmcwsIRnFC6lN
         tl1w==
X-Forwarded-Encrypted: i=1; AJvYcCUeClW+raJMvJ0tXyWCIS35w6IkvsebRuFqEEjK3Bn3/50GzZU4/cuHfPph3NRHGvNc8ocK@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw7ljmahMnKZYYlDP2IIRJyBJz5kXS5Z5XxYLEWc9F6HoPt7fGm
	TcZoOlqwf/DmieCIVHEE74DL9rUctfr0lVhukhHgbwiFU6OG0W4dZBupj/uO7b7I3mybG6oy6FY
	+MmC1+rLAVZne
X-Gm-Gg: ASbGncsKMTlr8wAv5D8V4vJ4o/01UDEjpBAVl3InW327649eNx2+V0FtAJ/Ma7AcC8F
	FYLQs/0izLb863SvkCjjbkmEPGIQFhlN6t/I+qMMqzsPqCiDr6Sal9Wz2J5ioqQKisjvsXfvGO0
	2h4rMHLtKg0FEI2TCTHZZIXq1dAggPF/vtaQ0s9yyYqmbU5WCUZ1V74UzsTE0aVqfa3JtwGrDOf
	M+V4aL84WsOHZtIGO3Z59HD4cxQvq/3tUhPgoRuDmq9Fx81P9osjwu4WCsW+HDYOOWxPEVd9Lcr
	BHpNZHVCY0mqUj3yUtFn1ZAN+oorfwMQ1OafoMFLDqLra4LUI5pC6UMULh3pTsmRmhJDxgG7Fgb
	vJwlJkZuBKnPn+PtlfjVctgH5N6/zVM6r6enfbvuqvoblPLRh6F1c/xeX9OgGCvxEp4MTxLlfdM
	Ts32jdyrKSSRbkg1+j6g8Zbw==
X-Google-Smtp-Source: AGHT+IFPs8JPSie3D9p+BpHSCiDbaCxnzZ2289kfoJlHjHYKxQRA0UNlf53zqSzfSosii3iH6ZjdOw==
X-Received: by 2002:a05:6000:290a:b0:3ee:1461:165f with SMTP id ffacd0b85a97d-3ee84171bdamr8996492f8f.31.1758525033810;
        Mon, 22 Sep 2025 00:10:33 -0700 (PDT)
Received: from [192.168.0.223] (cpc110923-live30-2-0-cust643.17-2.cable.virginm.net. [86.8.146.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f32640f49sm126257015e9.9.2025.09.22.00.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 00:10:33 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------RTUBi99uQy7TCM5rSnVBT7XY"
Message-ID: <9f699006-213f-4f09-812b-ff1af6911c24@dynamicdevices.co.uk>
Date: Mon, 22 Sep 2025 08:10:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] meta-tensorflow scarthgap commit sha change
To: Hongxu Jia <hongxu.jia@windriver.com>, poky@lists.yoctoproject.org
References: <EHVw.1758123487737695311.tSlM@lists.yoctoproject.org>
 <CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com>
 <b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk>
 <66e212e0-9ff6-498c-9073-c035f2632384@windriver.com>
Content-Language: en-US
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <66e212e0-9ff6-498c-9073-c035f2632384@windriver.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Sep 2025 07:10:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13754

This is a multi-part message in MIME format.
--------------RTUBi99uQy7TCM5rSnVBT7XY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 22/09/2025 08:05, Hongxu Jia wrote:
> On 9/21/25 14:31, Alex J Lennon via lists.yoctoproject.org wrote:
>> **
>> *CAUTION: This email comes from a non Wind River email account!*
>> Do not click links or open attachments unless you recognize the 
>> sender and know the content is safe.
>>
>>
>> On 17/09/2025 16:43, Martin Jansa via lists.yoctoproject.org wrote:
>>> Unfortunately yes see 
>>> https://lists.yoctoproject.org/g/yocto-patches/message/2202
>>>
>>> On Wed, 17 Sept 2025, 17:38 Sourabh Banerjee (QUIC) via 
>>> lists.yoctoproject.org <http://lists.yoctoproject.org>, 
>>> <quic_sbanerje=quicinc.com@lists.yoctoproject.org> wrote:
>>>
>>>     Hello all,
>>>
>>>     The meta-tensorflow, scarthgap branch seems to have undergone
>>>     git commit history rewrite!!
>>>
>>>     Earlier this commit "tensorflow.inc: add write permission to 2
>>>     more directories"
>>>     SHA was c382865 now it seems to have change to 1a0c74c.
>>>
>>>     Is anyone else observing this issue?
>>>
>>
>> Yes it's broken my build here too!
>>
>>
> Sorry for the error, I will make sure it doesn't happen again next time
>
> //Hongxu
>
Thanks Hongxu :)

>>>     Thanks.
>>>
>>>
>>>
>>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13752):https://lists.yoctoproject.org/g/poky/message/13752
>> Mute This Topic:https://lists.yoctoproject.org/mt/115293519/3617049
>> Group Owner:poky+owner@lists.yoctoproject.org
>> Unsubscribe:https://lists.yoctoproject.org/g/poky/unsub [hongxu.jia@eng.windriver.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>
--------------RTUBi99uQy7TCM5rSnVBT7XY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 22/09/2025 08:05, Hongxu Jia wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:66e212e0-9ff6-498c-9073-c035f2632384@windriver.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-cite-prefix">On 9/21/25 14:31, Alex J Lennon via
        lists.yoctoproject.org wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk"> <strong>
        </strong>
        <div
style="border:solid #9c6500 1pt;padding:2pt;background:#fcfc03"><strong><class="msonormal"
              style="line-height:11pt"><span
                style="font-size:11pt;color:#000">CAUTION: This email
                comes from a non Wind River email account!</span></class="msonormal"></strong><br>
          <class="msonormal" style="line-height:10pt3"><span
              style="font-size:10pt;color:#000">Do not click links or
              open attachments unless you recognize the sender and know
              the content is safe.</span><br>
          </class="msonormal"></div>
        <div>
          <p><br>
          </p>
          <div class="moz-cite-prefix">On 17/09/2025 16:43, Martin Jansa
            via lists.yoctoproject.org wrote:<br>
          </div>
          <blockquote type="cite"
cite="mid:CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com">
            <div dir="auto">Unfortunately yes see <a
href="https://lists.yoctoproject.org/g/yocto-patches/message/2202"
                moz-do-not-send="true" class="moz-txt-link-freetext">
https://lists.yoctoproject.org/g/yocto-patches/message/2202</a></div>
            <br>
            <div class="gmail_quote gmail_quote_container">
              <div dir="ltr" class="gmail_attr">On Wed, 17 Sept 2025,
                17:38 Sourabh Banerjee (QUIC) via <a
                  href="http://lists.yoctoproject.org"
                  moz-do-not-send="true">lists.yoctoproject.org</a>,
                &lt;quic_sbanerje=<a
                  href="mailto:quicinc.com@lists.yoctoproject.org"
                  moz-do-not-send="true" class="moz-txt-link-freetext">quicinc.com@lists.yoctoproject.org</a>&gt;
                wrote:<br>
              </div>
              <blockquote class="gmail_quote"
style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                Hello all,<br>
                <br>
                The meta-tensorflow, scarthgap branch seems to have
                undergone git commit history rewrite!!<br>
                <br>
                Earlier this commit "tensorflow.inc: add write
                permission to 2 more directories"<br>
                SHA was c382865 now it seems to have change to 1a0c74c.<br>
                <br>
                Is anyone else observing this issue?<br>
                <br>
              </blockquote>
            </div>
          </blockquote>
          <p><br>
          </p>
          <p>Yes it's broken my build here too!</p>
          <p><br>
          </p>
        </div>
      </blockquote>
      Sorry for the error, I will make sure it doesn't happen again next
      time<br>
      <p>//Hongxu<br>
      </p>
    </blockquote>
    <p>Thanks Hongxu :)<br>
    </p>
    <blockquote type="cite"
      cite="mid:66e212e0-9ff6-498c-9073-c035f2632384@windriver.com">
      <p> </p>
      <blockquote type="cite"
cite="mid:b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk">
        <div>
          <p> </p>
          <blockquote type="cite"
cite="mid:CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com">
            <div class="gmail_quote gmail_quote_container">
              <blockquote class="gmail_quote"
style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                Thanks.<br>
                <br>
                <br>
                <br>
              </blockquote>
            </div>
            <br>
            <fieldset class="moz-mime-attachment-header"></fieldset>
          </blockquote>
        </div>
        <br>
        <fieldset class="moz-mime-attachment-header"></fieldset>
        <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#13752): <a class="moz-txt-link-freetext"
        href="https://lists.yoctoproject.org/g/poky/message/13752"
        moz-do-not-send="true">https://lists.yoctoproject.org/g/poky/message/13752</a>
Mute This Topic: <a class="moz-txt-link-freetext"
        href="https://lists.yoctoproject.org/mt/115293519/3617049"
        moz-do-not-send="true">https://lists.yoctoproject.org/mt/115293519/3617049</a>
Group Owner: <a class="moz-txt-link-abbreviated moz-txt-link-freetext"
        href="mailto:poky+owner@lists.yoctoproject.org"
        moz-do-not-send="true">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext"
        href="https://lists.yoctoproject.org/g/poky/unsub"
        moz-do-not-send="true">https://lists.yoctoproject.org/g/poky/unsub</a> [<a
        class="moz-txt-link-abbreviated moz-txt-link-freetext"
        href="mailto:hongxu.jia@eng.windriver.com"
        moz-do-not-send="true">hongxu.jia@eng.windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
      </blockquote>
      <p><br>
      </p>
    </blockquote>
  </body>
</html>

--------------RTUBi99uQy7TCM5rSnVBT7XY--

