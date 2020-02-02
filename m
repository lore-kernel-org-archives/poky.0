Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.2189.1580669239975868342
 for <poky@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 10:47:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KOS0gvDZ;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id l3so2460849pgi.8
        for <poky@lists.yoctoproject.org>; Sun, 02 Feb 2020 10:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=LNdG8FfkYNb1bk8+wCa3qkw2e8BbSmmKxL/q24hjq+o=;
        b=KOS0gvDZ1ueA1lxYoi818Iu6g0oJ1/4zrznioB2MlXATnztjrVl40XpUvJiDGdLaOU
         UcJmRTIrRAHKy5/T947llVO5j9yvUQbhrVyP+pL7xp8VINeuyrG3uuKfXAaz+UVZRSj4
         NjjbapiTEWePfZMPkdydRT/X0l+dPLVL1h7M8QixAoxRCBrCQcuW8aXzSNzl5J3NCedT
         c6yGpPT23rzI2fcNB4CSkQHhsirPLat8r52sTBMXZ0DFrXOEZpgam75AuqTQvmgxiyOt
         SeqB0fFtna6Sf0hPNt0xBn5yVIqgRJSRvC6QDg3s8rE3t87DTr/C3wwXgBVRBPukr/Hp
         Onig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=LNdG8FfkYNb1bk8+wCa3qkw2e8BbSmmKxL/q24hjq+o=;
        b=OY4LRFA8LFHALeQbLArm4Vu18DLzFPgi1k12FmraJmock/FYVJ5F0s43PmlrW9tYhW
         LWWK9jfCN4wGp/O9DQd9jLzxEZ3uEZYUHSRMTT15ALGtnRlq6OaWSv56a030lSe+Zp3s
         WI9dB5Fqu+d9ln6FK1I6Os4EzPkxBUEL9QVlVdYfZAe7JHJLvufOVcmMtKfUyyJR744J
         JpQTaCGwqQllEoAsx32SKD7Ac6sGimgCpd3ZBlFahO/7OJxOpI0BGMc8IrcXThuuLGRs
         OPAFsDRb3hrrHWGNd/tyP1mf7cm41RMh1zhZO/AY7Cmajw9vEHF4ZYXbyPHehYQxcBXl
         nk3Q==
X-Gm-Message-State: APjAAAVaZ74mwPkZx4wdhyQ7kZPES8ggrDlsDg30W+6zHETpk3926TVB
	fiF50wVAQat16Ukwj3uBJTaalBUk
X-Google-Smtp-Source: APXvYqy67LVgXrtjwsBcSpqYwNYZg4/AE0hmxnlo3iIV5YPNR7fIbPwaWIZYQIJ/hhqT1VxTu64uhA==
X-Received: by 2002:a65:5a48:: with SMTP id z8mr7834247pgs.157.1580669239221;
        Sun, 02 Feb 2020 10:47:19 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0::afc? ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id x11sm17049157pfn.53.2020.02.02.10.47.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Feb 2020 10:47:18 -0800 (PST)
Subject: Re: [poky] file utility killed (SIGSYS)
To: sven@svenschwermer.de, poky@lists.yoctoproject.org
References: <fXtW.1580596875003428513.iSVn@lists.yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <c82ab005-6f29-819d-43e6-a15a0f250e9a@gmail.com>
Date: Sun, 2 Feb 2020 10:47:17 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <fXtW.1580596875003428513.iSVn@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------899C0209AAB358123410E0C5"
Content-Language: en-US

--------------899C0209AAB358123410E0C5
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 2/1/20 2:41 PM, Sven via Lists.Yoctoproject.Org wrote:
> Hi,
> I noticed a regression after updating the file utility on my host system to a version that has seccomp enabled. See https://git.archlinux.org/svntogit/packages.git/commit/trunk?h=packages/file&id=a52fa0a37bad1f4ab67a934a4e0025e70aa1fd0e (I know that Arch is not officially supported). This leads to error messages that look as follows:

IIRC, the AB builds worked around this by creating a file wrapper
disabling seccomp when calling the real file  utility.

