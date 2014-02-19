Return-Path: <changhyeok.bae@lge.com>
Received: from lgemrelse6q.lge.com (LGEMRELSE6Q.lge.com [156.147.1.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C37A2E007FF
	for <poky@yoctoproject.org>; Wed, 19 Feb 2014 15:43:29 -0800 (PST)
Received: from unknown (HELO CHBae0915) (10.177.230.143)
	by 156.147.1.121 with ESMTP; 20 Feb 2014 08:43:27 +0900
X-Original-SENDERIP: 10.177.230.143
X-Original-MAILFROM: changhyeok.bae@lge.com
From: "Changhyeok Bae" <changhyeok.bae@lge.com>
To: "'Roseville House'" <championoaks@gmail.com>,
	"'Richard Purdie'" <richard.purdie@linuxfoundation.org>,
	<poky@yoctoproject.org>
References: <CAOqG5mxzcniXx3UaZedqZ2Qvkpw7yOJcSTVBjvnp-RZqZGOZMg@mail.gmail.com>	<1392848233.14081.278.camel@ted>
	<CAOqG5mymLd_u6pujFs8ucjuAtjV0VzKR1yKXahArw5yNze387Q@mail.gmail.com>
In-Reply-To: <CAOqG5mymLd_u6pujFs8ucjuAtjV0VzKR1yKXahArw5yNze387Q@mail.gmail.com>
Date: Thu, 20 Feb 2014 08:43:28 +0900
Message-ID: <029501cf2dcc$639437b0$2abca710$@lge.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQMd7cA8wzCxedHb6xGwawp3ONGg+AExdcZfAlVAPi2YA4cfAA==
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
X-List-Received-Date: Wed, 19 Feb 2014 23:43:33 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: ko

You should create dkms.bb in your yocto build.

The error is occurred from missing dkms.bb
-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
On Behalf Of Roseville House
Sent: Thursday, February 20, 2014 8:34 AM
To: Richard Purdie; poky@yoctoproject.org
Subject: Re: [poky] unable to pull packages in recipe

Thanks for your reply.

I am trying to specify build dependencies  in my recipe "foo".
>>>Build-Depends: debhelper (>= 7.0.50~), autoconf, automake, libtool, 
>>>libpcre3-dev (>= 7.8), libjson0-dev (>= 0.9), flex, bison, 
>>>hardening-wrapper, dh-autoreconf, dkms

Taking your advice I changed the line to DEPENDS = "autoconf automake
libtool libpcre libjson flex bison dkms"
and ran into the following error

:~/poky/build$ bitbake foo
Loading cache: 100%
|#################################################################|
ETA:  00:00:00
Loaded 1190 entries from dependency cache.
Parsing recipes: 100%
|###############################################################|
Time: 00:00:00
Parsing of 860 .bb files complete (856 cached, 4 parsed). 1194 targets, 41
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'dkms'
ERROR: Required build target 'fwts' has no buildable providers.
Missing or unbuildable dependency chain was: ['foo', 'dkms']
============================

These are details of dkms which is installed on my host machine. I can
compile the application successfully on my host but its failing within Poky.
Homepage: http://linux.dell.com/dkms
Vcs-Browser: http://git.debian.org/?p=pkg-dkms/dkms.git
Vcs-Git: git://git.debian.org/pkg-dkms/dkms.git


On Wed, Feb 19, 2014 at 2:17 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2014-02-19 at 11:37 -0800, Roseville House wrote:
>> I have written a recipe to fetch/build/deploy an application which 
>> requires following packages DEPENDS = "autoconf automake libtool 
>> libpcre3-dev libjson0-dev flex bison dkms"
>>
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing PROVIDES 'libpcre3-dev' (but 
>> /home/stangri/poky/foo/recipes-core/foo/foo.bb DEPENDS on or 
>> otherwise requires it). Close matches:
>>   libpcre
>> ERROR: Required build target 'fwts' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['foo', 'libpcre3-dev']
>
> You need to use recipe names (PN), not package names in a DEPENDS line.
> This would therefore be libpcre, not libpcre3. Note these are also 
> build time dependencies.
>
> If you really want to specify runtime package dependencies, you can 
> specify RDEPENDS_${PN} to add runtime dependencies to the ${PN} package.
> Note that this namespace wants untranslated dependencies, as they 
> appear in PACKAGES of the associated recipe so this would be 
> libpcre-dev with no 3 since that renaming is done later.
>
> Cheers,
>
> Richard
>
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky


