Return-Path: <n.merinov@inango-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28F07E00CE0; Thu, 21 Mar 2019 06:00:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Mar 2019 06:00:48 PDT
Received: from mail.inango-sw.com (mail.inango-systems.com [213.136.71.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B83E00C45
	for <poky@yoctoproject.org>; Thu, 21 Mar 2019 06:00:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id 3770B7A249E;
	Thu, 21 Mar 2019 14:55:43 +0200 (IST)
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id UWiXmfvR-QJS; Thu, 21 Mar 2019 14:55:41 +0200 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id 9F2757A24A3;
	Thu, 21 Mar 2019 14:55:41 +0200 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.inango-sw.com 9F2757A24A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inango-systems.com;
	s=45A440E0-D841-11E8-B985-5FCC721607E0; t=1553172941;
	bh=tujkGnqgGhqccfaE5agxSmQdbbKaOfYpY5PLByKh47E=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=lzig+FC82tnyrOX+eC7Dk7BqvuxFz95CYxIMYADFuMTNjbDy5rWtLGKWGosYhg4FA
	4ZeC09ciBsE0lmmaBf0m4MBAodM8SpJsYbEk7Ae7cVNtlOXXKuYqJ0H1OAexaGcKHV
	LwRswVEv0CNgS13sNr5VzpX4Z7pXYzYdgiFoxevrgJr9Q4DgBc9NBX3PBmGiphbjIL
	omKKEdYcaE0U7KP37fLYe2f1AXfb62iOdNhvz7Ehaz/c5qQuiCk3yEKHuOgi82rq2v
	KAg+BDAbGXELrtfkZxKdGXG6e1e2DBFWpCE9vcJ4Wyvjt1rEhGZEiwZWtPnGCs9uU6
	G/3uoatOBbYvA==
X-Virus-Scanned: amavisd-new at inango-sw.com
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 3791EWTfbJ0W; Thu, 21 Mar 2019 14:55:41 +0200 (IST)
Received: from mail.inango-sw.com (mail.inango-sw.com [172.17.220.3])
	by mail.inango-sw.com (Postfix) with ESMTP id 56CCC7A249E;
	Thu, 21 Mar 2019 14:55:41 +0200 (IST)
Date: Thu, 21 Mar 2019 14:55:39 +0200 (IST)
From: Nikolai Merinov <n.merinov@inango-systems.com>
To: Glenn Szejna <glenn.szejna@singlewire.com>
Message-ID: <944673105.770602.1553172939741.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <CAEhK1XZaZ5veHutrrvnYx_90WabxTvzs=7jmQor8zHUQSKbuUg@mail.gmail.com>
References: <CAEhK1XZaZ5veHutrrvnYx_90WabxTvzs=7jmQor8zHUQSKbuUg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [172.17.220.3]
X-Mailer: Zimbra 8.8.9_GA_3006 (ZimbraWebClient - FF65 (Linux)/8.8.9_GA_3006)
Thread-Topic: For do_rootfs - basehash changed from 17... to 94... Variable
	TIME changed
Thread-Index: mt6LxXOaaErN7LSLpISykqFnTrKD0g==
Cc: poky@yoctoproject.org
Subject: Re: For do_rootfs - basehash changed from 17... to 94...	Variable TIME changed
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
X-List-Received-Date: Thu, 21 Mar 2019 13:00:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Glenn, 

> In our recipe has the exclude line: 
> do_rootfs[vardepsexclude] = "TIME DATE DATETIME" 
> 
> 
> Why is bitbake depending on TIME when we have told it not to? 

Did you use the TIME variable directly in the "do_rootfs" function code? The "vardepsexclude" flag excludes only direct dependencies:

    B = "test"
    A = "${B}"
    # Code on the following line will not work: There is no direct dependency from do_install to B.
    # do_install[vardepsexclude] = "B"
    # Code on the following line effectively remove value of B variable from do_install stamps:
    A[vardepsexclude] = "B" 
    do_install () { 
      echo ${A}
    }

Regards, 
Nikolai 


