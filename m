Return-Path: <ajlennon@dynamicdevices.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 343A8CAC5A7
	for <webhook@archiver.kernel.org>; Sun, 21 Sep 2025 06:31:39 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.24836.1758436295652131831
 for <poky@lists.yoctoproject.org>;
 Sat, 20 Sep 2025 23:31:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@dynamicdevices.co.uk header.s=google header.b=e437q9Y5;
 spf=pass (domain: dynamicdevices.co.uk, ip: 209.85.221.45, mailfrom: ajlennon@dynamicdevices.co.uk)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3c68ac7e18aso1862033f8f.2
        for <poky@lists.yoctoproject.org>; Sat, 20 Sep 2025 23:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dynamicdevices.co.uk; s=google; t=1758436294; x=1759041094; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PW0+07clVhiiqea5PBsc+sqAvMa+Pd6Uq0QVTwsyGT0=;
        b=e437q9Y5VmPYPRPLF6A2gt2/FaMfbYdShagf5m1xNr235PLb6Ag4nzpHxpUr9IZjmB
         l0O0kCn6JfOn12NHe3XAtwxFUaXUKVt1H77Q7W/9tSTaJTVTpi/8rorNJLXM8D8+iPsM
         wtOuzCG9Ii61ps2v7ajhjdadJmuVtuS8VAFLv2Kg7dhj6ZDhQ/JgMJzkbFERtUne0Yy7
         x9mzWhHBkywBTb+1vd+zmZHwpm8vbY/PN+/KLF+iGz1mWCcB112XHf5rAQijPdWFscnv
         GBdJLMy2CTTx3rKhuVo0spOW99euJ8dax5sl2XbeXXhtBsma7AwQtfLq2/fxhLuIG4vD
         HuLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758436294; x=1759041094;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PW0+07clVhiiqea5PBsc+sqAvMa+Pd6Uq0QVTwsyGT0=;
        b=XFngA73egMG8LEj1qzp7swUDC49e1gYAZQ3ZxiEkxUPtwC+cMmlUJj1UEFeJQZsJhx
         ALOUHfKe2ZON1ituUk31uE68xlOaCwxTX8eYdZJ58bNnqluuCXhT5IYvkoHpzGO4+iIE
         auRcnIOAEeoiTXuMoGuASIGfDf9Qo+GygJOhFEuDMVskjD7MaT/6Bda+1qhrl2DaBc9p
         g9fb/Ax0liSqPNxPodu9QNyGO3KCZ+4VuNPbJ3BJ1eyHeqrPB4cKsp8AcoV5uEqHBqJy
         XpT0mVlpgiwVpYjIBj31qCirfbzfVp3OQLcRqBA3D0D16tRk3DyPOvAkUKsLO81EEHNS
         QwrA==
X-Gm-Message-State: AOJu0Yxxcdc9Mh5zbAFwFdrrPGOxno+C4bhrlSQFRpoayxViFcDL43vV
	cQSfVHVZ8x+MBt5cjE/05DcKJE7sfT/jSzXmPQzMCuiO5Ugh6y5yI+hC+41fYyfca+FbFH09ods
	7qgCtvovVPw==
X-Gm-Gg: ASbGncvoQDa2CKb9xCjKAnrv39MmbIdDVVFHnCj4apIwRoJf0Qgc2GM4d/77NyGCo0l
	h+pFGoC+fmCCdWXY8FpWPF0oqFsV6aSnkN2iOya20kOFLEIav7y/fAgPQr9/H3eYA7Hyj8agQ7b
	PAcWmHGVMeRkPVX96c12xa89J4oKhmBXbgob7oaxY2t6m+g59/XRtxiQyhuWy6R5glgb5uZkpJn
	mWIGSChZW71ECXkzKnEE6ghHqLYvDkyNldtymwqT4ZbdhmfOOOvk1CIYMa1XxvJPyBS/yjkZXW0
	iQxNu2q/Q6+la4bjojFqb2rjVe8F2k0av2YeJ3ofFWXQOOGmrbLJhS86CCd0BqDtIF0uBDfznVx
	C4xIac5S4zhWqcxqi5aKASQFCYMcvg5BOG9GZPBqlFv9n2l3TxeghCk8FPhTNwXKODpZrq57suY
	AGkDba6YKACHHxJTYlvrbRUQ==
