Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC15AE004DD
	for <poky@yoctoproject.org>; Wed, 19 Feb 2014 14:17:33 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s1JMGLja011902; Wed, 19 Feb 2014 22:17:25 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vU7VtTHq1gzY; Wed, 19 Feb 2014 22:17:24 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s1JMHJWK011990
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 19 Feb 2014 22:17:20 GMT
Message-ID: <1392848233.14081.278.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Roseville House <championoaks@gmail.com>
Date: Wed, 19 Feb 2014 22:17:13 +0000
In-Reply-To: <CAOqG5mxzcniXx3UaZedqZ2Qvkpw7yOJcSTVBjvnp-RZqZGOZMg@mail.gmail.com>
References: <CAOqG5mxzcniXx3UaZedqZ2Qvkpw7yOJcSTVBjvnp-RZqZGOZMg@mail.gmail.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: unable to pull packages in recipe
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
X-List-Received-Date: Wed, 19 Feb 2014 22:17:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-02-19 at 11:37 -0800, Roseville House wrote:
> I have written a recipe to fetch/build/deploy an application which
> requires following packages
> DEPENDS = "autoconf automake libtool libpcre3-dev libjson0-dev flex bison dkms"
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'libpcre3-dev' (but
> /home/stangri/poky/foo/recipes-core/foo/foo.bb DEPENDS on or otherwise
> requires it). Close matches:
>   libpcre
> ERROR: Required build target 'fwts' has no buildable providers.
> Missing or unbuildable dependency chain was: ['foo', 'libpcre3-dev']

You need to use recipe names (PN), not package names in a DEPENDS line.
This would therefore be libpcre, not libpcre3. Note these are also build
time dependencies.

If you really want to specify runtime package dependencies, you can
specify RDEPENDS_${PN} to add runtime dependencies to the ${PN} package.
Note that this namespace wants untranslated dependencies, as they appear
in PACKAGES of the associated recipe so this would be libpcre-dev with
no 3 since that renaming is done later.

Cheers,

Richard


