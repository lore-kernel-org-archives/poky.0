Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6782.1581524324567650730
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 08:18:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=dswjewnA;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 140.211.169.56, mailfrom: jdmason@kudzu.us)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11A84E01726; Wed, 12 Feb 2020 08:18:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF396E01724
	for <poky@yoctoproject.org>; Wed, 12 Feb 2020 08:18:42 -0800 (PST)
Received: by mail-il1-f195.google.com with SMTP id x2so2210431ila.9
        for <poky@yoctoproject.org>; Wed, 12 Feb 2020 08:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hluwGbyK1hTSLSfhKFOEhcF2Z++DQhBl1pChBjlCgLQ=;
        b=dswjewnAzsp9PUhjhXFDNsrLYkcwP7CyzZy0fHy2AAW3CGYNz98YtelBUAYxS+Hpgg
         Bl1aB4jOipDsWfrVnaedHjQIAVJyYe/f9VOYArb8Jk9VgQnwR5K4/9ROoD7zTUSeYrTe
         xlakU9EZBUEtlYA+gndH4kObRljFwR54JKyC+oUVCEEeFBzwfla8M5+b9MDM/E9eAOtD
         aqll1JAvVU35GvlS7oYGy7KWilnd1MO9wj3mQmvabsQ/F9UAAdgC8yDFIOWlVPr4qnYB
         wI4wT+uCpYkm9Rj54nO6WqKIGRaEUHfRiTKEAdh8dF/cNU04kUMHgllW+3pB+T2z9uIb
         kCCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hluwGbyK1hTSLSfhKFOEhcF2Z++DQhBl1pChBjlCgLQ=;
        b=bQcP39QYL3dgg3U5xoG0w6Il6uIyopereXdBSK8z6DGHfx66COUfdqIfdrp/v5ldU+
         kzx8MBmiXxsMkR2GRJxgWHEyaxIQ07GTU2VnvYBYk042CYIJ8S2+lCdK2K0p2iFdpWmK
         Yn+Tps12EYQCL1tA0hbQw5a3cuqWLtIZg3Ce9X9LpBdliQUgoZhwBLs6XdoJOIWgb0Io
         7DwtgHr4Kc+F3VnS2Dl5gbYuUQp0L0rOzxpiBl3y/0KUZxFwrUgH/7x8fHHWBkTBRn1X
         Oqb2Dqcwfl9vRcLQ/7FysXBt79CjKgGAM8aUNWnlKZdHW4Au+xsot/Sr9CaHn3WlHZCi
         K+QA==
X-Gm-Message-State: APjAAAWmGTKZbFejV6F01+oCcJdeyoQRqhnyPwvGz83IrKN0e0t6XpM4
	jYnh+g2bq43FYTv1+eH7KuXgjKI6d3VKnapuQnVCBglUWk0=
X-Google-Smtp-Source: APXvYqyL05hnAm4B2by3adRAKwoid+hw/QXjoV1So6BGlVkVXfbxCGf6h73WRNI7XSjTrzOmdgJ0V7P75FTSKSkvazE=
X-Received: by 2002:a92:1553:: with SMTP id v80mr12253968ilk.49.1581524322169;
 Wed, 12 Feb 2020 08:18:42 -0800 (PST)
MIME-Version: 1.0
References: <CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
 <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org>
In-Reply-To: <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Wed, 12 Feb 2020 11:18:31 -0500
Message-ID: <CAPoiz9yALdEsnxQhEamJWoB7RvLdEnf3LO9Hr3hVQLCPSMO7Tw@mail.gmail.com>
Subject: Re: [poky] testimage gcc error
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 11, 2020 at 4:31 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2020-02-11 at 14:31 -0500, Jon Mason wrote:
> > I'm seeing multiple "Command not found" errors when I run the
> > testimage command on zeus with GCC added.  I'm sure others are
> > testing
> > this and not seeing an issue.  So, please let me know what I'm doing
> > wrong.
> >
> > My only configuration was to add to local.conf (aside from SSTATE_DIR
> > and DL_DIR) is:
> > INHERIT += "testimage"
> > IMAGE_INSTALL_append = " autoconf make gcc "
>
> If you put gcc-symlinks and maybe binutils-symlinks in there, does it
> work better? Suggests we may have some gremlins in the packages used to
> enable the tests if so...

Looking into the image, there is no /usr/bin/gcc symlink.  So, you are
correct that this is missing.  I'm betting Denys' buildessential
package problem corrects the issue.

Thanks,
Jon


> Cheers,
>
> Richard
>
