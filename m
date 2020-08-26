Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.6960.1598423602323927318
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 23:33:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GzAJtz7I;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id v15so542654pgh.6
        for <poky@lists.yoctoproject.org>; Tue, 25 Aug 2020 23:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=jteSLcTEJ5odXRwLGEA007r0DjcITiq386CEDuMizz0=;
        b=GzAJtz7IhnVs+f5ZX8oC1a+tG8NioT3bQ3PMGqexIlxOaNiNOChiPxOm5qSEcwWX+I
         IB+deDo0MpnDXvJgRTMs7S83R9ma1eNu61IcqhJ2fMPJTSLyAZ4/ifK9qqEIGajYnGbQ
         WVtnyYxG9oIQiqPxjlNW+Q3pGksPfyYMPXa7XU2PYzJXhMBbNHpO/KyaYiiMCEQtWTwY
         lB3yTUocunWM/4ZzrUHMYgfV7nfNYFaHHS0a1zAYKUDe25o/vSVqmBl0mu8g/9LhJQTs
         +9ndZnr+0/+m5Tk3adl4WfMFEL6sLUsMXeD0mocXkQuPpQgOesCT9eEc+LNSt6Wxxia0
         GsHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jteSLcTEJ5odXRwLGEA007r0DjcITiq386CEDuMizz0=;
        b=HvIVFf3XNjil0XuvjLDEX0iWcyhk1Sr4tXH15QQwSSh/f/B2eEp6HH6m35GCmFet/6
         gLEeKsC7HAk8a0UZdOvZQOEq11ph7+US6Uikrc8P9PtXDeeGQQT4LnM9pw1WlU+5BYB1
         Wo45MNMp7A2xgWhxzZra6pCFFhh1Ybv6GPCxrPBbY+84SZzcayOIbZSG/EDNUwbS+Njm
         ulJ7eiEsZRAZAc01iTNhal9+MGCVzUIF21Fhhz7P70PCY8bpJi3OXZAL572iDJALPdEG
         j7KN3qWSBOJtNUfY7WS3bxzvlL8IFtAenEIHnDJ9d3qrWCFZy9DAMHQafa5VmVLKVww5
         NTYw==
X-Gm-Message-State: AOAM5333IrX91OUiZ3GKatoexzGqynYsAAA3QEpp9bb+m6IYt4UkHBjL
	+vepGwhIxy3nsfiaNSJHX6OPVagFqmO8Dw==
X-Google-Smtp-Source: ABdhPJw/xjaUgNGJNCKrjtrS1q9QDaUMC98BH4X06YeYB1xy/czTTiOcI6PaqM9a0525RcJ5kmkivA==
X-Received: by 2002:a63:700e:: with SMTP id l14mr9088117pgc.22.1598423601616;
        Tue, 25 Aug 2020 23:33:21 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:e8b6:ed97:4b5a:9e46? ([2601:646:9200:4e0:e8b6:ed97:4b5a:9e46])
        by smtp.gmail.com with ESMTPSA id a10sm1447507pfn.219.2020.08.25.23.33.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 23:33:21 -0700 (PDT)
Subject: Re: [poky] Macros from autoconf-archive are missing in SDK
To: Robert Tiemann <rtie@gmx.de>, poky@lists.yoctoproject.org
References: <9200244e-9b0b-078a-c092-4e615960fba8@gmx.de>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <a778233f-cf7e-9e64-64f5-16e2c32cafdd@gmail.com>
Date: Tue, 25 Aug 2020 23:33:20 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <9200244e-9b0b-078a-c092-4e615960fba8@gmx.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 8/25/20 1:15 AM, Robert Tiemann wrote:
> Hi,
> 
> I have a few recipes depending on autoconf-archive (using
> DEPENDS = "autoconf-archive"). The image is built correctly; the various m4
> macros from autoconf-archive, however, do not end up in the SDK.
> 
> The SDK used to be complete in jethro, but now in dunfell these files are
> missing. I *think* the line
> SSTATE_EXCLUDEDEPS_SYSROOT += ".*->autoconf-archive-native"
> in meta/conf/layer.conf is causing this, so I have tried adding
> autoconf-archive-native to the DEPENDS variable of my recipes. This didn't
> work, and now I don't know what else I could try.
> 
> What can I do to add the m4 files from autoconf-archive to the SDK?
> 

perhaps you need TOOLCHAIN_HOST_TASK_append = " 
nativesdk-autoconf-archive" in config metadata somewhere like local.conf 
or site.conf

> Thank you,
> Robert
> 
> 
> 
> 
