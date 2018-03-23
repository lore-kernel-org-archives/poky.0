Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F377E00A38; Thu, 22 Mar 2018 22:16:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEECDE007E1
	for <poky@yoctoproject.org>; Thu, 22 Mar 2018 22:16:12 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id 68so4325934pfx.3
	for <poky@yoctoproject.org>; Thu, 22 Mar 2018 22:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=og1W9Uz2hTP1AC1Zx/nUc8clqbl7unLEe7wMKHD+pKc=;
	b=dW/OoPfBu7i2IuofHK9t/c5UmHoSvVTfayxZ02zC6lT/LPr/XcBsYbQN8w1pS+iMKf
	8Cp7YuGJgewkOIxw3lA0pwQcmdopJTVd+wV4gWg6FFGsTBeidGtu3zig1AGPU0G71u7W
	Vt3UuydIAOjy25bgg6Zkqcejm0OBQvmHChVzyTilmGUVonsW4CTXiexr/ZyglpYLc3Z7
	svM5E4Crftg6gZy86TRlqyyMEamTq111gowgXlpPrtEzy9TeIcru6AqN0QaMTDp+wLWe
	3z1TIjMhi7Oihhc0QW4ICpKN+Pj2aXYYbi71MaD5Vmck4GWhOQziXjI8z76USjR2F7xi
	Yq7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=og1W9Uz2hTP1AC1Zx/nUc8clqbl7unLEe7wMKHD+pKc=;
	b=PUgpaJifHJbBMtUxGMV0c0a+bpF0oyM0wo9u0fjS9jP8S3v99P+MDqzwBMjknOEvH8
	fzCXqdnOarFyaX7larfL1Y0FJpdTBxrGHpuxbhAiKq7g+2cSKmaoIC54UzfUcAiVVXCx
	uJ7Dc4RAk9yLWnoF5Tsin0HNVB4pStTgVfvjeYAdlSXvzA0STZj2bCgdKz1J4u4FKm+0
	n5dytTAOpN5ZP0sy1llN+30xf8H1rhBeFxBLspr48OvJolsFPOTMg/VLF24Bf8y0WP3P
	tzX4JhY5SOzK+Oumhv4YchHRfOjggQfJxkdRDEcKbiuayjnJdQEDrKbNK7ptrJiCrvf/
	9JmA==
X-Gm-Message-State: AElRT7EhEOwoCwfY2uuo7nj7XHWLIo14qwuw7Eqa3OsrVWFE8uKwuV0K
	h8Att+dS811UiLF6qIvRpGBoD8zK3dkn0PSRqrQ=
X-Google-Smtp-Source: AG47ELt+ervjMK3lhwY+n6+adz/it3CZSqJwX4DpSw3/arhtcoZUOohos89HuJKOl2y+m05bV4vcI1IZ6EYr3JvMZb0=
X-Received: by 10.99.96.147 with SMTP id u141mr20216801pgb.227.1521782171867; 
	Thu, 22 Mar 2018 22:16:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.173.149 with HTTP; Thu, 22 Mar 2018 22:15:41 -0700 (PDT)
In-Reply-To: <830fb1c1-de32-2cb9-65fd-62ae560901ae@windriver.com>
References: <MAXPR01MB034877262A5CCF7212066F9191A90@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
	<830fb1c1-de32-2cb9-65fd-62ae560901ae@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 22 Mar 2018 22:15:41 -0700
Message-ID: <CAMKF1spJezQ-Shoou=OjyC4TagOAdebu_Cm8AUasPbA5Mn7c1w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: ERROR: ebtables-2.0.10-4-r4 do_compile: oe_runmake failed
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
X-List-Received-Date: Fri, 23 Mar 2018 05:16:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 22, 2018 at 9:09 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 03/22/2018 03:43 AM, Aditya Tayade wrote:
>>
>> Hi,
>>
>>
>> After adding meta-networking sub-layer in the yocto 2.5 project getting
>> some redeclaration errors while building the image.
>>
>> Could you please help with finding out the root cause.
>
>
> There have been several fixes to this in the master branches. The kernel's
> v4.15 headers moved some of the include contents around and that
> introduced build issues for ebtables.
>
> That regression was subsequently fixes in a v4.15-stable, and I
> updated the libc-headers to pick it up.
>
> Khem also sent a patch to meta-oe for ebtables to fix it without
> even needing the headers update.
>

yeah and they are still not applied unfortunately so please grab them
from patchwork until they get applied to meta-networking

https://patchwork.openembedded.org/patch/149374/

