Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E41E4C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 22:03:44 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so12252802wwb.11
	for <poky@yoctoproject.org>; Mon, 06 Dec 2010 20:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type;
	bh=m8YbuA/WhpAH3S2+NrOfX429A6wedyGQ0kYl5h3Q4Qw=;
	b=kI+jG41RCMkNqeeJqZmHP1wAltx9rluU1ts9J0/KsI/BRsFVcN/Nq9VkEPhYmO58xc
	RNxvlDMR56Fxr4YtkSlMKYnQmPaqFjM0AeRPE/HqHVZg+9HiZEZBH05f9MSvdE2hZ8UB
	6ymEtL7FBa5MA14x+Z9eSc8hIYyoS6qJcZsdo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=MAQjh2kIJHzrv+0RAmPRIDFdd3VGIVlETV/lwsI+660M1pCsFjCDolMQihYUAllbHP
	gsRZ3cbO1XEk71pS99f3+2ODQqkgOAMyUKOjmFrsPgEyheIoLGZyGTi0KSP0hpqp8eXe
	14CKf3jCk+BLCGEijHiXaP8+tsLPBl0Sl5mo0=
Received: by 10.216.179.210 with SMTP id h60mr5943358wem.42.1291694623200;
	Mon, 06 Dec 2010 20:03:43 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Mon, 6 Dec 2010 20:02:45 -0800 (PST)
In-Reply-To: <4CFDAE16.3030703@linux.intel.com>
References: <4CFD6EFA.8050503@linux.intel.com> <4CFD8581.5080106@windriver.com>
	<4CFDAE16.3030703@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 6 Dec 2010 21:02:45 -0700
X-Google-Sender-Auth: Iey1cPhH141kM5EtLxepeXiDvjU
Message-ID: <AANLkTiketYj8Cch6qt+0N86yDwSU+xedTtqhVE_ZQGRB@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, poky@yoctoproject.org
Subject: Re: Proper recipe naming and PV definition
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
X-List-Received-Date: Tue, 07 Dec 2010 04:03:44 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 6, 2010 at 8:46 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> You have SRCPV here - I believe you intended SRCREV - correct?
>
> If so, then your PV looks the same as mine above. The place where I replaced
> the _git was in the filename of the recipe. It still isn't clear to me what
> the _VERSION part of recipe-name_VERSION.bb is meant to indicate or how
> exactly it is used. It clearly isn't the exact and complete version of the
> source, that is what PE.PV is for, and PR identifies the recipe version (for
> lack of a better description).

People seem to be making this a bit more complex than it is.  The
second component of the filename, separated by _, is simply the
*default* value of PV, just as the first component is the default
value of PN, and the third component is the default value of PR.
Naturally the 2nd and 3rd are optional, and of course you can always
override them in the recipe, it's just the default.

You can see the definitions of the PN, PV, and PR variables in
bitbake.conf -- they run a function which just splits the filename.
If those defaults were not set there, then PN, PV, and PR would always
have to be explicitly set.  It's just a convenience, that's all.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

