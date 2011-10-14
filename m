Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01A3CE01244
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 09:04:47 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9EGBLg0023657; Fri, 14 Oct 2011 17:11:22 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id pHRUUwS+CFEJ; Fri, 14 Oct 2011 17:11:21 +0100 (BST)
Received: from [192.168.1.66] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9EGBHq1023652
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 14 Oct 2011 17:11:19 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 14 Oct 2011 17:04:33 +0100
In-Reply-To: <4E984ACB.1080901@mlbassoc.com>
References: <4E984ACB.1080901@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1318608283.2342.32.camel@ted>
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky SDK as an external toolchain
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
X-List-Received-Date: Fri, 14 Oct 2011 16:04:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-10-14 at 08:44 -0600, Gary Thomas wrote:
> Premise: I'm happy with the toolchain that builds with Poky/Yocto
> Problem: I'm not happy rebuilding said toolchain all the time, nor
> having my customers have to rebuild it.
> 
> Solution? I'd like to build the meta-toolchain and then be able to
> use that as an external toolchain for subsequent builds.  That way,
> I can create the tools and reuse them internally as well as pass
> them to my customers.
> 
> How can I make this happen?  The last time I tried anything like
> this, I spent many days in the attempt only to find out that it
> was never going to work...

We used to have code for doing exactly what you describe. It was error
prone, buggy and a world of pain. I was very relived when we removed it.

We do have external toolchain support. You could use that as you would
for a toolchain shipped by CSL or similar.

> Note: sstate is *not* the answer.  Not only is it HUGE (well over
> 1GB for a typical setup), but it doesn't work reliably - see
> bug #1536

sstate is the answer and we need to actually make it work for your use
cases. We need to look at the problems you're having and find ways to
address them. I know it has issues but there isn't anything
fundamentally wrong with what its doing, we just need to get the issues
addressed. I'll happily do what I can to help that (and have been trying
to already) if the issues are known about. This is the first time anyone
has mentioed the 1GB size problem of the toolchain for example...

Cheers,

Richard


