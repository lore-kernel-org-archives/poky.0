Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A2CE00799; Tue,  5 Aug 2014 03:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35FD7E004DD
	for <poky@yoctoproject.org>; Tue,  5 Aug 2014 03:48:40 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s75AmX15025706; Tue, 5 Aug 2014 11:48:33 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id JmwJ0Iw0JgT0; Tue,  5 Aug 2014 11:48:33 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s75AmUgJ025623
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 5 Aug 2014 11:48:31 +0100
Message-ID: <1407235710.6981.84.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
Date: Tue, 05 Aug 2014 11:48:30 +0100
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCC9B1AF@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<20140805022441.GB3867@haswell>
	<30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
	<CAMKF1soS9TDHD34wTCaQr1ZgTazZbF0u8u6dNKjgQzSzP4Sq9Q@mail.gmail.com>
	<30DC4EDFD798C94083F3E083754532CCC9B0A2@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407231867.6981.73.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9B1AF@G08CNEXMBPEKD02.g08.fujitsu.local>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Question]Does poky rebuild source when only makefile was modified
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
X-List-Received-Date: Tue, 05 Aug 2014 10:48:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-08-05 at 10:23 +0000, biannm@cn.fujitsu.com wrote:
> > On Tue, 2014-08-05 at 05:57 +0000, biannm@cn.fujitsu.com wrote:
> > > If $B != $S is supported, there is not a problem.
> > > When we rebuild a recipe where $B != $S is not supported, although
> > > tasks will be redone, the source files will not be rebuild if we just
> > change the libdir.
> > 
> > It depends on the Makefiles. Some work well, some don't.
> 
> Yes, i think so too.
> And, does you mean this is not the problem of yocto, we don't need care it?

Well, you could force the build system to wipe out and reconstruct ${S}
any time there was a change. For better or worse we've effectively
decided that its too much overhead for day to day use. If you need that
level of determinism, you can wipe TMPDIR.

> > > Does you mean that we just make this recipe to support  $B != $S in this
> > case.
> > 
> > Yes, that would be one way to solve the problem.
> 
> But how can i divide those recipe from normal one,
> it's not easy to understand for yocto developer because the rebuild will not report any message in this case.

Its a limitation of the software we're building so its not something its
easy for "Yocto" to fix...

Cheers,

Richard



