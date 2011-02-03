Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA7334C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 03:13:59 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p139G1OU015045; Thu, 3 Feb 2011 09:16:02 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id WtNHEtDpBeNm; Thu,  3 Feb 2011 09:16:01 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p139FrpO015041
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 3 Feb 2011 09:15:55 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201102030258.59288.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
	<70e416b931ba9ee1ca24a967a0410fda65b48bea.1296267951.git.paul.eggleton@linux.intel.com>
	<1296582252.13501.20225.camel@rex>
	<201102030258.59288.paul.eggleton@linux.intel.com>
Date: Thu, 03 Feb 2011 09:13:38 +0000
Message-ID: <1296724418.1544.7897.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 05/12] qt4-tools-native: update from OpenEmbedded
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
X-List-Received-Date: Thu, 03 Feb 2011 09:14:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-03 at 02:58 +0000, Paul Eggleton wrote:
> On Tuesday 01 February 2011 17:44:12 you wrote:
> > Please don't reindent files when making other changes, it makes it hard
> > to see where the real changes were. I've pulled things but taken out the
> > worst whitespace changes manually this time.
> 
> A lot of those changes were brought in from meta-oe, although I admit I added 
> a fair few others. I will endeavour to keep indentation changes (if any) 
> separate in future.
>  
> > Please keep in mind:
> > 
> > shell functions/code use tabs
> > python code uses four space indentation
> 
> Is there a particular reason for this? Can we not use four spaces everywhere? 
> I see a wiki document that spells this out [1] however if it's of any 
> consequence, OE's documentation specifies spaces only [2].

Hmm, OE always used to be tabs for shell functions :/.

"it is a policy decision of OE that spaces always be used." - that is
news to me.

Ideally Yocto and OE need to be consistent. Something to table for
discussion with the TSC when we establish a new one I guess...

Cheers,

Richard

> Cheers,
> Paul
> 
> [1] 
> https://wiki.pokylinux.org/wiki/Best_Known_Methods_%28BKMs%29_for_Package_Updating#White_Space_Management
> 
> [2] http://docs.openembedded.org/usermanual/html/recipes_syntax.html
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
> 



