Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FCFA4C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 06:18:50 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJCIomB014369;
	Fri, 19 Nov 2010 12:18:50 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14210-04; Fri, 19 Nov 2010 12:18:46 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJCIioV014363
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 19 Nov 2010 12:18:44 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <AANLkTi=qcEgerfv5skbCV6Ff+J+o_bJxkqwSnvg5C4kr@mail.gmail.com>
References: <20101119035102.GA31016@qhe2-db>
	<AANLkTik0YrJrrOrnA26H8aWDG6ZEmf-4p6buE=+B3N8U@mail.gmail.com>
	<AANLkTi=qcEgerfv5skbCV6Ff+J+o_bJxkqwSnvg5C4kr@mail.gmail.com>
Date: Fri, 19 Nov 2010 12:18:30 +0000
Message-ID: <1290169110.1272.12266.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH][RFC] bitbake: add task tracking
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
X-List-Received-Date: Fri, 19 Nov 2010 12:18:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-11-18 at 21:13 -0700, Chris Larson wrote:
> On Thu, Nov 18, 2010 at 8:51 PM, Qing He <qing.he@intel.com> wrote:
>         Add a new option to record start and end time of every task
>         
>         Signed-off-by: Qing He <qing.he@intel.com>
> 
> 
> This is useful conceptually, and I'm glad to see others touching the
> bitbake code, so kudos on that, but implementation wise, I have
> concerns.  For one, this doesn't need to be in bitbake at all, it's
> quite easily implemented in the metadata using an event handler and
> the task events.  For two, hardcoding the log file and format seems
> unwise.

I agree, implementing this as an event handler would be a better
approach and allow more flexibility. 

Qing: I thought we'd already discussed that?

Cheers,

Richard



