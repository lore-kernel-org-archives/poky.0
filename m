Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75DD7E00406
	for <poky@lists.yoctoproject.org>; Wed, 21 Aug 2013 07:26:48 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7LEcQCk030554; Wed, 21 Aug 2013 15:38:27 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id LJL-0s9xSJR9; Wed, 21 Aug 2013 15:38:26 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7LEcKId030546
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Wed, 21 Aug 2013 15:38:22 +0100
Message-ID: <1377095185.25999.116.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: bitbake-devel <bitbake-devel@lists.openembedded.org>
Date: Wed, 21 Aug 2013 15:26:25 +0100
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky <poky@lists.yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Bitbake in server mode
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
X-List-Received-Date: Wed, 21 Aug 2013 14:26:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I've just realised that we have some new functionality that has sneaked
in but most people are unaware of. You can now run bitbake as a server
in the background and then just connect the knotty UI to it with
commands. The usage is:

bitbake --server-only -t xmlrpc -B localhost:1234

which starts a server on localhost port 1234 and then you can run
commands with:

BBSERVER=localhost:1234 bitbake <somecommand>

and 

BBSERVER=localhost:1234 bitbake -m

to shut it down.

Known issues:

a) Parsing is slower. Probably due to all the debug messages going over
the IPC/xmlrpc. UI event filtering should fix it.
b) Something is causing a cache reparse initially. Need to figure out
what. Maybe the BBSERVER variable itself?

This is still development so I'd not recommend everyone use this for
production just yet but it gives some nice insight into what the future
holds!

We should be able to make bitbake in this mode much more responsive to
commands since there is no cache overhead.

Cheers,

Richard


