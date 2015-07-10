Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FBDDE00A54; Fri, 10 Jul 2015 01:09:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC90E009D6
	for <poky@yoctoproject.org>; Fri, 10 Jul 2015 01:08:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t6A88nuj028952; Fri, 10 Jul 2015 09:08:49 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id MIgNz7egy9ML; Fri, 10 Jul 2015 09:08:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t6A88XxF028937
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 10 Jul 2015 09:08:44 +0100
Message-ID: <1436515713.9778.52.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nithyakala Sainath <nithisai@gmail.com>
Date: Fri, 10 Jul 2015 09:08:33 +0100
In-Reply-To: <CACj2azvy9HZUsaoJO8jPHzMMrck1t_2O-1ctAffWOT3x9F3oFw@mail.gmail.com>
References: <CACj2azvy9HZUsaoJO8jPHzMMrck1t_2O-1ctAffWOT3x9F3oFw@mail.gmail.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Not able to set env var from anon function
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
X-List-Received-Date: Fri, 10 Jul 2015 08:09:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2015-07-09 at 17:42 +0530, Nithyakala Sainath wrote:
> I was playing with environmental variables and datastore that I fell
> into this situation:
>
> In a reccipe a.bb
>
> export TEMPDIR = "temp"
>
> python() {
>         os.environ["TEMPDIR"] = "randomvalue"
> }
>
> do_compile() {
>         echo ${TEMPDIR } 
> }
>
> gives me "temp" as the answer. I was expecting "randomvalue". Can I
> not modify the environmental variables and create new ones in anon
> functions ?
>
> But d.setVar("TEMPDIR", "randomvalue") in place of os.environ does the
> mgic. Why can't we manipulate the environmental variable using
> os.environ ?
>
> In bitbake.conf, we see that we can get env vars using os.getenv.

bitbake tightly controls the task execution environment. Only variables
marked as "export" will be exported and the value used for them is that
from the datastore. Therefore, os.environ set in anonymous python will
simply get overwritten. You can't have one value in the datastore and
another in the environment.

As Ross points out, ${TEMPDIR} will get expanded by bitbake anyway so it
would print the datastore value anyway.

Cheers,

Richard



