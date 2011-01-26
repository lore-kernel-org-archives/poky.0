Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93B1D4C811AA
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 05:42:37 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0QBiTlG031278; Wed, 26 Jan 2011 11:44:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id CeSexXwsEoh2; Wed, 26 Jan 2011 11:44:29 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0QBiO6l031258
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 26 Jan 2011 11:44:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D3F9A27.3050409@windriver.com>
References: <1295993245.27814.133.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB71E1@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB7203@shsmsx502.ccr.corp.intel.com>
	<4D3F9A27.3050409@windriver.com>
Date: Wed, 26 Jan 2011 11:42:04 +0000
Message-ID: <1296042124.27814.2557.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Master stability update
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
X-List-Received-Date: Wed, 26 Jan 2011 11:42:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 21:51 -0600, Mark Hatle wrote:
> On 1/25/11 9:05 PM, Tian, Kevin wrote:
> >> From: Tian, Kevin
> > After a quick check, I guess this is not a problem. for example perl.do_configure
> > changes checksum due to $MACHINE in dependency variables as Dongxiao said.
> > Once perl is not reusable, at least ~10 recieps (libzypp, libtool, rpm, ...) are not
> > reusable too because perl is in their task dependency chain.
> > 
> > I didn't check all the differences yet, but overall feeling is that this should be OK
> > as Dongxiao mentioned there're several obvious MACHINE related recipes. I'll
> > leave to Dongxiao for final confirmation. :-)
> 
> It might be nice (if not a bit dangerous) to be able to say "I want perl version
> X.Y.Z.  I don't really care about the checksum, as long as the version matches..."
> 
> In the case of perl, this is likely to do exactly what we want/need.  In the
> case of other packages (particularly libraries) this could cause serious problems...

Adding "perl" to BB_HASHTASK_WHITELIST would do exactly what you
describe so its at least possible although it doesn't cover a version
specific match which would probably be better as part of DEPENDS
handling.

Stopping it being machine specific is the first thing that needs fixing
though (I have a patch I'm testing for that one).

Cheers,

Richard


