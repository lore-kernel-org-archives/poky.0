Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10A4ED2E006
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 12:48:49 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web10.17265.1730810921466311731
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Nov 2024 04:48:42 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=T39NTJDd;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1730810919; x=1731415719; i=star@gmx.li;
	bh=ZoRAR/sbiTC7lEJwnm4lS2+97+AQ18RyJQl6b7EOatI=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=T39NTJDdoLGljDYrX1H/izQFXuJGkWevniWpboBrR7IvQ5Mae06l9Kak4YXZ/nb+
	 vUbNv4QtGmgxGg+2sBTzCi1pQRrlKBqUsqERUgUgbAV0cNd4rx4X7m/i50hPtZ4G+
	 sYnUc13G53zBN1PczkTrbVHjnZ5MP8anowEiQoKuPKBej8YOSBiCo20bGgZtnVmsR
	 i6JT2r0lRz6V/iPqK/gUZx8T2lrHt8nwraRq78t3TEOZ2nriCnNb0+QfyrpZ/lX9d
	 kvXTWlHkVKCfTHcpMXwIHJ8bVkejju1mNpiEO3bKm1gMYphbbjwOmkPswOjAKsTPg
	 a8RHhp4pvVl9LNiPow==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.88.88]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MA7GS-1swnin2wLy-00HRI4 for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 13:48:39 +0100
Message-ID: <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
Date: Tue, 5 Nov 2024 13:48:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
To: poky@lists.yoctoproject.org
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
 <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
 <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
Content-Language: en-US
From: Arno Steffens <star@gmx.li>
In-Reply-To: <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:YnGHHsgsX7Jg6OzsBraVwuXqYlHBsxmfqA2q51TQsE5mhSNUEdo
 JRK1cJ3Jvd6Tko9Ov6cnegaGzcBP3+POwUrt9ZteLlgi++SKo6infMcxF+g7nNqhe3C5/7h
 sutUoob72KpobTjdfeUq5+hjL4OiPAW805aRezPvPsfIbtGm2XZ3DmcbV4lV1flcIGFRXTZ
 BBclOyfBAKz31cOjN82rw==
UI-OutboundReport: notjunk:1;M01:P0:4mNUBP93lTI=;Retfw2sd3RmtJORXl75ckCTTbaG
 4idyg0Og0trZ+MvAPWhl0ZocI8eallwplkYUQKAi9zt9E4eUUqmOfcYN0uUHfMk0NX+QUYgNn
 7K0efjiBHns5DXxKdU3DiyTV53ga6HPDSjPOtRwRRtkTsdieGfH0NQPEGrQNDNhoCUabGRf6C
 O9ytkO37tfmqNJM14KG1ecYXADYCF9r+u/xv4TpbgUwcW//gPPThB6Ia8KDeNKKBvvCs3iYCv
 ygFZ6NGwtC3qJV7N5NX1qeQuOazwCUBwhlSXPaHMo7Nz7h0UyJ7Ej28ZZ3IC2d+yWwDJeGqLf
 RBRQvTG+plTyT8gqzP0/d8nbOHHzgXFzgno3hSGi5dhUUbN/sRwvg5NXaRkPlkM+7Ud52GAB7
 MFKZbvoj4xRE7r2xePiiKMmWrZlMn3ZiaQsm9+yCRXftZUEfcb9rQyUTKzwZg7KGHmE/Q+oD7
 IlAY7V4E1a4+0QPPvVnzNL2IcgrXkvhgyxqSwt0gLAO66GarP53rEFRHAJSj4z3NEZKR9nhWL
 v0BcEfwiq47GUBlUXMWM2/QeR81hUpOmyfrHOzwNfzm366fDf12WruK9RkkmurncRmwwQMq0g
 zqmcXWn1fRHBbVCWSvRWT3uH+VRWwhtT2Cdpodfxi00F4e5b/fljNscZ5wOzZe0nvRmudZHiu
 gJC61CBbdeWDm+1xHOh/xT+gWpijaSh2mYJye5X/OFOratqioI8npJtprbRW1reE0bvlNjrZP
 yeaNI9U/4Ye+7hc9aWsnOuo+1TWMZLEkpItxO0ijTPtm9CciRR2JaV55eCWmNePxxP7G9CAV9
 fMHfBJ83Iu/lUiVExOXXaojg==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 12:48:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13477

On 11/5/24 13:06, Alexander Kanavin via lists.yoctoproject.org wrote:
> On Tue, 5 Nov 2024 at 13:01, Steve via lists.yoctoproject.org
> <star=3Dgmx.li@lists.yoctoproject.org> wrote:
>> well download may indeed happened just once, but isn't in each recipe
>> the git folder with it's complete content?
>> Maybe I described it misleading:
>> So it is not about download, but about the amount of storage needed for
>> each recipe. Assuming 10 recipes using same main repo, in each of the
>> ../build/tmp/<recipe-name>/<tag>+gitAUTOINC+<git-hash>/git
>> I see the full checked out repo.
>
> If you want to use individual submodules, then the best would be
> probably to have an external script that determines SRCREV for each of
> them from what is recorded in the parent repo, and writes that into
> recipes.
>
> Alex

True - that is one way.
But that doesn't sound easy with external scripts.
And the approach to use one recipe for checkout and multiple recipes to
access this cloned git is more effective in terms of storage usage,
isn't it?
How a recipeB, C, ... can know the path below - where the git-has is the
unknown component in this case.
To workaround the path
../build/tmp/>arch>/<recipe-nameA>/<tag>+gitAUTOINC+<git-hash>/git

I guess an DEPENDS=3DrecipeA needs also be part of all recipes using it.
Well, the recipes B,C,D might need to evaluate that git-hash, but I
don't know how in a recipe.

Thanks


