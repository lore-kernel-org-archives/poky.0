Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F34EE0030B
	for <poky@yoctoproject.org>; Mon, 30 Apr 2012 08:52:42 -0700 (PDT)
Received: by wibhr14 with SMTP id hr14so2523357wib.11
	for <poky@yoctoproject.org>; Mon, 30 Apr 2012 08:52:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=Uein7nU1JrRVfKvnp15BCPahfDs4Hkjl4q/Qs0lNxjs=;
	b=X3PAcZQy1LTMa0h1HK+nyfG8ah4EhMCMg521gTjGTdUUlyYskK6OO4E/hhT5+Oq3wu
	riFBIAA/lklKIzUXO7Lpqb7scYkN3WOrUqLLiCUaaPecw+O9AkLXctvjPpWycteTM245
	6cUSEPciJ/0iVPgtkM7/XfNbEF3S2W3hngpytDurBecsj9x+r58uMbJHrj108dQrVPS4
	aC/ZV0N4hCuhxnchOP2z9MoCYG0lfKLGf+rL3hgp0arwNNnqhUjdv8cgj8+0HXdISyfS
	IJcgqt6xX8WhsHbaz/XaQ7IhC+Yc4ubSbbs64BdIDQGD//zWqqNwFfiMf3yETjpRTjdn
	vmvQ==
Received: by 10.180.83.38 with SMTP id n6mr11779893wiy.1.1335801161631;
	Mon, 30 Apr 2012 08:52:41 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id j3sm46317686wiw.1.2012.04.30.08.52.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Apr 2012 08:52:40 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F9D80B1.8060504@gmail.com>
Date: Mon, 30 Apr 2012 17:52:38 +0200
Message-Id: <37FB7753-29FD-42A5-8E55-2B41E32D26CC@dominion.thruhere.net>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
	<CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
	<4F29F010.5030406@gmail.com>
	<CAMKF1soPhW=-A9z5i7z3Msi4jjE9jB5m3yXKVrn1tRgn_=fwxw@mail.gmail.com>
	<4F9D80B1.8060504@gmail.com>
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQn8DQDG7EyJTYVhtQ7WhPdeUryYnznK/FAMplk/eXCzyPW2vmixhSEKgYh3vZusVbWKmjEq
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2 v2] binutils: Always enable plugins
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Apr 2012 15:52:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 29 apr. 2012, om 19:56 heeft Derek Buitenhuis het volgende geschreven:

> On 02/02/2012 12:04 AM, Khem Raj wrote:
>> On Wed, Feb 1, 2012 at 6:08 PM, Derek Buitenhuis
>> <derek.buitenhuis@gmail.com> wrote:
>>> On 22/01/2012 1:57 PM, Khem Raj wrote:
>>>> 
>>>> while this patch is ok. It occurs to me that we might have to find an
>>>> easier way to specify common options once for all binutils recipes
>>> 
>>> 
>>> So uh, I am not clear if this patch will be pushed or if you're
>>> waiting for a refactor of binutils...
>> 
>> this is ok to go in. cleanup can happen at later times
> 
> Ping! Resurrecting an old thread!
> 
> Is this going to be pushed?

You could start by sending it to the right mailing list. Hint: not poky.

