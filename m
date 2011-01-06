Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC59E4C80BD4
	for <poky@pokylinux.org>; Thu,  6 Jan 2011 16:56:43 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06MwLu1021866 for <poky@pokylinux.org>; Thu, 6 Jan 2011 22:58:22 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id WRmFsk+HS+HS for <poky@pokylinux.org>;
	Thu,  6 Jan 2011 22:58:21 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06MwGdF021855
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <poky@pokylinux.org>; Thu, 6 Jan 2011 22:58:18 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@pokylinux.org>
Date: Thu, 06 Jan 2011 22:56:10 +0000
Message-ID: <1294354570.17519.25325.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Thu, 06 Jan 2011 22:56:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

We've been working on checksums and sstate for a while, one of the
pieces we've not put in place so far is using the checksums in the stamp
files.

What this would mean in English is the end of PR bumps since when you
change the recipe, the checksums of the appropriate tasks change and
everything automatically rebuilds that changed.

It also means if you change something in the core packaging, everything
should repackage and so on.

The final key to enabling this is this commit:

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/bitbake-wip&id=b82259b901cae11b0e5715a92a580c9432af52cc

This hasn't been merged to master yet but we should discuss when this
change could/should be merged and under what criteria.

I've only just started testing full builds with the change myself so
keep that in mind. I'd appreciate testing but the change is still very
new and likely has bugs to iron out.

I'm also aware that this idea isn't going to be universally liked,
particularly I can guess that Koen is going to have concerns about this
and Angstrom since the lack of PR bumps means package feeds could start
to suffer.

My proposal for dealing with this will be to start having the packaging
backend take ownership of PE and PR fields. These should be auto
incremented when the build changes. That in itself is easy enough if you
have one build area, the tricky bit is where you have multiple build
sources feeding into a common packages repo like Angstrom.

For this we're going to need some kind of network service that takes a
version and provides the PE/PR values back, incrementing them each time
it sees a new version/checksum.

This would solve one of Koen's major complaints about PR bumps in
general once and for all but there is some effort needed to implement
something that could provide this service.

Also, on the plus side, we could also now make image generation a
"stamp" task with a stamp that will only change when the image inputs
change. That would change a users expectations in some regard so again
needs discussion.

Cheers,

Richard




