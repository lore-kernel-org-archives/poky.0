Return-Path: <mail@webthatworks.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 068BFE00BC2; Thu, 15 Oct 2015 14:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MISSING_HEADERS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp209.alice.it (smtp209.alice.it [82.57.200.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12A03E00B9E
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 14:39:00 -0700 (PDT)
Received: from caronte.home.webthatworks.it (87.8.144.45) by smtp209.alice.it
	(8.6.060.28) id 55BB67B20B7F3428 for poky@yoctoproject.org;
	Thu, 15 Oct 2015 23:38:38 +0200
Received: from gloom.home.webthatworks.it (gloom.home.webthatworks.it
	[192.168.1.14])
	by caronte.home.webthatworks.it (Postfix) with ESMTP id 03E1B6FE06A0
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 23:38:38 +0200 (CEST)
Received: from [IPv6:::1] (localhost [IPv6:::1])
	by gloom.home.webthatworks.it (Postfix) with ESMTP id E392C5E018F
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 23:37:37 +0200 (CEST)
References: <561FD3FB.9080606@webthatworks.it>
	<2253318.UlfHrrQpEp@peggleto-mobl.ger.corp.intel.com>
Cc: poky@yoctoproject.org
From: Ivan Sergio Borgonovo <mail@webthatworks.it>
Organization: http://www.WebThatWorks.it
Message-ID: <56201CA1.1010506@webthatworks.it>
Date: Thu, 15 Oct 2015 23:37:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.3.0
MIME-Version: 1.0
In-Reply-To: <2253318.UlfHrrQpEp@peggleto-mobl.ger.corp.intel.com>
Subject: [SOLVED]? Re: listing PACKAGES for a certain layer
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
X-List-Received-Date: Thu, 15 Oct 2015 21:39:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/2015 09:28 PM, Paul Eggleton wrote:
> Hi Ivan,

> On Thursday 15 October 2015 18:27:39 Ivan Sergio Borgonovo wrote:
>> Is there a way to list packages provided by a certain layer/recipe?

> Not layer, but you can get a bunch of info out of oe-pkgdata-util after
> recipes have been built - e.g. once the connman recipe has built you can run:

Do you mean I have to compile the package?

But probably solved in a different way:

get a list of targets from
bitbake-layers show-recipes | grep -B1 '[layer]'

join them with

bitbake -e [target] | grep 'PACKAGES='

there are still some packages coming from PACKAGES_DYNAMIC=
I'm not sure if I'm missing something else.

I'm going to write some shell script that will make things easier after 
I get a better understanding of PACKAGES_DYNAMIC.


This should be the equivalent of
aptitude search '?source-package([package])'

> $ oe-pkgdata-util list-pkgs -p connman
> connman-tools
> connman-tests
> connman-client
> connman-dbg
> connman-dev
> connman-doc
> connman

and this is similar (not equal) to:
apt-file find [package]

> $ oe-pkgdata-util list-pkg-files connman
> connman:
>          /etc/dbus-1/system.d/connman.conf
>          /etc/init.d/connman
>          /usr/sbin/connmand

But debian tools relay on an index and don't need to build stuff.

thanks

-- 
Ivan Sergio Borgonovo
http://www.webthatworks.it


