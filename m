Return-Path: <j.michael.detwiler@gmail.com>
Received: from mail-iw0-f171.google.com (mail-iw0-f171.google.com
	[209.85.214.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BD0B4C803A5
	for <poky@pokylinux.org>; Tue,  2 Nov 2010 15:50:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn41 with SMTP id 41so258941iwn.2
	for <poky@pokylinux.org>; Tue, 02 Nov 2010 13:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=Z7MZIAA1Bmrm4ErmU03X0b40rUiGhfqWg5jhCx2M5Ws=;
	b=pzKkd97HTV2KgHrZd8cjA0R+W63Vo6cGR+zuAOn+pLecnJRKNPwRRu7niREBs6R+mV
	QULXfC/TYrkYFtByYVUIu1tkG7CSPjFfHqD78ikRVPh258lzZirMKby4GviSlXTsp+cc
	dmNg+A2JfNUx+BmzDhmoq3YOak6SpKgZk0Q7I=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=bBt9E9ZCS3cT/YIShszDpdV2zUIwegKBn63owsjsYPTHfhx17a3ls3AqKPxUKU5djS
	HbBFihqRD6tDUJaiEs5Qjlrvr6UJWCwqgq/Ni14h0R2s6lhgvE3ddEigihMKrZRt8K9f
	32TNHeSpvdolXuszKhm7vUYetnajCzj/O5Jis=
MIME-Version: 1.0
Received: by 10.231.35.202 with SMTP id q10mr9905657ibd.138.1288731022659;
	Tue, 02 Nov 2010 13:50:22 -0700 (PDT)
Received: by 10.231.172.212 with HTTP; Tue, 2 Nov 2010 13:50:22 -0700 (PDT)
Date: Tue, 2 Nov 2010 16:50:22 -0400
Message-ID: <AANLkTi=iHsCxaWVUaD1fMCsRZot4+SHUHAK9xpdku1Cv@mail.gmail.com>
From: Mike Detwiler <j.michael.detwiler@gmail.com>
To: poky@pokylinux.org
Subject: Extending meta-toolchain-sdk
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 20:50:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I have run 'bitbake meta-toolchain-sdk' and installed the tarball that
it generates. However, I found that the sdk did not contain all the
third-party libraries that I would like it to have. For example, the
application I'm developing has a dependency on libgmp. I notice that
there are bitbake files for gmp in meta/recipes-support/gmp. Is there
a simple way (e.g. in build/conf/local.conf) to have this added to the
list of libraries that are included in the sdk?

Best regards,

-Mike

