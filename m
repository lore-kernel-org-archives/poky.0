Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06A504C80B70
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 13:47:27 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oANJlPZx020451;
	Tue, 23 Nov 2010 19:47:25 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20332-02; Tue, 23 Nov 2010 19:47:21 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oANJlEjY020445
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 23 Nov 2010 19:47:15 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Paul Eggleton <paul.eggleton@intel.com>
In-Reply-To: <201011231454.15813.paul.eggleton@intel.com>
References: <201011231454.15813.paul.eggleton@intel.com>
Date: Tue, 23 Nov 2010 19:47:11 +0000
Message-ID: <1290541632.1272.18675.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: sstate environment variable whitelist
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
X-List-Received-Date: Tue, 23 Nov 2010 19:47:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-23 at 14:54 +0000, Paul Eggleton wrote:
> Hi all,
> 
> I'm taking a look into the sstate functionality. Looking at the
> changes Kevin has made in his tk/sstate branch and the environments my
> own two systems (Fedora 14 & Kubuntu 10.10) I note that there are
> still quite a lot of variables that are not whitelisted out. The
> question is do we expect to whitelist out absolutely all environment
> variables we don't care about on as many possible host distributions
> as possible? Or do we only selectively whitelist out those that we
> expect to change frequently (those that point to PIDs, session IDs,
> usernames etc.)?

There is a know list of variable we allow into the build environment, so
its a finite list we need to cover. That list is the combination of the
whitelist in the environment script and the one in lib/bb/utils.py.

I'd actually like to stop exporting a lot of the white listed variables
to every task and start being more selective. The sstate/siggen code
should then stop picking them up as dependencies.

Cheers,

Richard