X-Google-Smtp-Source: AGHT+IFPe7th7wH6+CcdT11d8qTAEwwNB28KAV7l5cRLedrltqqVEbPnnwaXoGuyROkUFhwRdVpgvQ==
X-Received: by 2002:a5d:65ce:0:b0:3f1:2d30:cb5c with SMTP id ffacd0b85a97d-3f12d30cd53mr4861839f8f.23.1758436293043;
        Sat, 20 Sep 2025 23:31:33 -0700 (PDT)
Received: from [192.168.0.223] (cpc110923-live30-2-0-cust643.17-2.cable.virginm.net. [86.8.146.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fbf53cesm15725210f8f.59.2025.09.20.23.31.31
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Sep 2025 23:31:31 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------tncVP1XrbnKS15Il0Yvr0YjA"
Message-ID: <b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk>
Date: Sun, 21 Sep 2025 07:31:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] meta-tensorflow scarthgap commit sha change
To: poky@lists.yoctoproject.org
References: <EHVw.1758123487737695311.tSlM@lists.yoctoproject.org>
 <CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com>
Content-Language: en-US
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 21 Sep 2025 06:31:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13752

This is a multi-part message in MIME format.
--------------tncVP1XrbnKS15Il0Yvr0YjA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 17/09/2025 16:43, Martin Jansa via lists.yoctoproject.org wrote:
> Unfortunately yes see 
> https://lists.yoctoproject.org/g/yocto-patches/message/2202
>
> On Wed, 17 Sept 2025, 17:38 Sourabh Banerjee (QUIC) via 
> lists.yoctoproject.org <http://lists.yoctoproject.org>, 
> <quic_sbanerje=quicinc.com@lists.yoctoproject.org> wrote:
>
>     Hello all,
>
>     The meta-tensorflow, scarthgap branch seems to have undergone git
>     commit history rewrite!!
>
>     Earlier this commit "tensorflow.inc: add write permission to 2
>     more directories"
>     SHA was c382865 now it seems to have change to 1a0c74c.
>
>     Is anyone else observing this issue?
>

Yes it's broken my build here too!


>     Thanks.
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13748):https://lists.yoctoproject.org/g/poky/message/13748
> Mute This Topic:https://lists.yoctoproject.org/mt/115293519/900307
> Group Owner:poky+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/poky/unsub [ajlennon@dynamicdevices.co.uk]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------tncVP1XrbnKS15Il0Yvr0YjA
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
    <div class="moz-cite-prefix">On 17/09/2025 16:43, Martin Jansa via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="auto">Unfortunately yes see <a
href="https://lists.yoctoproject.org/g/yocto-patches/message/2202"
          moz-do-not-send="true" class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto-patches/message/2202</a></div>
      <br>
      <div class="gmail_quote gmail_quote_container">
        <div dir="ltr" class="gmail_attr">On Wed, 17 Sept 2025, 17:38
          Sourabh Banerjee (QUIC) via <a
            href="http://lists.yoctoproject.org" moz-do-not-send="true">lists.yoctoproject.org</a>,
          &lt;quic_sbanerje=<a
            href="mailto:quicinc.com@lists.yoctoproject.org"
            moz-do-not-send="true" class="moz-txt-link-freetext">quicinc.com@lists.yoctoproject.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote"
style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello
          all,<br>
          <br>
          The meta-tensorflow, scarthgap branch seems to have undergone
          git commit history rewrite!!<br>
          <br>
          Earlier this commit "tensorflow.inc: add write permission to 2
          more directories"<br>
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
      <pre wrap="" class="moz-quote-pre">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#13748): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/13748">https://lists.yoctoproject.org/g/poky/message/13748</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/115293519/900307">https://lists.yoctoproject.org/mt/115293519/900307</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------tncVP1XrbnKS15Il0Yvr0YjA--

