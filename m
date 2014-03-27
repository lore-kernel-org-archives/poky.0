Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1801BE00B93
	for <poky@yoctoproject.org>; Thu, 27 Mar 2014 01:29:13 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2R8SxH2018819; Thu, 27 Mar 2014 08:29:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Qoqp1W3MViuv; Thu, 27 Mar 2014 08:28:59 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2R8StOj018816
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 27 Mar 2014 08:28:57 GMT
Message-ID: <1395908929.24890.119.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Thu, 27 Mar 2014 08:28:49 +0000
In-Reply-To: <20140327060204.GA14885@xiaoyu.lan>
References: <20140327060204.GA14885@xiaoyu.lan>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: PRserver support broken in Dora?
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
X-List-Received-Date: Thu, 27 Mar 2014 08:29:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-03-27 at 07:02 +0100, Holger Hans Peter Freyther wrote:
> I am sorry to be a bit vagued. I have an in-house application, I modified
> the CONFFILES_${PN} line of app-name_git.bb and then issued bitbake app-name.
> My expectation was that somehow the signature will be different app-name
> will be re-built and the resulting PKGR will be r1.X+1.
> 
> In practice nothing is being re-built. JaMa pointed out I can use the
> "bitbake -S" option to display the signature but when doing "bitbake -S
> app-name" nothing relevant will be printed on the screen. I tried to use
> strace to see if it writes to a file but the trace is way too long to
> find something relevant.
> 
> My local.conf is added below. Could it be that the AUTOPR handling in
> Dora is broken? Any idea of where I can look at to see why the revisions
> are never incremented?

Looking at the code, I suspect this is a bug which still exists in
master. I think fix is to find this in meta/classes/package.bbclass:

# Since bitbake can't determine which variables are accessed during package
# iteration, we need to list them here:
PACKAGEVARS = "FILES RDEPENDS RRECOMMENDS SUMMARY DESCRIPTION RSUGGESTS RPROVIDES RCONFLICTS PKG ALLOW_EMPTY pkg_postinst pkg_postrm INITSCRIPT_NAME INITSCRIPT_PARAMS DEBIAN_NOAUTONAME ALTERNATIVE PKGE PKGV PKGR USERADD_PARAM GROUPADD_PARAM"

and add CONFFILES to that list. The sstate checksum will then reflect
changes to CONFFILES.

Can you see if that helps?

Cheers,

Richard


