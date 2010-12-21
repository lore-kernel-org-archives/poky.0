Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id B70C84C80039
	for <poky@lists.pokylinux.org>; Tue, 21 Dec 2010 11:40:35 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHfvWI020868; Tue, 21 Dec 2010 17:41:57 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id sOQrw-a5r-XF; Tue, 21 Dec 2010 17:41:57 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHfomx020861
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 17:41:51 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D10DB63.60408@mlbassoc.com>
References: <4D10CB88.4040308@mlbassoc.com>
	<1292949865.25087.6264.camel@rex>  <4D10DB63.60408@mlbassoc.com>
Date: Tue, 21 Dec 2010 17:40:03 +0000
Message-ID: <1292953203.25087.6328.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Write-protect $DL_DIR
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
X-List-Received-Date: Tue, 21 Dec 2010 17:40:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 09:52 -0700, Gary Thomas wrote:
> On 12/21/2010 09:44 AM, Richard Purdie wrote:
> > Make the readonly directory a file:// source in PREMIRRORS. You can use
> > the SSTATE_MIRRORS syntax in local.conf to do this without a class file.
> >
> > It won't actually copy them to DL_DIR if they're already local.
> 
> This sounds good.  Do you have an example of what to put into
> local.conf?  I'm not sure what you mean by using the SSTATE_MIRRORS
> syntax above.

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=642dd32920f62e991e4ca629ed304b95b37ce1ef

Cheers,

Richard


