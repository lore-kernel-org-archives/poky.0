Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id D944D4C808B0
	for <poky@pokylinux.org>; Mon, 20 Dec 2010 09:05:08 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKF6PkC027691; Mon, 20 Dec 2010 15:06:25 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id nKLUJQsgH7dV; Mon, 20 Dec 2010 15:06:24 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKF6J4D027674
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 15:06:21 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F40997F@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex> <4D08E868.6090606@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40965E@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4096A4@shsmsx502.ccr.corp.intel.com>
	<1292512754.26558.3993.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40997F@shsmsx502.ccr.corp.intel.com>
Date: Mon, 20 Dec 2010 15:04:37 +0000
Message-ID: <1292857477.25087.4517.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: about 'noexec' message
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
X-List-Received-Date: Mon, 20 Dec 2010 15:05:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-12-17 at 12:23 +0800, Tian, Kevin wrote:
> Unfortunately I think this causes another problem when using sstate. I got an error
> from m4-native when building from scratch (with prebuilt available):
> 
> ERROR: install: cannot stat `xxx/tmp/sysroots/i686-linux/usr/share/gnu-config/config.sub
> 
> Actually from the log gnu-config.do_populate_sysroot has been accelerated earlier in
> setscene stage, with necessary sysroot files installed. However later gnu-config-native
> is still considered requiring rebuild, and thus the installed sysroot files are removed again.
> The weird thing under this condition is that m4-native thought that do_populate_sysroot
> of gnu-config-native has been completed and thus doesn't wait for new build of 
> gnu-config-native to complete, which then triggers above error.
> 
> I haven't figure out the reason why this commit causes this confliction: sstate package
> is installed successfully but the package still requires rebuild. By reverting this change
> this error disappears.

I made some assumptions in the fix I pushed which weren't correct but
didn't show up under the testing I gave it. The real underlying issue is
that the XXX_setscene stamps are never created for setscene noexec
tasks. I've pushed a fix which does this now:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=a86f960f651c561bb104723aa0b4cd0922a3425a

Cheers,

Richard


