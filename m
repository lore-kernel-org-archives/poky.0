Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22481E00718; Wed,  5 Jul 2017 15:46:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0EB9E00349
	for <poky@yoctoproject.org>; Wed,  5 Jul 2017 15:46:37 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id 77so4283750wrb.1
	for <poky@yoctoproject.org>; Wed, 05 Jul 2017 15:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=km+bh4kuEnpalwlYD47Q4LlY8JoJpXPo0y9l5MgTP78=;
	b=GhczJYkVxO1T+/77pmY3XCF05kHNo7bvqzVNa1cCbg8/f/St1lWf7dS9KrIAOs36aK
	FhG5816n0mglMQf8niL/z+c+aHUIBqRe0bTKH9/IpqAF0Jtlsene7Ea+U9CF8Y9NxGxp
	HUqftB7lRVVd0w+J2PKiDdusgE6fyFR/W4jQAIG34iEvMZgAMFNgY63wKIjElCShOrjP
	0UHEX3obosTngiMWbzHLWJ+pW+GfX5ZWwQtpoXbv14xYNirfiSumHpstZy0DgypObkAZ
	ADG7r4wwkt7+coAMlWfBOPsxPd5ObENteI4EdCEElACpdhscVdtbAeBXyHb52iVazfys
	cryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=km+bh4kuEnpalwlYD47Q4LlY8JoJpXPo0y9l5MgTP78=;
	b=CzTlWbxx+ylt+thG/mMaqPr6ga+UiiOYr5TuU3u0r40twpE8zqyVP2wacVDnR+XXZ4
	3/hp0bTAxpiPJY+ajzpIE8u2l2q29URE16G2a3H3v9YC4i/tuV+X6qchuYqDpyudgr9H
	EOIZRiZGlx+UL/C76AJyjCWSFlUEk4FYNfAw59WPiTSu6Xz/gurhRySV+DWcJPmWUaGP
	YAJ4LEa0M3oYjhabP6o5iFSLcDcAn00QJiaOmftUIKWk1qhJH52vNe7pUFR+Gf3P1xEH
	cHg8wiBXU6lhrE7Ic62UVgZCGU7kj+HnXe8o6BGa3PuM5by5ARpUvUMrZ3VQENLPY81Y
	khsw==
X-Gm-Message-State: AKS2vOyQizvCq+E8UJAkakW5mfIH4vLQaE7fT3rxfLzmtHbrlAfMps/a
	E1ksVGVfHW6tIFllHdsMHMB2N3hb0w==
X-Received: by 10.80.180.141 with SMTP id w13mr18909058edd.42.1499294796250;
	Wed, 05 Jul 2017 15:46:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Wed, 5 Jul 2017 15:46:05 -0700 (PDT)
In-Reply-To: <CAJTo0LaOadfQdP8H1cin-Hd9BMPW_h0-q=XJz4A=Pwpf5+2Qvw@mail.gmail.com>
References: <A8809961EB141E4596386C258A901BD70299E8CD31@SATURN.env.local>
	<CAJTo0LaOadfQdP8H1cin-Hd9BMPW_h0-q=XJz4A=Pwpf5+2Qvw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Jul 2017 15:46:05 -0700
Message-ID: <CAMKF1sofANObsaW5BVbBsLwS_NYw4GN_LW3N8uktYA43dEb1TA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta: Add support for GTK+-3.0 static libraries
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
X-List-Received-Date: Wed, 05 Jul 2017 22:46:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 5, 2017 at 3:39 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> +                 --enable-static \
>
>
> GTK+ for many years has explicitly disabled static libraries, which is why
> you need to override that here.  That is my first hint that this may not be
> right.
>

we also have DISABLE_STATIC now a days. It might be better to turn it into
a pckageconfig which is disabled by default.

>> +FILES_${PN}-staticdev = " \
>> +                        ${libdir}/*.a \
>> +                        ${libdir}/gtk-3.0/${LIBV}/immodules/*.a \
>> +                        ${libdir}/gtk-3.0/${LIBV}/printbackends/*.a"
>> +
>
>
> So PN-staticdev contains the *static library* forms of the *dynamically
> loaded at runtime modules* for input methods and printer backends.  These
> will never be used, as GTK+ always loads them at runtime using dlopen.
>
>>
>> -    immodules = do_split_packages(d, immodules_root, '^im-(.*)\.so$',
>> 'gtk3-immodule-%s', 'GTK input module for %s')
>> +    immodules = do_split_packages(d, immodules_root,
>> '^im-(.*)\.(?:so|a)$', 'gtk3-immodule-%s', 'GTK input module for %s')
>
>
> But here you're putting the static library forms of the input methods
> modules into gtk3-immodule-*.  Whatever one they actually end up in depends
> on the order of PACKAGES.
>
>>
>> -    do_split_packages(d, printmodules_root, '^libprintbackend-(.*)\.so$',
>> 'gtk3-printbackend-%s', 'GTK printbackend module for %s')
>> +    do_split_packages(d, printmodules_root,
>> '^libprintbackend-(.*)\.(?:so|a)$', 'gtk3-printbackend-%s', 'GTK
>> printbackend module for %s')
>
>
> Ditto.  What package did you want to put the files in?
>
> Anyway, debating the location of the static libraries is meaningless as
> they'll never be used, as they're runtime loadable modules.  In an ideal
> world libtool wouldn't make static libraries for modules but it does.
>
> *If* you want to support a static build of GTK+ then there are ways you can
> make it sort of work, but this is not it.  Look up
> --with-included-immodules, --disable-modules, etc in the GTK+ documentation,
> and pass those.  You should end up with a static gtk+ which contains all the
> input method modules builtin, but as far as I know printing will still be
> broken.
>
> Ross
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

