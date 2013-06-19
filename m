Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B56E014E2
	for <poky@yoctoproject.org>; Wed, 19 Jun 2013 01:08:06 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5J8E4Tu006253; Wed, 19 Jun 2013 09:14:04 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XQaiyHqzMSZN; Wed, 19 Jun 2013 09:14:04 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5J8Dwq0006244
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Wed, 19 Jun 2013 09:14:00 +0100
Message-ID: <1371629261.20823.158.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
Date: Wed, 19 Jun 2013 09:07:41 +0100
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD015B23F8@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD015B210C@AMDTCEX12.actuant.pri>
	<51C134AB.5030007@mlbassoc.com>
	<83DB4EC8FADD45428E3CC4E3664761FD015B23F8@AMDTCEX12.actuant.pri>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Creating library
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
X-List-Received-Date: Wed, 19 Jun 2013 08:08:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-06-19 at 05:56 +0000, Keskinarkaus, Teemu wrote:
> That helped a little. Now the build process didn't end with an error,
> but the image itself doesn't have the library. I think the deb-package
> is used to install stuff to the actual image that is being generated
> and not the directory that is under build-directory.
> 
> So, real fix would be figure out somehow how to get the library.deb to
> be generated properly instead just those those dev/dbg-packages.
> 
> I tried looking for example under poky, but majority, if not all, of
> them use autotools so they are not that much help.

It sounds like you need a FILES_${PN} += "/place/of/lib/files" type of
expression to show the system which files to install into the main
package.

I'm guessing but perhaps the libs you generate are xxxx.so files and
this is confusing the system? Usually libs are versioned and the x.so is
placed into the -dev package so you'll have to change the default FILES
variables if you do have something which is unversioned.

More information about the names of the files that aren't getting
matched would make it easier to help you. Did they get installed into
the -dev package?

Cheers,

Richard


