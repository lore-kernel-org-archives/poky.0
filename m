Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06093E00D6B; Tue, 18 Jun 2019 15:58:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F082FE00CF4
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 15:58:55 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id k20so33659222ios.10
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 15:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:references:in-reply-to:mime-version:thread-index:date
	:message-id:subject:to:cc;
	bh=4e7g3MfcmIzA2phWl5PQvlA2v7LFzeA9QHHxBGlTtLs=;
	b=Mb15GDkGsz8DfF2iTkimWbPHoYLCEoEPMhW2jnA2YUSINye0ZlCKUV9c/Ga0EHJdAY
	QiQd7PEdmJ4OGu5LpoaV/NVU6sjfZGgtpG6aMHZRxIXUsuZikrBE9VJMx4l+dOrv+rwS
	Fd1BvhogOPE6VvQQHPpmmdy3lQnGoYYZx8u2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:references:in-reply-to:mime-version
	:thread-index:date:message-id:subject:to:cc;
	bh=4e7g3MfcmIzA2phWl5PQvlA2v7LFzeA9QHHxBGlTtLs=;
	b=pixQ7GmM2GR53Bfr/4wn9DWhjo6SsMSq5Ei46fVxfuzDSBtPoyh9SrCZUutaHICQ90
	hAsAeSCDv8KZJZ4E8rN7OaSgc1nl0QvmA2tlbWlpeGeubsOy9GbvMVG1Fhbjn7AUrgSD
	0buExKlZ/q+h0hunRB1910aFRM2IjSnvgBQkqnWgBoN41KM1KOkidOsKgYwIa1Bs1xLA
	KBwl1Qv2XcCUMewr1wa2UCJmn59pMNajRfZWzwsCcdpn1ZnqIugW+/Xjz9nKrbqVLGqk
	L342xzOaX5U6yxt73NVKEbCkqyxcsi0yXhfzZ+l1ZSU74ewyxzumzC9WjmOKgGP5T/Vx
	I1ng==
X-Gm-Message-State: APjAAAWQCeiQu3a6VSb8ye+zBCVVOZckm+c1rromwZAePipjhWploghz
	eKpQFKkkDoKHJ+FxkBYCB9x7Zan4r1paRdtfAwGQIw==
X-Google-Smtp-Source: APXvYqzFwrN1mhtJ+lMxUKC3K2hNcld1d4LBRs6q7eB2tDHpZef230ZhTrL+cFEsBTDPLONQXEHDSSmQtQlbiqKbIUM=
X-Received: by 2002:a02:40c8:: with SMTP id n191mr63202295jaa.14.1560898735369;
	Tue, 18 Jun 2019 15:58:55 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
References: <e3607e3b603a3c19c520e59774b7039d@mail.gmail.com>
	<20190618212956.GD1501@jama>
In-Reply-To: <20190618212956.GD1501@jama>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQFy8XcxTbxhlSmrABPV4hT4HAkNLQL28qP8p06gTRA=
Date: Tue, 18 Jun 2019 15:58:54 -0700
Message-ID: <f3bb05fec6af55dd438fbc370f501f53@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: openssl10 in warrior
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
X-List-Received-Date: Tue, 18 Jun 2019 22:58:58 -0000
Content-Type: text/plain; charset="UTF-8"

-----Original Message-----
From: Martin Jansa [mailto:martin.jansa@gmail.com]
Sent: Tuesday, June 18, 2019 2:30 PM
To: Jonathan Richardson
Cc: poky@yoctoproject.org
Subject: Re: [poky] openssl10 in warrior

On Tue, Jun 18, 2019 at 01:29:00PM -0700, Jonathan Richardson wrote:
> Hello,
>
> How do you set the version of openssl back to openssl10? There is no
> PROVIDES openssl in openssl10  so I can't set
> PREFERRED_PROVIDER_openssl. If I change my DEPENDS in the my recipe to
> openssl10-native  eventually another native recipe that depends on
> openssl tries to populate a library to sysroot and fails because its
> already there.

Hi,

it never worked with both openssl versions being pulled into the same RSS
(which is quite common for bigger components like qtbase).

If you really need to use openssl10 and have components which require it,
then you can temporary rename openssl10 recipe as openssl in our layer to
overlay 1.1 version from oe-core and use this openssl-1.0 everywhere
(there aren't many packages which would be compatible with
openssl-1.1 and incompatible with openssl-1.0 - from the layers I have
included in my world build I know about these:

PNBLACKLIST[wvstreams] ?= "not compatible with openssl-1.0 since
https://github.com/apenwarr/wvstreams/commit/5506a74e1b033776ad441b4554716
cdcfa88fe03 which was backported to meta-oe and later reverted in
upstream"
PNBLACKLIST[wvdial] ?= "depends on blacklisted wvstreams"
PNBLACKLIST[python3-m2crypto] ?= "not compatible with openssl-1.0"
PNBLACKLIST[python-m2crypto] ?= "not compatible with openssl-1.0"
PNBLACKLIST[rtmpdump] ?= "not compatible with openssl-1.0"
PNBLACKLIST[libtorrent] ?= "not compatible with openssl-1.0"
PNBLACKLIST[freeradius] ?= "not compatible with openssl-1.0"
PNBLACKLIST[rtorrent] ?= "depends on blacklisted libtorrent"
PNBLACKLIST[openlmi-tools] ?= "depends on blacklisted python-m2crypto"
PNBLACKLIST[python-pywbem] ?= "depends on blacklisted python-m2crypto"

and in all these cases it's simple to revert them to older from which was
compatible with openssl-1.0 before big bang.

But this work around should be only temporary and you should really try to
get rid of openssl10 soon.

Cheers,

-- 
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

Ok thanks Martin/Alex. I'm aware of eol coming up. It's just a matter of
getting all projects upgraded
and leaving one behind (that doesn't yet compile on 1.1) rather than
advancing none of them. I thought
if there was a simple way to move forward then that would be best. But it
sounds like it's better to just
get it upgraded.

