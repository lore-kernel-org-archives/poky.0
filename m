Received: from mail.engineeredarts.co.uk (mail.engineeredarts.co.uk [62.3.104.53])
 by mx.groups.io with SMTP id smtpd.web10.8361.1619177636346718975
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 04:33:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@engineeredarts.co.uk header.s=modoboa header.b=VAvl0dEg;
 spf=pass (domain: engineeredarts.co.uk, ip: 62.3.104.53, mailfrom: w.stott@engineeredarts.co.uk)
Received: from localhost (localhost [127.0.0.1])
	by mail.engineeredarts.co.uk (Postfix) with ESMTP id 16876284C7E
	for <poky@lists.yoctoproject.org>; Fri, 23 Apr 2021 12:33:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=engineeredarts.co.uk; s=modoboa; t=1619177634;
	bh=hDbuzHY6A7EvZZhSABpQrFoQntkTiNbE8/LOUXlBADk=;
	h=To:From:Subject:Date:From;
	b=VAvl0dEgHXqKdsEWqlNb4W4y7gn/tG9x/jwXddY3YTFddb7lMcObtsHVJstMGwnNP
	 fRBawzRDlW462a3uvVa/smlqDUENaJwvTHEIAwyUmmQ+ojGuAm4IdiSQfntvDVEMVa
	 UQgvFMSing6cy0Lpa3paO6tO9eP4ICR9agtEqUN8wvNkcLxohErVM7Tw+0Uc5buMWz
	 CkXT1nT6rlU7gBkdKcUcqQ247abGF5eBUxmFXarLG4i2YvbQtYMG5260w13u12X1Mz
	 1ANSLo5zcxgg4qTxLlUhjSU7AVqBDTQOFDF3f5658od78WbRN8wRALsXAHMvflLEwO
	 vmb0xNfecM8iA==
X-Virus-Scanned: Debian amavisd-new at mail.engineeredarts.co.uk
Received: from mail.engineeredarts.co.uk ([127.0.0.1])
	by localhost (mail.engineeredarts.co.uk [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id o4bEFKeFnWzR for <poky@lists.yoctoproject.org>;
	Fri, 23 Apr 2021 12:33:53 +0100 (BST)
Received: from [10.9.8.122] (mail.engineeredarts.co.uk [62.3.104.53])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.engineeredarts.co.uk (Postfix) with ESMTPSA
	for <poky@lists.yoctoproject.org>; Fri, 23 Apr 2021 12:33:53 +0100 (BST)
To: poky@lists.yoctoproject.org
From: w.stott@engineeredarts.co.uk
Subject: ca-certificates busybox incompatibility
Message-ID: <a347b2b6-3196-bb70-3cd4-99f51bb07ac9@engineeredarts.co.uk>
Date: Fri, 23 Apr 2021 12:33:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

The 
meta/recipes-support/ca-certificates/update-ca-certificates-support-Toybox.patch 
file replaces the use of mktemp -t with mktemp --tmpdir which is 
incompatible with BusyBox's mktemp.

It seems to be to create compatibility with toybox - however toybox's 
help online doesn't mention --tmpdir, only -t as used before the patch.

We've just created a bbappend to remove the patch but it seems like 
something other people must have been coming across... it shows up like 
this when we're using deb packages:


Setting up ca-certificates (20210119-r0) ...
mktemp: unrecognized option '--tmpdir'
BusyBox v1.33.0 () multi-call binary.

Usage: mktemp [-dt] [-p DIR] [TEMPLATE]
dpkg: error processing package ca-certificates (--configure):


Has anyone else seen this issue? -t does seem to be deprecated in 
coreutils but it is at least present in busybox and toybox.

Seems to me this patch could just be removed, and not cause any issues?

Cheers

Will
