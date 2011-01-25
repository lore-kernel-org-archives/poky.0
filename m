Return-Path: <alees@google.com>
Received: from smtp-out.google.com (smtp-out.google.com [216.239.44.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 412A04C80B6E
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 20:00:03 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(512-bit key; insecure key) header.i=@google.com;
	x-dkim-adsp=none (insecure policy)
Received: from kpbe20.cbf.corp.google.com (kpbe20.cbf.corp.google.com
	[172.25.105.84]) by smtp-out.google.com with ESMTP id p0P202MH017072
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 18:00:02 -0800
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1295920802; bh=5By9fXFV+EqDkywdDIzvowXwohU=;
	h=MIME-Version:Sender:From:Date:Message-ID:Subject:To:Content-Type;
	b=f3jxluH8otX/tLycm7D/l8InikKSH4rJHoo8XMbZIbmJomhAzW/WHldUpNvjUL64Q
	b3YeFydPo4/2ZmfjzDw+A==
Received: from qwj8 (qwj8.prod.google.com [10.241.195.72])
	by kpbe20.cbf.corp.google.com with ESMTP id p0P1xB1c016391
	(version=TLSv1/SSLv3 cipher=RC4-MD5 bits=128 verify=NOT)
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 18:00:01 -0800
Received: by qwj8 with SMTP id 8so4754738qwj.29
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 18:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=beta;
	h=domainkey-signature:mime-version:sender:from:date
	:x-google-sender-auth:message-id:subject:to:content-type;
	bh=wuP36P1QkawukeeNeNDNwsSMsLOLf1rtY3ASf+Nzlyg=;
	b=juVHgL+o+aTk2gXGhU7fB0zjxMWklqZS5KM05I4852xDw+DaT+4CLUGfAeUKTD6p7Z
	54vKkVxiOQvClTOtCmEw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=google.com; s=beta;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	b=gyFVARcW9vAb0FCjh6qS8aNsG03EkTNZO/HotzjOTYKcBScUxuyh8CTQ8hp9ZYl4JB
	QFLwqKAtnQFiK4bNCrEg==
Received: by 10.224.19.206 with SMTP id c14mr4742327qab.219.1295920800725;
	Mon, 24 Jan 2011 18:00:00 -0800 (PST)
MIME-Version: 1.0
Sender: alees@google.com
Received: by 10.220.44.204 with HTTP; Mon, 24 Jan 2011 17:59:40 -0800 (PST)
From: Angus Lees <guslees@gmail.com>
Date: Tue, 25 Jan 2011 11:59:40 +1000
X-Google-Sender-Auth: L2XYf7guaMysab-bhdAqyUe9j4o
Message-ID: <AANLkTikO8-sLM_qMNvj=Xpt723iL-eA2MJPxY6YwdaLQ@mail.gmail.com>
To: poky@yoctoproject.org
X-System-Of-Record: true
Subject: questions about bblayers idioms
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
X-List-Received-Date: Tue, 25 Jan 2011 02:00:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've been trying to play nice and describe my poky changes in
self-contained layers.
I have accumulated a bunch of questions about some common problems
I've hit, and I'm sorry if some of these are FAQs:

1. *.bbappend lets me modify *.bb files.  How do I incrementally
modify other files?

Eg: I'd really like to add something to gcc-common.inc (for example).
Do I need to add a family of gcc-*.bbappend files to hook in the
common change?

1a. How do I modify/fix a bbclass file?

In particular {siteinfo,insane}.bbclass need to be modified to add new
architectures, which seems like a common task.
Copying and modifying (as I have done), gets increasingly ugly now
that I have two layers, which each want to add new architectures (one
SDK, one target).

2. BBCLASSEXTEND doesn't work in .bbappend files.

Is this correct?  I tried to add BBCLASSEXTEND+="nativesdk" to a
.bbappend file but it didn't seem to have any effect.

3. What is the standard idiom for picking up patches from layers?

I've been using something like this:
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/${BP}"], d)}:"

But this gets increasingly more difficult once you have multiple
layers and I had to use unique names for THISDIR in each layer :(
Is there some better way to handle this?

 - Gus

