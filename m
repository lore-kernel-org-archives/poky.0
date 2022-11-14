Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web12.8126.1668444409995278873
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Nov 2022 08:46:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LOOzyQru;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 129-20020a1c0287000000b003cfe48519a6so1417123wmc.0
        for <poky@lists.yoctoproject.org>; Mon, 14 Nov 2022 08:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QsD7s7Neo61YLU274Pkeamt2ZiZl/pzcPehtYbtFy48=;
        b=LOOzyQruUJobWgLz/lpWhyStLB6Pubf2Q9ZGAtFtLjEUjW46I1V4cbmpcywDzek/lc
         z4Us5E5ghCcCEIyZbtDL55VPqkuDIJ4vJK5RjH8TFvI/GuocwFG/ncAxS9nITeFWNqhW
         BmLBCoNn0zWQM3xzK/9dBoO+sRQpn/2UlitS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QsD7s7Neo61YLU274Pkeamt2ZiZl/pzcPehtYbtFy48=;
        b=Lbmr3H/NXGs8sj8q/f2WgCjzQUlA1rRv8ZUVLZuc2SXVMkBSPgaWPkhPyKWmxvi36a
         OmXK0SRTdprHjpBzDRkaAvzgpBHuBRdtxGRSltwmUVPmmhC8yWsGyxwySXAhYeou2NY0
         eF+Kq44t5eUsQDtYzLD/dmNfrAEuH3uyf+Ukr2xGkGeJKeQqWunnglhxSWu7oLSF+1G5
         PDG+TKflKkvxVZ/uO24dURkGEz1M4S5deIosJ8lBuoubFQnIULSz1A7BZssjJBJOr+dS
         lfinqrmIBcbDGZjg1eovXTVnzOE3D5x3q9mzcJOq6hT0SA7CaKRltxAHkPqvp0HEEc3y
         6bPw==
X-Gm-Message-State: ANoB5pmwoVh0LN9XrNpDQ1d9VQ4chWy8aE34XMpcT5UDJC77zrAv9SBs
	wksyCMxhuDPGqQajncSJ4cWgdA==
X-Google-Smtp-Source: AA0mqf5fPvC9XQ0EkZuDOxvN10OOZ7npqGmR9BJgEq1imncN/QShrcACUxYbpXX3TEVSB/m7+0KYng==
X-Received: by 2002:a05:600c:2287:b0:3cf:931c:3cfa with SMTP id 7-20020a05600c228700b003cf931c3cfamr8528811wmf.203.1668444408319;
        Mon, 14 Nov 2022 08:46:48 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:aa29:f8ea:3483:371a? ([2001:8b0:aba:5f3c:aa29:f8ea:3483:371a])
        by smtp.gmail.com with ESMTPSA id cy6-20020a056000400600b002416ecb8c33sm9868347wrb.105.2022.11.14.08.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 08:46:47 -0800 (PST)
Message-ID: <8ebb3cc8e3beba7b8b2bd12a1fd58a6198b3793b.camel@linuxfoundation.org>
Subject: Re: [linux-yocto] Removing DISTRO_FEATURES from a specific machine type
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Pintu Agarwal <pintu.ping@gmail.com>, yocto@lists.yoctoproject.org, 
	linux-yocto@lists.yoctoproject.org, poky@lists.yoctoproject.org, 
	bitbake-devel@lists.openembedded.org
Date: Mon, 14 Nov 2022 16:46:45 +0000
In-Reply-To: <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
References: 
	<CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
	 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2022-11-14 at 22:05 +0530, Pintu Agarwal wrote:
> Hi,
>=20
> This question is related to Yocto Dunfell specifically.
>=20
> I have certain distro features defined (by default) in our distro
> include/conf file.
> These distro features are required for certain machines and should not
> be enabled for only one machine.
> For example, we have a distro feature such as "nand-squashfs".
> So, in our distro.inc file we are including like this:
> DISTRO_FEATURES_append =3D " nand-squashfs"
>=20
> Since this distro.inc file is shared across 2-3 machines, this feature
> will be available to all.
> But we don't want to include it in the "xyz" machine.
>=20
> So, can I do like this:
> DISTRO_FEATURES_append =3D " nand-squashfs"
> DISTRO_FEATURES_remove_xyz =3D " nand-squashfs"
>=20
> If there is some other better way please suggest.

Have you looked at COMBINED_FEATURES?

This allows you to only enable something if it is in both
DISTRO_FEATURES and MACHINE_FEATURES.

Cheers,

Richard

