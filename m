Return-Path: <tharvey@gateworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A0C8E00B21; Wed, 17 May 2017 14:29:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CA72E00B1B
	for <poky@yoctoproject.org>; Wed, 17 May 2017 14:29:25 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id b84so180229578wmh.0
	for <poky@yoctoproject.org>; Wed, 17 May 2017 14:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gateworks-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vWnWu4ILZCzGdZr9GSKp1ZCIOxIxKOsPd7neb0Ym+/8=;
	b=HPfx+c7RDs6nn8QMtw5nO56mRw5APTvJaBsTYxlDmZ3W6sg8W6HsZcpMu7I7dtuVcV
	oQcD8A7FknqWOdkifhO1erRceAvl1z5fjjmh3Iq3TRqRegTKr/Hm/S1Q3fgEhoWQ/HlB
	ICEs18gPsPj6MoS6exUZVslVUq3bn7v0o/Gq6qhtLcX9xfW7KV9GyxtIZlEH5RNwOByo
	EmyezKBWnrJKoidmTx/608cVbfSfHMNC9XWvTXW2FFPzS1gAo20N1K+K+xzT23yoeIfW
	dsCymdRdluyGIcI27NymU+Myi+12+GIEzm5KIrDQheOqzLAH+DisMt8RMTbl2a0JAXJI
	sCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vWnWu4ILZCzGdZr9GSKp1ZCIOxIxKOsPd7neb0Ym+/8=;
	b=HLhQDz8RjNkszoDvZ3oW7/RSlZSaayd3dRqED8H8AouCxHLrOMnn7kgWZPVy3I/wQk
	+Lsy13hkM6xBP/uel4kfPAOux4OkrfSzV9lQx+t2hBaAs7K3tapaEwZxvVv5neyxk2Xd
	aEJ1IPsfczudvdsl1QM6f0gi7RSn07y4w0u9KMEufKtob8UjUgI98FdkT0UhGQatmKYv
	ZhsmcFoCivgGcjT1q2XGsC9vUqc+2/xfE9WGYJiIxLltjRqQFKvHvr6vcd21DQIOdes+
	cHL5fCmWAUqXsrXcWyA7ml8EAON0RJ5F8Af2VywU8pGxtsSbQTNboRYZig1xijLA6tBa
	RGTw==
X-Gm-Message-State: AODbwcAjNBy5jMroZB9ZCIHZD5ubWK/QmOlWNA49lbOOYULDwRR0CUgk
	xb8LvhEKRNP+h3bqzVaLmJR6CzDVy+VN
X-Received: by 10.28.137.201 with SMTP id l192mr11633625wmd.27.1495056564662; 
	Wed, 17 May 2017 14:29:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.212.21 with HTTP; Wed, 17 May 2017 14:29:24 -0700 (PDT)
In-Reply-To: <1495052131.7502.1.camel@gmail.com>
References: <CAJ+vNU02n6DavkhuwM8gU7daWLyyd4QHgd0N5topHJQiO2_6RA@mail.gmail.com>
	<1495052131.7502.1.camel@gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 17 May 2017 14:29:24 -0700
Message-ID: <CAJ+vNU1kh56xNCvy77zMM2Pc5hnaM+jFBhzdvip5h2dQ_+YMNA@mail.gmail.com>
To: Max Krummenacher <max.oss.09@gmail.com>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] populate sdk broken for u-boot-mkimage
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
X-List-Received-Date: Wed, 17 May 2017 21:29:29 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 17, 2017 at 1:15 PM, Max Krummenacher <max.oss.09@gmail.com> wrote:
> Hi Tim
>
> Just sent a patch which may fix what you see.
>
> Regards
> Max
>
> Am Mittwoch, den 17.05.2017, 12:36 -0700 schrieb Tim Harvey:
>> Greetings,
>>
>> I'm running into the following build error when trying to create an
>> SDK for an image that includes u-boot-mkimage-native.
>>
>> The nativesdk-u-boot-mkimage do_package task fails with:
>> ERROR: nativesdk-u-boot-mkimage: chrpath command failed with exit code 7:
>> b'/usr/src/ventana/yocto/pyro-2.3/build/tmp/work/x86_64-nativesdk-fslcsdk-linux/nativesdk-u-boot
>> -mkimage/1_2017.01-r0/package/opt/fslc-x11/2.3/sysroots/x86_64-fslcsdk-linux/usr/bin/uboot
>> -mkimage:
>> RPATH=/usr/src/ventana/yocto/pyro-2.3/build/tmp/work/x86_64-nativesdk-fslcsdk-linux/nativesdk-u
>> -boot-mkimage/1_2017.01-r0/recipe-sysroot-native/usr/lib:/usr/src/ventana/yocto/pyro
>> -2.3/build/tmp/work/x86_64-nativesdk-fslcsdk-linux/nativesdk-u-boot-mkimage/1_2017.01-r0/recipe
>> -sysroot-native/lib\n'b"new
>> rpath '$ORIGIN/../../../../../../../usr/src/ventana/yocto/pyro-2.3/build/tmp/work/x86_64-nativesdk
>> -fslcsdk-linux/nativesdk-u-boot-mkimage/1_2017.01-r0/recipe-sysroot
>> -native/usr/lib:$ORIGIN/../../../../../../../usr/src/ventana/yocto/pyro-2.3/build/tmp/work/x86_64
>> -nativesdk-fslcsdk-linux/nativesdk-u-boot-mkimage/1_2017.01-r0/recipe-sysroot-native/lib'
>> too large; maximum length 287\n"
>> DEBUG: Python function perform_packagecopy finished
>> DEBUG: Python function do_package finished
>> ERROR: Function failed: perform_packagecopy
>>
>> I'm guessing this has something to do with the long list of args in
>> EXTRA_OEMAKE_class-nativesdk from
>> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/u-boot-mkimage_2017.01.bb
>>
>> Any ideas?
>>
>> Regards,
>>
>> Tim

Max,

indeed your patch '[OE-core] [PATCH] u-boot-mkimage: fix nativesdk
build' resolves my problem.

This should be backported to at least the pyro branch as well I would assume?

Tim

