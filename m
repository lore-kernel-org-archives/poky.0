Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9976E4C8086F
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 08:33:34 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p05EZ9xX018802; Wed, 5 Jan 2011 14:35:10 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xfLtlCCwaW8V; Wed,  5 Jan 2011 14:35:09 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p05EZ6LV018791
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 5 Jan 2011 14:35:07 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1A34D924-4ABD-44E5-A605-A4A37009CAA1@dominion.thruhere.net>
References: <C3C119F5-9718-4FAD-B52D-51229140AAD0@dominion.thruhere.net>
	<1A34D924-4ABD-44E5-A605-A4A37009CAA1@dominion.thruhere.net>
Date: Wed, 05 Jan 2011 14:33:05 +0000
Message-ID: <1294237985.17519.22894.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [RFC] put PACKAGE_EXTRA_ARCHS in tune files, not machines files, just like OE does
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
X-List-Received-Date: Wed, 05 Jan 2011 14:33:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-04 at 10:12 +0100, Koen Kooi wrote:
> Op 4 jan 2011, om 09:14 heeft Koen Kooi het volgende geschreven:
> > I spent this mornings pre-coffee time debugging a strange problem in
> do_rootfs which turned out to be pretty simple (after coffee, that
> is): yocto puts PACKAGE_EXTRA_ARCHS in the machine.confs instead of
> the tune files.
> > 
> > This would solve the massive duplication in the machine files and
> help to avoid the "do_rootfs complains about missing packages that
> *are* present" type of problems. FWIW, OE has does this years ago and
> it has worked out quite well.
> > 
> > I do find it funny that various bugs in yocto give a deja-vu feeling
> of having them solved before :)
> 
> This is how the patch would look like:
> http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=a1825f04c3b8b98a66ae402e99fd40ff2be59c82

I think this makes sense and will take a patch or a bug enhancement
request which we'll get to at some point.

Cheers,

Richard


