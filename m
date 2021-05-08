Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.3611.1620457543774835981
 for <poky@lists.yoctoproject.org>;
 Sat, 08 May 2021 00:05:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QvJTS4ln;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: hannandor@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id p12so14421745ljg.1
        for <poky@lists.yoctoproject.org>; Sat, 08 May 2021 00:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=XxdrvuIpXHpiStcPjMo2OFOStrROoHuOh+hW6b4uOGQ=;
        b=QvJTS4lnS+enIrFOZlkdUv2l0pG4E1VtfljFCmIqxOwfAfqnvWiyguSazm0T0WLvHb
         GNAYbdmjhg19Gp6ZKeA5dPYDwrWo2xNK3I6m6lUw2iFvLNXMC5+55RJEmjcwrq1Bm26d
         DyNglxetumAF9awCttPLpmQKGhLtilj5wo0ALvQWMzXrGC8mI6JECscgpQPG1ZrcZtZs
         w6EmwvmnejuCmfc9W3DSmYEkFDn2rk9N9PqNAGtlZYyGFrHnT0SWtK/xuBnf4N1NJ2/P
         UQgJSKGWKVtYK9XmOaCoitsqfsSWpVag+y5Nm4Mnr4SGAl1LR0HLoUhYNnCvk+MF/x9e
         nZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=XxdrvuIpXHpiStcPjMo2OFOStrROoHuOh+hW6b4uOGQ=;
        b=fFvOQQFYdAmUKrpGv6Uh+prbmzMbK3GGDQBTO81nM7Ai3eraKXWKwc1UXr6OWwmWXg
         SiETzL1/zVcxAzXR6OebtXD1R3sxZNLZrmzC0SxyJyXTbQaS1x3zCPg7oYWM3+aKBQAS
         tfo8LWuAA1TT4BcVroFXXwSNBG/rZpjjgCclUPMa6SebGVkSmQ6ZTWt/qt357uVzJJK0
         2OaWP4pzoHITV2YFeBvMN9JcvEdZdzW9COeRx25gTUd30gvFbbmr8EX6a8sUA0vHsWv3
         23eOdCZ251k6z/3ifnIxPCLuX0vA9yAiP9jg3GNtLOjHF27rQQLasI1C7Dw8X0E5DLbr
         YM2g==
X-Gm-Message-State: AOAM532+HPEYP5/J6kr+R1CKgW+HnR2S5tCqFk0bgpJDqkDw0rUtXL3i
	hCTuQ6DDfTksD8B7S4Nr7Z4dHYEO2Pj0TSk9
X-Google-Smtp-Source: ABdhPJyWAZKaouk8HNYJgQfe86K+d6F8G3Ae1TOGXT+H8Jq2cb0z97ceHz1P+oUQzmRGuBKC1ryGBA==
X-Received: by 2002:a2e:974d:: with SMTP id f13mr11181600ljj.258.1620457541498;
        Sat, 08 May 2021 00:05:41 -0700 (PDT)
Return-Path: <hannandor@gmail.com>
Received: from localhost.localdomain (87-93-179-53.bb.dnainternet.fi. [87.93.179.53])
        by smtp.gmail.com with ESMTPSA id w5sm2207483lji.138.2021.05.08.00.05.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 May 2021 00:05:40 -0700 (PDT)
Subject: Re: [poky] Building core-image-minimal fails
To: Gregg Nemas <gnemas@gmail.com>, Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org
References: <xhBQ.1620428935778891624.YkUE@lists.yoctoproject.org>
 <CANNYZj8ySD-VwVWoq_1M-g6B8QHsg5Qd6GeVK6KBu7srfo_GUA@mail.gmail.com>
 <CAKGn-5-xDXCjb35NNvD65QaUo+id-x_cGhg+Owb_+AtgHx9WxQ@mail.gmail.com>
From: "Nandor Han" <hannandor@gmail.com>
Message-ID: <d353621e-e361-cef0-db38-daa0a0baf6bf@gmail.com>
Date: Sat, 8 May 2021 10:05:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAKGn-5-xDXCjb35NNvD65QaUo+id-x_cGhg+Owb_+AtgHx9WxQ@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------38EF284FFCC841C58DFBBADB"
Content-Language: en-US

