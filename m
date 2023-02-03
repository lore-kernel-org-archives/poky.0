Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.13096.1675437209872025655
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 07:13:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DmYj2tCI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id h12so4917542wrv.10
        for <poky@lists.yoctoproject.org>; Fri, 03 Feb 2023 07:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dRKTS6b2e4CcIS9mV1fIYzX+SJmclv4t6VVGSA+xk3s=;
        b=DmYj2tCIIEs5H9iFFPi5Msi0ysfXvCSCskKwv5/YxYOGuavrep15HhW9SDVFCcyBPs
         TlwiyK2Tt8dBq9vWPcqbMO5Zk9mq/DLBkS+bZjm+8smS3LTeum4MCOv5WRP0PYQetzBl
         X1LzIBzqctFm6cWRufkX/gBb7MPWi3Vzb2/2M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dRKTS6b2e4CcIS9mV1fIYzX+SJmclv4t6VVGSA+xk3s=;
        b=Nw1WVlbslaz08Zge5Xv2UK/Z73U5ZSIa3aWAPTQ+8852LY+ECyQf0MJcJP9opCD1eQ
         adUooeXdbNfSJMKUaYeM2eUT66dtPxXIIuE6qRTocpe9bfobRr4GVOh40RJdudpMtNWR
         1YAZst4MD4zd8cpbrZnNer4We6RW8/iiHoOAc7ZLFKVW9drj9QZa5zXyFzkstvDw43MJ
         hblj4y0qUFG6T1OElTcY11/zDT1t+yK3nZ+ZyWd4Aw+z25emFLT9zMpyVNkHAeP1Yv8j
         FKh0ZuYMX8tsPNdaFGYn/kikNuUpEx+kstL66V6iLt7v1gE8zLhPO2uWpQ8omlWP9pWL
         oGbw==
X-Gm-Message-State: AO0yUKUAgLvncHptjWfKbs5foNGKlMBXOl0RsXW9FrVfjKE3GwvRJYK5
	kroZ0K3m/EHMRwWY/t5VLfY6jQ==
X-Google-Smtp-Source: AK7set8M5mep9HDYZSH/oUPJUeQURYSvpgzF2PSYfQDQeUI168YdnJ6PSuN/HwUw2fTXlf6JDpjDlw==
X-Received: by 2002:adf:f085:0:b0:2c3:db87:977c with SMTP id n5-20020adff085000000b002c3db87977cmr144294wro.12.1675437208371;
        Fri, 03 Feb 2023 07:13:28 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a52f:3f73:91fb:2c5a? ([2001:8b0:aba:5f3c:a52f:3f73:91fb:2c5a])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d60ce000000b002bc7f64efa3sm2178338wrt.29.2023.02.03.07.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:13:28 -0800 (PST)
Message-ID: <30d1e53bfb64b3d79d69a9ace875d2ba733ae3e1.camel@linuxfoundation.org>
Subject: Re: [poky] September 2023 Retirement of NIST vuln data feeds #poky
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: drew.thompson@singlewire.com, poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Date: Fri, 03 Feb 2023 15:13:27 +0000
In-Reply-To: <d28L.1675436476906136513.w2bW@lists.yoctoproject.org>
References: <d28L.1675436476906136513.w2bW@lists.yoctoproject.org>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2023-02-03 at 07:01 -0800, drew.thompson via lists.yoctoproject.org=
 wrote:
> Hi All,=C2=A0
>=20
> I'm looking for where work is being done to ready=C2=A0meta/recipes-
> core/meta/cve-update-db-native.bb=C2=A0for the retirement of the JSON dat=
a
> feeds (https://nvd.nist.gov/feeds/json/cve/1.1/nvdcve-1.1-) and its
> replacement with https://services.nvd.nist.gov/rest/json/cves/2.0
> https://nvd.nist.gov/vuln/data-feeds

We're aware of it and I think Ross Burton did have a look but we've not
had any patches yet (which would go to the openembedded-core mailing
list).

I think there is an open bugzilla entry too, perhaps this one is
related:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14745

Cheers,

Richard
