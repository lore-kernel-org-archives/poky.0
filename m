Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11509E0077E; Wed, 11 Mar 2015 03:26:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C02A2E0076F
	for <poky@yoctoproject.org>; Wed, 11 Mar 2015 03:26:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2BAQ7OS019906; Wed, 11 Mar 2015 10:26:07 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id m5LxMeyloh-S; Wed, 11 Mar 2015 10:26:06 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2BAPseW019886
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 11 Mar 2015 10:26:05 GMT
Message-ID: <1426069554.9114.42.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Wed, 11 Mar 2015 10:25:54 +0000
In-Reply-To: <ad1cfd7760f0bca3775eacd18ccb1155db117d9b.1426069193.git.liezhi.yang@windriver.com>
References: <cover.1426069193.git.liezhi.yang@windriver.com>
	<ad1cfd7760f0bca3775eacd18ccb1155db117d9b.1426069193.git.liezhi.yang@windriver.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky-tiny.conf: clean PACKAGECONFIG for lib32-opkg-utils
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
X-List-Received-Date: Wed, 11 Mar 2015 10:26:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-03-11 at 03:20 -0700, Robert Yang wrote:
> Otherwise lib32-python would be built because lib32-opkg-utils depends
> on it and cause build errors:
> 
> ./libpython2.7.so: undefined reference to `localeconv'
> ./libpython2.7.so: undefined reference to `towlower'
> ./libpython2.7.so: undefined reference to `iswlower'
> ./libpython2.7.so: undefined reference to `nl_langinfo'
> ./libpython2.7.so: undefined reference to `iswupper'
> ./libpython2.7.so: undefined reference to `iswalpha'
> ./libpython2.7.so: undefined reference to `towupper'
> ./libpython2.7.so: undefined reference to `iswspace'

I have to ask, does using multilib with poky-tiny even make sense?

Cheers,

Richard


