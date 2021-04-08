Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.200.1617899688680391558
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Apr 2021 09:34:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=W4Dw3Nch;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id g66-20020a1c39450000b0290125d187ba22so970275wma.2
        for <poky@lists.yoctoproject.org>; Thu, 08 Apr 2021 09:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=d9k9exQgfkpvHIG1stefsxTA3wvJSX+VIJeucNFnzn8=;
        b=W4Dw3NchkMua2DdHF4TBn2wdIpBuR/orEcLp9fe5FWUhYZuRfHJnOj2Ceh3164M8SH
         xScWm3Tq7I+C8uc3AwjYcEwKmXyJ1PPlvOvYEUo/cpC/hN/FRdUR7zbnT9kFr0lzhOu7
         gQzZhACfJ3ihp6v3y0Uw5SLqj+MYxrQS2r4J8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=d9k9exQgfkpvHIG1stefsxTA3wvJSX+VIJeucNFnzn8=;
        b=A0bLU1/hHs5IYR1COcn96NL+XSi2uJm93xf07LFtPRjaAIR49IKYr1Oyt/qa0n19HS
         FTwsxkDniMvX2VDaZI8eWAGapWZG44TTGYSTZo+LWvguX2G//T7ugdwGBl4qbqacXTyd
         3IrR5NiAEzbZveSbumMKDmGHlOjtpJThTcXFlOtk5fubyApt/Q2A3B9qhSrUXWfAkkJZ
         NNbBpLkYzsKFo4C8VpbT3rVCv5XGgU0QeQ2C3m+7ry4TS+GsLb1JLe/dxzQ51NzN7K8/
         g/VF6jhBnPbE9lrkfJovKZmVAWFbT1j28Rf5kGZMqttfcVK10X4+rCBYSpYkozPQeLRY
         Gwsg==
X-Gm-Message-State: AOAM532lZ9fGLen27xIrckhUBPWrRl3ICwHIzzw/jZxIiywbKkYs9n8d
	FKFPbyVYRQfornwzTvTiIzzwUQ==
X-Google-Smtp-Source: ABdhPJyXGq1Y8kHoJVG87UEvCeJCPEn9hGm7SliHJwRtL4fjyFwrA4oIHKAaYTyyDHwPxRiLDU0fNg==
X-Received: by 2002:a1c:e088:: with SMTP id x130mr6475690wmg.62.1617899687117;
        Thu, 08 Apr 2021 09:34:47 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:585b:a40e:b99a:b24a? ([2001:8b0:aba:5f3c:585b:a40e:b99a:b24a])
        by smtp.gmail.com with ESMTPSA id k16sm27349199wrl.47.2021.04.08.09.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 09:34:46 -0700 (PDT)
Message-ID: <c04e76e43994a96f6eef538a21339d1aae90ff57.camel@linuxfoundation.org>
Subject: Re: [poky] Strange issue with npm package fetch #poky #npmsw
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Arun Ravindran <arunlee@gmail.com>, poky@lists.yoctoproject.org
Date: Thu, 08 Apr 2021 17:34:42 +0100
In-Reply-To: <giUq.1617899577929962653.dcfx@lists.yoctoproject.org>
References: <giUq.1617899577929962653.dcfx@lists.yoctoproject.org>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-04-08 at 09:32 -0700, Arun Ravindran wrote:
> Hi,
> 
> I have created some recipes for express and body-parser npm packages.
> I used devtool add <git URL> to create the bb file and npm-shrinkwrap.json.
> 
> The recipes works fine on one of our build machines, where as on another it fails!!
> 
> The error we get is
> 
> aravind2@tmsbuild008:/build/aravind2/work/custom-yocto/mvdevice/build$ bitbake core-image-minimal
> ERROR: ExpansionError during parsing /build/aravind2/work/custom-yocto/sources/poky/../../meta-
> customapps/recipes-support/body-parser/body-parser_git.bb   | ETA:  0:00:25
> Traceback (most recent call last):
>   File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/utils.py", line 421, in
> better_eval(source=<code object <module> at 0x7f3a9d99fa50, file "Var <SRCPV>", line 1>, locals={'d':
> <bb.data_smart.DataSmart object at 0x7f3a9bb99c50>}, extraglobals={'d': <bb.data_smart.DataSmart object at
> 0x7f3a9bb99c50>}):
>                  ctx[g] = extraglobals[g]
>     >    return eval(source, ctx, locals)
> 
>   File "Var <SRCPV>", line 1, in <module>
>   File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/fetch2/__init__.py", line 745, in
> get_srcrev(d=<bb.data_smart.DataSmart object at 0x7f3a9bb99c50>, method_name='sortable_revision'):
>          scms = []
>     >    fetcher = Fetch(d.getVar('SRC_URI').split(), d)
>          urldata = fetcher.ud
>   File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/fetch2/__init__.py", line 1600, in
> Fetch.__init__(urls=['git://github.com/expressjs/body-parser.git;protocol=https',
> 'npmsw:///build/aravind2/work/custom-yocto/sources/poky/../../meta-customapps/recipes-support/body-
> parser/body-parser/npm-shrinkwrap.json'], d=<bb.data_smart.DataSmart object at 0x7f3a9bb99c50>, cache=True,
> localonly=False, connection_cache=None):
>                      try:
>     >                    self.ud[url] = FetchData(url, d, localonly)
>                      except NonLocalMethod:
>   File "/build/aravind2/work/custom-yocto/sources/poky/bitbake/lib/bb/fetch2/__init__.py", line 1262, in
> FetchData.__init__(url='npmsw:///build/aravind2/work/custom-yocto/sources/poky/../../meta-
> customapps/recipes-
> support/body-parser/body-parser/npm-shrinkwrap.json', d=<bb.data_smart.DataSmart object at 0x7f3a9bb99c50>,
> localonly=False):
>              if not self.method:
>     >            raise NoMethodError(url)
> 
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)}
> which triggered exception NoMethodError: Could not find a fetcher which supports the URL:
> 'npmsw:///build/aravind2/work/custom-yocto/sources/poky/../../meta-customapps/recipes-support/body-
> parser/body-parser/npm-shrinkwrap.json'
> 
> 
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> aravind2@tmsbuild008:/build/aravind2/work/custom-yocto/mvdevice/build$
> 
> Both machines are  :    Ubuntu 18.04.5 LTS
> 
> what could be the issue here? How could this be fixed?

Sounds like the wrong version of bitbake is being used, one which doesn't 
contain support for the npmsw fetcher.

Cheers,

Richard


