Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id A72C54C80039
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:09:46 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HMBQKa009551; Mon, 17 Jan 2011 22:11:26 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3vu+kAniUhGi; Mon, 17 Jan 2011 22:11:25 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HMBI4E009545
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 17 Jan 2011 22:11:20 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <2A247D8C-AF9B-480F-992E-3933590D2824@dominion.thruhere.net>
References: <2A247D8C-AF9B-480F-992E-3933590D2824@dominion.thruhere.net>
Date: Mon, 17 Jan 2011 22:09:20 +0000
Message-ID: <1295302160.14388.15771.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: Parsing fails when a recipe is using distutils.bbclass
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jan 2011 22:09:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-15 at 12:28 +0100, Koen Kooi wrote:
> Hi,
> 
> I'm trying to build gnuradio using the meta-openembedded overlay which
> is causing me some problems with python-cheeta. When I have built
> python(-native), everything is fine, but on a build from scratch
> (hitting the pseudo redirect):
> 
> koen@dominion:/OE/tentacle$ MACHINE=beagleboard ./oebb.sh bitbake foo
> Executing: MACHINE=beagleboard bitbake foo
> Pseudo has not been built, building this first before the main build
> ERROR: Error evaluating '${@python_dir(d)}'                                                                            | ETA:  00:00:35
> Traceback (most recent call last):
>   File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, in expandWithRefs
>     s = __expand_python_regexp__.sub(varparse.python_sub, s)
>   File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in python_sub
>     value = utils.better_eval(codeobj, DataContext(self.d))
>   File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in better_eval
>     return eval(source, _context, locals)
>   File "PYTHON_DIR", line 1, in <module>
>   File "python-dir.bbclass", line 7, in python_dir
> Exception: No Python in STAGING_INCDIR. Forgot to build python-native?

Just to follow up on this, the way OE detects the python directory isn't
compatible with the signature/checksum generation in poky. We therefore
switched to using PYTHON_BASEVERSION alongside the PREFERED_VERSION for
python to avoid this error.

Koen's later patches take this into account.

Cheers,

Richard


