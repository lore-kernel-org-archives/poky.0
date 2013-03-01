Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9793EE01454
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 09:15:03 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id hm14so3756013wib.10
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 09:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=vnRdrhz2jIrNRW2yF4FInpQP17pc9Kog2fSr9c/nws4=;
	b=tj9sU7GXAbfKyB0ttvvCty7Bxho/fAxMEyoSeAFnxyZBVLc7mJxNvvx6tZun0FwXnp
	V7VBt9sCs98upQWsiQ9lbt97tJfSrqEtbKgpEkyuv+7xGMIzarxxRTZZqlw5tCog8/Mh
	iJBhTVptgJZQW0SENEQYjd/9b5A55AD4eshRd0vWddwWFOKUYAbDSIcNfWh3w3NjoHyL
	n4ILwrv0/bBLagwC8LZLlTtDBJZZnaXpsU3/HZaZfE6CgxxyVWowC0Z75qRjBhQqecjc
	WH0RVm66+bvcUUzGjYOF1jG6aCjXHYKRSFT3N9hplewCmqK/cAX2NRwbLm5smdLXLNn2
	bg1A==
MIME-Version: 1.0
X-Received: by 10.180.75.177 with SMTP id d17mr5292644wiw.16.1362158102073;
	Fri, 01 Mar 2013 09:15:02 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Fri, 1 Mar 2013 09:15:01 -0800 (PST)
In-Reply-To: <1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
Date: Fri, 1 Mar 2013 12:15:01 -0500
Message-ID: <CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 17:15:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

commit be248b0222bda151ae5f94be6bb8a53e192ecded on master is causing:

WARNING: Host distribution "openSUSE 12.2" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.

