Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D20DE0027B
	for <poky@yoctoproject.org>; Tue, 31 Jul 2012 14:39:45 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 31 Jul 2012 14:39:44 -0700
Received: by pbcwz12 with SMTP id wz12so920519pbc.25
	for <poky@yoctoproject.org>; Tue, 31 Jul 2012 14:39:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=kp/o6bIvP/t/E6cmn9Zl44k0Sk6apa0dubsgwiPg8+U=;
	b=AEYVov7vJTXjTzxazFzc85FcRfjPtB3MIK4Tx+asyc/D0B5w82L0P+IkSTZiXSqD9I
	HAZFXMfLT6oBS/O0w1Rnk/qpFhqMLRDRSefuzbJUuMwLtT6ZMkR8p2sVed2N+Tdu+SuK
	KG4AzSj2lonwvh7j2r7Eb6lglrMS8gaYMo78o6tDrvye7CH4ZztC9hxANUnWg7xcfndI
	L8hsblwlt6kJDVVzMSmPlQAT06nRB1q7zL3Yu/RKRxPCEQqXdTDlf6y7Wj9ImTjKOkqy
	XETbVcA2aSdNW67plsMBUsuYIJcQEh4J2zTPkEGlT7cnnfiH+HXmedy43zN0ADsf1UCx
	ql/g==
Received: by 10.68.201.104 with SMTP id jz8mr4342368pbc.160.1343770784450;
	Tue, 31 Jul 2012 14:39:44 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id rx7sm1066196pbc.64.2012.07.31.14.39.43
	(version=SSLv3 cipher=OTHER); Tue, 31 Jul 2012 14:39:43 -0700 (PDT)
Message-ID: <501850A0.1020302@intel.com>
Date: Tue, 31 Jul 2012 14:39:44 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
	<CAEsOVNdkMmJT5T3zUbKHcFXEFWPbHJ-rXrSnU=aaeBUjE--rJw@mail.gmail.com>
In-Reply-To: <CAEsOVNdkMmJT5T3zUbKHcFXEFWPbHJ-rXrSnU=aaeBUjE--rJw@mail.gmail.com>
X-Gm-Message-State: ALoCoQmWDYvT3ytUVhhrW0/zXBhVX/K3wmj9RuaU9Vh0Ztf56Lw5weY91NKGAwLMDdx6FEixWTVY
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [denzil][PATCH 1/9] bitbake/fetch: Spell out which fetcher backends support and recommend checksums
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
X-List-Received-Date: Tue, 31 Jul 2012 21:39:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2012 03:52 PM, McClintock Matthew-B29882 wrote:
> On Tue, Jul 3, 2012 at 5:32 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>>
>> There were some hardcoded behaviours in the system for which backends
>> support checksums verses which backends recommend them verses which
>> don't recommend them.
>>
>> This moves the functionality into specific fetchers and then makes the
>> general code generic. This cleans up the codebase and fixes some corner
>> cases such as trying to checksum directories returned by the git fetcher.
>>
>> (Bitbake rev: ef6d268f7b8527541a7fb044cf95a973be4097f4)
>>
>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> This patch is causing the following issue in the denzil branch of poky:
>
> NOTE: package libpam-1.1.5-r3: task do_fetch: Started
> ERROR: Error executing a python function in
> /local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam_1.1.5.bb:
> IOError: [Errno 2] No such file or directory:
> '/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam/./pam.d/*'

Thanks for testing and reporting this, Matthew. I have rebased my 
sgarman/denzil-1.2.2 branch to remove this commit.

I'm going through my denzil queue of patches right now and hope to be on 
top of everything by EOD - I will send out an overall status email then 
in which I will also announce renaming my branch to simply 
sgarman/denzil-next.

Scott

> ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> ERROR:   File "base_do_fetch", line 18, in <module>
> ERROR:
> ERROR:   File "base_do_fetch", line 13, in base_do_fetch
> ERROR:
> ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/__init__.py",
> line 1037, in download
> ERROR:     update_stamp(u, ud, self.d)
> ERROR:
> ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/__init__.py",
> line 335, in update_stamp
> ERROR:     verify_checksum(u, ud, d)
> ERROR:
> ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/__init__.py",
> line 277, in verify_checksum
> ERROR:     md5data = bb.utils.md5_file(ud.localpath)
> ERROR:
> ERROR:   File "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/utils.py",
> line 482, in md5_file
> ERROR:     for line in open(filename):
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0014:        except bb.fetch2.BBFetchException, e:
> ERROR:      0015:            raise bb.build.FuncFailed(e)
> ERROR:      0016:
> ERROR:      0017:
> ERROR:  *** 0018:base_do_fetch(d)
> ERROR:      0019:
> ERROR: (file: 'base_do_fetch', lineno: 18, function: <module>)
> ERROR:      0009:       bb.data.update_data(localdata)
> ERROR:      0010:
> ERROR:      0011:        try:
> ERROR:      0012:            fetcher = bb.fetch2.Fetch(src_uri, localdata)
> ERROR:  *** 0013:            fetcher.download()
> ERROR:      0014:        except bb.fetch2.BBFetchException, e:
> ERROR:      0015:            raise bb.build.FuncFailed(e)
> ERROR:      0016:
> ERROR:      0017:
> ERROR: (file: 'base_do_fetch', lineno: 13, function: base_do_fetch)
> ERROR: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:
> /local/home/mattsm/git/poky-upstream/build-denzil/tmp/work/ppce5500-poky-linux/libpam-1.1.5-r3/temp/log.do_fetch.9368
> NOTE: package libpam-1.1.5-r3: task do_fetch: Failed
> ERROR: Task 0 (/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam_1.1.5.bb,
> do_fetch) failed with exit code '1'
>
> -M


-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

