Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BA764C810C0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 15:28:27 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLLTiRA029561; Tue, 21 Dec 2010 21:29:44 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id rOJkbJ-vEgv1; Tue, 21 Dec 2010 21:29:44 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLLTbJa029557
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 21:29:39 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D10F862.5040302@mlbassoc.com>
References: <4D10CB88.4040308@mlbassoc.com> <4D10D857.8080906@intel.com>
	<4D10F862.5040302@mlbassoc.com>
Date: Tue, 21 Dec 2010 21:27:49 +0000
Message-ID: <1292966869.25087.6574.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 21 Dec 2010 21:28:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 11:56 -0700, Gary Thomas wrote:
> On 12/21/2010 09:39 AM, Scott Garman wrote:
> > On 12/21/2010 07:45 AM, Gary Thomas wrote:
> >> In my quest for a well-packaged Poky that I can distribute
> >> to my customers, I'd like to give them a pre-populated $DL_DIR
> >> tree (also in response to those customers that have little or
> >> no net access). This would likely be in /opt/XYZ and practice
> >> would dictate that it be read-only.
> >>
> >> Sadly, this doesn't work. When I try to build Poky with a
> >> read-only $DL_DIR, it simply hangs on every 'fetch' step.
> >>
> >> Note: I could avoid this problem (although I think it's a
> >> bug even if it should never be experienced) by being able
> >> to easily provide source mirrors for the packages. So far,
> >> I've not figured out how to do this; I'd like to add my
> >> own mirror lists, similar to those in meta/classes/poky.bbclass
> >> Would this be a way forward? If so, how?
> >>
> >> Thanks for any ideas
> >
> > Hi Gary,
> >
> > Being able to do this is an important priority. Please file a bug to
> track it if there isn't a current workaround.
> 
> Done, bug #606.

Sorry but this isn't what is being asked and I don't think that bug is
reasonable. DL_DIR needs to be writeable. You can implement a readonly
mirror just fine without requiring that so we have what I think is a
very reasonable way to solve the problem.

> I'll also look at Richard's new support for MIRRORS/PREMIRRORS
> to see how to make it work for my environment.

Please do this and report back on how you get one. I'm fine with
documenting this and making things clearer. Turning DL_DIR into some new
mirror and having a new writable area for state information isn't the
right way to solve this problem though when we have mirror handling for
exactly this kind of use case already.

Cheers,

Richard




