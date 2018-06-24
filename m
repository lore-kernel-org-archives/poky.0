Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFB28E00929; Sun, 24 Jun 2018 12:03:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.7 FROM_STARTS_WITH_NUMS From: starts with several
	numbers
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [64.59.136.138 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out-so.shaw.ca (smtp-out-so.shaw.ca [64.59.136.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 800D6E0084E
	for <poky@yoctoproject.org>; Sun, 24 Jun 2018 12:03:25 -0700 (PDT)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id XAIFfA7vESzNNXAIGfdEWn; Sun, 24 Jun 2018 13:03:24 -0600
X-Authority-Analysis: v=2.3 cv=KuxjJ1eN c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=7mUfYlMuFuIA:10
	a=6G1gYuTPJySY3T1Dl7wA:9 a=QEXdDO2ut3YA:10
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>)
	id 1fXAIF-0003LF-0f; Sun, 24 Jun 2018 12:03:23 -0700
To: akuster808 <akuster808@gmail.com>
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Sun, 24 Jun 2018 12:03:22 -0700
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
In-Reply-To: <0a45cd1d-d45d-4741-4fc6-9300f88c2f74@gmail.com>
References: <dc32d45cc47d63d2921c9b8860ab5157@mail.kylheku.com>
	<0a45cd1d-d45d-4741-4fc6-9300f88c2f74@gmail.com>
Message-ID: <ec6e09f6606f80f8276f082f7af1764a@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfOa5/lq4bCBz0+9FTcs5n6RRGazVDB6ajxDhl0WRstl9LdXz2h0oAz1F2VggtoSRKhiNunVDAUjdDLp5XThxCEGZmvZvSrUWke5/U/9CNZZZTvwrraKG
	iB1drhmnFMybF+yiQsUxgDN0djIAksig8PJ0typch3ki9jqSvY4YImeFJ5OU/nJl44brZK8KDX5gniRYDoCo7Gy4b/bdEAzUEkI=
Cc: poky@yoctoproject.org
Subject: Re: Yocto-2-2: native executables and libs pull symbols from wrong glibc.
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
X-List-Received-Date: Sun, 24 Jun 2018 19:03:26 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-06-24 11:31, akuster808 wrote:
>> Concretely, this leads to a failure when you build on a glibc-2.27
>> based system, like Ubuntu 18.04.
> What version of morty 2.2 did you clone?
>=20
> There where some uninative backports done for hosts with glibc-2.27

But do they really fix the underlying issue, or sweep it back under the=20
rug?

The thing should build regardless of what glibc the build machine is=20
using.


