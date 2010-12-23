Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DDB64C81081
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 11:00:26 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNH1kpl021334; Thu, 23 Dec 2010 17:01:46 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id bQomy48DCchA; Thu, 23 Dec 2010 17:01:46 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNH1cJ7021330
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 17:01:40 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTim+fk4y63aQWUivQOOnK2WxiijvwoMUd7K7=Eps@mail.gmail.com>
References: <cover.1293003470.git.sgw@linux.intel.com>
	<a6f41d4776c5b261bcf4fe2ff5c621470418c49a.1293003470.git.sgw@linux.intel.com>
	<AANLkTim+fk4y63aQWUivQOOnK2WxiijvwoMUd7K7=Eps@mail.gmail.com>
Date: Thu, 23 Dec 2010 17:00:06 +0000
Message-ID: <1293123606.17519.83.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/4] meta-emenlow: update to the new BSP layout
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
X-List-Received-Date: Thu, 23 Dec 2010 17:00:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-22 at 06:06 -0800, Bruce Ashfield wrote:
> I was just thinking about this while reading your patch series, and I'm
> caught between two problems here.
> 
> I like:
> 
>   - BSPs that are self contained.
> 
> I'm ambivalent:
> 
>   - about having to update a lot of SRCREVs when I update the BSP branches.
> 
> I have a problem:
> 
>   - If all the SRCREVs are not in a single location, I can't hunt them all down
>     and update them effectively. That makes point #2 into "strongly" dislike.
> 
> I've got 350+ patches that are about to land for 2.6.34 (from the
> 2.6.34 -longterm
> tree), and I'll be merging them out to the BSPs. So this SRCREV along with the
> rest will change.
> 
> I'm looking for something that is effective in controlling the
> branches, but is also
> maintainable.
> 
> Richard: can we have a central SRCREV in the default revisions (per
> machine still), and
> then override it in a BSP layer ? That way if for some reason you
> don't have the
> default revisions your BSP will be standalone, but I still have a way
> to update everything
> at once (and we'll eventually update the BSP layers as well).
> 
> I can also set the SRCREVs in the recipes themselves via python (i.e.
> set a default
> again), that allows me a single point of control .. but perhaps
> doesn't match existing
> solutions.

We have all the options with the syntax we have. You can set things in
the core, the BSP can override, we can set things in the BSP that
override the core.

If you can clearly describe a consistent way you need the variables to
work, we can then implement it :)

Cheers,

Richard


