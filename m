Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1E284C806DA;
	Tue, 25 Jan 2011 12:34:11 -0600 (CST)
Received: by wwb31 with SMTP id 31so98074wwb.11
	for <multiple recipients>; Tue, 25 Jan 2011 10:34:11 -0800 (PST)
Received: by 10.216.181.199 with SMTP id l49mr3939690wem.68.1295980448533;
	Tue, 25 Jan 2011 10:34:08 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id a50sm5766608wer.42.2011.01.25.10.34.07
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 25 Jan 2011 10:34:07 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1295963829.14388.49564.camel@rex>
Date: Tue, 25 Jan 2011 19:34:04 +0100
Message-Id: <F4686931-067A-4564-BDD3-073B8F1BB435@dominion.thruhere.net>
References: <1295963829.14388.49564.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: yocto <yocto@yoctoproject.org>, poky <poky@yoctoproject.org>
Subject: Re: Major feature changes for the next release - merging very soon
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
X-List-Received-Date: Tue, 25 Jan 2011 18:34:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 25 jan 2011, om 14:57 heeft Richard Purdie het volgende geschreven:

> As has been mentioned in other emails we're working on some major
> enhancements for the next release. Several components of these are now
> ready for merging to the master branch. These include:
> 
> * Rework of the compiler bootstrap process
> 
> If you've ever tried to run "bitbake eglibc -c clean;bitbake eglibc" or
> any of the gcc components you'll have run into issues with the compiler
> bootstrap process overwriting files. This also causes problems for
> sstate as it doesn't get on well with two sstate archives providing the
> same file.
> 
> The changes we have queued split the intermediate components into a
> separate sysroot so no files are overwritten and the whole process is
> less fragile and more robust. Each gcc-cross step (initial, intermediate
> and final) also stage binaries in separate locations.
> 
> * Changes to sysroot structure
> 
> We now support creating a sysroot per machine target rather than the
> original multimachine approach we have used. This means packages with an
> "all" architecture can be safely installed into the sysroot and used
> correctly fixing bugs in that area and it also allows machines like
> emenlow which have separate graphics components to build and work
> correctly yet be able to share builds with other machines like atom-pc.
> 
> If you change machine and the machine you change to shares a core
> architecture with a previous build, the components from that previous
> build will be used to construct a new sysroot using the sstate prebuilt
> packages.
> 
> The branch I'm planning to merge very soon with these features is:
> 
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/tt-bootstrap

For a single machine:

NOTE: package console-image-1.0-r0: task do_rm_work_all: Succeeded


Now building it incrementally for a different machine

