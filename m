Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.14216.1581871883006653840
 for <poky@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 08:51:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXuqmfC+;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id gv17so6140664pjb.1
        for <poky@lists.yoctoproject.org>; Sun, 16 Feb 2020 08:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=9MX0X0TQeMwUnzBM+rYwOfpqRENpNlHBfJ8u94kjnsI=;
        b=tXuqmfC+H+/L02fSecSwmNzlv9P6iIn2k7KxkAubC5VC79I2ahvkkBxnYX2YpdhjuE
         3IaO2E1wgl2UmOanJRlnqAGBu0iAUqmlfTSV/X8Dj+DQCBXPjtKF1yF0Cs1ggJvCjcfk
         Dw2EnB+RrccKCIovPBXPA+FmkHDYe34zXmhzPpvSPlQR12dSP7nfoGREbdz1b/zeu0GP
         YUSknWdgxbuEynD4G6AVfQsBqOXLpNyvRA28PbpW6H/+7580lWmYfRYF4+ECXVkPoVLW
         OehoEnBDsL7CRbbbR3PwVBZz64D7PRufbWz+UHUmIevdDNxQa9c4GrELi5M8Uy9C28SL
         sXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=9MX0X0TQeMwUnzBM+rYwOfpqRENpNlHBfJ8u94kjnsI=;
        b=MMMqY5LkThMcPuXSHi06g4x0KajhTwCUTXQZt+iTkICoJe6orIkPZvYT8/IAg5T1UB
         Mu71ENYJhrHhL68KP8BUgxe4z58PSvL6eM25xkfhMGR8wUSQ5JioiNhoaFvQyAfjyjnn
         /j62WvPU4GOIxAeJhKtejn+m6ha34WdCr+FT9tzluX1UKLFX8m+kbBDW6yiA/oLyx4Uz
         LLTJ3uArzStg5tNHvc3k7w73Nffdw+jU4Odk8QkSzzOH3urdnIWvx7/ezcMbbNn30rhT
         09wAfJHYNba8dBzwy2hmde7bmNfRxxl8lNzHI+B+X/SOPBuCdVOu1ecNgUDQttGWKLYf
         q2ZA==
X-Gm-Message-State: APjAAAWCmGRA0UF/JiaWAV/f+YVInkStFx3XIJ/Uf4OcwKtGXnfyJiFJ
	v3ETSO3qAV3NqTKw+pqQD4/sETz8
X-Google-Smtp-Source: APXvYqxUV16S5oXtqo9IOY0bvPM30qnRUoi8A0jOsw3S6OYyQ5YamZKsdY6xDeViL49G5zT7HIXoYQ==
X-Received: by 2002:a17:902:343:: with SMTP id 61mr12587134pld.332.1581871882085;
        Sun, 16 Feb 2020 08:51:22 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:9144:9b3e:b52:fa29? ([2601:202:4180:a5c0:9144:9b3e:b52:fa29])
        by smtp.gmail.com with ESMTPSA id a36sm14219688pga.32.2020.02.16.08.51.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2020 08:51:21 -0800 (PST)
Subject: Re: [poky] poky master and master-next branches disappearing
To: Paul Barker <pbarker@konsulko.com>, Adrian Bunk <bunk@stusta.de>
Cc: poky@lists.yoctoproject.org
References: <20200216103649.GA30014@localhost>
 <CAM9ZRVubDwFT44ukmupT1usMh+1WYQq8ODAWxNCsoEf7ejmqbw@mail.gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <3ac9d529-7083-13cb-572b-d25b28be3795@gmail.com>
Date: Sun, 16 Feb 2020 08:51:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVubDwFT44ukmupT1usMh+1WYQq8ODAWxNCsoEf7ejmqbw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------46861C4C6EBB0605B3664103"
Content-Language: en-US

--------------46861C4C6EBB0605B3664103
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 2/16/20 3:04 AM, Paul Barker wrote:
> On Sun, 16 Feb 2020 at 10:37, Adrian Bunk <bunk@stusta.de> wrote:
>> For the last ~ 2 days the poky master and master-next branches
>> are disappearing sometimes:
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/heads
> This was discussed yesterday:
> https://lists.yoctoproject.org/g/yocto/topic/master_master_next_missing/71297752?p=,,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,71297752

I am also seeing it on meta-security

- armin
>
> Thanks,
> Paul
>
> 


--------------46861C4C6EBB0605B3664103
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/16/20 3:04 AM, Paul Barker wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAM9ZRVubDwFT44ukmupT1usMh+1WYQq8ODAWxNCsoEf7ejmqbw@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Sun, 16 Feb 2020 at 10:37, Adrian Bunk <a class="moz-txt-link-rfc2396E" href="mailto:bunk@stusta.de">&lt;bunk@stusta.de&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
For the last ~ 2 days the poky master and master-next branches
are disappearing sometimes:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/heads">https://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/heads</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
This was discussed yesterday:
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/topic/master_master_next_missing/71297752?p=,,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,71297752">https://lists.yoctoproject.org/g/yocto/topic/master_master_next_missing/71297752?p=,,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,71297752</a></pre>
    </blockquote>
    <br>
    I am also seeing it on meta-security <br>
    <br>
    - armin
    <blockquote type="cite"
cite="mid:CAM9ZRVubDwFT44ukmupT1usMh+1WYQq8ODAWxNCsoEf7ejmqbw@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

Thanks,
Paul
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------46861C4C6EBB0605B3664103--
