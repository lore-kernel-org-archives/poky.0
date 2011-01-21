Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 23F5F4C80FAD
	for <poky@lists.pokylinux.org>; Fri, 21 Jan 2011 10:18:11 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LGK4A6011013; Fri, 21 Jan 2011 16:20:04 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id dnBBYfwAvost; Fri, 21 Jan 2011 16:20:04 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LGJebB010941
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 21 Jan 2011 16:19:43 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D399769.1050803@mlbassoc.com>
References: <4D3850B3.2030100@mlbassoc.com>
	<1295619024.14388.30678.camel@rex>  <4D399769.1050803@mlbassoc.com>
Date: Fri, 21 Jan 2011 16:17:37 +0000
Message-ID: <1295626657.14388.31197.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Fri, 21 Jan 2011 16:18:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-21 at 07:25 -0700, Gary Thomas wrote:
> This particular test was isolated, just that one recipe.  I noticed
> it before when building a complete image, so running it isolated does not
> seem to make any difference.  There is also nothing else running on my build
> machine (it's a separate server that is used only for builds)
> 
> This is against master as of 2011-01-14 (897530621fabf3c345c302050a5c21e16097a2ba)
> with my local layers.
> 
> What can I look at (alternatively what data can I provide) to help
> understand this?

You could try pulling in:
http://git.pokylinux.org/cgit.cgi/poky/commit/?id=ede381d56b180b384fdad98d445e5430819cfade
http://git.pokylinux.org/cgit.cgi/poky/commit/?id=7857834691868b7f48f732ee78d8770f5473ff68
http://git.pokylinux.org/cgit.cgi/poky/commit/?id=fd88588df029604689db9b0e30c55aad68392a5d

and see if they fix the problem. I'm not sure that they would in a
single task case but who knows. You could also try adding timings as per
my previous email, the change to package.bbclass was simply:

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 8e7fa26..8b0cb96 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1082,6 +1082,7 @@ python package_do_package () {
                return
 
        for f in (bb.data.getVar('PACKAGEFUNCS', d, True) or '').split():
+               bb.error("Running %s" % f)
                bb.build.exec_func(f, d)
 }
 do_package[dirs] = "${SHLIBSWORKDIR} ${PKGDESTWORK} ${D}"

as I'd like to understand of the 23 minutes, where the time is being spent.

Cheers,

Richard


