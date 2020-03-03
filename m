Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7955.1583256812797203665
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 09:33:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=GaWolWOL;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 208D4E017B6; Tue,  3 Mar 2020 09:33:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA779E017B3
	for <poky@yoctoproject.org>; Tue,  3 Mar 2020 09:33:30 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id h9so4474086wrr.10
        for <poky@yoctoproject.org>; Tue, 03 Mar 2020 09:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=W+4SaKI4nfxs9gzIMpMGhIWZhfeWbQD4jLE1sa6CVVI=;
        b=GaWolWOLGGa9OGR+wj+wrqbVymkaf+DTmj4qZedbfm1eF0GoyJ0t3Hxuwbqb64Ao7y
         abq2nqiYXGvJzCQT0w0OxdtJnec053dddbSsU+MrG4iPInt4l2WiCDv7e3T0sJ0rt56b
         zkVdV1L5eQbdHK4sUMGOnNsz4S8JxLndl4bAWfgiBou8lfkvXns5UUT+Bc8vlgvBVGuf
         bbak4VdrO7nlVzXQFk5EokOxzTAu6HwfR86cbZ6/fdHpGFa6i0h33aaRy3IvDJ5Nf4RI
         g0Z8G32uvFSDgeoef911OCPkqTR3FDCIRt5eVlaFmPcHDdD0ibaQxArGYtSbuVzzfQUZ
         E7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=W+4SaKI4nfxs9gzIMpMGhIWZhfeWbQD4jLE1sa6CVVI=;
        b=seJPOHDbVgmgDGVCYshy4P7sAUtM5yNX79BYqds9tUlRW433xmk0wreXZHKs3baZZU
         FqPi9a4952tA8rQxDVhrYkVfUWEGPAiAQel9AK+l5lBdF0s9bXAXfRu4UBQVqlWJ7ztM
         1dAEnNcwAx1m2cQ0BJzYyh3riHjROuQe02QHLscwTwKuIAPiV5sVZMFohAlxDKP+i6B6
         vogshjdznEq6GWCOdkbc9wp85KrmgPNnqnRFTp1I0K09fppcrTZNUt8BaduL/9ZtdkpM
         ZTo1GFf1bZbSCuIv2EAJdfjgIg8rIpwq+4wtr+qxsMBkiGPrkUxcUHeErjfQYBPI1Xs2
         HBkQ==
X-Gm-Message-State: ANhLgQ3gnCghGQ/VY1h5VOHm5+I+0FECQOWi+0S5uIIHx9xSY9w5P/PB
	PcVfBA3HwVmMsdQohr9Rsb4snKq8q+Ejq0B/SFFM+bAD
X-Google-Smtp-Source: ADFU+vs4yK79ArrDN8QK4r27GJy3sUwVtECif0oL69xa25GPsrWkoWm86iS06DSqy4HesCiHw5D2ZPDRVdsnMwDej9Q=
X-Received: by 2002:a5d:53c8:: with SMTP id a8mr6164813wrw.238.1583256809225;
 Tue, 03 Mar 2020 09:33:29 -0800 (PST)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Tue, 3 Mar 2020 12:33:04 -0500
Message-ID: <CAGNn0hYGyrVuse7oK8vwJhkLHudYCpnfESt9uuuMChQhhKhGyQ@mail.gmail.com>
Subject: Enabling additional languages
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b3d065059ff6b375"

--000000000000b3d065059ff6b375
Content-Type: text/plain; charset="UTF-8"

I am looking to enable ada while building the gcc cross. Can someone point
me to any other recipe that does something similar? Like gcc with fortran.

thanks, srini

--000000000000b3d065059ff6b375
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am looking to enable ada while building the gcc cross. C=
an someone point me to any other recipe that does something similar? Like g=
cc with fortran.=C2=A0<div><br></div><div>thanks, srini</div></div>

--000000000000b3d065059ff6b375--
