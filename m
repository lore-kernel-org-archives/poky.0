Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A8B94C80BD4
	for <poky@pokylinux.org>; Sun, 21 Nov 2010 12:17:42 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oALIHdAA017518;
	Sun, 21 Nov 2010 18:17:39 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17478-01; Sun, 21 Nov 2010 18:17:35 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oALIHUbr017512
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 21 Nov 2010 18:17:30 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3A61970E@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D3A61970E@shsmsx502.ccr.corp.intel.com>
Date: Sun, 21 Nov 2010 18:17:11 +0000
Message-ID: <1290363431.1272.15745.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: update about SSTATE status
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
X-List-Received-Date: Sun, 21 Nov 2010 18:17:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Kevin,

On Sun, 2010-11-21 at 21:02 +0800, Tian, Kevin wrote:
> Recently I took some time to try out SSTATE prebuilt feature, and now I think it's time
> to summarize issues I've seen and also some enhancements I've made. All the changes
> are currently in poky-contrib:tk/sstate branch, which are still under test and on a slightly
> old commit (at Nov.13).
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=tk/sstate
> 
> I use the sstate_cache generated from the 1st build as the SSTATE_DIR for the 2nd 
> build, and then check the SSTATE use status in 2nd build. Most issues below I think
> apply to a MIRROR mode too.

This is great analysis, thanks!

> I've observed SSTATE broken in below scenarios:
> 
> a) ~31 recipes fail to reuse sstate packages when the 1st build and the 2nd build are
> continuously build, when using same source tree
> https://lists.yoctoproject.org/pipermail/poky/2010-November/000174.html
> 
> b) more recipes fail if the 2nd build was started in next day after when the 1st build
> was generated. This is related to DATE/TIME variables referenced by some tasks.

I'd be interested to see which recipes are doing this...

> c) My build machine suffered from a power down, and then all STATE packages can't
> be reused after reboot. Comparison between two builds show that some shell 
> variables change, e.g: GNOME_KEYRING_SOCKET, SSH_AUTH_SOCK, etc.

We should whitelist the ones we don't mind if they change.

> d) no STATE package from the 1st build could be reused when the two builds use
> different source trees, though two source trees are identical with only difference on
> the path. This is related to OEROOT

I was sure I tested this and the checksums matched :/. Which variables
are changing to cause this - we really need to track them down...

> e) If there're changes on libc/gcc packages between the 1st build and the 2nd build,
> the 2nd build will always fail, either on gcc-runtime or eglibc, or other libc/gcc
> bootstrap packages. The reason is that sstate_installation skips -initial/-intermediate
> packages which breaks bootstrap process.
> https://lists.yoctoproject.org/pipermail/poky/2010-November/000270.html
> 
> The major problem for above issues is that many undesired variables which are
> bound to build environment are counted into signature generation. Bitbake takes
> a list of environmental variables from the shell and then convert into internal
> variables. We need to separate those from bitbake internal variables. So I split
> BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE into two groups:
> 
> 	BB_ENV_WHITELIST_BB/BB_ENV_EXTRAWHITE_BB
> 	BB_ENV_WHITELIST_SHELL/BB_ENV_EXTRAWHITE_SHELL
> 
> The 1st group covers variables defined internally in bitbake, while the other group
> points to the true external environmental variables. This way we can always wipe
> the _SHELL group from the dependency chain, while use BB_BASEHASH_WHITELIST
> to control bitbake variables:
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/sstate&id=8e1b6a292b3c796c5c0273de76d2e83271c83e26
> 
> Above looks somewhat ugly, but it should improve current situation a lot. We
> do need a better way to mark such variable attribute efficiently though.

I'm afraid I don't like this solution, its too complicated. Why don't we
just whitelist the variables we are happy shouldn't influence the
checksums even if they are present in the environment?

To be honest there are several of these we should only export to
"interactive" tasks anyway so perhaps marking some as unexport and then
exporting them in devshell and the interactive patch handler would be a
better approach?

> In the meantime, there're other two enhancements which are also helpful:
> 
>   - update-alternative expands an absolute path when appending to do_install, 
> which impacts signature:
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/sstate&id=a09df20442bcfc033b955992948e2dc2f6cbb0b4

Yes, this looks correct, nice catch!

>   - BBCLASSEXTEND is not covered by BB_TASKHASH_WHITELIST, i.e 
> "virtual:native:" and "virtual:nativesdk:":
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=tk/sstate&id=07697ff94ff1829ef16effb48c73a2312af6a2ff

Again, good catch!

I've merged these two.

> The remaining thing in the list:
> 
> - more tests on my branch
> - rebase to latest master
> - address incremental build failure when libc/gcc recipes are changed. Tom Rini
> gave a suggestion to use a similar 'deptask' as in previous stage. I need more
> thought on that and not sure whether it can solve it completely. If there's no clean 
> way, we may wait until libc/gcc bootstrap process is changed (sysroot to different 
> places) which is a 1.0 task, and then suggest people to always wipe out related 
> sstate packages when seeing those errors

Poky's sstate code workd very differently to packaged staging, I don't
think dependencies can help us in the sstate case. We perhaps just need
to improve the logic somehow. I need to think about the problem in more
detail to come up with better direction suggestions.

Cheers,

Richard


