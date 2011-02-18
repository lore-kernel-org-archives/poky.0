Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9ACFE4C80093
	for <poky@lists.yoctoproject.org>; Fri, 18 Feb 2011 06:10:34 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ICAVoA010041;
	Fri, 18 Feb 2011 12:10:31 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09203-09; Fri, 18 Feb 2011 12:10:19 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ICAHAf010027
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Feb 2011 12:10:17 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1298027433.11289.2682.camel@rex>
References: <AANLkTi==59FW4R15YrsSSR8EHWRgn2Gh9BJ2rUVPMWS+@mail.gmail.com>
	<1298027433.11289.2682.camel@rex>
Date: Fri, 18 Feb 2011 12:10:11 +0000
Message-ID: <1298031011.11289.2759.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@lists.yoctoproject.org
Subject: Re: Problem with METADATA_* vars
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
X-List-Received-Date: Fri, 18 Feb 2011 12:10:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-18 at 11:10 +0000, Richard Purdie wrote:
> On Fri, 2011-02-18 at 10:34 +0100, Koen Kooi wrote:
> > It builds fine when doing 'bitbake angstrom-version', but when doing
> > 'bitbake console-image', which includes angstrom-version I get:
> > 
> > tr: write error: Broken pipe
> > ERROR: Error evaluating '${@base_detect_branch(d)}'
> > Traceback (most recent call last):
> >   File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117,
> > in expandWithRefs
> >     s = __expand_python_regexp__.sub(varparse.python_sub, s)
> >   File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76,
> > in python_sub
> >     value = utils.better_eval(codeobj, DataContext(self.d))
> >   File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in
> > better_eval
> >     return eval(source, _context, locals)
> >   File "METADATA_BRANCH", line 1, in <module>
> >   File "metadata_scm.bbclass", line 7, in base_detect_branch
> >   File "metadata_scm.bbclass", line 2, in base_get_metadata_git_branch
> > IOError: [Errno 4] Interrupted system call
> 
> I'm going to guess its:
> 
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=03d40a4a7bd60dcbc21f5a06c0f4f53cb47de0f3
> 
> at fault. I'm going to rework that so the handler is only activated at
> idle sleep time.

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=359a4d8bf72867b4d5f3daaf8c4f14a82a810107

should fix this...

Cheers,

Richard


