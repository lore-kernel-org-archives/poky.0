Return-Path: <j.michael.detwiler@gmail.com>
Received: from mail-gx0-f171.google.com (mail-gx0-f171.google.com
	[209.85.161.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E1024C80132
	for <poky@pokylinux.org>; Wed,  3 Nov 2010 09:47:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk19 with SMTP id 19so583705gxk.2
	for <poky@pokylinux.org>; Wed, 03 Nov 2010 07:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=WEQajpl0FNn7mjjJHTUhreK5RzTtsyuOLc1+Ox6TMQg=;
	b=am7hNkQ25xWy2nPBER2ASq+2STWHMoOgUNawfvAdzi2S5gxHQM5zkjti/fhFjRjAL/
	wLOOAzV7Q8Eq4Lxjaznd/7JiDqYXwSXQKUvBl1VRT5jwYBCJX5F/RCJnk15KWlFNPDsS
	URjQlUqjvv0zyMG5dZDEBaSZTaKkq2zFaUA+c=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=VIrNCpq1Y2DBzHceJzCvVav3poGBvYYRQ9Y2dmxC6XhwIIf0FbAPBGlxsyD+KZWwT8
	mTQWSVkdXDrPKjRu0nRA34rHX/QSaKQU6PrntfhwWQnJlZCw6UkFIJhTAXmBva6Xpof5
	N5hxRIf/U5fXAy3KzAx3ermJPeDvXZcs48kxQ=
MIME-Version: 1.0
Received: by 10.42.155.4 with SMTP id s4mr2435941icw.220.1288795639171; Wed,
	03 Nov 2010 07:47:19 -0700 (PDT)
Received: by 10.231.172.212 with HTTP; Wed, 3 Nov 2010 07:47:16 -0700 (PDT)
In-Reply-To: <4CD0DB45.7000607@intel.com>
References: <AANLkTi=iHsCxaWVUaD1fMCsRZot4+SHUHAK9xpdku1Cv@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB67A65C6F4AD@shsmsx502.ccr.corp.intel.com>
	<4CD0DB45.7000607@intel.com>
Date: Wed, 3 Nov 2010 10:47:16 -0400
Message-ID: <AANLkTi=b9YK0+beYcCL4Ddyx3dc873Uem6u1d+h_N-iM@mail.gmail.com>
From: Mike Detwiler <j.michael.detwiler@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Extending meta-toolchain-sdk
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 14:47:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 2, 2010 at 11:47 PM, Saul Wold <saul.wold@intel.com> wrote:
> On 11/02/2010 06:36 PM, Cui, Dexuan wrote:
>>
>> Mike Detwiler wrote:
>>>
>>> I have run 'bitbake meta-toolchain-sdk' and installed the tarball that
>>> it generates. However, I found that the sdk did not contain all the
>>> third-party libraries that I would like it to have. For example, the
>>> application I'm developing has a dependency on libgmp. I notice that
>>> there are bitbake files for gmp in meta/recipes-support/gmp. Is there
>>> a simple way (e.g. in build/conf/local.conf) to have this added to the
>>> list of libraries that are included in the sdk?
>>> -Mike
>>
>> Hi Mike,
>> Can you please try the patch below?

Dexuan, the patch did work. Thanks!

> Mike, Dexuan:
>
> A better way to do this is to define SDK-EXTRAs in the local.conf file:
>
> SDK-EXTRAS += "libgmp"

Saul, adding this line to my local.conf produced an error saying
nothing provides libgmp.

I tried the following line instead:

SDK-EXTRAS += "gmp-dev"

This did not produce an error, but it also did not seem to add the
library to the sdk. Is it possible that this is because the variable
SDK-EXTRAS is also set in meta/recipes-gnome/tasks/task-sdk-gmae.inc
with the line below.

SDK-EXTRAS = ""

It looks like this could clobber my setting of the variable, depending
on the order of evaluation.

I agree that your suggestion is a more desirable approach than
modifying the poky sources directly. I would also be willing to use
the layers approach suggested in section 3.4 of the poky handbook, but
I'm still trying to learn how to make that work. Any tips or
suggestions would be much appreciated.

Thanks,

-Mike

