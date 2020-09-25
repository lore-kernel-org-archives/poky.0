Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.6760.1601036706033956846
 for <poky@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 05:25:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@groskopf-embedded-com.20150623.gappssmtp.com header.s=20150623 header.b=huBIv7c7;
 spf=none, err=SPF record not found (domain: groskopf-embedded.com, ip: 209.85.208.169, mailfrom: paul@groskopf-embedded.com)
Received: by mail-lj1-f169.google.com with SMTP id v23so2332769ljd.1
        for <poky@lists.yoctoproject.org>; Fri, 25 Sep 2020 05:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=groskopf-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:references:to:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=6vFxQQObpjw9+DBR7z92AVJ3Nd5PHNRotFowXaNwGBU=;
        b=huBIv7c7ZcKY/gTBD2caxamlK4x3XxZyL+wQJs96I2UAsXw1U8lyBwl1pzlcvosQX1
         syv9Ycj7aNnzFalbsjFUk+LT0Zr6OjnMQJDzgRTA8HBuwMstvky4oWZdcCx12W/qnJCt
         m52NBoVzPJnFprz2lzVCm+bSMDM1kCQN1kkhz/dxbMWAYmYIPsT6MCaIpjUpdjg+4/jb
         Wmgv5XmHCzwzdarM3OJBzuaD6MEE801c3lgjBu5kxNUCYqqJOdhJB9jNACdqyqoHgWj3
         KUKPp3tFAepkAqKokMGuydwsXJS1P8yLwBB4gI1bj5PzHc8ZKoVExBhAxl7kbRG8W7B9
         DsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:references:to:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=6vFxQQObpjw9+DBR7z92AVJ3Nd5PHNRotFowXaNwGBU=;
        b=L20fs5t1jmVXCgZ4j78KM64q1XBvreMMrVLQXtrUT+hk+Fb1DwTJUeBU3Dc92gY8UX
         76lOR+d4CeHrs0PpzPDxjbtM7I/jqZ3SnSGCfMUwd0JJ4rMDnkpUy8Jt/uhBau9E+Nc9
         WgXuKbehC8hdl1XWIrCpk6m5H13aqrYQsDx2vUZE54FgoHoOkX3dio9UZkKZpKGdrxKO
         Ex/Xx5BFbgkj0l5oj8LNZK0oSF++Li1Fdsijzz4+X7BZoAlCDNR3SZTVL6TvaYk2uV/t
         oKyrDKfhM4l6TMDkkPw5iWyBxYKzSsIshP67/SuKHSMmmKCKbYEV4uJDja6+nEwX8VzX
         7/hw==
X-Gm-Message-State: AOAM530+v30Lgg16V/zBpAcKP+L3ff3AE7oYpoH5ibpGQq74namGkRxN
	aTho0U3eR9GXEqzmmLBT6bIJqrDlBU3D+zeW
X-Google-Smtp-Source: ABdhPJw0dPdqosgRVXED8TZwrG7oIbJ9oVHTy0WOKQx5P4Kc5VFTb95Moerfgn7jCihrq1ZyOCP1PQ==
X-Received: by 2002:a2e:81d7:: with SMTP id s23mr1383342ljg.69.1601036703471;
        Fri, 25 Sep 2020 05:25:03 -0700 (PDT)
Return-Path: <paul@groskopf-embedded.com>
Received: from [172.25.32.70] (27-reverse.bang-olufsen.dk. [193.89.194.27])
        by smtp.gmail.com with ESMTPSA id q24sm2278201ljm.60.2020.09.25.05.25.02
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:25:02 -0700 (PDT)
Subject: Header only packages not included when populating the SDK
References: <f4cadfd0-a78a-89bc-4900-925ecee08ecf@groskopf-embedded.com>
To: poky@lists.yoctoproject.org
From: "Paul Groskopf" <paul@groskopf-embedded.com>
X-Forwarded-Message-Id: <f4cadfd0-a78a-89bc-4900-925ecee08ecf@groskopf-embedded.com>
Message-ID: <780021b6-e4a4-1140-9e02-97011a6ae116@groskopf-embedded.com>
Date: Fri, 25 Sep 2020 14:25:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f4cadfd0-a78a-89bc-4900-925ecee08ecf@groskopf-embedded.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I have a setup where I'm building a SDK for a yocto generated image. The 
package recipes are working fine and ends up in the image. But now I 
would like to create a SDK where I include the packages as precompiled 
libraries to be used when doing application development. This is done by 
appending them to TOOLCHAIN_TARGET_TASK. This also works fine for the 
most cases. But all packages that is header only is NOT populated. I 
found a solution where I add ALLOW_EMPTY.. to the recipes. But is this a 
feature or a bug in yocto SDK populate?

E.g. I had to include a catch2_2.9.2.bbappend containing:

ALLOW_EMPTY_${PN} = "1"
ALLOW_EMPTY_${PN}-dev = "1"

To the headers and cmake stuff included in the SDK.

My package class is set to IPK.

PACKAGE_CLASSES ?= "package_ipk"

Thanks!

/Paul

