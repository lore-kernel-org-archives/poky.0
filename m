Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web08.9642.1607705242232280756
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 08:47:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qjFpWue6;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id b5so1129371pjk.2
        for <poky@lists.yoctoproject.org>; Fri, 11 Dec 2020 08:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=mqhgg8BCihACA+aWi5X8WQkm5XJBPMFeptFbWEV4SxU=;
        b=qjFpWue6lC35oC3JC6M1/gcQcTwXh5NqzazrvAVaqhlS4Y2kJvwaceCINbjj6Zw2gS
         nn2J8Ooa2Yci3U3H7c98qutpaWmBJZq9nmLLSso2rtA8OGbG80sTvSOn36CDoYOPuG9m
         w+tI1k6EQ/6whOOUZSDPjaZJF5wAM8cvUd8Z2fF9ZMMcZLqrdUWLM2AX4q/SO5TpCVGL
         CNDKhv13hbjeg82Fx7a9hJAhS951ewo/cWw1W7XR+rvHXHWc1T6YCnjDBxZIy9s2GeSi
         zWfzIhzd7avi5QBvzfJuyPDiWN0+Aoo6Oqz9PgNOZ0WpYAmc13P5Ax8YOML/kBYbNtra
         m6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mqhgg8BCihACA+aWi5X8WQkm5XJBPMFeptFbWEV4SxU=;
        b=Hvgtyo+0pfUAaLp3DZ8+Y19SrcpPW2GpmTq+VQXirOaivLhCmiQDIsrhjsxdLNK9QA
         DCVzGPP1P8kOITeOvbMikk3dHK+nr0cexjtpQdJLtzhuvEnhRyUcgIYP9vJg8OoZVRkK
         bqfhyeFwrphHAhSsgvE4NfLFbl3mppv15jdoeeeBk3MFuldnNyyYV8PX5HNQL0kd7v0g
         ahwwJNmr9AR2JU8vobslmo9Miqwk2MS9EZYAKQRCKSvSW+VTZoYtdArBMtyyjmCxPa4d
         WMXBAHgDaJyPeRc7kcFa7UjQ+WLLkGCBlSNd00vrhBNhoHPNbyWgkDK4ywtcI3fWPRwY
         4y+g==
X-Gm-Message-State: AOAM532U3xGPF0XfTf6ein7guTfsYid2/1AvaLzOkf8csAo66NuJmv4P
	N9Q6WYpZR1ysmz4JrPIFya+UnmJrFXWioA==
X-Google-Smtp-Source: ABdhPJxsPDOh9DgEGXaphb/IboL1LvVOJDzkzEMuWC78nYX5vRusrulmiujBwTJGqk9XGJZ+8ctXzw==
X-Received: by 2002:a17:90b:a4a:: with SMTP id gw10mr13595889pjb.29.1607705241276;
        Fri, 11 Dec 2020 08:47:21 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id h11sm11166594pjg.46.2020.12.11.08.47.20
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:47:20 -0800 (PST)
Subject: Re: [poky] Unable to complete even the basic tutorial about yocto #poky
To: poky@lists.yoctoproject.org
References: <36ff3eb5-6ffa-1d50-3f86-fbb74773b1b6@gmail.com>
 <14983.1607674613194222500@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <af7729c3-2d84-f280-a4ad-3496454bef96@gmail.com>
Date: Fri, 11 Dec 2020 08:47:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <14983.1607674613194222500@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/11/20 12:16 AM, arunlee@gmail.com wrote:
> On Thu, Dec 10, 2020 at 09:12 AM, Khem Raj wrote:
> 
>     is this running full desktop ?
>     can you try runqemu nographic
> 
>     it could be that graphic system is not properly set on your build host
> 
> Yes i am running Full Ubuntu Desktop.
> 

OK, and you are not using docker or some such for building/running the 
images. it seems the X server on your host could be run without MIT-SHM 
extension ( -extension MIT-SHM ) and see if that helps
something like

Section "Extensions"
     Option "MIT-SHM" "Disable"
EndSection

in /etc/X11/xorg.conf.d/no-shm.conf
> 
> 
> 
