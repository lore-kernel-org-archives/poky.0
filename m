Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DA3DE00D2E; Mon, 19 Dec 2016 05:55:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F87E00D25
	for <poky@yoctoproject.org>; Mon, 19 Dec 2016 05:55:15 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	uBJDtCWX026813; Mon, 19 Dec 2016 13:55:12 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DHdcJlJKujD0; Mon, 19 Dec 2016 13:55:12 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	uBJDtAHh026810
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 19 Dec 2016 13:55:12 GMT
Message-ID: <1482155710.9843.36.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: praveen vattipalli <praveen.vatt@gmail.com>, poky@yoctoproject.org
Date: Mon, 19 Dec 2016 13:55:10 +0000
In-Reply-To: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
References: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: error while compiling hello_2.7.bb
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
X-List-Received-Date: Mon, 19 Dec 2016 13:55:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2016-12-19 at 18:10 +0530, praveen vattipalli wrote:
> Hi All,
> I have hello_2.7.bb file which contains as below
> vim hello_2.7.bb
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "test"
> LICENSE = "BSD"
> 
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234c
> b"
> SRC_DIR ?= "/home/rajesh/poky-krogoth-15.0.2/meta/recipes-
> support/hello/hello_2.7"
> SRC_URI = "file://${SRC_DIR}"
> 
> S = "${SRC_DIR}"

You don't want to set S to this as you're then building things in your
metadata directory. I suspect the code in more recent versions cleans
${S} before fetching/unpacking and this is wiping out your files.

You probably want S = "${WORKDIR}" or maybe S = "${WORKDIR}/hello_2.7",
I can't remember exactly where the fetcher places a directory of files.

Cheers,

Richard

