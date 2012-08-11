Return-Path: <laguest@archeia.com>
Received: from beast.archeia.com (beast.archeia.com [74.207.226.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF58DE0049A
	for <poky@yoctoproject.org>; Sat, 11 Aug 2012 08:08:47 -0700 (PDT)
Received: from [192.168.0.2] (5ac4d3d6.bb.sky.com [90.196.211.214])
	(Authenticated sender: laguest)
	by beast.archeia.com (Postfix) with ESMTPSA id C7B888045;
	Sat, 11 Aug 2012 15:08:45 +0000 (UTC)
Message-ID: <1344697718.4828.32.camel@rogue>
From: "Luke A. Guest" <laguest@archeia.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Sat, 11 Aug 2012 16:08:38 +0100
In-Reply-To: <502521A9.5030700@mlbassoc.com>
References: <1344533174.4828.29.camel@rogue> <5023F425.1090801@mlbassoc.com>
	<1344610399.4828.31.camel@rogue> <502521A9.5030700@mlbassoc.com>
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Sat, 11 Aug 2012 15:08:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-08-10 at 08:58 -0600, Gary Thomas wrote:
> On 2012-08-10 08:53, Luke A. Guest wrote:
> > On Thu, 2012-08-09 at 11:32 -0600, Gary Thomas wrote:
> >
> >> Try cleaning out your build tree (remove sstate-cache/ and tmp/) and run
> >> it again.  The error you are seeing is related to reusing the same tree
> >> with [somewhat] different target machines.
> >
> > I did this and did it get further, failed somewhere else though.
> >
> 
> Without more information, it will be hard for anyone to help you out :-(
> 

Yup, well I wanted to do a search first. I did come across the issue as
it's already known, but I thought it would be patched already.

| Compiling deb/deblistparser.cc
to /home/laguest/src/others/poky/poky-build/tmp/work/x86_64-linux/apt-native-0.7.14-r7/apt-0.7.14/obj/apt-pkg/deblistparser.opic
| deb/deblistparser.cc: In member function 'virtual short unsigned int
debListParser::VersionHash()':
| deb/deblistparser.cc:212:13: error: redeclaration of 'char* I'
| deb/deblistparser.cc:202:22: error: 'const char** I' previously
declared here
| make[2]: ***
[/home/laguest/src/others/poky/poky-build/tmp/work/x86_64-linux/apt-native-0.7.14-r7/apt-0.7.14/obj/apt-pkg/deblistparser.opic] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[1]: *** [all] Error 2
| make: *** [all] Error 2
| ERROR: oe_runmake failed
NOTE: package apt-native-0.7.14-r7: task do_compile: Failed
ERROR: Task 74
(/home/laguest/src/others/poky/poky/meta/recipes-devtools/apt/apt-native_0.7.14.bb, do_compile) failed with exit code '1'
Waiting for 1 running tasks to finish:
0: busybox-1.19.4-r6 do_compile (pid 30279)
NOTE: package busybox-1.19.4-r6: task do_compile: Succeeded
NOTE: Tasks Summary: Attempted 1744 tasks of which 162 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/laguest/src/others/poky/poky/meta/recipes-devtools/apt/apt-native_0.7.14.bb, do_compile
Summary: There were 57 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit
code.



