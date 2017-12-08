Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2A88E00D71; Fri,  8 Dec 2017 08:35:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2194E00D19
	for <poky@yoctoproject.org>; Fri,  8 Dec 2017 08:35:16 -0800 (PST)
Received: by mail-it0-f46.google.com with SMTP id x28so6072479ita.0
	for <poky@yoctoproject.org>; Fri, 08 Dec 2017 08:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YlK1hwg1tSetwYz2ptpM8OQzq6PFtQZZ4YBeVU6BmkU=;
	b=O5g7QtcMhkSjH7xDE/23S8tOkH3nUAQQxwZMPEJBo1JeN/Qy/JTaQo3H8fDZ+XRnrd
	/lQ0NsigqbVJrvGqrHnJH3drZzMy9hGfLfcKkJHbfKSgOV6gwi998E8GYyBxuPU4D8Vu
	FEZhx47sMTmQRAIpXwcsuJ9//pgiuaDbaAglNla45LL/qEYG5FKhAzNPYQNR4ddl6th1
	ak0D+CCy4V1uNmmVmtZT7IWvcp3fXG8SyvvU+4O8vo9WdQRfYaaMu35rnssr4RaB6eri
	tkMwY3FaftAuEQ1tKwteZfIJ5G6hpM4ZRDuLIokM0MNKh9z3Syk98Lvu3qKYnt4mX4Fq
	Z7yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YlK1hwg1tSetwYz2ptpM8OQzq6PFtQZZ4YBeVU6BmkU=;
	b=XgWdAIYj8nQFPgdKcPUCL75YPrcZ7G63bo1RPbrsJRpyFtyPUuB++5U4PKY6fy/umY
	g9MRgujJY+yLJW+lYjWQk0W/i5TVDWttYVH7GCyP5M+1IE7LMZOEktprHIlvlfZiL8O5
	+ctlDMhAYaJ8G/mXLJjbzKcYoAqcJVtsc2xgpc4Wp9gR62dMt7Z6dWyKvrsW56jSBv1J
	2uwZ6HB81cOJ8zcjbgN4KUafRbqls4hD/uMbInnyLp2WOPeq8O99LohSsg/bgBBwUV3Q
	Wj5tgARgyjiYsAKPJtShjXLGdz6yrMaCivVaJOFbSnZYPvu2q09lroq4pwyg/1e5tOe6
	dLWg==
X-Gm-Message-State: AJaThX4ccAhGoKap6RQ3J5k4lBuCi9lph0cWIbOHmvIdS9JGMbLXi0k1
	S9KHuT5xNoNT0tzbyPNX8j7PT/1zDTe6+08xlGpYlw==
X-Google-Smtp-Source: AGs4zMYtQ9mGkgX7/mEde9aS+fqjoYhbssat6kiWpRw/N5j87xMzsldtuS9WUDPYm8NKd9wVvUUqErs5tC9EyFwHZRk=
X-Received: by 10.107.32.18 with SMTP id g18mr42817468iog.227.1512750916108;
	Fri, 08 Dec 2017 08:35:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.195 with HTTP; Fri, 8 Dec 2017 08:34:55 -0800 (PST)
In-Reply-To: <50cb4e0efe8ea9c4d1dbaea8f6d8cef418ea6564.1512685340.git.gael.portay@savoirfairelinux.com>
References: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
	<50cb4e0efe8ea9c4d1dbaea8f6d8cef418ea6564.1512685340.git.gael.portay@savoirfairelinux.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Dec 2017 16:34:55 +0000
Message-ID: <CAJTo0LYYxsx49=L9rfWkDyoTSqdNPYF+iTSJCMZLK95wM=Z08g@mail.gmail.com>
To: =?UTF-8?B?R2HDq2wgUE9SVEFZ?= <gael.portay@savoirfairelinux.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] util-linux: create nativesdk lib packages
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Dec 2017 16:35:17 -0000
Content-Type: multipart/alternative; boundary="001a1141b498fd18d8055fd6c474"

--001a1141b498fd18d8055fd6c474
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 7 December 2017 at 22:29, Ga=C3=ABl PORTAY <gael.portay@savoirfairelinux=
.com>
wrote:

> +python populate_packages_prepend_class-nativesdk() {
> +    do_split_packages(d, '${libdir}', '^lib(.*)\.so\..*$',
> +                      output_pattern=3D'nativesdk-util-linux-lib%s',
> +                      description=3D'nativesdk-util-linux lib%s',
> +                      extra_depends=3D'', prepend=3DTrue, allow_links=3D=
True)
> +}
>

The existing populate_packages is good, it should just use ${PN} instead of
util-linux.

Ross

--001a1141b498fd18d8055fd6c474
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 7 December 2017 at 22:29, Ga=C3=ABl PORTAY <span dir=3D=
"ltr">&lt;<a href=3D"mailto:gael.portay@savoirfairelinux.com" target=3D"_bl=
ank">gael.portay@savoirfairelinux.com</a>&gt;</span> wrote:<br><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
+python populate_packages_prepend_<wbr>class-nativesdk() {<br>
+=C2=A0 =C2=A0 do_split_packages(d, &#39;${libdir}&#39;, &#39;^lib(.*)\.so\=
..*$&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 output_pattern=3D&#39;nativesdk-<wbr>util-linux-lib%s&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 description=3D&#39;nativesdk-util-<wbr>linux lib%s&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 extra_depends=3D&#39;&#39;, prepend=3DTrue, allow_links=3DTrue)<br>
+}<br></blockquote><div><br></div><div>The existing populate_packages is go=
od, it should just use ${PN} instead of util-linux.</div><div><br></div><di=
v>Ross=C2=A0</div></div></div></div>

--001a1141b498fd18d8055fd6c474--
