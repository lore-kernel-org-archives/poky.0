Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 23FC2E01400
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 10:39:21 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id hq4so3844663wib.17
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 10:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=CoZopHzJMMJyDazeBn9vsAMKrz8OXKXqL+1IW4JUzFg=;
	b=Z5s6pkf26oAzrvcCzB3a0mLviKi5G2UF9m87ZIDfalYItSbkrc66YueABJ9KTLld9M
	J0dhXeVjINo3rSMXBq9XL2vaVPdlBabFlghBjLud8R2UWFrp0WU5Ku4/MUffkFVagllW
	kMQChzzj/BYF8gp2QExfFfcAqUkOdc7L1/FFHP0UtU3RDgTAEit/j7tNCxAR9wH33DKY
	QDuq4qV84wciP8BEf+wAtya1M5ZRag8K6P+pITtgbP00CC5CRxj4NLGbKqTAJb9+Nc2G
	Cl+eshnfzmVpx1MCX5NjZFth0dTsoe4UNf6hinruSRGlc0MbHB2Otmo5GdC5ybDLYE2T
	ideA==
MIME-Version: 1.0
X-Received: by 10.181.13.175 with SMTP id ez15mr40875769wid.8.1362163160631;
	Fri, 01 Mar 2013 10:39:20 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Fri, 1 Mar 2013 10:39:20 -0800 (PST)
In-Reply-To: <20130301173817.GP3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
	<20130301173817.GP3279@jama>
Date: Fri, 1 Mar 2013 13:39:20 -0500
Message-ID: <CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Mar 2013 18:39:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 1, 2013 at 12:38 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Fri, Mar 01, 2013 at 12:15:01PM -0500, Trevor Woerner wrote:
>> commit be248b0222bda151ae5f94be6bb8a53e192ecded on master is causing:
>>
>> WARNING: Host distribution "openSUSE 12.2" has not been validated with
>> this version of the build system; you may possibly experience
>> unexpected failures. It is recommended that you use a tested
>> distribution.
>
> What's the name of LSB directory in sstate-cache?
>
> According to output you sent to oe-core it should be SUSE-LINUX-12.2 and
> this warning should match that.

Yes, there is a directory in sstate-cache named "SUSE-LINUX-12.2".

> But it's probably read from /etc/SuSE-release in your case, I'll send
> patch to remove /etc/SuSE-release and /etc/redhat-release reading in
> sanity.bbclass.

$ cat /etc/SuSE-release
openSUSE 12.2 (x86_64)
VERSION = 12.2
CODENAME = Mantis

> Please test it when you can.

Sure, I'm happy to help.

