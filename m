Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id B80B34C806DA;
	Tue, 25 Jan 2011 07:57:37 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PDxSWn011426; Tue, 25 Jan 2011 13:59:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Xk+KpjvYYjVt; Tue, 25 Jan 2011 13:59:28 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PDxPPA011422
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 13:59:27 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
Date: Tue, 25 Jan 2011 13:57:09 +0000
Message-ID: <1295963829.14388.49564.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto <yocto@yoctoproject.org>
Subject: Major feature changes for the next release - merging very soon
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
X-List-Received-Date: Tue, 25 Jan 2011 13:57:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

As has been mentioned in other emails we're working on some major
enhancements for the next release. Several components of these are now
ready for merging to the master branch. These include:

* Rework of the compiler bootstrap process

If you've ever tried to run "bitbake eglibc -c clean;bitbake eglibc" or
any of the gcc components you'll have run into issues with the compiler
bootstrap process overwriting files. This also causes problems for
sstate as it doesn't get on well with two sstate archives providing the
same file.

The changes we have queued split the intermediate components into a
separate sysroot so no files are overwritten and the whole process is
less fragile and more robust. Each gcc-cross step (initial, intermediate
and final) also stage binaries in separate locations.

* Changes to sysroot structure

We now support creating a sysroot per machine target rather than the
original multimachine approach we have used. This means packages with an
"all" architecture can be safely installed into the sysroot and used
correctly fixing bugs in that area and it also allows machines like
emenlow which have separate graphics components to build and work
correctly yet be able to share builds with other machines like atom-pc.

If you change machine and the machine you change to shares a core
architecture with a previous build, the components from that previous
build will be used to construct a new sysroot using the sstate prebuilt
packages.

The branch I'm planning to merge very soon with these features is:

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/tt-bootstrap

There are also some changes in there to fix pseudo issues people have
been seeing and there are some fetcher changes in there moving us
towards more reliability in the fetcher.

Due to the nature of the changes, people are going to have to wipe
tmpdir and rebuild after these changes and anyone trying to use an
existing build will see an error message. We try hard to avoid requiring
this but this is a side effect of making significant structural
improvements like the above. Just to be 100% safe I changed the sstate
version number too, invalidating previous sstate packages due to the
structure changes.

Since this is a new development there may be a few bumps as we merge
things, I think these developments are exciting and fix long standing
problems so please bare with us as we work though any issues!

Cheers,

Richard




