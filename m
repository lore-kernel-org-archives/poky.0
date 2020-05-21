Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
 by mx.groups.io with SMTP id smtpd.web12.4682.1590064084587800031
 for <poky@lists.yoctoproject.org>;
 Thu, 21 May 2020 05:28:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RXrXVWQQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.68, mailfrom: breno.debian@gmail.com)
Received: by mail-ej1-f68.google.com with SMTP id d7so8572296eja.7
        for <poky@lists.yoctoproject.org>; Thu, 21 May 2020 05:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=NqETynWcYFriWbAwzJVZuBLmMk7S2tKW6u9MJrPyGFE=;
        b=RXrXVWQQ/aynsRHS6xeck34QeTVCErW9QiUOaCSJpqHV7YD7FsYkqjJHacvG5P6kQz
         Fwi8HCpaIf7OIndGScPjF85qao6JE//BWPl1vhbnIPBDGDP1rsQTJwV35aD93LQZpZ1e
         DFV504lOF5JhBFbiERxAKemU+yRvhCTuJCeBobolcoVTzEnqEpMW9kCk2LYXT0gbql/F
         HfHLoGmsXm4wVhUbIXTjIiatYcmqlxq38PSS3le2fG4OoFU8DM8OuFDrftdzgbGxsoLt
         8BCtkhN4hVJRh7l7NPzmmsN/nywV+5hhqSvyQrcq33xBzaAhGNxDSUGxEIB+oCby4ZUL
         VqPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NqETynWcYFriWbAwzJVZuBLmMk7S2tKW6u9MJrPyGFE=;
        b=dXfhL6n+CKN1w4CgF1JwtLXwg4FgATpHqG5nPJoSuB2rnqnMVDhZCDA4/komR/ibMs
         +x/pB8W736pulCOueDJzNewpn9KNekoSg7HtbGaqfSoHEgVCkgludkbFLV0roli7BeI/
         egsdMBACp7oxj/pH5jGAhzGDqIvhfKFDQKRA6+dwwLXbvzDr8FGUAYixQnjOcA3qTyHh
         UKE5c2W15JO2h+TdMNnI0TqRs0/qp+eUD5N4NTm9o9whmVOpd+VSaHn+nf0aNrKD1F1u
         BCXtf294pdWSJ0zgURjgZh4T/MGjK36X3SDV9PRPN0PVb2QlE6aIEi93J6GSSsU49EBx
         J8fw==
X-Gm-Message-State: AOAM532XtjEMAWJBC7suT8kgrZShqTN5OIvVZwVcDcocSbW07p2e+urF
	mY+7YhpbJnXtwmi16qr0qT2V4dKS
X-Google-Smtp-Source: ABdhPJzS+tVZ7hg94pID4IakFpGxutV+aalRSuWopspWAWi0JKTvvcKVbMSesFBlN9qbG2K+rrB5EA==
X-Received: by 2002:a17:906:509:: with SMTP id j9mr3138354eja.152.1590064082900;
        Thu, 21 May 2020 05:28:02 -0700 (PDT)
Return-Path: <breno.debian@gmail.com>
Received: from ?IPv6:2620:10d:c0d2:1103:1c3a:dd3b:c5bd:d95e? ([2620:10d:c093:400::5:d81])
        by smtp.gmail.com with ESMTPSA id y18sm4731267ejb.87.2020.05.21.05.28.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 05:28:02 -0700 (PDT)
Subject: Re: [PATCH] devtool: Add IPv6 deploy targets targets
To: poky@lists.yoctoproject.org
References: <42a9297b-911b-6e38-076f-2a542249ffaa@debian.org>
From: breno.debian@gmail.com
Message-ID: <9a1e0eef-9eb6-a483-8d59-9ca3cad69b20@debian.org>
Date: Thu, 21 May 2020 13:28:01 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <42a9297b-911b-6e38-076f-2a542249ffaa@debian.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello,

I've sent this message 3 weeks ago and I haven't heard any feedback about it.
I am wondering if I have sent it to the right mainling list.

Thanks
Breno


On 28/04/2020 14:52, breno.debian@gmail.com wrote:
> From: Breno Leitao <leit@fb.com>
> 
> Unfortunately devtool is not able to deploy (and undeploy) into IPv6
> hosts.
> 
> This patch simply adds a way to use IPv6 target address similarly to
> ssh/scp, as foo@[xxxx:yyyy::zzzz]:/destdir.
> 
> In order to do it, I've created a function that parses the hostname,
> user and destdir, and then create a target_ssh (for ssh like parameter
>  -- foo@xxx:yyyy::zzz) and target_scp for scp paramers as
>  -- foo@[xxxx:yyyy::zzz]:/destdir. The urlparsing is done by urlparse
> module and ip version discovery is done by ipaddress module.

<snip>
