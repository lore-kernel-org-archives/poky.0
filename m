Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59732E00929; Sun, 24 Jun 2018 11:31:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1FA5E0084E
	for <poky@yoctoproject.org>; Sun, 24 Jun 2018 11:31:34 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id l65-v6so5067097pgl.8
	for <poky@yoctoproject.org>; Sun, 24 Jun 2018 11:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qOEd1V8b3QN1LnfaA4DtWQFBJWqJNeD+M/CRGgU8Tho=;
	b=Ppo7wFx9L7YWP9OEWV0fJ7YtH0bu4PZNwAsJd7REPF8XjsZ2BP+P1VbPckrEYs+2o/
	WBXGyXlEZd30s0DNBhlsQ89qWGF7kz7EJHL+d/500tPUhm9xWmGS+cZxTCeHbzRcOi9R
	FgxHz7g4h4fktzOThbE4b67mD99i59wRnfG4uoBGrZCXxDH4sPjal3ZoUHMK47Gc5dNp
	c3nP79Irq1jpmlxZs1jtTTYqE/yfLgvDxdJoBMqFgZMgRT+ubVgEjhO5AoEEGcqcRTVJ
	FuCmuM4TvR2CmlyxMrlbQh3VGEbx4wgjp3XU+ndqJFT3zhp1dNcbLJcZ0DU0dyjTeuNS
	H2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=qOEd1V8b3QN1LnfaA4DtWQFBJWqJNeD+M/CRGgU8Tho=;
	b=teNcFMmTZiTzNGb/qYwpIYqNr5ZXJ3tcLbdx9wCwIOYXgnLK78boqo0i1BLygRCmuk
	NSeXMRDm97pDbSEQJ2CMj0oH0s0xXs8f9uZOIjL+LbYnGfQ0P4kX793PGtBuW2iweVN/
	SuMHhKY6pgiL4uTy2Et0GDISgBnHECqXRx3PIqxETVWXrTmc0Id3luvK5Vs5E8tD9btl
	9B0iA92sWB9dcN7TWo8I9CvlJ43qfGq26kTF55v3Odr+gWr8AUvrT7o+QdX7UOMQpOeK
	LCXedc0lWCvSZp6W1b/BYCEQ4EAVA+1AbyDbO1t6GHyVTXYnhx/4+wYDYrYEdXeBZ4hc
	i0GA==
X-Gm-Message-State: APt69E14IuEkjO2t0FEfzPG9lEs0+h5YrMPjMOJ0jfQ8lA8Dlz/+vHEo
	yNfcghrW3SCYlI3dYuhj9RJDVg==
X-Google-Smtp-Source: ADUXVKINdQ1YH30NfcCx8JOyU76MtLjtOISdqFOGK6VgnSTG93+OTjjsmQWz0PsOPrQLeKzZ1L50/w==
X-Received: by 2002:a65:621a:: with SMTP id
	d26-v6mr3178576pgv.305.1529865094000; 
	Sun, 24 Jun 2018 11:31:34 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:89c3:4e4b:df9b:b7de?
	([2601:202:4000:1184:89c3:4e4b:df9b:b7de])
	by smtp.gmail.com with ESMTPSA id
	e63-v6sm7113273pfk.133.2018.06.24.11.31.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 24 Jun 2018 11:31:33 -0700 (PDT)
To: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>, poky@yoctoproject.org
References: <dc32d45cc47d63d2921c9b8860ab5157@mail.kylheku.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <0a45cd1d-d45d-4741-4fc6-9300f88c2f74@gmail.com>
Date: Sun, 24 Jun 2018 11:31:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <dc32d45cc47d63d2921c9b8860ab5157@mail.kylheku.com>
Subject: Re: Yocto-2-2: native executables and libs pull symbols from wrong glibc.
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
X-List-Received-Date: Sun, 24 Jun 2018 18:31:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 06/22/2018 11:52 AM, Kaz Kylheku (poky) wrote:
> Hi all,
>
> I've discovered, in a Yocto-2.2-based system, that native executables
> and libraries are pulling in symbols from the build machine's own glibc.
>
> Then when those programs and libs are executed, they use the
> "uninative" glibc that Yocto pulls from the tarball (because their
> built-in -rpath tells them to, and that -rpath is dynamically edited
> to point to the uninative stuff).
>
> This mismatch is wrong and fails the build when those executables or
> libs have pulled in symbols from the build machine glibc that have
> newer versions than what is available in the older uninative glibc.
>
> It seems to be case that when these programs are being linked by the
> recipe steps pulled in from native.bbclass, the linker is using the
> wrong libc.so image; it's not using the libc.so that is in
> sysroot-uninative that will be used at run-time.
>
> Concretely, this leads to a failure when you build on a glibc-2.27
> based system, like Ubuntu 18.04.
What version of morty 2.2 did you clone?

There where some uninative backports done for hosts with glibc-2.27

-armin

>
> glibc-2.27 has advanced a number of symbols to the GLIBC_2.27 version
> node.  One of those symbols is the glob function.
>
> glob is used in libpopt.so, libopkg.so and some other programs.
>
> In my world, I have patched the handful of programs and libs which are
> involved in the build failure by adding this to them:
>
>   __asm__(".symver glob,glob@GLIBC_2.2.5");
>
> With that, I was able to build the world.  (It could be that many more
> programs are affected; but not in any way that contributes to a build
> problem in my world.)
>
> In the case of libpopt.so, what fails is the "debugedit" utility from
> rpm-native. This utility is used by the do_package recipe of glibc,
> and so that recipe fails.
>
> The .symver directive is an ugly workaround; this needs to be somehow
> fixed in the build system.
>
> Cheers ...
>


