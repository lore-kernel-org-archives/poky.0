Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E55FE00E83; Mon, 11 Jul 2016 06:03:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27922E00E78
	for <poky@yoctoproject.org>; Mon, 11 Jul 2016 06:03:13 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id f65so61912696wmi.0
	for <poky@yoctoproject.org>; Mon, 11 Jul 2016 06:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=NDyq2EtUjEXfO/bAwzOh5nQt3qqxPAHD/VkepcsikHE=;
	b=U/R9Us9tY3BekEj6AzAmeNQJ6JePGJUzQhwyRpbDR0qnWLBSGpd1jr6Vuq4R7tWWpv
	dte0mIzW4QZrExL8AC21OE/SIn4jWlt82+nZRDbURKjIV5Go7lylzK/C8u4FfRLWk3I9
	X1F9YJQ7Ov6O8pN4RpxzBlcB7WrBfD3fQ/VXlVgTTQz0lToab+yHV3Fp+tquw/h5AgVw
	14gbr4ciTAcRPPgbeBvc2IWJOnSzNv8Y0v2wgZqV8C+3OqQIuy0drKOCBbAtGMsnBNPn
	5qUDVDxcQ3TJQtxI4LbNwni2m0mvArPPMU/Q9+aJ3pNcxC8noVG2EOboa3FA/hkGwoMP
	tJkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NDyq2EtUjEXfO/bAwzOh5nQt3qqxPAHD/VkepcsikHE=;
	b=XYJb/U//eM5iQU7K7XeK1EazWiQenV+ai5dhry63Tyt4aRu28PX6MYwZVSqMqkFHoJ
	qEoTqNwTC4/VQuKYcqKtIdwBJGafKK7e3VbcNnynZJhxwzJFzQXV/h5QM77OWQAJMAIv
	2IijkFGayqHWQHWb9q1AopBF9YqA1SbNzBWw3RUy/j4+btKWA4aK9NxicSdUVWaqDOLT
	dm5jvyK1nuoqWXwai/3jRNZPxlFZ3gi8wwxCIk7zJbwedouoLgMh8pn+eHAM7TnswtQy
	seY05uomsAQmgXE9RroIyqXHWKVEdp7ubJWmv8MMgP52s4gm+mvGse063lp2JS1vxpLn
	7Nxw==
X-Gm-Message-State: ALyK8tLBYMm+m6tGZjwGqhgQzj4gsKTDh7fg1o10DoyKmPwJbIMBV9pPaa2bioojooMLvX/UusqK4jvmcUkPqQ==
X-Received: by 10.28.166.150 with SMTP id p144mr14042099wme.57.1468242192043; 
	Mon, 11 Jul 2016 06:03:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.143.79 with HTTP; Mon, 11 Jul 2016 06:03:11 -0700 (PDT)
From: Prasant J <pj0585@gmail.com>
Date: Mon, 11 Jul 2016 18:33:11 +0530
Message-ID: <CAA2DH4uUeV6jTXp+ntpssyCFMt=AsYfu2ttbyZ_kexZOqLNtqg@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Force exclude a package
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
X-List-Received-Date: Mon, 11 Jul 2016 13:03:19 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm building for the intel board (against jethro branch) and I have
created my own custom layer. I have a generic query.

My build is failing because 2 packages (that I did not include
intentionally - speex & taglib) is failing to build. I have tried
IMAGE_INSTALL_remove but does not help.


How do I find out: what package or image feature forces a package to
be included in the first place?
Is there a way by which I can force exclude a package?


Regards, Pj