--------------38EF284FFCC841C58DFBBADB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/8/21 7:41 AM, Gregg Nemas wrote:
> I uninstalled the lm_sensors-devel package from my Centos host. I then
> re-ran bitbake (I did not do it from scratch though). The build failed
> in a different way this time, with a "file busy" error. I've attached
> the configure and compile log files from the first run, and the
> "prepare" log file from the new run.
>
> On Fri, May 7, 2021 at 7:28 PM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> The build output should refer to log.do_compile, can you please attach that, and log.do_configure from the same directory, so it's possible to see why mesa is trying to use libsensors?
>>
>> As a quick fix, can you delete the libsensors development package from your host?
>>
>> Alex
>>
>> On Sat, 8 May 2021 at 01:09, <gnemas@gmail.com> wrote:
>>> I am new to Yocto. I thought a good way to start would be to try to build a stock image. The "core-image-minimal" recipe seemed loke a good choice. However, it did not go well. The build ends in an error (see below).
>>>
>>> Here are the steps I took.
>>>
>>>      sudo yum install <Centos 7 package list shown in Yocto Reference Manual>
>>>
>>>      git clone -b hardknott git://git.yoctoproject.org/poky.git
>>>      cd poky
>>>
>>>      # My host is a Centos 7 machine, so I installed the buildtools SDK
>>>      scripts/install-buildtools
>>>      . buildtools/environment-setup-x86_64-pokysdk-linux
>>>
>>>      . oe-init-build-env
>>>
>>>      bitbake core-image-minimal
>>>
>>> After a couple of hours, the build terminated with an error:
>>>
>>> ERROR: Task (virtual:native:/data/poky/meta/recipes-graphics/mesa/mesa_21.0.1.bb:do_compile) failed with exit code '1'
>>>
>>> Poking around in tmp I found the file tmp/log/cooker/qemux86-64/console-latest.log
>>>
>>> This file contained the actual compilation error that caused the build failure:
>>>
>>> mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: fatal error: sensors/sensors.h: No such file or directory
>>>
>>> How can I fix this? Should I been choosing a different recipe? I am surprised that what is supposed to be a minimal bootable image has a 3D graphics library (mesa) in it. I am also surprised that a 3D graphics library needs access to a sensors library.
>>>
>>> Any help appreciated.
>>>
>>> Thanks,
>>>
>>> Gregg
>>>
>>>
>>>
>>>
>>>
>>> 
>>>
Hi,

Do you get that error constantly? Did you try to reboot the computer or 
restart the build. This error seems to be generated
when you write a file (executable in our case) which could be in use in 
the same time. If there is a hanging process that still use that
rebooting the computer will help. However, it could be also a sign of a 
race situation.

Nandor



--------------38EF284FFCC841C58DFBBADB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 5/8/21 7:41 AM, Gregg Nemas wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKGn-5-xDXCjb35NNvD65QaUo+id-x_cGhg+Owb_+AtgHx9WxQ@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">I uninstalled the lm_sensors-devel package from my Centos host. I then
re-ran bitbake (I did not do it from scratch though). The build failed
in a different way this time, with a "file busy" error. I've attached
the configure and compile log files from the first run, and the
"prepare" log file from the new run.

On Fri, May 7, 2021 at 7:28 PM Alexander Kanavin <a class="moz-txt-link-rfc2396E" href="mailto:alex.kanavin@gmail.com">&lt;alex.kanavin@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
The build output should refer to log.do_compile, can you please attach that, and log.do_configure from the same directory, so it's possible to see why mesa is trying to use libsensors?

As a quick fix, can you delete the libsensors development package from your host?

Alex

On Sat, 8 May 2021 at 01:09, <a class="moz-txt-link-rfc2396E" href="mailto:gnemas@gmail.com">&lt;gnemas@gmail.com&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">
I am new to Yocto. I thought a good way to start would be to try to build a stock image. The "core-image-minimal" recipe seemed loke a good choice. However, it did not go well. The build ends in an error (see below).

Here are the steps I took.

    sudo yum install &lt;Centos 7 package list shown in Yocto Reference Manual&gt;

    git clone -b hardknott git://git.yoctoproject.org/poky.git
    cd poky

    # My host is a Centos 7 machine, so I installed the buildtools SDK
    scripts/install-buildtools
    . buildtools/environment-setup-x86_64-pokysdk-linux

    . oe-init-build-env

    bitbake core-image-minimal

After a couple of hours, the build terminated with an error:

ERROR: Task (virtual:native:/data/poky/meta/recipes-graphics/mesa/mesa_21.0.1.bb:do_compile) failed with exit code '1'

Poking around in tmp I found the file tmp/log/cooker/qemux86-64/console-latest.log

This file contained the actual compilation error that caused the build failure:

mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: fatal error: sensors/sensors.h: No such file or directory

How can I fix this? Should I been choosing a different recipe? I am surprised that what is supposed to be a minimal bootable image has a 3D graphics library (mesa) in it. I am also surprised that a 3D graphics library needs access to a sensors library.

Any help appreciated.

Thanks,

Gregg




</pre>
          <br>
          <fieldset class="mimeAttachmentHeader"></fieldset>
          <pre class="moz-quote-pre" wrap="">


</pre>
        </blockquote>
      </blockquote>
    </blockquote>
    <p>Hi,</p>
    <p>Do you get that error constantly? Did you try to reboot the
      computer or restart the build. This error seems to be generated<br>
      when you write a file (executable in our case) which could be in
      use in the same time. If there is a hanging process that still use
      that<br>
      rebooting the computer will help. However, it could be also a sign
      of a race situation.</p>
    <p>Nandor<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------38EF284FFCC841C58DFBBADB--