I thought it was discussed on the mailing list but I haven't found it.

- armin
>
> Command '['file', '-b', '/home/sven/mys-dac/yocto/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/initscripts/1.0-r155/package/etc/init.d/umountnfs.sh']' died with <Signals.SIGSYS: 31>.: Traceback (most recent call last):
>   File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/utils.py", line 276, in run
>     ret = self._target(*self._args, **self._kwargs)
>   File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/package.py", line 74, in is_elf
>     result = subprocess.check_output(["file", "-b", path], stderr=subprocess.STDOUT).decode("utf-8")
>   File "/usr/lib/python3.8/subprocess.py", line 411, in check_output
>     return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
>   File "/usr/lib/python3.8/subprocess.py", line 512, in run
>     raise CalledProcessError(retcode, process.args,
> subprocess.CalledProcessError: Command '['file', '-b', '/home/sven/mys-dac/yocto/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/initscripts/1.0-r155/package/etc/init.d/umountnfs.sh']' died with <Signals.SIGSYS: 31>.
>
> This error doesn't appear when running the file command from the host system. The culprit is the LD_PRELOAD of libpseudo. As soon as libpseudo is loaded, the file process is killed with SIGSYS by seccomp, see http://man7.org/linux/man-pages/man2/seccomp.2.html
> Downgrading to a file version that doesn't have seccomp enabled fixes the issue.
>
> I am on the zeus branch. This happens on today's zeus HEAD (69cfd69410).
>
> Best regards,
> Sven
>
> 


--------------899C0209AAB358123410E0C5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/1/20 2:41 PM, Sven via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:fXtW.1580596875003428513.iSVn@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">Hi,
I noticed a regression after updating the file utility on my host system to a version that has seccomp enabled. See <a class="moz-txt-link-freetext" href="https://git.archlinux.org/svntogit/packages.git/commit/trunk?h=packages/file&amp;id=a52fa0a37bad1f4ab67a934a4e0025e70aa1fd0e">https://git.archlinux.org/svntogit/packages.git/commit/trunk?h=packages/file&amp;id=a52fa0a37bad1f4ab67a934a4e0025e70aa1fd0e</a> (I know that Arch is not officially supported). This leads to error messages that look as follows:</pre>
    </blockquote>
    <br>
    IIRC, the AB builds worked around this by creating a file wrapper
    disabling seccomp when calling the real file  utility.<br>
    <br>
    I thought it was discussed on the mailing list but I haven't found
    it.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:fXtW.1580596875003428513.iSVn@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">

Command '['file', '-b', '/home/sven/mys-dac/yocto/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/initscripts/1.0-r155/package/etc/init.d/umountnfs.sh']' died with &lt;Signals.SIGSYS: 31&gt;.: Traceback (most recent call last):
  File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/utils.py", line 276, in run
    ret = self._target(*self._args, **self._kwargs)
  File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/package.py", line 74, in is_elf
    result = subprocess.check_output(["file", "-b", path], stderr=subprocess.STDOUT).decode("utf-8")
  File "/usr/lib/python3.8/subprocess.py", line 411, in check_output
    return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
  File "/usr/lib/python3.8/subprocess.py", line 512, in run
    raise CalledProcessError(retcode, process.args,
subprocess.CalledProcessError: Command '['file', '-b', '/home/sven/mys-dac/yocto/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/initscripts/1.0-r155/package/etc/init.d/umountnfs.sh']' died with &lt;Signals.SIGSYS: 31&gt;.

This error doesn't appear when running the file command from the host system. The culprit is the LD_PRELOAD of libpseudo. As soon as libpseudo is loaded, the file process is killed with SIGSYS by seccomp, see <a class="moz-txt-link-freetext" href="http://man7.org/linux/man-pages/man2/seccomp.2.html">http://man7.org/linux/man-pages/man2/seccomp.2.html</a>
Downgrading to a file version that doesn't have seccomp enabled fixes the issue.

I am on the zeus branch. This happens on today's zeus HEAD (69cfd69410).

Best regards,
Sven
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------899C0209AAB358123410E0C5--
