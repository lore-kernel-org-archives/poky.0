Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web12.7062.1592639962540732210
 for <poky@lists.yoctoproject.org>;
 Sat, 20 Jun 2020 00:59:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Wuwhcx4A;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id o11so4058455wrv.9
        for <poky@lists.yoctoproject.org>; Sat, 20 Jun 2020 00:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Z7FcO/NY2c5l/M4TwL2RhesdZJXSWY/8SHB1atMSgQ8=;
        b=Wuwhcx4AxR8nhLnD4SJS3iEcXfqyQcfmoJ7cU8bIX/FDR2iiPUsAYZKQ8YFT20nm+8
         m6DMTZ//gvHX8AEpWff3rtChzgkPdmDOgLrYbj+vIRpdfW5Feq5KfoK/kUDoVBuiE+94
         K632uhSwyzWGmTxWpWn9kYjJ0It94bsz6yR48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Z7FcO/NY2c5l/M4TwL2RhesdZJXSWY/8SHB1atMSgQ8=;
        b=NM98ss9RDw/ngaQFAh+FVaVfaiX54O/REL24DGahILeWLBu/aE72BGh9awD2SCvwXP
         7p+en0aE0desTUdH3cw3bMpn3fMpSgHdEPZ8nDEP/nb0ui4KpvpIUPVNsmzG+MBFxtpt
         i/tSFtxSYbY/PmYkPH+Xl0MSpAxLZmX/mpuPVenTmw+dXPSt1mOHOr+YaFEC5PCiNcGh
         BjtrOZ5P0LTfBulu66jjKsVCoQJHQK+++dPBYrkLAZhtE61SW24f7dwh5irjdJ2DZuKT
         wwmwBtH0jP8xLmWiN2Rj3mEmwRkWxf6qqqRgDugzHxtysL5YCAMvAXMpm7Gtk3BfvVGH
         FOcg==
X-Gm-Message-State: AOAM5318wmGn7d0EvOS6WibiGxzPPoyeGoAafIsSPiELOuehOPgOzPkp
	m3iSU9T8PwivF9FkEG8fK57smw==
X-Google-Smtp-Source: ABdhPJxAJVkILnAQUmpx2VZTrWnDsWFG/dLIGB27oBSvtVMMKGfVl5guLcMmVsb1Qwo9S0p6kMbduA==
X-Received: by 2002:adf:9dd0:: with SMTP id q16mr8559095wre.410.1592639960964;
        Sat, 20 Jun 2020 00:59:20 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id x5sm3934778wmg.2.2020.06.20.00.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jun 2020 00:59:20 -0700 (PDT)
Message-ID: <a0bf3dd65ce20c48a79a626d964c021eb759ca28.camel@linuxfoundation.org>
Subject: Re: [poky] fatal error: omp.h: No such file or directory #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Rahul Chauhan <rahulchauhankitps@gmail.com>, poky@lists.yoctoproject.org
Date: Sat, 20 Jun 2020 08:59:18 +0100
In-Reply-To: <fU0J.1592630053844053370.0npg@lists.yoctoproject.org>
References: <fU0J.1592630053844053370.0npg@lists.yoctoproject.org>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-06-19 at 22:14 -0700, Rahul Chauhan wrote:
> Hi community Member,
> 
> I am trying to build core-image-minimal-xfce with below
> configuration.
> Poky (master branch)
> meta-openembedde (master branch)
> BB_VERSION           = "1.47.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "aarch64-poky-linux"
> DISTRO               = "poky"
> DISTRO_VERSION       = "3.1+snapshot-20200620"
> TUNE_FEATURES        = "aarch64"
> 
> kindly help me out on this . do i missed any thing here
> 
> 
> Errror:
> 4.15.1-r0/recipe-sysroot-native/usr/include -O2 -pipe -c
> ../../git/build/parseSpec.c  -fPIC -DPIC -o .libs/parseSpec.o
> | ../../git/build/parseSpec.c:10:10: fatal error: omp.h: No such file
> or directory
> |    10 | #include <omp.h>
> |       |          ^~~~~~~
> | compilation terminated.
> | make[2]: *** [Makefile:642: parseSpec.lo] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: Leaving directory '/opt/Projects/Amlogic-project/amlogic-
> g1-master/tmp/work/x86_64-linux/rpm-native/1_4.15.1-r0/build/build'
> | make[1]: *** [Makefile:1359: all-recursive] Error 1
> | make[1]: Leaving directory '/opt/Projects/Amlogic-project/amlogic-
> g1-master/tmp/work/x86_64-linux/rpm-native/1_4.15.1-r0/build'
> | make: *** [Makefile:788: all] Error 2
> | WARNING: exit code 1 from a shell command.
> | 
> ERROR: Task (virtual:native:/opt/Projects/Amlogic-project/Project-
> layers/poky/meta/recipes-devtools/rpm/rpm_4.15.1.bb:do_compile)
> failed with exit code '1'

Which distro is this on? Are you using buildtools-tarball?

If so, there is an open bug for this:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=13899

3.1.1 buildtools is here:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/buildtools/

although due to another issues we recently became aware of we're
planning to use 3.2 M1's buildtools (which is in QA atm).

Staged here for now:
https://autobuilder.yocto.io/pub/releases/yocto-3.2_M1.rc1/buildtools/

Cheers,

Richard

