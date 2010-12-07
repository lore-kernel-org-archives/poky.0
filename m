Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AE484C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 06:33:36 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7CXZjI002756;
	Tue, 7 Dec 2010 12:33:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01588-08; Tue,  7 Dec 2010 12:33:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7CXR7h002750
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Dec 2010 12:33:27 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4CF9CA70.9060107@intel.com>
References: <cover.1291035335.git.rpurdie@linux.intel.com>
	<a3ec07a2417519432c4dc9d64f6f1b0df1169fa4.1291035335.git.rpurdie@linux.intel.com>
	<4CF9CA70.9060107@intel.com>
Date: Tue, 07 Dec 2010 12:33:20 +0000
Message-ID: <1291725200.11475.1.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] imagetest-qemu: Allow the task to run after any	rootfs is created and also standalone
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
X-List-Received-Date: Tue, 07 Dec 2010 12:33:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-12-03 at 20:58 -0800, Scott Garman wrote:
> On 11/28/2010 06:45 AM, Richard Purdie wrote:
> > One bitbake invocation can cause multiple images to be generated. We should test
> > each one and we cna do this by running after the rootfs task. Running the tests
> > standlone is also still possible with a new separate standlone task.
> >
> > Signed-off-by: Richard Purdie<rpurdie@linux.intel.com>
> 
> Acked-by: Scott Garman <scott.a.garman@intel.com>
> 
> (with Jiajun's modification)

Thanks, I've merged this into master with the fix.

Cheers,

Richard


