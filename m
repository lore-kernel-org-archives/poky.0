Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95AAFE004E9
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 10:19:37 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9IHQE4f023795; Tue, 18 Oct 2011 18:26:15 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id lribGfP1fsT6; Tue, 18 Oct 2011 18:26:14 +0100 (BST)
Received: from [192.168.1.66] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9IHQ7kE023791
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 18 Oct 2011 18:26:10 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 18 Oct 2011 18:19:21 +0100
In-Reply-To: <4E9D957A.8090301@mlbassoc.com>
References: <4E9D90A9.6010303@mlbassoc.com>
	<20111018144905.GH20678@jama.jama.net> <4E9D93BC.8060707@mlbassoc.com>
	<20111018150057.GI20678@jama.jama.net> <4E9D957A.8090301@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1318958371.2250.19.camel@ted>
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: gstreamer update
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
X-List-Received-Date: Tue, 18 Oct 2011 17:19:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-10-18 at 09:04 -0600, Gary Thomas wrote:
> On 2011-10-18 09:00, Martin Jansa wrote:
> > On Tue, Oct 18, 2011 at 08:57:00AM -0600, Gary Thomas wrote:
> >> On 2011-10-18 08:49, Martin Jansa wrote:
> >>> On Tue, Oct 18, 2011 at 08:43:53AM -0600, Gary Thomas wrote:
> >>>> Just wondering if anyone is looking at upgrading the gstreamer
> >>>> support to a newer revision?  In particular, I'd like to use
> >>>> gst-plugins-good/0.10.30 which requires newer gst-plugins-base.
> >>>
> >>> something like
> >>> http://lists.linuxtogo.org/pipermail/openembedded-core/2011-October/011287.html
> >>> ?
> >>
> >> Thanks, except that I'm really only interested in what's going to happen
> >> on Poky/Yocto, which is why I asked the question on the Poky list.
> >
> > Poky/Yocto aren't using oe-core?
> 
> Not directly as I understand.  Changes in oe-core are merged into the
> Poky tree, it's not just a link.  I'd be happy to see that change, but
> until it does, I'm interested in the official Poky tree only.

I've just merged Pauls gstreamer update to OE-Core and Poky...

Cheers,

Richard


