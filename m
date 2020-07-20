Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.33593.1595230983212884367
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 00:43:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bshtDMC9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id f7so16789882wrw.1
        for <poky@lists.yoctoproject.org>; Mon, 20 Jul 2020 00:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=ma2oIJo0j50Ev6c+WUzTbU9TEEOS/Qt2gw1L95M4y/g=;
        b=bshtDMC9l9zK1PVXO9YZs/uGR6z5ZJM+gRsNsrX8SRSjnjljZp2tUVU3QAf1w6KEbl
         6o6qv0pTjw915nq9QWZ+ItIypoSzyM+EUeiFAfvqcHQ5UKFD157zfVsg5YnLvWIUul7I
         xAk9BcRd+WW2bJIXG5kqYOH5yB16HXPYVsZ94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ma2oIJo0j50Ev6c+WUzTbU9TEEOS/Qt2gw1L95M4y/g=;
        b=kHv3aMDDWT3Hn5uoTbbL8TaKkFzfJ4x8jnI+5Bb8UYiqDuY1b8VKY3NZF81MX3sZhX
         HK195fN7arfJEFCWUyvcazzD1BgTjjISq2fRtoiGbCwXhx9QMftL1ey3TfRDApctFY0V
         zmDaOpU44r10z9gcKseGsbbBMsIBoFOGM2+kHIErfcMeyc4AmDtuasiHRvius3JI7FLC
         h/ZeuH6wzYuAWbedZ2YmtJwhgnenyIxSOIi9b3kZ5AX31vEgkyklDFQh+dgNoxVG5nRS
         gGXHOpqU4Asa4mB62x0rd+vtUIaF5LLrgWgf4zbMUo9gD0PYVSLb65GxVxtTRNxRJsx6
         eu4Q==
X-Gm-Message-State: AOAM532Q8Z7Q3ZmT9HK7ekPJC5lD2K2GzsDcmPN7MRdF1Q49dXi6RKKa
	j+v1toAscgJiqol59X2laZF/ZQ==
X-Google-Smtp-Source: ABdhPJw1aprNDI83SiPFBjnVQu1kf+aM9qowNOW7vNdP2BlNOEgqOi+3Zn1dBA2aBZt9Al4yPYy5zQ==
X-Received: by 2002:adf:e7c8:: with SMTP id e8mr20598777wrn.20.1595230981597;
        Mon, 20 Jul 2020 00:43:01 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id n3sm20217848wre.29.2020.07.20.00.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 00:43:00 -0700 (PDT)
Message-ID: <2d1228d9f3c582a0aa958df7130b1c14a3bc11ec.camel@linuxfoundation.org>
Subject: Re: [poky] How to add python debugger "epdb" module in recipe
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Ashish <ashishm@mvista.com>, poky@lists.yoctoproject.org
Date: Mon, 20 Jul 2020 08:43:00 +0100
In-Reply-To: <LMzk.1595145312278580104.QGYU@lists.yoctoproject.org>
References: <LMzk.1595145312278580104.QGYU@lists.yoctoproject.org>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-07-19 at 00:55 -0700, Ashish wrote:
> Hi All , 
> 
> - I am trying to add epdb " https://pypi.org/project/epdb/ " in the
> recipe by 
>   adding   import epdb; epdb.set_trace()  in  the recipe . 
>   But getting error of  Exception: ModuleNotFoundError: No module
> named 'epdb'
> 
> File: '/home/ashish/project/../layers/poky/meta/recipes-
> devtools/python/python3_3.8.2.bb', lineno: 221, function:
> __anon_288__home_ashish_edge_gateway_yocto_layers_forked_opencgx_rasb
> errypi_opencgx_rasberrypi_project____layers_poky_meta_recipes_devtool
> s_python_python3_3_8_2_bb
>      0217:    # This python changes the datastore based on the
> contents of a file, so mark
>      0218:    # that dependency.
>      0219:    bb.parse.mark_dependency(d, filename)
>      0220:
>  *** 0221:    import epdb; epdb.set_trace();
>      0222:
>      0223:    with open(filename) as manifest_file:
>      0224:        manifest_str =  manifest_file.read()
>      0225:        json_start = manifest_str.find('# EOC') + 6
> Exception: ModuleNotFoundError: No module named 'epdb'
> 
> Any pointers on same would be helpful , 

I'd guess its running python3-native at that point and python3-native
probably doesn't have the epdb module enabled or installed?

Cheers,

Richard

