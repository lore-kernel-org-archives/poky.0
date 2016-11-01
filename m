Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09DE0E0049B; Tue,  1 Nov 2016 10:13:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 461 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Nov 2016 10:13:48 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0B7AE0045D
	for <poky@yoctoproject.org>; Tue,  1 Nov 2016 10:13:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 9923F12ADB3
	for <poky@yoctoproject.org>; Tue,  1 Nov 2016 18:06:06 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id rXjbyab9dVzh for <poky@yoctoproject.org>;
	Tue,  1 Nov 2016 18:05:47 +0100 (CET)
Received: from whisper.local (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 5304A12AA59
	for <poky@yoctoproject.org>; Tue,  1 Nov 2016 18:05:47 +0100 (CET)
From: Bas Mevissen <abuse@basmevissen.nl>
To: poky@yoctoproject.org
References: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
Message-ID: <d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
Date: Tue, 1 Nov 2016 18:05:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
Subject: Re: svn fetcher crashes
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
X-List-Received-Date: Tue, 01 Nov 2016 17:13:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/16 15:32, matti kaasinen wrote:
> Hello!
>
> I tried to upgrade poky from fido to krogoth.

It might be wise to wait a few days and start from the upcoming morthy 
release.

> Recipes that used to work
> before are now crashing. I get long listing of warnings telling
> "Exception during build_dependencies for S". At the end will come:
> svn: /CPR3/sysroots/x86_64-linux/usr/bin/../lib/./././libssl.so.1.0.0:
> version `OPENSSL_1.0.0' not found (required by
> /CPR3/sysroots/x86_64-linux/usr/bin/../lib/././libserf-1.so.1)
> svn:
> /CPR3/sysroots/x86_64-linux/usr/bin/../lib/./././libcrypto.so.1.0.0:
> version `OPENSSL_1.0.0' not found (required by
> /CPR3/sysroots/x86_64-linux/usr/bin/../lib/././libserf-1.so.1)
>

Did you start with a clean work area?

Post the output of a single package, including the logs

> Location these error messages are referring has following libssl modules:
> libssl3.so
> libssl.a
> libssl.so
> libssl.so.1.0.0
> ssl
>

That is something we will probably sort out in the process. Guess the 
current openssl is 1.0.2 and the old 1.0.0 is no longer in your staging.


-- 
Bas.

